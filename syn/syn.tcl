# change the following to your home directory
set HOME      "/home/cegrad/cclab002"
set DIRECTORY   "cs220-final-project"

# Set search and library paths
set_app_var search_path ${HOME}/${DIRECTORY}/rtl
set_app_var link_path /usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_ss0p75v125c.db
set_app_var target_library /usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_ss0p75v125c.db

# Power grid settings
set dc_allow_rtl_pg       true
set mw_logic1_net "VDD"
set mw_logic0_net "VSS"

# Define the design name
set DESIGN_NAME     "omsp_alu"

# Analyze the Verilog source file
analyze -format verilog "omsp_alu.v"

# Elaborate the design
elaborate ${DESIGN_NAME} -architecture verilog -library DEFAULT

# Link the design to ensure all references are resolved
link
 
# Constraints
# Clock definition: 10 ns period (500 MHz), 50% duty cycle
create_clock -name "v_clk" -period 10 -waveform {0 1}
set_dont_touch_network [get_clocks "v_clk"]

# Input and output delays relative to clock
set_input_delay 0.2 -max -clock "v_clk" [get_ports "op_src[*]"]
set_input_delay 0.2 -max -clock "v_clk" [get_ports "op_dst[*]"]
set_input_delay 0.2 -max -clock "v_clk" [get_ports "inst_alu[*]"]
set_input_delay 0.2 -max -clock "v_clk" [get_ports "inst_bw"]
set_input_delay 0.2 -max -clock "v_clk" [get_ports "status[*]"]
set_output_delay 0.2 -max -clock "v_clk" [get_ports "alu_out[*]"]
set_output_delay 0.2 -max -clock "v_clk" [get_ports "alu_stat[*]"]

# General design constraints
set_max_fanout 100 [get_designs "*"]
set_fix_multiple_port_nets -all -buffer_constants

# Check the design for issues
check_design

# Perform synthesis with optimization
compile_ultra -incremental

# Fix naming and hierarchy for output
change_names -rules verilog -hierarchy

# Write synthesized outputs
write -format ddc -output "${DESIGN_NAME}_synthesized.ddc"
write -format verilog -output "${DESIGN_NAME}_synthesized.v"
write_sdc -nosplit "${DESIGN_NAME}_const.sdc"

# Generate reports
report_timing > ${HOME}/${DIRECTORY}/syn/reports/${DESIGN_NAME}_timing_reports.log
report_qor > ${HOME}/${DIRECTORY}/syn/reports/${DESIGN_NAME}_qor_reports.log
report_area -hierarchy > ${HOME}/${DIRECTORY}/syn/reports/${DESIGN_NAME}_area_reports.log
report_power -hierarchy > ${HOME}/${DIRECTORY}/syn/reports/${DESIGN_NAME}_power_reports.log
report_reference -hierarchy > ${HOME}/${DIRECTORY}/syn/reports/${DESIGN_NAME}_reference_reports.log

# Exit the synthesis tool
exit
