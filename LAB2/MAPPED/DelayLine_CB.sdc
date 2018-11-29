###################################################################

# Created by write_script -format dctcl on Thu Nov 29 18:34:28 2018

###################################################################

# Set the current_design #
current_design Delayline_CB

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions NCCOM -library tcbn90gtc
set_wire_load_mode enclosed
set_wire_load_model -name TSMC8K_Lowk_Conservative -library tcbn90gtc
set_local_link_library {tcbn90gtc.db}
create_clock [get_ports clk]  -period 5  -waveform {0 2.5}
set_false_path   -from [get_ports rst_n]
1
