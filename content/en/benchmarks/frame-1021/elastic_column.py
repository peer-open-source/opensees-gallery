import opensees.openseespy as ops
import matplotlib.pyplot as plt
from xara.units.iks import inch, MPa
from compression import make_concrete
from veux.motion import Motion
import veux
import json

if __name__ == "__main__":
    
    model = ops.Model(ndm=3, ndf=6)

    depth = 24*inch
    width = 24*inch
    ne = 3
    nen = 2
    nn = ne*(nen-1)+1 # Total number of nodes
    slenderness = 0.1

    L = depth/slenderness

    with open("mesh1.json", "r") as f:
        fibers = json.load(f)

    model.material("ElasticIsotropic", 3, 7e3, 0.2) # Elastic Isotropic Concrete

    # Concrete material (units = N, mm)
    E = 33000.0
    v = 0.2
    fc = 48.3
    ft = fc/10.0
    ec = 2.0*fc/E
    Gt = 0.073*fc**0.18
    Gc = 2.0*Gt*(fc/ft)**2
    Te, Ts, Td, Ce, Cs, Cd, lch_ref = make_concrete(E, ft, fc, ec, Gt, Gc)
    for i in Ts: i=i*MPa
    for i in Cs: i=i*MPa
    model.nDMaterial('ASDConcrete3D', 1,
        E*MPa, v, # elasticity
        '-Te', *Te, '-Ts', *Ts, '-Td', *Td, # tensile law
        '-Ce', *Ce, '-Cs', *Cs, '-Cd', *Cd, # compressive law
        '-autoRegularization', lch_ref # use auto regularization: the input Gt and Gc are NOT specific fracture energies
        )
    
    # Steel material
    model.nDMaterial("J2Plasticity", 2, 11154, 24167, 60, 90, 0.0, 0.01)

    model.section("ShearFiber", 1)
    for fiber in fibers:
        if fiber["material"]["name"]=="Concrete":
            mat_tag=1
        else: mat_tag=2

        model.fiber(fiber["location"][0]*inch - width/2, 
                    fiber["location"][1]*inch - depth/2, 
                    warp=[[0.0,0.0,0.0],[0.0,0.0,0.0],[0.0,0.0,0.0]],
                    area=fiber["area"],
                    #area=1,
                    material=mat_tag, 
                    section=1)

    for node in range(nn):
        model.node(node+1, (0, 0, node*L/(nn-1)))

    model.geomTransf("Linear", 1, (-1, 0, 0))
    for i in range(ne):
        nodes = tuple(range(i*(nen-1)+1, i*(nen-1)+nen+1))
        model.element("ForceFrame", i+1, nodes, section=1, transform=1)

    model.fix(1, (1,1,1,1,1,1))

    artist = veux.create_artist(model, vertical=3)
    artist.draw_axes(extrude=True)
    artist.draw_origin()
    artist.draw_outlines()
    artist.draw_sections()

    # Note: needed to change veux model.py alpha bound_ratio from 0.01 to 0.0025
    veux.serve(artist)

    # Pushover analysis
    model.initialize()

    model.loadConst(time=0.0)
    steps = 200
    H = 1000.0 		# Reference lateral load
    K = 2000.0
    model.pattern("Plain", 1, "Linear")
    model.load(4, (H, -K, 0.0, 0.0, 0.0, 0.0), pattern=1)

    #model.system("ProfileSPD")
    #model.constraints("Transformation")
    #model.numberer("RCM")
    #model.algorithm("Newton")

    dU = 0.1
    maxU = 5.0	        # Max displacement
    numSteps = int(maxU/dU)
    model.integrator("DisplacementControl",4,1,dU,1,dU,dU)

    #model.integrator("LoadControl",1/steps)

    model.test("NormDispIncr", 1.0e-12, 1000, 5)
    model.analysis("Static")

    # motion = Motion(artist)
    u, p = [], []
    u.append(model.nodeDisp(4, 1))
    p.append(model.getTime())
    status = ops.successful

    #for i in range(1, steps):
    #        if model.analyze(1) != 0:
    #            break
    #        u.append(model.nodeDisp(4, 1))
    #        p.append(model.getTime())
    #        #motion.advance(time=model.getTime())
    #        #motion.draw_sections(rotation=model.nodeRotation, position=model.nodeDisp)

    while status == ops.successful and u[-1] < maxU:
        print(u[-1])
        status = model.analyze(1)

        # if the analysis failed, try initial tangent iteration
        if status != ops.successful:
            print("... Newton failed, trying initial stiffness")
            model.test("NormDispIncr", 1.0e-12, 1000, 5)
            model.algorithm("ModifiedNewton", initial=True)
            status = model.analyze(1)
            if status == ops.successful:
                print("... that worked, back to regular Newton")
            model.test("NormDispIncr", 1.0e-12, 10)
            model.algorithm("Newton")

        u.append(model.nodeDisp(4, 1))
        p.append(model.getTime())
        # motion.advance(time=model.getTime())
        # motion.draw_sections(rotation=model.nodeRotation, position=model.nodeDisp)

    if status != ops.successful:
        raise Exception("Pushover analysis failed")
    
    u4 = model.nodeDisp(4)
    print("u4 = ", u4)

    fig, ax = plt.subplots()
    ax.plot(u,p)
    ax.set_xlabel("Displacement [in]")
    ax.set_ylabel("Force [kips]")
    plt.show()

    # motion.add_to(artist.canvas)
