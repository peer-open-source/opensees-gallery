## CE 221+222 Final Project - Jose Yeckle
# Shear analysis of a RC column section

from sectionproperties.analysis import Section
from sectionproperties.pre import Material
from sectionproperties.pre.library import concrete_rectangular_section
import sectionproperties.analysis.fea as fea
import numpy as np
import json
import veux

def create_fibers(sec, elements):
    fibers = []
    # Nodes 0, 1, 2 correspond to vertices of T3/T6
    for triangle in elements:
        # Triangle is a list of indices that identify the nodes
        # of a given triangle
        # quad = [
        #     [(1/3, 1/3, 1/3), 1]
        # ]
        #quad = [
        #    [(2/3, 1/6, 1/6), 1/3],
        #    [(1/6, 2/3, 1/6), 1/3],
        #    [(1/6, 1/6, 2/3), 1/3]
        #]
        n=3
        gauss = fea.gauss_points(n=n)
        # Result:
        # [[0.3, 0.67, 0.17, 0.17],
        #  [0.3, 0.17, 0.67, 0.17],
        #  [0.3, 0.17, 0.17, 0.67]]

        # for i in range(n):
        #    quad[i]=[(gauss[i][1],gauss[i][2],gauss[i][3]),gauss[i][0]]

        area = triangle.geometric_properties()[0]
        # material=triangle.material
        material={}
        attributes=["name","elastic_modulus","poissons_ratio","density","yield_strength","color"]

        for i in attributes:
            prop=getattr(triangle.material,i)
            material[i] = prop

        # for point, weight in quad:
        for point in gauss:
            # Compute N, B, J, and geometric coordinates
            N, B, j, nx, ny = fea.shape_function(triangle.coords,point)
            fiber = {
                "location": (nx,ny),
                "area": area*point[0],
                "material": material
            }

            omega = [
                np.dot(N,sec.section_props.omega[triangle.node_ids]),
                *list(np.dot(B,sec.section_props.omega[triangle.node_ids]))
                # sum(sec.section_props.omega[triangle[T3]])/3, # omega
                # *B@omega[triangle[T3]] # omega_{,x} and omega_{,y}
            ]
            # print(omega)

            phi = [
                np.dot(N,sec.section_props.phi_shear[triangle.node_ids]),
                *list(np.dot(B,sec.section_props.phi_shear[triangle.node_ids]))
            ]

            psi = [
                np.dot(N,sec.section_props.psi_shear[triangle.node_ids]),
                *list(np.dot(B,sec.section_props.psi_shear[triangle.node_ids]))
            ]

            fiber["warp"] = [omega, phi, psi]

            fibers.append(fiber)
    return fibers

def render_field(sec, name):
    field = getattr(sec.section_props, name)

    depth = 24
    scale = float((depth/5)/max(field))

    artist = veux.create_artist((
        geom.mesh["vertices"], geom.mesh["triangles"]), ndf=1)
    artist.draw_surfaces(state=lambda i: field[i], scale=scale)
    veux.serve(artist)

# Define the concrete material
# Model.material("ElasticIsotropic", tag, E, v, rho=0.0)

fpc = -7

concrete = Material(
    name = "Concrete",
    elastic_modulus = 57e3*np.sqrt(-fpc*1e3),   # psi
    poissons_ratio = 0.2,                   
    density = 145/1728,                         # lb/in3
    yield_strength = -fpc*1000,                 # psi, probably not relevant for EI
    color = "lightgrey"                     
)

# Define the steel material
# Model.nDMaterial("J2Plasticity", tag, K, G, Fy, Fs, Hsat, Hiso)
# K=E/2(1+v), G=E/3(1-2v), Fy=60ksi, Fs=90ksi?, Hsat=0, Hiso=0.01

steel = Material(
    name = "Steel",
    elastic_modulus = 2.9e7,                    # psi
    poissons_ratio = 0.3,                   
    density = 0.29,                             # lb/in3
    yield_strength = 6e4,                       # psi, probably not relevant for EI
    color = "grey"                              # Missing: Fs, Hsat, Hiso
)                                           

# Create the geometry
geom = concrete_rectangular_section(
    d = 24,                 # in                     
    b = 24,                 # in
    dia_top = 8/8,          # in
    area_top = 0.79,        # nominal in2
    n_top = 4,
    c_top = 2*8/8,          # in
    dia_bot = 8/8,          
    area_bot = 0.79,
    n_bot = 4,
    c_bot = 2*8/8,
    dia_side = 8/8,
    area_side = 0.79,
    n_side = 2,
    c_side = 2*8/8,
    n_circle = 8,
    conc_mat = concrete,
    steel_mat = steel
)

# Create mesh and analytical section
geom.create_mesh(mesh_sizes=[2], coarse=True)
sec = Section(geometry=geom)
sec.plot_mesh()
# print(sec.mesh)
# print(sec.elements)                    

# Sectional analysis
sec.calculate_geometric_properties()
sec.calculate_warping_properties()
#print(sec.section_props.omega) 

#for triangle in sec.elements:
#    #print(triangle.geometric_properties()[0])
#    n=3
#    gauss_format=fea.gauss_points(n=n)
#    #print(gauss_format)
#    print(triangle.coords)
#    shape=[]
#    for i in 0,1,2:
#        shape_i=fea.shape_function(triangle.coords, gauss_format[i])
#        shape.append(shape_i)
#    print(shape)

# Obtain information from mesh to define fibers
fibers = [
    {
        "location": vertex.tolist(),
        "warp": [[float(omega), 0, 0], 
                 [  float(psi), 0, 0], 
                 [  float(phi), 0, 0]],
    }
    for vertex, omega, psi, phi in zip(geom.mesh["vertices"],
                             sec.section_props.omega,
                             sec.section_props.psi_shear,
                             sec.section_props.phi_shear)
]
# print(fibers)

fibers1 = create_fibers(sec, sec.elements)
# print(fibers1)

# render_field(sec, "psi_shear")

path_to_file = "./mesh.json"
with open(path_to_file,"w") as file:
    json.dump(fibers,file)

path_to_file = "./mesh1.json"
with open(path_to_file,"w") as file:
    json.dump(fibers1,file)