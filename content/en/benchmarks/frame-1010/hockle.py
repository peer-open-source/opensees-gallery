#
# Hockling problem, as desribed by Perez and Filippou (2024).
#
# https://onlinelibrary.wiley.com/doi/10.1002/nme.7506
#
import os
from xara.helpers import Prism
from shps.rotor import exp
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
            Ay  = A,
            Az  = A),
        boundary = ((1,1,1, 1,1,1),
                    (0,1,1, 0,1,1)),
        transform = "Rigid",
        divisions = ne,
        rotation = exp([0,  0.0, 0.005])
    )

    model = prism.create_model()


    #
    # Analysis
    #
    scale = 5 #0.0
    steps = 65
    Tref = 2*E*I/prism.length
    model.test("EnergyIncr", 1e-9, 52, 1)
#   model.test("NormDispIncr", 1e-8, 50, 1)
#   model.test("RelativeNormDispIncr", 1e-6, 50, 1)

    f = [0, 0, 0] + list(map(float, prism.rotation@[Tref, 0, 0]))
    model.pattern("Plain", 1, "Linear", load={
        ne+1: f
    })

    model.integrator("MinUnbalDispNorm", 1, 5,  1/steps/1000, 1)
#   model.integrator("MinUnbalDispNorm", 1/30, 5,  1/steps/1000, 1/20, det=True)
#   model.integrator("LoadControl", 1/steps, 5, 1/steps/100, 1.5/steps) #scale/steps)
#   model.integrator("ArcLength", 1/64, det=True, exp=0.5)
    model.system("Umfpack")
    model.analysis("Static")

    artist = veux.create_artist(model)
    artist.draw_axes()
    artist.draw_outlines()

    u = []
    lam = []
    time = []

    for i in range(400):
        u.append(model.nodeDisp(ne+1, 4)/np.pi)
        time.append(model.getTime())
        lam.append(model.getLoadFactor(1))

        if model.analyze(1) != 0:
            break
            raise RuntimeError(f"Failed at step {i}")

#       artist.draw_outlines(state=model.nodeDisp)
    import matplotlib.pyplot as plt
    plt.plot(u, lam, '.')
    plt.plot(u, time, '.')
    plt.show()

#   veux.serve(artist)


