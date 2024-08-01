read_verilog "main.v"
read_verilog ../../src/player.v
read_verilog ../../src/pwm_control.v
read_verilog ../../src/pwm.v

read_xdc "digilent_arty.xdc"

# synth
synth_design -top "top" -part "xc7a100tcsg324-1"

# place and route
opt_design
place_design
route_design

# write bitstream
write_bitstream -force "./build/out.bit"