
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name new -dir "/media/Scratch/peadv/Project_LabAdvEl/Core/planAhead_run_3" -part xc3s700anfgg484-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/media/Scratch/peadv/Project_LabAdvEl/Core/Controller.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/media/Scratch/peadv/Project_LabAdvEl/Core} }
set_property target_constrs_file "simpleCounter.ucf" [current_fileset -constrset]
add_files [list {simpleCounter.ucf}] -fileset [get_property constrset [current_run]]
link_design
