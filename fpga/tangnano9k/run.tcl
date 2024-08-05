set_device -name GW1NR-9C GW1NR-LV9QN88PC6/I5
add_file pinout.cst
add_file top.sdc
add_file main.v
add_file pll.v
add_file ../../src/pwm.v
add_file ../../src/pwm_control.v
add_file ../../src/player.v

set_option -use_mspi_as_gpio 1
set_option -use_sspi_as_gpio 1
set_option -use_ready_as_gpio 1
set_option -use_done_as_gpio 1
set_option -rw_check_on_ram 1
run all