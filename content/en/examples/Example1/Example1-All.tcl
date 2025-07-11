# ===----------------------------------------------------------------------===//
# 
#         OpenSees - Open System for Earthquake Engineering Simulation    
#                Structural Artificial Intelligence Laboratory
# 
# ===----------------------------------------------------------------------===//
#
# Portal Frame Example 1
# ----------------------
#  Reinforced concrete one-bay, one-story frame
#  Distributed vertical load on girder
# 
# Example Objectives
# -----------------
#  Nonlinear beam-column elements
#  Gravity load analysis and eigenvalue analysis
#
# 
# Units: kips, in, sec
#
# Written: GLF/MHS/fmk
# Date: January 2001

# ------------------------------
# Start of model generation
# ------------------------------
#
set types {truss CorotTruss}
set types {truss}

foreach eleType $types {
    
    # Create ModelBuilder (with two-dimensions and 2 DOF/node)
    wipe
    model BasicBuilder -ndm 2 -ndf 2
    
    # Create nodes
    # ------------

    # Create nodes & add to Domain - command: node nodeId xCrd yCrd
    node 1   0.0  0.0
    node 2 144.0  0.0
    node 3 168.0  0.0
    node 4  72.0 96.0
    
    # Set the boundary conditions - command: fix nodeID xResrnt? yRestrnt?
    fix 1 1 1 
    fix 2 1 1
    fix 3 1 1
    
    # Define materials for truss elements
    # -----------------------------------
    
    # Create Elastic material prototype - command: uniaxialMaterial Elastic matID E
#   uniaxialMaterial Elastic 1 3000
    material Elastic 1 3000 0.2
    section Elastic 1 3000 5.0 10000
    
    # Define elements
    # ---------------
    
    # Create truss elements - command: element truss trussID node1 node2 A matID
    element $eleType 1 1 4 10.0 1
    element $eleType 2 2 4  5.0 1
    element $eleType 3 3 4  1
    
    
    # Define loads
    # ------------
    
    # Create a Plain load pattern with a linear TimeSeries
    pattern Plain 1 "Linear" {
        # Create the nodal load
        #    nodeID xForce yForce
        load      4    100    -50
    }

    
    # ------------------------------
    # Start of analysis generation
    # ------------------------------
    
    # Create the system of equation, a SPD using a band storage scheme
    system BandSPD

    # Create the DOF numberer, the reverse Cuthill-McKee algorithm
    numberer RCM

    # Create the constraint handler, a Plain handler is used as homo constraints
    constraints Plain

    # Create the integration scheme, the LoadControl scheme using steps of 1.0
    integrator LoadControl 1.0
    
    # Create the solution algorithm, a Newton algorithm is created
    algorithm Newton
    
    # create the analysis object 
    analysis Static
    
    # ------------------------------
    # Start of recorder generation
    # ------------------------------
    
    # create a Recorder object for the nodal displacements at node 4
    recorder Node -file out/example.out -time -node 4 -dof 1 2 disp
    
    # ------------------------------
    # Finally perform the analysis
    # ------------------------------
    
    # Perform the analysis
    set ok [analyze 1]
    
    # Print the current state at node 4 and at all elements
    print node 4
    print ele

    if {!$ok} {
      return $ok
    }
}
