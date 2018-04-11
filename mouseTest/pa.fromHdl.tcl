
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name battleship -dir "/home/mat/Documents/repos/Project_LabAdvEl/mouseTest/planAhead_run_1" -part xc3s700anfgg484-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "/home/mat/Documents/repos/Project_LabAdvEl/mouseTest/battleship.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {module_synchroCounter_8_bit_sr.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Module_Counter_8_bit_oneRun.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {PS2_send.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {battleship.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top battleship $srcset
add_files [list {battleship.ucf}] -fileset [get_property constrset [current_run]]
add_files [list {PS2.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s700anfgg484-4
