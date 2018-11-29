###################################################################

# Created by write_sdc on Wed Nov 28 21:17:23 2018

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions NCCOM -library tcbn90gtc
set_wire_load_mode enclosed
set_wire_load_model -name TSMC8K_Lowk_Conservative -library tcbn90gtc
