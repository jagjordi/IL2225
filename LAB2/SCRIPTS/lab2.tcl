source /home/j/o/jordiag/IL2225/global_scripts/my_utils.tcl
source synopsys_dc.setup

analyze_elaborate misc [list DelayLine_CB FIR_Processor ROM_Process SRAM] "" FIR_Toplevel_behavioural

analyze -format vhdl -lib WORK "./SOURCE/FIR_Toplevel.vhd"
elaborate FIR_Toplevel -lib WORK -param "width = 16, filter_taps = 5"

# set wireload model and mode
set_wire_load_mode enclosed
#set_wire_load_model -name "TSMC8K_Lowk_Conservative"
set_wire_load_model -name "TSMC8K_Lowk_Conservative"

# set operating conditions
set_operating_conditions -lib tcbn90gtc NCCOM

# clock model
create_clock -name clk -period 5 -waveform {0 2.5} {clk}

# set reset paths as false
set_false_path -from {rst_n} -hold
set_false_path -from {rst_n} -setup

# set saif file
#read_saif -input ./activity.saif -instance_name tb_fir

# synthesis
set_clock_gating_style -sequential_cell latch
set do_operand_isolation true
compile -map_effort medium -gate_clock
write -hier -format verilog -output MAPPED/FIR.v
write_sdc MAPPED/constraints.sdc
write_sdf MAPPED/delays.sdf

# reporting
report_constraints > REPORTS/constraint.rep
report_cell > REPORTS/cell.rep
report_area > REPORTS/area.rep
report_timing > REPORTS/timing.rep
report_power 
