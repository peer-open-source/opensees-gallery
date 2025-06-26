wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix  1 1 1 1 1 1 0 
fix 11 1 0 1 1 1 0 

section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8745.566122076403 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 

eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 0 
fix 11 1 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8745.566122076403 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 

eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 0 
fix 11 1 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8625.296509596821 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 0 
fix 11 1 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8625.296509596821 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8745.566122076403 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8745.566122076403 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8625.296509596821 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8625.296509596821 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -34982.26448830561 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -34982.26448830561 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -33134.19501505354 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -33134.19501505354 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -17891.228915278043 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -17891.228915278043 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -17347.402829813953 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -17347.402829813953 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2186.391530519101 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2186.391530519101 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2178.796342588359 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2178.796342588359 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 0 
fix 11 0 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 0
element PrismFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2186.391530519101 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 0 
fix 11 0 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 0
element PrismFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2186.391530519101 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 0 
fix 11 0 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 1
element PrismFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2178.796342588359 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 0 
fix 11 0 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element PrismFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 1
element PrismFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2178.796342588359 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 0 
fix 11 1 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8745.566122076403 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 0 
fix 11 1 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8745.566122076403 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 0 
fix 11 1 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8625.296509596821 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 0 
fix 11 1 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8625.296509596821 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8745.566122076403 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8745.566122076403 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8625.296509596821 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8625.296509596821 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -34982.26448830561 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -34982.26448830561 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -33134.19501505354 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -33134.19501505354 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe

#
#
#
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -17891.228915278043 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -17891.228915278043 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -17347.402829813953 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -17347.402829813953 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2186.391530519101 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2186.391530519101 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2178.796342588359 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2178.796342588359 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 0 
fix 11 0 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 0
element MixedFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2186.391530519101 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 0 
fix 11 0 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 0
element MixedFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 0
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2186.391530519101 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 0 
fix 11 0 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 2 2 3 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 3 3 4 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 4 4 5 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 5 5 6 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 6 6 7 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 7 7 8 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 8 8 9 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 9 9 10 -section 1 -transform 1 -order 0 -shear 1
element MixedFrame 10 10 11 -section 1 -transform 1 -order 0 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2178.796342588359 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 0 
fix 11 0 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element MixedFrame 1 1 2 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 2 2 3 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 3 3 4 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 4 4 5 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 5 5 6 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 6 6 7 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 7 7 8 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 8 8 9 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 9 9 10 -section 1 -transform 1 -order 2 -shear 1
element MixedFrame 10 10 11 -section 1 -transform 1 -order 2 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2178.796342588359 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 0 
fix 11 1 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element ExactFrame 1 1 2 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 2 2 3 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 3 3 4 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 4 4 5 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 5 5 6 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 6 6 7 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 7 7 8 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 8 8 9 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 9 9 10 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 10 10 11 -section 1 -transform 1 -order 1 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8625.296509596821 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element ExactFrame 1 1 2 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 2 2 3 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 3 3 4 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 4 4 5 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 5 5 6 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 6 6 7 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 7 7 8 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 8 8 9 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 9 9 10 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 10 10 11 -section 1 -transform 1 -order 1 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -8625.296509596821 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 1 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element ExactFrame 1 1 2 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 2 2 3 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 3 3 4 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 4 4 5 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 5 5 6 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 6 6 7 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 7 7 8 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 8 8 9 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 9 9 10 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 10 10 11 -section 1 -transform 1 -order 1 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -33134.19501505354 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 1 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element ExactFrame 1 1 2 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 2 2 3 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 3 3 4 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 4 4 5 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 5 5 6 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 6 6 7 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 7 7 8 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 8 8 9 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 9 9 10 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 10 10 11 -section 1 -transform 1 -order 1 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -17347.402829813953 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 11 0 0 1 1 1 0 
section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element ExactFrame 1 1 2 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 2 2 3 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 3 3 4 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 4 4 5 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 5 5 6 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 6 6 7 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 7 7 8 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 8 8 9 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 9 9 10 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 10 10 11 -section 1 -transform 1 -order 1 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2178.796342588359 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe
pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 0.0 6.0 0.0 
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 0.0 12.0 0.0 
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 0.0 18.0 0.0 
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 0.0 24.0 0.0 
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 0.0 30.0 0.0 
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 0.0 36.0 0.0 
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 0.0 42.0 0.0 
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 0.0 48.0 0.0 
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 0.0 54.0 0.0 
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 0.0 60.0 0.0 
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 0 
fix 11 0 0 1 1 1 1 

section FrameElastic 1 29000.0 112.0 110.0 220.0 -J 11000.0 -G 11200.0 -Ay 56.0 -G 11200.0 -Az 56.0 
geomTransf Corotational 1 0 0 1 
element ExactFrame 1 1 2 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 2 2 3 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 3 3 4 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 4 4 5 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 5 5 6 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 6 6 7 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 7 7 8 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 8 8 9 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 9 9 10 -section 1 -transform 1 -order 1 -shear 1
element ExactFrame 10 10 11 -section 1 -transform 1 -order 1 -shear 1
pattern Plain 1 Linear 
nodalLoad 11 0.0 -2178.796342588359 0.0 0 0 0 -pattern 1 
test EnergyIncr 1e-08 20 9 
algorithm Newton 
integrator LoadControl 0.01 
analysis Static

eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
analyze 1 
eigen 1 
wipe

