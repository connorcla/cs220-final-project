# Enable power analysis in PrimeTime
set power_enable_analysis TRUE

# Set library paths
set target_library "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_ss0p75v125c.db"
set link_library [list {*} "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_ss0p75v125c.db"]

read_db $target_library

read_verilog "../syn/omsp_alu_synthesized.v"

current_design omsp_alu

create_clock -period 10 -name clk

read_vcd "../sim/alu.vcd" -strip_path "alu_tb/dut"

report_switching_activity -list_not_annotated > unannotated_alu.log
report_power -nosplit -hierarchy -verbose > alu_total_power.log
report_power -cell -verbose > alu_cell_power.log

exit
