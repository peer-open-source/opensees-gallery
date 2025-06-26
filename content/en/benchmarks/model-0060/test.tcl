model BasicBuilder -ndm 2 -ndf 3

node 1    0.0   0.0 
node 2  360.0   0.0 
node 3  720.0   0.0 
node 4 1080.0   0.0 
node 5    0.0 162.0 -mass 0.766692546583851 0.766692546583851 0.0 
node 6  360.0 162.0 -mass 0.766692546583851 0.766692546583851 0.0 
node 7  720.0 162.0 -mass 0.766692546583851 0.766692546583851 0.0 
node 8 1080.0 162.0 -mass 0.766692546583851 0.766692546583851 0.0 
node 9 0.0 324.0 -mass 0.766692546583851 0.766692546583851 0.0 
node 10 360.0 324.0 -mass 0.766692546583851 0.766692546583851 0.0 
node 11 720.0 324.0 -mass 0.766692546583851 0.766692546583851 0.0 
node 12 1080.0 324.0 -mass 0.766692546583851 0.766692546583851 0.0 
node 13 0.0 486.0 -mass 0.6275879917184265 0.6275879917184265 0.0 
node 14 360.0 486.0 -mass 0.6275879917184265 0.6275879917184265 0.0 
node 15 720.0 486.0 -mass 0.6275879917184265 0.6275879917184265 0.0 
node 16 1080.0 486.0 -mass 0.6275879917184265 0.6275879917184265 0.0
fix 1 1 1 1
fix 2 1 1 1
fix 3 1 1 1
fix 4 1 1 1
geomTransf Linear 1 
geomTransf PDelta 2 
element elasticBeamColumn  1  1  5 75.6 29000.0 3400.0 2;
element elasticBeamColumn  2  5  9 75.6 29000.0 3400.0 2;
element elasticBeamColumn  3  9 13 75.6 29000.0 3400.0 2;
element elasticBeamColumn  4  2  6 91.4 29000.0 4330.0 2;
element elasticBeamColumn  5  6 10 91.4 29000.0 4330.0 2;
element elasticBeamColumn  6 10 14 91.4 29000.0 4330.0 2;
element elasticBeamColumn  7  3  7 91.4 29000.0 4330.0 2;
element elasticBeamColumn  8  7 11 91.4 29000.0 4330.0 2;
element elasticBeamColumn  9 11 15 91.4 29000.0 4330.0 2;
element elasticBeamColumn 10  4  8 75.6 29000.0 3400.0 2;
element elasticBeamColumn 11  8 12 75.6 29000.0 3400.0 2;
element elasticBeamColumn 12 12 16 75.6 29000.0 3400.0 2;
element elasticBeamColumn 13  5  6 34.7 29000.0 5900.0 1;
element elasticBeamColumn 14  6  7 34.7 29000.0 5900.0 1;
element elasticBeamColumn 15  7  8 34.7 29000.0 5900.0 1;
element elasticBeamColumn 16  9 10 34.2 29000.0 4930.0 1;
element elasticBeamColumn 17 10 11 34.2 29000.0 4930.0 1;
element elasticBeamColumn 18 11 12 34.2 29000.0 4930.0 1;
element elasticBeamColumn 19 13 14 20.1 29000.0 1830.0 1;
element elasticBeamColumn 20 14 15 20.1 29000.0 1830.0 1;
element elasticBeamColumn 21 15 16 20.1 29000.0 1830.0 1;

#
# Loads
#
timeSeries Linear 1
pattern Plain 1 Linear {
  eleLoad -ele 13 14 15 -type -beamUniform -1.0972222222222223
  eleLoad -ele 16 17 18 -type -beamUniform -1.0972222222222223
  eleLoad -ele 19 20 21 -type -beamUniform -0.8981481481481481
}

#
# Analysis 1
#
system BandSPD 
numberer RCM 
constraints Plain 
integrator LoadControl 1.0 
test NormDispIncr 1e-10 6 
algorithm Newton 
analysis Static 
analyze 1 

# TODO: Verify reactions
reactions  
nodeReaction 1 
nodeReaction 2 
nodeReaction 3 
nodeReaction 4

#
# Analysis 2
#
loadConst -time 0.0 
timeSeries Linear 2 
pattern Plain 2 2 {
    load 13 220.0 0.0 0.0 
    load  9 180.0 0.0 0.0 
    load  5  90.0 0.0 0.0 
}
analyze 1

#
# Verify
#
reactions  
nodeReaction 1 
nodeReaction 2 
nodeReaction 3 
nodeReaction 4 

#
# Eigenvalues
#
set expected {
 1.0401120938612853
 0.35264885836064636
 0.1930409642350479
 0.15628823050715807
 0.13080166151268396
}
set pi 3.1415926535897931

foreach value [eigen 5] expect $expected {
  verify value [expr 2*$pi/sqrt($value)] $expect 1e-12
}

