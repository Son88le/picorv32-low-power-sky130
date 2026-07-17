# ============================================================
# SDC for PicoRV32 CG (picorv32_cg)
# ============================================================

# ------------------------------------------------------------
# 1. Clock Definition
# ------------------------------------------------------------
create_clock -name clk -period 10.0 -waveform {0 5} [get_ports clk]

# Gated clock — TritonCTS sẽ build buffer tree riêng
create_generated_clock \
    -name clk_cg_rf \
    -source [get_pins u_icg_rf/CLK] \
    -master_clock clk \
    [get_pins u_icg_rf/GCLK]

# Kiểm tra setup/hold tại GATE pin của ICG latch
set_clock_gating_check -setup 0.20 -hold 0.00 [get_cells u_icg_rf]

# KHÔNG dùng set_clock_groups — STA cần check path giữa clk và clk_cg_rf

# ------------------------------------------------------------
# 2. Input / Output Ports
# ------------------------------------------------------------
set in_ports  [remove_from_collection [all_inputs] [get_ports {clk resetn}]]
set out_ports [all_outputs]
set_input_delay  2.0 -clock [get_clocks clk] $in_ports
set_output_delay 2.0 -clock [get_clocks clk] $out_ports

# ------------------------------------------------------------
# 3. False Path
# ------------------------------------------------------------
set_false_path -from [get_ports resetn]

set_driving_cell -lib_cell sky130_fd_sc_hd__buf_2  $in_ports
# ------------------------------------------------------------
# 4. Electrical Constraints
# ------------------------------------------------------------
#set_load       0.0334 $out_ports
#set_max_fanout 10     [get_ports $in_ports]  ;# chỉ data port, không áp vào clock net
#set_max_transition 0.80 [current_design]
