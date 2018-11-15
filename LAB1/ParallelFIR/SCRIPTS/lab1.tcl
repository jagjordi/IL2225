source ../../global_scripts/analyze_elaborate.tcl
source synopsys_dc.setup

# load all the vhdl files
analyze_elaborate [list myPackage misc] [list ArithUnit coefRom FSM MAC ShiftRegister] Top_Parallel_FIR structural

# set wireload model and mode
set_wire_load_mode top
set_wire_load_model -name "TSMC8K_Lowk_Conservative"

# set operating conditions
set_operating_conditions "NCCOM"


# clock model
create_clock -name clk -period 5 -waveform {0 2.5} {clk}

# set reset paths as false
set_false_path -from [get_ports rst_n]


# synthesis

compile -map_effort medium
write -hier -format verilog -output ParallelFIR.v

# reporting
report_constraints > REPORTS/constraint.rep
report_cell > REPORTS/cell.rep
report_area > REPORTS/area.rep
report_timing > REPORTS/timing.rep
report_power -analysis_effort low > REPORTS/power.rep
set sq_cells [sizeof_collection [get_cells -hierarchical -filter "is_sequential && !is_hierarchical"]]
puts "Sequential cells: $sq_cells" 

# critical path determination
set cp [get_timing_paths -nworst 1 -max_paths 1 -delay_type max -include_hierarchical_pins]
puts "Critical path startpoint: [get_attribute [get_attribute $cp startpoint] full_name]"
puts "Critical path endpoint: [get_attribute [get_attribute $cp endpoint] full_name]"
exit
