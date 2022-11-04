
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Lab_1 -dir "C:/Users/st75026/Downloads/FPGA/FPGA/Lab_1/planAhead_run_4" -part xc3s500eft256-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/st75026/Downloads/FPGA/FPGA/Lab_1/main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/st75026/Downloads/FPGA/FPGA/Lab_1} }
set_property target_constrs_file "pinOut.ucf" [current_fileset -constrset]
add_files [list {pinOut.ucf}] -fileset [get_property constrset [current_run]]
link_design
