## CE 222 Final Project - Jose Yeckle
# Warp analysis of a RC column section

from sectionproperties.analysis import Section
from sectionproperties.pre import Material
from sectionproperties.pre.library import concrete_rectangular_section
import numpy as np
import veux
import matplotlib.pyplot as plt
import matplotlib.tri as tri

def plot_warping_function(
        section,
        type: str,
        title: str = "Warping Function",
        level: int = 30,
        cmap: str = "viridis",
        alpha: float = 0.2,
        with_lines: bool = True,
        **kwargs,
    ):
        
        if section.section_props.omega is None:
            msg = "Perform a warping analysis before plotting the warping function."
            raise RuntimeError(msg)

        if type=="omega":
            warp=section.section_props.omega
        elif type=="psi_shear":
             warp=section.section_props.psi_shear
        elif type=="phi_shear":
             warp=section.section_props.phi_shear
        
        fig, ax = plt.subplots()
        # create triangulation
        triang = tri.Triangulation(
            section.mesh_nodes[:, 0],
            section.mesh_nodes[:, 1],
            section.mesh_elements[:, 0:3],
        )

        if with_lines:
            ax.tricontour(  # pyright: ignore
                triang,
                warp,
                colors="k",
                levels=level,
            )

        contours=ax.tricontourf(  # pyright: ignore
            triang,
            warp,
            cmap=cmap,
            levels=level,
        )

        fig.colorbar(contours)
        fig.set_alpha(alpha=alpha)
        
        # plot the finite element mesh
        section.plot_mesh(alpha=alpha, materials=False, **dict(kwargs, ax=ax))
        ax.set_title(title)
        plt.show()

        return ax

def render_field(sec, name):
    field = getattr(sec.section_props, name)

    depth = 24
    scale = float((depth/5)/max(field))

    artist = veux.create_artist((
        geom.mesh["vertices"], geom.mesh["triangles"]), ndf=1)
    artist.draw_surfaces(state=lambda i: field[i], field=field, scale=scale)
    artist.draw_outlines(state=lambda i: field[i], scale=scale)
    veux.serve(artist)

def render_stress(sec,name,stress_field):
    field = getattr(sec.section_props, name)

    depth = 24
    scale = float((depth/5)/max(field))

    artist = veux.create_artist((
        geom.mesh["vertices"], geom.mesh["triangles"]), ndf=1)
    artist.draw_surfaces(state=lambda i: field[i], field=stress_field, scale=scale)
    artist.draw_outlines(state=lambda i: field[i], scale=scale)
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
    dia_top = 8/8,          # in (Cases 1&3=8/8, Case 2=5/8)
    area_top = 0.79,        # nominal in2 (Cases 1&2=0.79, Case 2=0.31)
    n_top = 6,              # Cases 1&3=4, Case 2=6
    c_top = 2*8/8,          # in
    dia_bot = 8/8,          # Cases 1&3=8/8, Case 2=5/8
    area_bot = 0.79,        # Cases 1&2=0.79, Case 2=0.31
    n_bot = 6,              # Cases 1&3=4, Case 2=6
    c_bot = 2*8/8,
    dia_side = 8/8,         # Cases 1&3=8/8, Case 2=5/8
    area_side = 0.79,       # Cases 1&2=0.79, Case 2=0.31
    n_side = 4,             # Cases 1&2=2, Case 2=4
    c_side = 2*8/8,
    n_circle = 16,           # Case 1=8, Case 2=16, Case 3=4
    conc_mat = concrete,
    steel_mat = steel
)

# Create mesh and analytical section
geom.create_mesh(mesh_sizes=[0.5], coarse=False)  # Case 1=1, Case 2=0.5, Case 3: Coarse
sec = Section(geometry=geom)
sec.plot_mesh()                        

# Geometric analysis
sec.calculate_geometric_properties()
sec.calculate_warping_properties()
ej = sec.get_ej(e_ref=concrete)
print(f"EJ = {ej:.3e} in6")

print(len(sec.mesh['vertices']))                # Show #Nodes (extrapolate to DOFs)
# print(sec.mesh['vertices'])
# print(sec.elements)

# Display field using veux and matplotlib
plot_warping_function(sec,"omega")
plot_warping_function(sec,"psi_shear","Psi Shear Function")
plot_warping_function(sec,"phi_shear","Phi Shear Function")
#render_field(sec, "omega")
#render_field(sec, "psi_shear")
#render_field(sec, "phi_shear")

# Display stress results
torsion_stress=sec.calculate_stress(mzz=120000)

stressgroups=torsion_stress.get_stress()
stress_field=stressgroups[0]["sig_zxy_mzz"]+stressgroups[1]["sig_zxy_mzz"]
#stress_field=stressgroups[1]["sig_zxy_mzz"]    # See stresses on Concrete (0) or Steel (1)
render_stress(sec,"omega",stress_field)

#torsion_stress.plot_stress("mzz_zx")
#torsion_stress.plot_stress("mzz_zy")
torsion_stress.plot_stress("mzz_zxy",normalize=False)
torsion_stress.plot_stress_vector("mzz_zxy")