run 50 ns
vcd file activity.vcd
vcd add -r tb_fir/*
run [expr {60*$n_samples}] ns
quit -sim
exec vcd2saif -i activity.vcd - activity.saif
exec rm activity.vcd
