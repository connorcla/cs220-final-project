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
set DESIGN_NAME     "omsp_min_exec"

# Analyze the Verilog source file
analyze -format verilog "omsp_min_exec.v omsp_execution_unit.v omsp_frontend.v omsp_register_file.v omsp_clock_gate.v omsp_and_gate.v omsp_alu.v"

# Elaborate the design
elaborate ${DESIGN_NAME} -architecture verilog -library DEFAULT

# Link the design to ensure all references are resolved
link

# General design constraints
set_max_fanout 100 [get_designs "*"]
set_fix_multiple_port_nets -all -buffer_constants

set_input_delay  0.2 -max -clock "mclk" [get_ports "puc_rst"]
set_input_delay  0.2 -max -clock "mclk" [get_ports "pmem_dout[*]"]
set_input_delay  0.2 -max -clock "mclk" [get_ports "dmem_dout[*]"]

# Output delays relative to mclk
set_output_delay 0.2 -max -clock "mclk" [get_ports "pmem_addr[*]"]
set_output_delay 0.2 -max -clock "mclk" [get_ports "pmem_en"]
set_output_delay 0.2 -max -clock "mclk" [get_ports "dmem_addr[*]"]
set_output_delay 0.2 -max -clock "mclk" [get_ports "dmem_din[*]"]
set_output_delay 0.2 -max -clock "mclk" [get_ports "dmem_wen[*]"]
set_output_delay 0.2 -max -clock "mclk" [get_ports "dmem_en"]

# 3. Uncertainty (Jitter/Skew)
set_clock_uncertainty 0.1 -setup [get_clocks "mclk"]
set_clock_uncertainty 0.1 -hold  [get_clocks "mclk"]

##############################################################################
#                                                                            #
#                            CLOCK DEFINITION                                #
#                                                                            #
##############################################################################

#set CLOCK_PERIOD 100.0; #  10 MHz
#set CLOCK_PERIOD 66.6; #  15 MHz
#set CLOCK_PERIOD 50.0; #  20 MHz
#set CLOCK_PERIOD 40.0; #  25 MHz
#set CLOCK_PERIOD 33.3; #  30 MHz
#set CLOCK_PERIOD 30.0; #  33 MHz
#set CLOCK_PERIOD 25.0; #  40 MHz
#set CLOCK_PERIOD 22.2; #  45 MHz
#set CLOCK_PERIOD 20.0; #  50 MHz
#set CLOCK_PERIOD 16.7; #  60 MHz
#set CLOCK_PERIOD 15.4; #  65 MHz
#set CLOCK_PERIOD 15.0; #  66 MHz
#set CLOCK_PERIOD 14.3; #  70 MHz
#set CLOCK_PERIOD 12.5; #  80 MHz
#set CLOCK_PERIOD 11.1; #  90 MHz
#set CLOCK_PERIOD 10.0; # 100 MHz
set CLOCK_PERIOD  8.0; # 125 MHz


create_clock -name     "mclk"                              \
             -period   "$CLOCK_PERIOD"                        \
             -waveform "[expr $CLOCK_PERIOD/2] $CLOCK_PERIOD" \
             [get_ports mclk]

create_clock -name     "lfxt_clk"                             \
             -period   "$CLOCK_PERIOD"                        \
             -waveform "[expr $CLOCK_PERIOD/2] $CLOCK_PERIOD" \
             [get_ports lfxt_clk]


##############################################################################
#                                                                            #
#                          CREATE PATH GROUPS                                #
#                                                                            #
##############################################################################

group_path -name REGOUT      -to   [all_outputs] 
group_path -name REGIN       -from [remove_from_collection [all_inputs] [get_ports dco_clk]]
group_path -name FEEDTHROUGH -from [remove_from_collection [all_inputs] [get_ports dco_clk]] -to [all_outputs]


##############################################################################
#                                                                            #
#                          BOUNDARY TIMINGS                                  #
#                                                                            #
##############################################################################
# NOTE: There are some path through between Program/Data memory signals
#      which are limiting the maximum frequency achievable by the core.
#       The memory constraints set on these interfaces are therefore quite
#      critical regarding the achievable performance of the core.
#       As a consequence, the constrains on the pmem_*/dmem_* signals must
#      be set with some absolute values as they are specified by the targeted
#      process RAM/ROM generator.

#================#
# PROGRAM MEMORY #
#================#

set PMEM_DOUT_DLY    2.25

set PMEM_ADDR_DLY    0.64
set PMEM_CEN_DLY     0.63
set PMEM_DIN_DLY     0.39
set PMEM_WEN_DLY     0.44

set_input_delay  $PMEM_DOUT_DLY            -max -clock "dco_clk"  [get_ports pmem_dout]
set_input_delay  0                         -min -clock "dco_clk"  [get_ports pmem_dout]

set_output_delay $PMEM_ADDR_DLY -add_delay -max -clock "dco_clk"  [get_ports pmem_addr]
set_output_delay 0                         -min -clock "dco_clk"  [get_ports pmem_addr]

set_output_delay $PMEM_CEN_DLY  -add_delay -max -clock "dco_clk"  [get_ports pmem_cen]
set_output_delay 0                         -min -clock "dco_clk"  [get_ports pmem_cen]

set_output_delay $PMEM_DIN_DLY  -add_delay -max -clock "dco_clk"  [get_ports pmem_din]
set_output_delay 0                         -min -clock "dco_clk"  [get_ports pmem_din]

set_output_delay $PMEM_WEN_DLY  -add_delay -max -clock "dco_clk"  [get_ports pmem_wen]
set_output_delay 0                         -min -clock "dco_clk"  [get_ports pmem_wen]


