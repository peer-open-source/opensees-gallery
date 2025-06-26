import numpy as np
import aisc25

class Column:
    def __init__(self, E, I, L, H, Pr, w=None):
        self.E = E
        self.I = I
        self.L = L
        self.H = H
        self.Pr = Pr
        self.w = w

    def create_model():
        pass 

class Case1:
    # Cantilever with tip loads
    def __init__(self, E, I, L, H, Pr):
        Pe = (np.pi**2 * E * I) / L**2
        self.Pe = Pe
        lam = (np.pi / 2) * np.sqrt(Pr / Pe)
        self.u = (H * L**3 / (3 * E * I)) * (3 * (np.tan(2 * lam) - 2 * lam) / (2 * lam)**3)
        self.M = H * L * (np.tan(2 * lam) / (2 * lam))
        self.xu = L

class Case2:
    # 
    def __init__(self, E, I, L, H, Pr):
        lam = (np.pi / 2) * np.sqrt(Pr / ((np.pi**2 * E * I) / L**2))
        self.u = (H * L**3 / (12 * E * I)) * (3 * (np.tan(lam) - lam) / lam**3)
        self.M = (H * L / 2) * (np.tan(lam) / lam)
        self.xu = L

class Case3:
    def __init__(self, E, I, L, Pr, w):
        lam = (np.pi / 2) * np.sqrt(Pr / ((np.pi**2 * E * I) / L**2))
        self.u = (5 * w * L**4 / (384 * E * I)) * (12 * (2 / np.cos(lam) - lam**2 - 2) / (5 * lam**4))
        self.M = (w * L**2 / 8) * (2 * (1 / np.cos(lam) - 1) / lam**2)
        self.xu = L/2

class Case4:
    def __init__(self, E, I, L, Pr, w):
        lam = (np.pi / 2) * np.sqrt(Pr / ((np.pi**2 * E * I) / L**2))

        num = 12 * (2 - 2 * np.cos(lam) - lam * np.sin(lam))
        den = lam**3 * np.sin(lam)
        self.u = (w * L**4 / (384 * E * I)) * (num / den)

        self.M = (w * L**2 / 12) * ((3 * (np.tan(lam) - lam)) / (lam**2 * np.tan(lam)))
        self.xu = L/2

class Case5:
    def __init__(self, E, I, L, Pr, w):
        lam = (np.pi / 2) * np.sqrt(Pr / ((np.pi**2 * E * I) / L**2))
        sec_lam = 1 / np.cos(lam)
        tan_lam = np.tan(lam)
        tan_2lam = np.tan(2 * lam)

        den_common = (1 / (2 * lam)) - (1 / tan_2lam)
        num_inner = (tan_lam - lam) * (sec_lam - 1)

        inner_term = (2 * sec_lam - 2 * lam - 2) - (num_inner / den_common)
        self.u = (w * L**4 / (192 * E * I)) * (6 / lam**4) * inner_term

        self.M = (w * L**2 / 8) * (2 * (tan_lam - lam) / (lam**2 * den_common))
        self.xu = L/2
    
    def _fix(self, model, i, j, ndm):
        model.fix(i, ())


if __name__ == "__main__":
    from xara.units.iks import inch, ksi, ft, kip
    A =  14.1
    I =  484.0
    d =  13.8
    tw = 0.340
    section = dict(
            E  = 29000.0,
            I = 484.0*inch**4
    )

    c2 = Case1(**section,
              L=28*ft, 
              H=1*kip,
              Pr=150*kip)

    print("M: ", c2.M)
    print("u: ", c2.u)
