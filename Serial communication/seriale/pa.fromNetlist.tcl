
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name seriale -dir "/home/ise/vhdl/seriale_1/seriale/planAhead_run_2" -part xc3s1200efg320-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/ise/vhdl/seriale_1/seriale/sistema.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/ise/vhdl/seriale_1/seriale} }
set_property target_constrs_file "/home/ise/vhdl/seriale_1/Nexys2_1200K.ucf" [current_fileset -constrset]
add_files [list {/home/ise/vhdl/seriale_1/Nexys2_1200K.ucf}] -fileset [get_property constrset [current_run]]
link_design
