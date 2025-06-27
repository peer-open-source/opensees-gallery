# May 30 2025
import xara
import xara.units.iks as units
import veux
import os
from xsection.library import from_aisc, Rectangle
import numpy as np

def create_cantilever(shape, length, element, material,
                      shear=0,
                      section="ShearFiber", ne=1, nen=2):

    model = xara.Model(ndm=3, ndf=6, echo_file=open(f"test-{element}-{'shear' if shear else 'euler'}.tcl", "w+"))
    L = length
    nen = 2
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
        model.section("ShearFiber", 1, GJ=0)
        for fiber in shape.create_fibers():
            model.fiber(**fiber, material=1, section=1)


    model.geomTransf("Linear", 1, (0,0,1))

    for i,x in enumerate(np.linspace(0, L, nn)):
        model.node(i, (x,0,0))

    for i in range(ne):
        start = i * (nen - 1)
        nodes = tuple(range(start, start + nen))
        model.element(element, i+1, nodes, section=1, transform=1, shear=shear)


    model.fix(0,  (1,1,1,  1,1,1))  # Fixed at the root
    return model

def analyze(model, P):
    nn = len(model.getNodeTags())

    model.pattern("Plain", 1, "Linear", load={nn-1: [0,0,1, 0,0,0]})
    model.integrator("LoadControl", P)
    model.analysis("Static")#, pattern=1, integrator=1)
    model.test("Residual", 1e-10, 3)

    assert model.analyze(1) == 0




if __name__ == "__main__":
#   shape = Rectangle(d=14, b=10, mesh_scale=1/100) #
    shape = from_aisc("W14x48", units=units, mesh_scale=1/100)

    E  = 29e3*units.ksi
    G  = 11.2e3*units.ksi # * 4/5

    A  = shape.cnn()[0,0]
    GA = A*G
    EI = E*shape.cmm()[1,1]

    L = shape.d*4
    for shear in [0,1]:
        model = create_cantilever(shape,
                                length=L,
                                material={"name": "ElasticIsotropic", "E": E, "G": G},
                                element=os.environ.get("Element", "ForceFrame"),
                                section="ShearFiber",
                                shear=shear,
                                ne=1,
                                nen=2
                )

        P = 10
        analyze(model, P)

        end = len(model.getNodeTags()) - 1
        uz = model.nodeDisp(end, 3)
        u_euler = P*L**3/(3*EI)
        u_shear = P*L/GA * shear

        print(f"Uz = {uz:.6f}, Uz theory = {u_euler+u_shear:.6f} ({u_euler:.6f} + {u_shear:.6f})")

        model.eval(f"verify value [nodeDisp {end} 3] {u_euler+u_shear:.12f} 1e-6")

    # a = veux.create_artist(model)
    # a.draw_sections()
    # veux.serve(a)
