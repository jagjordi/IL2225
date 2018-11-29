#Remove all Design
remove_design -all

#/* Load Traget technology files */
source ../global_scripts/tsmc90gtc.scr
source synopsys_dc.setup
#/* compile each subblock independently */

#Compile U_delayline
read_file -format vhdl -lib WORK "./SOURCE/misc.vhd"
read_file -format vhdl -lib WORK "./SOURCE/SRAM.vhd"
read_file -format vhdl -lib WORK "./SOURCE/DelayLine_CB.vhd"
current_design Delayline_CB
link
uniquify
source ./MAPPED/constraints.sdc
source ./MAPPED/DelayLine_CB.sdc
compile


#Compile u_FIRP
read_file -format vhdl -lib WORK "./SOURCE/FIR_Processor.vhd"
current_design FIR_Processor
link
uniquify
source ./MAPPED/constraints.sdc
source ./MAPPED/FIR_Processor.sdc
compile

#Compile u_ROM
read_file -format vhdl -lib WORK "./SOURCE/ROM_Process.vhd"
current_design ROM_Process
link
uniquify
source ./MAPPED/constraints.sdc
source ./MAPPED/ROM_Process.sdc
compile

#compile FIR_Toplevel
read_file -format vhdl -lib WORK {"./SOURCE/misc.vhd"}
read_file -format vhdl -lib WORK {"./SOURCE/FIR_Toplevel.vhd"}
current_design FIR_Toplevel
link
uniquify
source ./MAPPED/constraints.sdc
compile

#check if the constraints are met
report_constraint
report_area
report_power
report_timing
#Characterize all the blocks
characterize -constraint {U_delayline  u_FIRP  u_ROM}

#Save new constraints
current_design Delayline_CB
write_script > ./MAPPED/DelayLine_CB.sdc

current_design FIR_Processor
write_script > ./MAPPED/FIR_Processor.sdc

current_design ROM_Process
write_script > ./MAPPED/ROM_Process.sdc

