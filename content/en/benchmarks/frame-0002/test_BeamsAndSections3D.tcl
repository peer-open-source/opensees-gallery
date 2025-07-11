# 3D Cantilever with Concentrated Load
#
#                ^
#                ^
#                |
# #|============== ->>
#

proc printEigenvalues {E A Iz Iy G J L} {
    # Compute element eigenvalues
    set eigenValues [eigen standard 12]

    set e1 [expr 2*$E*$A/$L]
    set e2 [expr 2*$G*$J/$L]
    set e3 [expr 2*$E*$Iz/$L]
    set e4 [expr 2*$E*$Iy/$L]
    set e5 [expr 6*$E*$Iz/$L + 2*12*$E*$Iz/($L*$L*$L)]
    set e6 [expr 6*$E*$Iy/$L + 2*12*$E*$Iy/($L*$L*$L)]

    set exact "$e1 $e2 $e3 $e4 $e5 $e6"
    set exact [lsort -real $exact]

    verify about "Eigenvalues"
    for {set i 0} {$i < 6} {incr i} {
        # verify value [lindex $eigenValues [expr $i+6]]  [lindex $exact $i] 1e-8 "eigen\[$i\]"
      puts [format "     %d      %10.3f    %10.3f"  $i  [lindex $eigenValues [expr $i+6]]  [lindex $exact $i]]
    }
}

proc printDisplacements {E A Iz Iy G J L P H M} {
#   foreach  dof_soln  {
#                        {1 [expr $P*$L/($E*$A)] }
#                        {2 [expr $H*pow($L,3)/(3*$E*$Iz) + $M*pow($L,2)/(2*$E*$Iz)] }
#                        {3 [expr $H*pow($L,3)/(3*$E*$Iy) - $M*pow($L,2)/(2*$E*$Iy)] }} {
#     set dof [lindex $dof_soln 0]
#     set sol [lindex $dof_soln 1]
#     set val [nodeDisp 2 $dof]
#     puts "$val $sol"
#     puts "[expr ($val-$sol)/$sol]"
#   }

    set dispX [expr $P*$L/($E*$A)]
    set dispY [expr $H*pow($L,3)/(3*$E*$Iz) + $M*pow($L,2)/(2*$E*$Iz)]
    set dispZ [expr $H*pow($L,3)/(3*$E*$Iy) - $M*pow($L,2)/(2*$E*$Iy)]

    puts [format "    dispX   %10.3f    %10.3f " [nodeDisp 2 1] $dispX]
    puts [format "    dispY   %10.3f    %10.3f " [nodeDisp 2 2] $dispY]
    puts [format "    dispZ   %10.3f    %10.3f " [nodeDisp 2 3] $dispZ]
    puts [format "    rotX    %10.3f    %10.3f " [nodeDisp 2 4] [expr $M*$L/($G*$J)]]
    puts [format "    rotY    %10.3f    %10.3f " [nodeDisp 2 5] [expr -$H*pow($L,2)/(2*$E*$Iy) + $M*$L/($E*$Iy)]]
    puts [format "    rotZ    %10.3f    %10.3f " [nodeDisp 2 6] [expr $H*pow($L,2)/(2*$E*$Iz) + $M*$L/($E*$Iz)]]
    puts ""
}

set E 1.0
set G 2.0

set b 2.0
set d 12.0

set A  [expr $b*$d]
set Iz [expr 1.0/12*$b*$d*$d*$d]
set Iy [expr 1.0/12*$d*$b*$b*$b]
set J  [expr $Iz+$Iy]

set L  100.0
set beta 0.1
set lp [expr $beta*$L]

set nIP 3

set elements { 1 3 4 5 6 2 7 } ; # 
set sections {1 2 3 4}; # 5};

set tol 1e-12
foreach element $elements {
    foreach section $sections {
        
        model basic -ndm 3 -ndf 6
        
        node 1 0.0 0.0 0.0
        node 2  $L 0.0 0.0

        set sec 1;
        
        puts ""

        switch $section {
            1 {
                puts "  Section: Elastic"
                section Elastic 1 $E $A $Iz $Iy $G $J
            }
            2 {
                puts "  Section: Aggregator (fiber plus uniaxial)"
                uniaxialMaterial Elastic 1 $E
                uniaxialMaterial Elastic 2 [expr $G*$J]
                section Fiber 2 -torsion 2 {
                    set b2 [expr $b/2]
                    set d2 [expr $d/2]
                    patch rect 1 10 10 $d2 $b2 -$d2 -$b2
                }
                section Aggregator 1 2 T -section 2
            }
            3 {
                puts "  Section: Aggregator (four uniaxial)"
                uniaxialMaterial Elastic 1 [expr $E*$A]
                uniaxialMaterial Elastic 2 [expr $E*$Iz]
                uniaxialMaterial Elastic 3 [expr $E*$Iy]
                uniaxialMaterial Elastic 4 [expr $G*$J]
                section Aggregator 1 1 P 2 Mz 3 My 4 T
            }
            4 {
                puts "  Section: ElasticFrame"
                section ElasticFrame 1 $E -A $A -Iz $Iz -Iy $Iy -G $G -J $J
            }
            5 {
                puts "  Section: FiberFrame"
                section FiberFrame 2 -torsion 2 {
                    set b2 [expr $b/2]
                    set d2 [expr $d/2]
                    patch rect 1 10 10 $d2 $b2 -$d2 -$b2
                }
            }
        }

        geomTransf Linear 1 0 0 1

        switch $element {
            1 {
                puts "  Element: ElasticBeamColumn"
                element elasticBeamColumn 1 1 2 $A $E $G $J $Iy $Iz 1
            }
            2 {
                puts "  Element: DispBeamColumn"
                element dispBeamColumn 1 1 2 $nIP 1 1

                set tol 5e-3
            }
            3 {
                puts "  Element: ForceBeamColumn"
                element nonlinearBeamColumn 1 1 2 $nIP 1 1
            }
            4 {
                puts "  Element: BeamWithHinges"
                element beamWithHinges 1 1 2 1 $lp 1 $lp $E $A $Iz $Iy $G $J 1
            }
            5 {
                puts "  Element: PrismFrame"
                element PrismFrame 1 1 2 -section $sec -transform 1
            }
            6 {
                puts "  Element: CubicFrame"
                element CubicFrame 1 1 2 $nIP 1 1
            }
            7 {
                puts "  Element: ForceFrame"
                element ForceFrame 1 1 2 $nIP 1 1 -shear 0
            }
        }

        printEigenvalues $E $A $Iz $Iy $G $J $L

        fix 1 1 1 1 1 1 1

        set M 10.0      ;# End moment
        set H 1.0       ;# Transverse load
        set P -100.0    ;# Axial load
        
        pattern Plain 1 Linear {
            load 2 $P $H $H $M $M $M
        }
        
        set steps 1
        test NormUnbalance 1.0e-12 10
        algorithm Newton
        integrator LoadControl [expr 1.0/$steps]
        constraints Plain
        system ProfileSPD
        numberer Plain
        analysis Static
        
        analyze $steps
        puts "$tol"
        printDisplacements $E $A $Iz $Iy $G $J $L $P $H $M

        wipe
    }
}
