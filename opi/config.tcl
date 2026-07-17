#-------------------------------- FILE CONFIG_IN -----------------------------
# ==============================================================================
# INPUT
# ==============================================================================
set ::env(DESIGN_NAME)           "picorv32"
set ::env(VERILOG_FILES)         [glob $::env(DESIGN_DIR)/src/picorv32_opt.v]
set ::env(SDC_FILE)              [glob $::env(DESIGN_DIR)/src/constraint.sdc]
#set ::env(UPF_FILE)              [glob $::env(DESIGN_DIR)/src/power.upf]
#set ::env(FP_PDN_VSRC)           [glob $::env(DESIGN_DIR)/src/vsrc.txt]

# ==============================================================================
# SYNTHESIS
# ==============================================================================
set ::env(SYNTH_ADDER_TYPE)      "YOSYS"
set ::env(SYNTH_BIN)             "yosys"
#set ::env(SYNTH_STRATEGY)        "AREA 2"
#set ::env(SYNTH_BUFFERING)       1
#set ::env(SYNTH_SIZING)          1
#set ::env(SYNTH_SHARE_RESOURCES) 1

# ------------------------------------------------------------------------------
# FLOORPLAN
# ------------------------------------------------------------------------------
set ::env(FP_SIZING)            "relative"
set ::env(FP_CORE_UTIL)         "40"
set ::env(FP_ASPECT_RATIO)      "1"

# IO Pins
set ::env(FP_IO_MODE)            1

# Tapcell & Endcap
set ::env(FP_WELLTAP_CELL)      "sky130_fd_sc_hd__tapvpwrvgnd_1"
set ::env(FP_ENDCAP_CELL)       "sky130_fd_sc_hd__decap_3"

# PDN
set ::env(VDD_NETS)             "vccd1"
set ::env(GND_NETS)             "vssd1"
set ::env(FP_PDN_CFG)           "/openlane/scripts/openroad/common/pdn_cfg.tcl"
set ::env(FP_PDN_SKIPTRIM)      0
set ::env(FP_PDN_AUTO_ADJUST)   1
set ::env(FP_PDN_ENABLE_RAILS)  1
set ::env(FP_PDN_CHECK_NODES)   1

# ------------------------------------------------------------------------------
# PLACEMENT
# ------------------------------------------------------------------------------
set ::env(PL_TARGET_DENSITY)                 "0.50"
set ::env(PL_BASIC_PLACEMENT)                "0"

# --- Resizer ---
set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS)   "1"
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS)   "1"
set ::env(PL_RESIZER_REPAIR_TIE_FANOUT)      "1"
set ::env(PL_RESIZER_BUFFER_INPUT_PORTS)     "1"
set ::env(PL_RESIZER_BUFFER_OUTPUT_PORTS)    "1"

set ::env(RUN_HEURISTIC_DIODE_INSERTION)     "1"
set ::env(HEURISTIC_ANTENNA_THRESHOLD)       "90" 

#set ::env(PL_RESIZER_MAX_SLEW_MARGIN)        "20"
#set ::env(PL_RESIZER_MAX_CAP_MARGIN)         "20" 

# ------------------------------------------------------------------------------
# CTS
# ------------------------------------------------------------------------------
set ::env(CLOCK_PORT)           "clk"
set ::env(CLOCK_PERIOD)         "10.0"

# --- Điều khiển luồng CTS ---
set ::env(RUN_CTS)              1
set ::env(CTS_MULTICORNER_LIB)  1
set ::env(CTS_TARGET_SKEW)      "200"
set ::env(CTS_TOLERANCE)        "100" ;# 50-80 (hoi long)

# --- Quản lý cấu trúc cây (Clustering) ---
set ::env(CTS_SINK_CLUSTERING_SIZE)         "25"  ;# 15-20 (high skew)
set ::env(CTS_SINK_CLUSTERING_MAX_DIAMETER) "50"  ;# 30-40 (high skew)

# --- Lựa chọn linh kiện (Buffer Selection) ---
set ::env(CTS_ROOT_BUFFER)     "sky130_fd_sc_hd__clkbuf_8"
set ::env(CTS_CLK_BUFFER_LIST) "sky130_fd_sc_hd__clkbuf_1 sky130_fd_sc_hd__clkbuf_2 sky130_fd_sc_hd__clkbuf_4 sky130_fd_sc_hd__clkbuf_8 sky130_fd_sc_hd__clkbuf_16"

# ------------------------------------------------------------------------------
# ROUTING & SIGNOFF (Đi dây & Trích xuất số liệu)
# ------------------------------------------------------------------------------
set ::env(ROUTING_CORES)        4                                  
set ::env(RT_MAX_LAYER)         "met5"
set ::env(RT_MIN_LAYER)         "met1"

# --- Global Routing ---
set ::env(GLOBAL_ROUTER)                     "fastroute"
set ::env(GRT_OVERFLOW_ITERS)                "120" ;# 120
set ::env(GRT_ALLOW_CONGESTION)              "0"
set ::env(GLB_RESIZER_DESIGN_OPTIMIZATIONS)  "1"
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS)  "1"

# --- Antenna fix ---
set ::env(GRT_REPAIR_ANTENNAS)               "1"
set ::env(GRT_ANT_ITERS)                     "150" 
set ::env(GRT_ANT_MARGIN)                    "25"  
set ::env(GRT_MAX_DIODE_INS_ITERS)           "150" 
set ::env(GRT_ESTIMATE_PARASITICS)           "1"

# --- Detailed Routing --
set ::env(DETAILED_ROUTER)                   "tritonroute"
set ::env(DRT_OPT_ITERS)                     "64"

# ==============================================================================
# 6. FILL & SIGNOFF
# ==============================================================================
set ::env(RUN_FILL_INSERTION)   "1"
set ::env(RUN_SPEF_EXTRACTION)  "1"
set ::env(SPEF_EXTRACTOR)       "openrcx"

# DRC & LVS
set ::env(RUN_LVS)              "1"
set ::env(RUN_DRC)              "1"
set ::env(QUIT_ON_LVS_ERROR)    "1"                                             
set ::env(MAGIC_EXT_USE_GDS)    "1"
