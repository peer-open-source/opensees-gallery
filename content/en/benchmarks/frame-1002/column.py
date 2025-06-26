#
# Cantilever
#
import os
import time
from xsection.library import WideFlange
import opensees.openseespy as ops

# External libraries
import numpy as np
import matplotlib.pyplot as plt


def create_cantilever(shape,
                      slenderness,
                      element,
                      section,
                      transform="Rigid",
                      shear=0,
                      ne=8):

    E = 29e3 # ksi
    v = 0.30 # 0.5*E/G - 1
    G = 0.5*E/(1+v) # 11,200 ksi

    L  = shape.d/slenderness
    nen = 2
    nn = ne*(nen-1)+1

    model = ops.Model(ndm=3, ndf=6)

    mat = 1
    sec = 1
    model.material('ElasticIsotropic', mat, E, v)


    if section == "Elastic":
        cmm = shape.torsion.cmm()
        cnn = shape.torsion.cnn()
        cnv = shape.torsion.cnv()
        cnm = shape.torsion.cnm()
        cmw = shape.torsion.cmw()
        A = cnn[0,0]
        model.section("ElasticFrame", sec,
                        E=E,
                        G=G,
                        A=A,
                        Ay=1*A,
                        Az=1*A,
                        Qy=cnm[0,1],
                        Qz=cnm[2,0],
                        Iy=cmm[1,1],
                        Iz=cmm[2,2],
                        J =shape.torsion_constant(),
                        Ry= cnv[1,0],
                        Rz=-cnv[2,0],
                        Sy= cmw[1,0],
                        Sz=-cmw[2,0]
        )
    else:
        model.section("ShearFiber", 1, GJ=0)
        for fiber in shape.create_fibers():
            model.fiber(**fiber, material=mat, section=1)


    model.geomTransf(transform, 1, (0,0,1))

    for i,x in enumerate(np.linspace(0, L, nn)):
        model.node(i, (x,0,0))

    for i in range(ne):
        start = i * (nen - 1)
        nodes = tuple(range(start, start + nen))
        model.element(element, i+1, nodes, section=sec, transform=1, shear=shear)


    model.fix(0,     (1,1,1,  1,1,1))
    model.fix(nn-1,  (0,0,0,  0,0,0))
    return model


def analyze(model):

    end = len(model.getNodeTags()) - 1
    #
    # Apply loading
    #
    nsteps =  200
    Mmax   =  1e3/3
    model.pattern("Plain", 1, "Linear")
    model.load(end, (0,1,0,  0,0,0), pattern=1)

    model.system('Umfpack')
    model.integrator("LoadControl", Mmax/nsteps)
    model.test('NormDispIncr',1e-9, 500, 0) #50 #20
    model.algorithm("Newton")
    model.analysis("Static")

    ux = []
    uy = []
    P  = []
    ni = []
    L  = shape.d/slenderness

    start = time.time()
    while model.getTime() < Mmax:
        ux.append(1+model.nodeDisp(end, 1)/L)
        uy.append(  model.nodeDisp(end, 2)/L)
        P.append(model.getTime())
        if model.analyze(1) != 0:
            print(f"Failed at time = {model.getTime()/Mmax}")
            break
        ni.append(model.numIter())

    end = time.time()
    print(f"{end - start}\t{sum(ni)/len(ni)}")

    return ux, uy, P



if __name__ == "__main__":
    slenderness = 1/10
    shape = WideFlange(
                tf = 0.93,
                tw = 0.9, #0.58,
                d  = 21.62,
                b  = 8.42,
            )

    markers = iter([":", "--", "-."])
    colors  = iter(["#999393", "#1f77b4", "#ff7f0e", "#2ca02c"])
    fig, ax = plt.subplots()


    color = "#9E9E9E"
    ux,uy,P = analyze(create_cantilever(shape, slenderness,
                                ne=20,
                                shear=1,
                                section = "ShearFiber",
                                element = "ExactFrame",
                                transform="Linear"))

    ax.plot(uy, P, "-", color=color)
    ax.plot(ux, P, "-", color=color)



    for transform in "Linear", "Corotational", "Rigid": #
        print(f"Transform: {transform}")
        model = create_cantilever(shape,
                                slenderness,
                                section = os.environ.get("Section", "ShearFiber"),
                                element = os.environ.get("Element", "PrismFrame"),
                                transform=transform)

        ux, uy, P = analyze(model)


        marker = next(markers)
        color  = next(colors)
        ax.plot(uy, P, marker, color=color, label=transform)
        ax.plot(ux, P, marker, color=color)


    G = 11.2e3
    E = 29e3

    ax.set_xlabel(r"Drift, $u_y/L$")
    ax.set_ylabel("Load, $P$")
    ax.set_xlim([0, 1.25])
    ax.set_ylim([0, None])
    ax.axvline(0, color='black', linestyle='-', linewidth=1)
    ax.axhline(0, color='black', linestyle='-', linewidth=1)
    ax.legend()

    fig.savefig("img/frame-0002.png")
    plt.show()



