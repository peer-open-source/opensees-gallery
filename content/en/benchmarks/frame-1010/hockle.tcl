pragma openseespy
model  -ndm 3
node 1 0.0 0.0 0.0 
getNDF  
mass 1 1.0 1.0 1.0 1.0 1.0 1.0 
node 2 11.999850000312499 0.0599997500003125 0.0 
getNDF  
mass 2 1.0 1.0 1.0 1.0 1.0 1.0 
node 3 23.999700000624998 0.119999500000625 0.0 
getNDF  
mass 3 1.0 1.0 1.0 1.0 1.0 1.0 
node 4 35.9995500009375 0.1799992500009375 0.0 
getNDF  
mass 4 1.0 1.0 1.0 1.0 1.0 1.0 
node 5 47.999400001249995 0.23999900000125 0.0 
getNDF  
mass 5 1.0 1.0 1.0 1.0 1.0 1.0 
node 6 59.9992500015625 0.2999987500015625 0.0 
getNDF  
mass 6 1.0 1.0 1.0 1.0 1.0 1.0 
node 7 71.999100001875 0.359998500001875 0.0 
getNDF  
mass 7 1.0 1.0 1.0 1.0 1.0 1.0 
node 8 83.9989500021875 0.4199982500021875 0.0 
getNDF  
mass 8 1.0 1.0 1.0 1.0 1.0 1.0 
node 9 95.99880000249999 0.4799980000025 0.0 
getNDF  
mass 9 1.0 1.0 1.0 1.0 1.0 1.0 
node 10 107.9986500028125 0.5399977500028125 0.0 
getNDF  
mass 10 1.0 1.0 1.0 1.0 1.0 1.0 
node 11 119.998500003125 0.599997500003125 0.0 
getNDF  
mass 11 1.0 1.0 1.0 1.0 1.0 1.0 
node 12 131.9983500034375 0.6599972500034375 0.0 
getNDF  
mass 12 1.0 1.0 1.0 1.0 1.0 1.0 
node 13 143.99820000375 0.71999700000375 0.0 
getNDF  
mass 13 1.0 1.0 1.0 1.0 1.0 1.0 
node 14 155.9980500040625 0.7799967500040624 0.0 
getNDF  
mass 14 1.0 1.0 1.0 1.0 1.0 1.0 
node 15 167.997900004375 0.839996500004375 0.0 
getNDF  
mass 15 1.0 1.0 1.0 1.0 1.0 1.0 
node 16 179.9977500046875 0.8999962500046874 0.0 
getNDF  
mass 16 1.0 1.0 1.0 1.0 1.0 1.0 
node 17 191.99760000499998 0.959996000005 0.0 
getNDF  
mass 17 1.0 1.0 1.0 1.0 1.0 1.0 
node 18 203.9974500053125 1.0199957500053125 0.0 
getNDF  
mass 18 1.0 1.0 1.0 1.0 1.0 1.0 
node 19 215.997300005625 1.079995500005625 0.0 
getNDF  
mass 19 1.0 1.0 1.0 1.0 1.0 1.0 
node 20 227.9971500059375 1.1399952500059374 0.0 
getNDF  
mass 20 1.0 1.0 1.0 1.0 1.0 1.0 
node 21 239.99700000625 1.19999500000625 0.0 
getNDF  
mass 21 1.0 1.0 1.0 1.0 1.0 1.0 
fix 1 1 1 1 1 1 1 
fix 21 0 1 1 0 1 1 
section ElasticFrame 1 -E 71240 -G 27190 -A 10.0 -J 2.16 -Iy 0.0833 -Iz 0.0833 -Ay 1000.0 -Az 1000.0 
geomTransf Rigid 1 0.0 0.0 1.0 
element ForceFrame  1 1 2 -section 1 -transform 1 -shear 1
element ForceFrame  2 2 3 -section 1 -transform 1 -shear 1
element ForceFrame  3 3 4 -section 1 -transform 1 -shear 1
element ForceFrame  4 4 5 -section 1 -transform 1 -shear 1
element ForceFrame  5 5 6 -section 1 -transform 1 -shear 1
element ForceFrame  6 6 7 -section 1 -transform 1 -shear 1
element ForceFrame  7 7 8 -section 1 -transform 1 -shear 1
element ForceFrame  8 8 9 -section 1 -transform 1 -shear 1
element ForceFrame  9 9 10 -section 1 -transform 1 -shear 1
element ForceFrame 10 10 11 -section 1 -transform 1 -shear 1
element ForceFrame 11 11 12 -section 1 -transform 1 -shear 1
element ForceFrame 12 12 13 -section 1 -transform 1 -shear 1
element ForceFrame 13 13 14 -section 1 -transform 1 -shear 1
element ForceFrame 14 14 15 -section 1 -transform 1 -shear 1
element ForceFrame 15 15 16 -section 1 -transform 1 -shear 1
element ForceFrame 16 16 17 -section 1 -transform 1 -shear 1
element ForceFrame 17 17 18 -section 1 -transform 1 -shear 1
element ForceFrame 18 18 19 -section 1 -transform 1 -shear 1
element ForceFrame 19 19 20 -section 1 -transform 1 -shear 1
element ForceFrame 20 20 21 -section 1 -transform 1 -shear 1
test EnergyIncr 1e-07 1000 1 
pattern Plain 1 Linear {load 21 0.0 0 0 49.451815179204495 0.24726113640892672 0.0 ;
}
integrator MinUnbalDispNorm 0.016666666666666666 8 0.0002564102564102564 0.025 
system BandGen 
analysis Static 
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
nodeDisp 21 4 
getTime  
getLoadFactor 1 
analyze 1 
numIter  
