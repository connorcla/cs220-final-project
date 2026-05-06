set power_enable_analysis TRUE
set power_analysis_mode averaged

set target_library "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_ss0p75v125c.db"
set link_library [list {*} "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_ss0p75v125c.db"]

read_verilog "../syn/omsp_min_exec_synthesized.v"

current_design omsp_min_exec

link

create_clock -period 10.0 -name mclk [get_ports mclk]

read_vcd "../sim/min_exec.vcd" -strip_path "omsp_min_exec_tb/dut"

report_switching_activity -list_not_annotated > unannotated_min_exec.log

report_power -nosplit -hierarchy -verbose > min_exec_total_power.log
report_power -cell -verbose > min_exec_cell_power.log

exit
