# ============================================================
# SDC for PicoRV32 Operand Isolation (picorv32_opi.v)
# ============================================================

# ------------------------------------------------------------
# 1. Clock Definition
# ------------------------------------------------------------
create_clock -name clk -period 10.0 -waveform {0 5} [get_ports clk]

set_clock_uncertainty -setup 0.20 [get_clocks clk]
set_clock_uncertainty -hold  0.10 [get_clocks clk]
#set_clock_uncertainty 0.25 [get_clocks {clk}]
# ------------------------------------------------------------
# 2. Input / Output Ports
# ------------------------------------------------------------
set in_ports  [remove_from_collection [all_inputs] [get_ports {clk resetn}]]
set out_ports [all_outputs]

set_input_delay  2.0 -clock [get_clocks clk] $in_ports
set_output_delay 2.0 -clock [get_clocks clk] $out_ports

#---------------------------------------------------------
# 4. DRIVING CELL MODEL
#---------------------------------------------------------
#set_driving_cell -lib_cell sky130_fd_sc_hd__buf_2  $in_ports

# ------------------------------------------------------------
# 3. False Path Constraints
# ------------------------------------------------------------
# Async reset
set_false_path -from [get_ports resetn]

# ------------------------------------------------------------
# 5. Electrical Constraints
# ------------------------------------------------------------
set_load 0.0334 $out_ports

set_max_fanout 10 [current_design]

set_max_transition 0.80 [current_design] 


