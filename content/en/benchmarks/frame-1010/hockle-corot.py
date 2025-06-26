from xara.helpers import Prism
from shps.rotor import exp
import os
import numpy as np
import veux

if __name__ == "__main__":

    ne = 20
    E  = 71_240
    G  = 27_190
    I  = 0.0833
    A  = 10.0
    prism = Prism(
        length = 240.,
        element = os.environ.get("Element", "ExactFrame"),
        section = dict(
            E   = E,
            G   = G,
            A   = A,
            J   = 2.16,
            Iy  = I,
            Iz  = I,
            Ay  = A*100,
            Az  = A*100),
        boundary = ((1,1,1, 1,1,1),
                    (0,1,1, 0,1,1)),
        transform = "Rigid", #"Corotational", #"Rigid", #
        divisions = ne,
        rotation = exp([0,  0.0, 0.005])
    )

    model = prism.create_model()
#   model.fix(ne+1, (0, 1, 1, 0, 1, 1))


    #
    #
    #
    scale = 5 #0.0
    steps = 65
    Tref = 2*E*I/prism.length
    model.test("EnergyIncr", 1e-7, 1000, 1)
#   model.test("NormDispIncr", 1e-8, 50, 1)
#   model.test("RelativeNormDispIncr", 1e-6, 50, 1)

    f = [-0*1e-3, 0, 0] + list(map(float, prism.rotation@[Tref, 0, 0]))
    model.pattern("Plain", 1, "Linear", load={
        ne+1: f
    })

    model.integrator("MinUnbalDispNorm", scale/300, 8, scale/steps/300, scale/200)
#   input()
#   model.integrator("ArcLength", 0.01) #, 5,  scale/steps/1000, scale/100) #scale/steps)

    model.system("BandGen", det=True)
    model.analysis("Static")

    artist = veux.create_artist(model)
    artist.draw_axes()
    artist.draw_outlines()

    u = []
    lam = []
    time = []

    iters = []

    for i in range(1000):
        u.append(model.nodeDisp(ne+1, 4)/np.pi)
        time.append(model.getTime())
        lam.append(model.getLoadFactor(1))

        if model.analyze(1) != 0:
            break
            raise RuntimeError(f"Failed at step {i}")
#           model.test("EnergyIncr", 1e-6, 200, 1)
        iters.append(model.numIter())
    print(sum(iters)/len(iters))

#       artist.draw_outlines(state=model.nodeDisp)
    import matplotlib.pyplot as plt
    fig, ax = plt.subplots()
    ax.plot(u, lam, '-')
    ax.plot(u, time, '.', markersize=1)
    fig, ax = plt.subplots()
    ax.plot(lam,'.')
    plt.show()

#   veux.serve(artist)


