# Test of the warping DOF
# Linear 7-DOF analysis of a cantilever subjected to a torque
#
import os
import sys

import veux
from veux.motion import Motion
from xsection.library import WideFlange, HollowRectangle, Channel, Rectangle, Circle

import opensees.openseespy as ops

# External libraries
import numpy as np
import matplotlib.pyplot as plt
try:
    plt.style.use("veux-web")
except:
    pass

def create_cantilever(aspect,
                      shape,
                      case="a",
                      element="ExactFrame",
                      section="Elastic"):

    E = 29e3 # ksi
    v = 0.30 #0.5*E/G - 1
    G = 0.5*E/(1+v) # 11,200 ksi

    L   = shape.d/aspect #240
    ne  =  20 # 20
    nen = 2
    nn = ne*(nen-1)+1

    model = ops.Model(ndm=3, ndf=7)

    model.eval(f"set E {E}")
    model.eval(f"set G {G}")
    model.eval(f"set L {L}")

    mat = 1
    sec = 1
    model.material('ElasticIsotropic', mat, E, v)


    if section == "Elastic":
        cmm = shape.cmm()
        cnn = shape.cnn()
        cnv = shape.cnv()
        cnm = shape.cnm()
        cmw = shape.cmw()
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
                        J =shape.torsion.torsion_constant(),
                        Ry= cnv[1,0],
                        Rz=-cnv[2,0],
                        Sy= cmw[1,0],
                        Sz=-cmw[2,0]
        )
    else:


        model.section("ShearFiber", 1, GJ=0)


        for fiber in shape.create_fibers():

            model.fiber(**fiber, material=mat, section=1)



    model.geomTransf("Linear", 1, (0,0,1))


    for i,x in enumerate(np.linspace(0, L, nn)):
        model.node(i, (x,0,0))

    for i in range(ne):
        start = i * (nen - 1)
        nodes = list(range(start, start + nen))
        model.element(element, i+1, nodes, section=1, transform=1, shear=1)

    wi = int(case in "cb")
    wj = int(case in "c")

    model.fix(0,     (1,1,1,  1,1,1, wi))
    model.fix(nn-1,  (0,0,0,  0,0,0, wj))
    return model, shape


if __name__ == "__main__":
    slenderness = 0.5
    th = 0.05 #0.05
    depth = 20
    # shape = Channel(
    #             tf=th*depth,
    #             tw=th*depth,
    #             d=depth,
    #             b=depth*0.4,
    #             mesh_scale=1/400 #800
    # )
    # shape = shape.translate(shape._analysis.shear_center())

    # shape = Rectangle(d=depth, b=0.4*depth, mesh_scale=1/200)

    # shape = Circle(depth/2, divisions=8, mesh_scale=1/200)

    # # W21x93
    # shape = WideFlange(
    #             tf = 0.93,
    #             tw = 0.58,
    #             d  = 21.62,
    #             b  = 8.42,
    #             mesh_scale=1/200
    #         )


    shape = HollowRectangle(
                tf = th*depth*2,
                tw = th*depth,
                d  = depth,
                b  = depth*0.4,
                mesh_scale=1/200
            )




    print(shape.summary())

    fig,  ax  = plt.subplots()
    _,    (ax2, ax3) = plt.subplots(2, 1, sharex=True)
    _,    (ax4, ax5) = plt.subplots(2, 1, sharex=True)


    ax2.set_ylabel(r"$\vartheta$")
    ax2.axvline(0, color='black', linestyle='-', linewidth=1)
    ax2.axhline(0, color='black', linestyle='-', linewidth=1)

    ax3.set_xlabel("$x/L$")
    ax3.set_ylabel(r"$\alpha$")
    ax3.axvline(0, color='black', linestyle='-', linewidth=1)
    ax3.axhline(0, color='black', linestyle='-', linewidth=1)

    ax4.set_ylabel(r"$w$")
    ax4.axvline(0, color='black', linestyle='-', linewidth=1)
    ax4.axhline(0, color='black', linestyle='-', linewidth=1)
    ax5.set_ylabel(r"$v$")
    ax5.axvline(0, color='black', linestyle='-', linewidth=1)
    ax5.axhline(0, color='black', linestyle='-', linewidth=1)
    ax5.set_xlabel("$x/L$")

    ax.set_xlabel(r"Twist, $\vartheta$")
    ax.set_ylabel("Torque, $T$")
    # ax.set_xlim([0,    2])
    # ax.set_ylim([0, Mmax])
    ax.axvline(0, color='black', linestyle='-', linewidth=1)
    ax.axhline(0, color='black', linestyle='-', linewidth=1)

    for case in "acb":
        model, shape = create_cantilever(slenderness, shape, case,
                                         section = os.environ.get("Section", "ShearFiber"),
                                         element = os.environ.get("Element", "ExactFrame"))
        end = len(model.getNodeTags()) - 1
        L = model.nodeCoord(end, 1)

        # Apply torsional moment
        nsteps =  15
        Mmax   = 1.2e3
        model.pattern("Plain", 1, "Linear")
