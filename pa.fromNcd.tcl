
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name new -dir "Z:/Core/planAhead_run_1" -part xc3s700anfgg484-4
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "Z:/Core/Controller.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {Z:/Core} }
set_property target_constrs_file "simpleCounter.ucf" [current_fileset -constrset]
add_files [list {simpleCounter.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "Z:/Core/Controller.ncd"
if {[catch {read_twx -name results_1 -file "Z:/Core/Controller.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"Z:/Core/Controller.twx\": $eInfo"
}
