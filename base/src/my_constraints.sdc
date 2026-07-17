# ==============================================================================
# SDC CONSTRAINTS - PICORV32 PRE (100MHz)
# ==============================================================================

#create_clock [get_ports {clk}] -name clk -period 10.0 -waveform {0 5}
create_clock -name clk -period 10.0 -waveform {0 5} [get_ports clk]

#set_clock_uncertainty 0.25 [get_clocks {clk}]  

set_clock_uncertainty -setup 0.20 [get_clocks clk]
set_clock_uncertainty -hold  0.10 [get_clocks clk]

set in_ports  [remove_from_collection [all_inputs] [get_ports {clk resetn}]]
set out_ports [all_outputs]

set_input_delay  2.0 -clock [get_clocks clk] $in_ports
set_output_delay 2.0 -clock [get_clocks clk] $out_ports

set_false_path -from [get_ports {resetn}]

set_load 0.0334 [all_outputs]
set_max_fanout 10 [current_design]
set_max_transition 0.75 [current_design]
