# Jun 2 2025
import xara
import xara.units.iks as units
from xara.units.iks import inch, ksi, ft, kip
import os
import aisc25
from xsection.library import from_aisc, Rectangle
import numpy as np

def create_cantilever(shape, length, element, material,
                      transform="Linear",
                      shear=0,
                      section="ShearFiber", ne=1, nen=2):

    model = xara.Model(ndm=3, ndf=6, echo_file=open(f"test-{element}-{'shear' if shear else 'euler'}.tcl", "w+"))
    L = length
    nn = ne*(nen-1)+1


    E = material["E"]
    G = material["G"]
    nu = E / (2*G) - 1

    if section == "Elastic":
        cmm = shape.torsion.cmm()
        cnn = shape.torsion.cnn()
        cnv = shape.torsion.cnv()
        cnm = shape.torsion.cnm()
        cmw = shape.torsion.cmw()
        A = cnn[0,0]
        model.section("ElasticFrame", 1,
                        E=E,
                        G=G,
                        A=A,
                        Ay=1*A,
                        Az=1*A,
                        Qy=cnm[0,1],
                        Qz=cnm[2,0],
                        Iy=cmm[1,1],
                        Iz=cmm[2,2],
                        J =shape.torsion.torsion_constant(),
                        Ry= cnv[1,0],
                        Rz=-cnv[2,0],
                        Sy= cmw[1,0],
                        Sz=-cmw[2,0]
        )
    else:
        model.nDMaterial('ElasticIsotropic', 1, E, nu)
        model.section("ShearFiber", 1)
        for fiber in shape.create_fibers():
            model.fiber(**fiber, material=1, section=1)


    model.geomTransf(transform, 1, (0,0,1))

    for i,x in enumerate(np.linspace(0, L, nn)):
        model.node(i, (x,0,0))

    for i in range(ne):
        start = i * (nen - 1)
        nodes = tuple(range(start, start + nen))
        model.element(element, 
                      i+1, 
                      nodes,
                      section=1, 
                      transform=1, 
                      shear=shear, 
                      order=0)


    model.fix(0,  (1,1,1,  1,1,1))  # Fixed at the root
    return model



def analyze(model, P, Pr):
    nn = len(model.getNodeTags())

    model.pattern("Plain", 1, "Linear", load={nn-1: [Pr,0,0,  0,0,0]})
    model.integrator("LoadControl", 1/10)
    model.analysis("Static")#, pattern=1, integrator=1)
    model.test("Residual", 1e-9, 5)

    assert model.analyze(10) == 0

    model.loadConst(time=0)
    model.pattern("Plain", 2, "Linear", load={nn-1: [0,0,P,  0,0,0]})
    model.integrator("LoadControl", 1/10)
    model.analysis("Static")#, pattern=1, integrator=1)
    model.test("Residual", 1e-9, 5)

    assert model.analyze(10) == 0



if __name__ == "__main__":
#   shape = Rectangle(d=14, b=10, mesh_scale=1/100) #
    shape = from_aisc("W14x48", units=units, mesh_scale=1/100)

    E  = 29e3*units.ksi
    G  = 11.2e3*units.ksi # * 4/5

    EI = E*shape.cmm()[1,1]

    L = shape.d*40
    for shear in [0,]:
        model = create_cantilever(shape,
                                length=L,
                                material={
                                    "name": "ElasticIsotropic", 
                                    "E": E, "G": G
                                },
                                element=os.environ.get("Element", 
                                                       "PrismFrame"),
                                section="ShearFiber",
                                transform="Corotational",
                                shear=shear,
                                ne =2,
                                nen=2
                )

        H = 1*kip
        Pr = 15*kip
        analyze(model, H, Pr)
        # model.print(json=True)
        # print(f"I = {EI/E}")

        end = len(model.getNodeTags()) - 1
        uz = model.nodeDisp(end, 3)

        section = dict(
                E = E,
                I = EI/E, #484.0*inch**4
        )

        u_theory = aisc25.Case1(**section,L=L,H=H,Pr=Pr).u
        print((H * L**3 / (3 * EI)))

        print(f"Uz = {uz:.6f}, Uz theory = {u_theory:.6f}")

        # model.eval(f"verify value [nodeDisp {end} 3] {u_theory:.12f} 1e-6")