#================#
# DATA MEMORY    #
#================#

set DMEM_DOUT_DLY    2.25

set DMEM_ADDR_DLY    0.64
set DMEM_CEN_DLY     0.63
set DMEM_DIN_DLY     0.39
set DMEM_WEN_DLY     0.44


set_input_delay $DMEM_DOUT_DLY             -max -clock "dco_clk"  [get_ports dmem_dout]
set_input_delay 0                          -min -clock "dco_clk"  [get_ports dmem_dout]

set_output_delay $DMEM_ADDR_DLY -add_delay -max -clock "dco_clk"  [get_ports dmem_addr]
set_output_delay 0                         -min -clock "dco_clk"  [get_ports dmem_addr]

set_output_delay $DMEM_CEN_DLY  -add_delay -max -clock "dco_clk"  [get_ports dmem_cen]
set_output_delay 0                         -min -clock "dco_clk"  [get_ports dmem_cen]

set_output_delay $DMEM_DIN_DLY  -add_delay -max -clock "dco_clk"  [get_ports dmem_din]
set_output_delay 0                         -min -clock "dco_clk"  [get_ports dmem_din]

set_output_delay $DMEM_WEN_DLY  -add_delay -max -clock "dco_clk"  [get_ports dmem_wen]
set_output_delay 0                         -min -clock "dco_clk"  [get_ports dmem_wen]


#==========================#
# REMAINING INPUT PORTS    #
#==========================#

set IRQ_DLY          [expr ($CLOCK_PERIOD/100) * 30]
set PER_DOUT_DLY     [expr ($CLOCK_PERIOD/100) * 20]


set_input_delay $IRQ_DLY       -max -clock "dco_clk"  [get_ports irq]
set_input_delay 0              -min -clock "dco_clk"  [get_ports irq]

set_input_delay $PER_DOUT_DLY  -max -clock "dco_clk"  [get_ports per_dout]
set_input_delay 0              -min -clock "dco_clk"  [get_ports per_dout]


#=========================#
# REMAINING OUTPUT PORTS  #
#=========================#

set ACLK_EN_DLY      [expr ($CLOCK_PERIOD/100) * 85]
set SMCLK_EN_DLY     [expr ($CLOCK_PERIOD/100) * 85]
set DBG_FREEZE_DLY   [expr ($CLOCK_PERIOD/100) * 85]
set IRQ_ACC_DLY      [expr ($CLOCK_PERIOD/100) * 60]

set PER_ADDR_DLY     [expr ($CLOCK_PERIOD/100) * 25]
set PER_DIN_DLY      [expr ($CLOCK_PERIOD/100) * 25]
set PER_WEN_DLY      [expr ($CLOCK_PERIOD/100) * 25]
set PER_EN_DLY       [expr ($CLOCK_PERIOD/100) * 25]

set PUC_DLY          [expr ($CLOCK_PERIOD/100) * 75]


set_output_delay $ACLK_EN_DLY    -add_delay -max -clock "dco_clk"             [get_ports aclk_en]
set_output_delay 0                          -min -clock "dco_clk"             [get_ports aclk_en]

set_output_delay $SMCLK_EN_DLY   -add_delay -max -clock "dco_clk"             [get_ports smclk_en]
set_output_delay 0                          -min -clock "dco_clk"             [get_ports smclk_en]

set_output_delay $DBG_FREEZE_DLY -add_delay -max -clock "dco_clk"             [get_ports dbg_freeze]
set_output_delay 0                          -min -clock "dco_clk"             [get_ports dbg_freeze]

set_output_delay $IRQ_ACC_DLY    -add_delay -max -clock "dco_clk"             [get_ports irq_acc]
set_output_delay 0                          -min -clock "dco_clk"             [get_ports irq_acc]


set_output_delay $PER_ADDR_DLY   -add_delay -max -clock "dco_clk"             [get_ports per_addr]
set_output_delay 0                          -min -clock "dco_clk"             [get_ports per_addr]

set_output_delay $PER_DIN_DLY    -add_delay -max -clock "dco_clk"             [get_ports per_din]
set_output_delay 0                          -min -clock "dco_clk"             [get_ports per_din]

set_output_delay $PER_WEN_DLY    -add_delay -max -clock "dco_clk"             [get_ports per_we]
set_output_delay 0                          -min -clock "dco_clk"             [get_ports per_we]

set_output_delay $PER_EN_DLY     -add_delay -max -clock "dco_clk"             [get_ports per_en]
set_output_delay 0                          -min -clock "dco_clk"             [get_ports per_en]

set_output_delay $PUC_DLY        -add_delay -max -clock "dco_clk"             [get_ports puc_rst]
set_output_delay 0                          -min -clock "dco_clk"             [get_ports puc_rst]


#========================#
# FEEDTHROUGH EXCEPTIONS #
#========================#

#set_max_delay [expr 2.0 + $DMEM_DOUT_DLY + $DMEM_ADDR_DLY] \
#              -from       [get_ports dmem_dout]            \
#              -to         [get_ports dmem_addr]            \
#              -group_path FEEDTHROUGH


#===============#
# FALSE PATHS   #
#===============#
# The following signals are internaly synchronized to
# the dco_clk domain and can be set as false path.

set_false_path -from dbg_uart_rxd
set_false_path -to   dbg_uart_txd

set_false_path -from nmi
set_false_path -from lfxt_clk
set_false_path -from reset_n

set_false_path -from cpu_en
set_false_path -from dbg_en


# Check the design for issues
check_design

current_design omsp_min_exec
set_dont_touch [current_design]

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
