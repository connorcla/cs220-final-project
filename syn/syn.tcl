# change the following to your home directory
set HOME      "/home/cegrad/cclab002"
set DIRECTORY   "cs220-final-project"

# Set search and library paths
set_app_var search_path ${HOME}/${DIRECTORY}/rtl
set_app_var link_path /usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_tt0p78v25c.db
set_app_var target_library /usr/local/synopsys/pdk/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_tt0p78v25c.db

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
create_clock -name "clk" -period 2 -waveform {0 1} [get_ports "clk"]
set_dont_touch_network [get_clocks "clk"]

# Input and output delays relative to clock
set_input_delay 0.1 -max -rise -clock "clk" [get_ports "reset"]
set_input_delay 0.1 -max -fall -clock "clk" [get_ports "reset"]
set_input_delay 0.1 -max -rise -clock "clk" [get_ports "operands_bits_A[*]"]
set_input_delay 0.1 -max -fall -clock "clk" [get_ports "operands_bits_A[*]"]
set_input_delay 0.1 -max -rise -clock "clk" [get_ports "operands_bits_B[*]"]
set_input_delay 0.1 -max -fall -clock "clk" [get_ports "operands_bits_B[*]"]
set_input_delay 0.1 -max -rise -clock "clk" [get_ports "operands_val"]
set_input_delay 0.1 -max -fall -clock "clk" [get_ports "operands_val"]
set_input_delay 0.1 -max -rise -clock "clk" [get_ports "result_rdy"]
set_input_delay 0.1 -max -fall -clock "clk" [get_ports "result_rdy"]
set_output_delay 0.1 -max -rise -clock "clk" [get_ports "result_bits_data[*]"]
set_output_delay 0.1 -max -fall -clock "clk" [get_ports "result_bits_data[*]"]
set_output_delay 0.1 -max -rise -clock "clk" [get_ports "operands_rdy"]
set_output_delay 0.1 -max -fall -clock "clk" [get_ports "operands_rdy"]
set_output_delay 0.1 -max -rise -clock "clk" [get_ports "result_val"]
set_output_delay 0.1 -max -fall -clock "clk" [get_ports "result_val"]

# Clock uncertainty for setup and hold times
set_clock_uncertainty 0.2 -setup [get_clocks "clk"]
set_clock_uncertainty 0.2 -hold [get_clocks "clk"]

# General design constraints
set_max_fanout 100 [get_designs "*"]
set_fix_multiple_port_nets -all -buffer_constants

# Design-specific constraints
set_input_transition 0.1 [get_ports "operands_bits_A[*]"]
set_input_transition 0.1 [get_ports "operands_bits_B[*]"]
set_input_transition 0.1 [get_ports "operands_val"]
set_input_transition 0.1 [get_ports "result_rdy"]
set_input_transition 0.1 [get_ports "reset"]

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