#       model.load(0  , (0,0,0,  0,0,0, -1e-3), pattern=1)
        model.load(end, (0,0,0,  1,0,0,  0), pattern=1)

        model.system('Umfpack')
        model.integrator("LoadControl", Mmax/nsteps)
        model.test("NormDispIncr", 1e-12,5,1)
    #   model.test('NormUnbalance',1e-6,10,1)
        model.algorithm("Newton")
        model.analysis("Static")

        u = []
        P = []
        while model.getTime() < Mmax:
            u.append(model.nodeDisp(end, 4))
            P.append(model.getTime())
            if model.analyze(1) != 0:
                print(f"Failed at time = {model.getTime()}")
                break

        model.reactions()

        x = np.array([model.nodeCoord(node, 1) for node in model.getNodeTags()])
        marker = "+x."["abc".index(case)]
        color  = "rbg"["abc".index(case)]
        ax.plot(u, P, marker, color=color, label=case)

        twist = [model.nodeDisp(node,4) for node in model.getNodeTags()]
        ax2.plot(x/L, twist, ":", color=color)
        ax3.plot(x/L,
                [model.nodeDisp(node,7) for node in model.getNodeTags()],
                ":",
                color=color,
                label=case
        )
        rate = np.gradient(twist, x)
        ax3.plot(x/L, rate, marker+"--", color=color)


        xs = [(x+model.nodeCoord(model.eleNodes(tag)[0], 1))/L for tag in model.getEleTags() for x in model.eleResponse(tag, "integrationPoints")]
        ws = [
            model.eleResponse(tag, "section", i+1, "resultant")[6]/(Mmax*L)
            for tag in model.getEleTags()
            for i in range(len(model.eleResponse(tag, "integrationPoints")))
        ]
        ax4.plot(xs, ws, "-", color=color, label=case)
        vs = [
            model.eleResponse(tag, "section", i+1, "resultant")[9]/Mmax
            for tag in model.getEleTags()
            for i in range(len(model.eleResponse(tag, "integrationPoints")))
        ]
        ax5.plot(xs, vs, "-", color=color)

    #
    # Plot the analytical solution
    #
    G = 11.2e3
    E = 29e3
    J = shape._analysis.torsion_constant()
    Cv  = shape.cvv()[0,0]
    Cw  = shape.cww()[0,0]
    eta = 1 + J/Cv
    lam = np.sqrt(G*J/(eta*E*Cw))

    x = np.linspace(0,L,100)
    aL = L*Mmax/(G*J)
    a0 = L*Mmax/(G*J)*(eta - 1)/eta
    a = aL*x/L + (a0 - aL)*np.tanh(lam*L)/(lam*L)*(1 - np.sinh(lam*L*(1 - x/L))/np.sinh(lam*L))
    ax2.plot(x/L, a)


    ax.figure.legend()
    ax3.figure.legend()
    ax4.figure.legend()

    fig.savefig("img/e0011.png")
    ax3.figure.savefig("img/e0011-kinematics.png")
    ax4.figure.savefig("img/e0011-resultants.png")
    plt.show()

