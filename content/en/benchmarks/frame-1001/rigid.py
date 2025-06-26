import numpy as np
import veux
import sys
import matplotlib.pyplot as plt
try:
    pass # plt.style.use("typewriter")
except:
    pass

def _fix_node(model, node, type):
    ndf = model.getNDF()
    reactions = [0 for _ in range(ndf)]

    long, tran, vert = range(3)
    if ndf == 6:
        bend = vert+3
        # always fix out-of-plane rotation, which spins
        # about the transverse DOF
        reactions[tran+3] = 1
        reactions[long+3] = 1 # torsion
        reactions[2] = 1
    else:
        bend = vert


    if node > 1:
        vert = 0
    else:
        vert = 1

    if type == "fix":
        reactions[tran] = 1
        reactions[long] = 0 if node > 1 else 1
        reactions[bend] = 1

    elif type == "pin":
        reactions[tran] = 1
        reactions[long] = 0 if node > 1 else 1
        reactions[bend] = 0

    elif type == "slide":
        reactions[tran] = 0
        reactions[long] = 0 if node > 1 else 1
        reactions[bend] = 1

    elif type == "free":
        pass

    model.fix(node, *reactions)
    return reactions


def create_prism(length:    float,
                 element:   str,
                 section:   dict,
                 boundary:  tuple,
                 orient: tuple  = (0, 0, 1),
             #   orient = (0,  -1, 0)
                 geometry:  str = None,
                 transform: str = None,
                 divisions: int = 1,
                 rotation = None,
                 ndm=3):
    import opensees.openseespy as ops

    L  = length

    # Number of elements discretizing the column
    ne = divisions

    elem_type  = element
    geom_type  = transform

    nn = ne + 1

    model = ops.Model(ndm=ndm)

    for i in range(1, nn+1):
        x = (i-1)/float(ne)*L
        if ndm == 3:
            location = (x, 0.0, 0.0)
        else:
            location = (x, 0.0)

        if rotation is not None:
            location = tuple(rotation@location)

        model.node(i, location)

        model.mass(i, *[1.0]*model.getNDF())


    # Define boundary conditions
    if isinstance(boundary[0], str):
        _fix_node(model,  1, boundary[0])
    else:
        model.fix(1, boundary[0])

    if isinstance(boundary[1], str):
        _fix_node(model, nn, boundary[1])
    else:
        model.fix(nn, boundary[1])

    #
    # Define cross-section 
    #
    sec_tag = 1
    properties = []
    for k,v in section.items():
        properties.append("-" + k)
        properties.append(v)

    model.section("FrameElastic", sec_tag, *properties)

    # Define geometric transformation
    geo_tag = 1
    if ndm == 3:
        if rotation is not None:
            orient = tuple(map(float, rotation@orient))
    else:
        orient = ()

    model.geomTransf(geom_type, geo_tag, *orient)

    # Define elements
    for i in range(1, ne+1):
        if geometry is None or geometry == "Linear" or "Exact" in elem_type:
            model.element(elem_type, i, (i, i+1),
                        section=sec_tag,
                        shear=1,
                        transform=geo_tag)
        else:
            model.element(elem_type, i, (i, i+1),
                        section=sec_tag,
                        order={"Linear": 0, "delta": 1}[geometry],
                        transform=geo_tag)

    return model


def analyze_moment(element, scale=1/8, steps=1, ne=5):

    E  = 1.0
    I  = 2.0
    length = 1.0
    model = create_prism(
        length = length,
        element = element,
        section = dict(
            E   = E,
            G   = 1.0,
            A   = 2.0,
            J   = 2.0,
            Iy  = I,
            Iz  = I,
            Ay  = 2.0,
            Az  = 2.0),
        boundary = ("fix","free"),
        transform = "Rigid",
        divisions = ne
    )

    for node in model.getNodeTags():
        model.nodeRotation(node)

    model.test("EnergyIncr", 1e-7, 100, 1)

    model.pattern("Plain", 1, "Linear", load={
        ne+1: [0, 0, 0] + [0, 0, -1]}
    )

    model.integrator("LoadControl", 2*np.pi*(E*I/length)*scale/steps)
    model.analysis("Static")


    for i in range(steps):
        if model.analyze(1) != 0:
            break
            raise RuntimeError(f"Failed at step {i}")


    return model


if __name__ == "__main__":
    import veux
    m = analyze_moment(scale=1.1, steps= 40, ne=15,
                   element="PrismFrame")
    a = veux.create_artist(m)
    a.draw_outlines()
    a.draw_outlines(state=m.nodeDisp)
    veux.serve(a)

