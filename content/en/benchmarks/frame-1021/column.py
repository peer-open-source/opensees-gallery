import opensees.openseespy as ops
import numpy as np
import matplotlib.pyplot as plt
from xara.units.iks import inch, MPa, ksi
from compression import make_concrete
from veux.motion import Motion
import veux
try:
    plt.style.use("veux-web")
except:
    pass
import json
import sys

class ColumnAnalysis:
    def __init__(self, ne, shear, nonlinear, warping):
        self._shear = shear
        self._nonlinear = nonlinear
        self._warping = warping
        self._nen = 2
        self._ne = ne
        self._nn = ne*(self._nen-1)+1 # Total number of nodes

    def create_model(self):
        model = ops.Model(ndm=3, ndf=6)

        depth = 24*inch
        width = 24*inch
        ne = self._ne
        nn = self._nn
        nen = self._nen
        slenderness = 0.2

        L = depth/slenderness

        with open("mesh1.json", "r") as f:
            fibers = json.load(f)


#       model.material("ElasticIsotropic", 3, 7e3, 0.2) # Elastic Isotropic Concrete

        # Concrete material (units = N, mm)
        E = 33000.0
        v = 0.2
        Fc = 48.3
        ft = Fc/10.0
        ec = 2.0*Fc/E
        Gt = 0.073*Fc**0.18
        Gc = 2.0*Gt*(Fc/ft)**2

        Ks = 11154
        Gs = 24167
        if not self._nonlinear:
            model.material("ElasticIsotropic", 1,  E*MPa, v) # Elastic Isotropic Concrete
            model.material("ElasticIsotropic", 2,  K=Ks, G=Gs) # Elastic Isotropic steel

        elif False:
            model.nDMaterial("FariaPlasticDamage", 1, E*MPa, v, ft*MPa, Fc*MPa,
                             beta=0.5, Ap=0.05, An=3, Bn=0.7)

            # Reinforcing steel
            model.nDMaterial("J2", 2,
                             E=29e3*ksi,
                             nu=0.27,
                             Fy= 60*ksi,
                             Fs= 90*ksi,
                             Hsat=16.0,
                             Hiso=0.02*29e3*ksi)
        else:
            Te, Ts, Td, Ce, Cs, Cd, lch_ref = make_concrete(E, ft, Fc, ec, Gt, Gc)
            for i in Ts: i=i*MPa
            for i in Cs: i=i*MPa
            model.nDMaterial('ASDConcrete3D', 1,
                E*MPa, v, # elasticity
                '-Te', *Te, '-Ts', *Ts, '-Td', *Td, # tensile law
                '-Ce', *Ce, '-Cs', *Cs, '-Cd', *Cd, # compressive law
                '-autoRegularization', lch_ref, # use auto regularization: the input Gt and Gc are NOT specific fracture energies
                tangent=True
                )

            # Reinforcing steel
            model.nDMaterial("J2Plasticity", 2,
                             E=29e3*ksi,
                             nu=0.27, #Ks, Gs,
                             Fy= 60*ksi,
                             Fs= 90*ksi,
                             Hsat=16.0,
                             Hiso=0.02*29e3*ksi)

        model.section("ShearFiber", 1)
        for fiber in fibers:
            if fiber["material"]["name"]=="Concrete":
                mat_tag=1
            else: mat_tag=2

            model.fiber(fiber["location"][0]*inch - width/2,
                        fiber["location"][1]*inch - depth/2,
                        warp=fiber["warp"],
                        area=fiber["area"],
                        material=mat_tag,
                        section=1)

        for node in range(nn):
            model.node(node+1, (0, 0, node*L/(nn-1)))

        model.geomTransf("Corotational", 1, (-1, 0, 0))
        for i in range(ne):
            nodes = tuple(range(i*(nen-1)+1, i*(nen-1)+nen+1))
            model.element("ForceFrame", i+1, nodes, section=1, transform=1, shear=self._shear)

        model.fix(1, (1,1,1,1,1,1))


        return model


    def analyze(self):
        model = self.create_model()
        ne = self._ne
        nn = self._nn


        # Pushover analysis
        model.initialize()

        steps = 10
        N  = -400
        model.pattern("Plain", 1, "Linear")
        model.load(nn, (0, 0, N, 0.0, 0.0, 0.0), pattern=1)
        model.integrator("LoadControl", 1/steps)
        model.test("NormUnbalance", 1.0e-6, 20, 0)
        model.analysis("Static")
        status = model.analyze(steps)
        model.loadConst(time=0.0)


        H = 1.0 # Reference lateral load
        K = 0.0 # 2000.0
        model.pattern("Plain", 2, "Linear")
        model.load(nn, (H, K, 0.0, 0.0, 0.0, 0.0), pattern=2)


        dU = 0.05
        maxU = 2.0  # Max displacement
        model.integrator("DisplacementControl", nn,1,dU,8,0.005,0.1)

        #model.integrator("LoadControl",1/steps)

        model.test("NormUnbalance", 1.0e-8, 50, 2)
#       model.test("NormDispIncr", 1.0e-12, 100, 2)
        model.algorithm("NewtonLineSearch", 0.6)
        model.analysis("Static")


        u, p = [], []
        u.append(model.nodeDisp(nn, 1))
        p.append(model.getTime())

        while status == ops.successful and u[-1] < maxU:
            print(u[-1])
            status = model.analyze(1)

            # if the analysis failed, try initial tangent iteration
            if status != ops.successful:
                print("... Newton failed, trying initial stiffness")
                model.test("NormDispIncr", 1.0e-10, 100, 2)
#               model.algorithm("ModifiedNewton", initial=True)
                status = model.analyze(1)
                if status == ops.successful:
                    print("... that worked, back to line search")
#               model.test("NormUnbalance", 1.0e-8, 100)
                model.algorithm("NewtonLineSearch", 0.6)

            u.append(np.linalg.norm(model.nodeDisp(nn)[:2]))
            p.append(model.getTime())

        if status != ops.successful:
            print("Pushover analysis failed")

        return u,p


    # motion.add_to(artist.canvas)

if __name__ == "__main__":
    fig, ax = plt.subplots()


#   artist = veux.create_artist(c.create_model(), vertical=3)
#   artist.draw_axes(extrude=True)
#   artist.draw_origin()
#   artist.draw_outlines()
#   artist.draw_sections()

    # Note: needed to change veux model.py alpha bound_ratio from 0.01 to 0.0025
#   veux.serve(artist)


    if False:
        c = ColumnAnalysis(4, shear=1, warping=True, nonlinear=False)
        ax.plot( *c.analyze() , ':')
        c = ColumnAnalysis(4, shear=0, warping=True, nonlinear=False)
        ax.plot( *c.analyze() , ':')

    c = ColumnAnalysis(4, shear=1, warping=True, nonlinear=True)
    ax.plot( *c.analyze() , '.-', label="Shear")
    c = ColumnAnalysis(4, shear=0, warping=True, nonlinear=True)
    ax.plot( *c.analyze() , ':',  label="Euler")


    fig.legend()
    ax.set_xlabel("Displacement [in]")
    ax.set_ylabel("Force [kips]")
    plt.show()
