import opensees.openseespy as ops

m = ops.Model(ndm=3, ndf=6)

m.node(1, (0,0,0))
m.node(2, (1,2,3))
m.fix(1, (1,1,1, 1,1,1))

m.geomTransf("Corotational", 1, (0,0,1))
m.section("ElasticFrame", 1, A=1, Iy=1, Iz=1, J=1, G=1, E=1, Ay=1, Az=1)
m.element("ForceFrame", 1, (1,2), transform=1, section=1)

m.pattern("Plain", 1, "Linear", loads={2: (0.2,1,1, 0, 0.3,0)})
m.integrator("LoadControl", 0.001)
m.test("FixedNumIter", 1)
m.analysis("Static")
m.analyze(1, operation="increment")
m.analyze(1, operation="iteration")
m.analyze(1, operation="iteration")
