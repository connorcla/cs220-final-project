# Enable power analysis in PrimeTime
set power_enable_analysis TRUE

set target_library "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_ss0p75v125c.db"
set link_library [list {*} "/usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_ss0p75v125c.db"]

read_db $target_library

# Read GCD netlist
read_verilog "../syn/omsp_min_exec_synthesized.v"

# Set top-level design
current_design omsp_min_exec

# Create 500 MHz clock
create_clock -period 2 -name clk [find port mclk]

read_vcd -strip_path "tb_omsp_min_exec/dut" "../sim/min_exec.vcd"

# Save power reports
report_power -nosplit -verbose > total_power.log
report_power -cell -verbose > cell_power.log
report_switching_activity -list_not_annotated > unannotated.log
