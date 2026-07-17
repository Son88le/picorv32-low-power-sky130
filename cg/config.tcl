#-------------------------------- FILE CONFIG_uN -----------------------------
# ==============================================================================
# INPUT
# ==============================================================================
set ::env(DESIGN_NAME)           "picorv32_cg"
set ::env(VERILOG_FILES)         [glob $::env(DESIGN_DIR)/src/picorv32_cg.v]
set ::env(SDC_FILE)              [glob $::env(DESIGN_DIR)/src/constraints.sdc]

set ::env(RUN_LINTER) 0

set ::env(PDK) "sky130A"
set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hd"

# Cấu hình Clock (STA & CTS)
set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_NET) "clk clk_cg_rf"
set ::env(CLOCK_PERIOD) "10.0"

# ==============================================================================
# SYNTHESIS
# ==============================================================================
set ::env(SYNTH_ADDER_TYPE)        "YOSYS"
set ::env(SYNTH_BIN)               "yosys"

set ::env(SYNTH_OPT)               "1"

set ::env(SYNTH_DEFINES)           "SYNTHESIS"
set ::env(SYNTH_FLAT_TOP)          "0"
set ::env(SYNTH_READ_BLACKBOX_LIB) "1"
set ::env(NO_SYNTH_CELL_LIST)      ""
set ::env(SYNTH_LIBS)              "$::env(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib"
set ::env(LIB_SYNTHICAL)           "$::env(PDK_ROOT)/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib"

# ------------------------------------------------------------------------------
# FLOORPLAN
# ------------------------------------------------------------------------------
set ::env(FP_SIZING)            "relative"
set ::env(FP_CORE_UTIL)         "35"
set ::env(FP_ASPECT_RATIO)      "1"

# IO Pins
set ::env(FP_IO_MODE)           "1"

# Tapcell & Endcap
set ::env(FP_WELLTAP_CELL)      "sky130_fd_sc_hd__tapvpwrvgnd_1"
set ::env(FP_ENDCAP_CELL)       "sky130_fd_sc_hd__decap_3"

# PDN
set ::env(VDD_NETS)             "vccd1"
set ::env(GND_NETS)             "vssd1"
set ::env(FP_PDN_CFG)           "/openlane/scripts/openroad/common/pdn_cfg.tcl"
set ::env(FP_PDN_AUTO_ADJUST)   "1"
set ::env(FP_PDN_ENABLE_RAILS)  "1"

# ------------------------------------------------------------------------------
# PLACEMENT
# ------------------------------------------------------------------------------
set ::env(PL_TARGET_DENSITY)                 "0.45"
set ::env(PL_BASIC_PLACEMENT)                "0"
set ::env(PL_TIME_DRIVEN)                    "1"
set ::env(PL_ROUTABILITY_DRIVEN)             "1"

# --- Resizer ---
set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS)   "1"
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS)   "1"
# ------------------------------------------------------------------------------
# CTS
# -----------------------------------------------------------------------------
# --- Điều khiển luồng CTS ---
set ::env(RUN_CTS)                           "1"
set ::env(CTS_MULTICORNER_LIB)               "1"

set ::env(CTS_TOLERANCE)                     "20" 

set ::env(CTS_CLK_MAX_WIRE_LENGTH)           "200"
set ::env(MAX_FANOUT_CONSTRAINT)             "8"
set ::env(CLOCK_BUFFER_FANOUT)               "10"

# --- Quản lý cấu trúc cây (Clustering) ---
set ::env(CTS_SINK_CLUSTERING_SIZE)          "25"  
set ::env(CTS_SINK_CLUSTERING_MAX_DIAMETER) "100"  

# --- Lựa chọn linh kiện (Buffer Selection) ---
set ::env(CTS_ROOT_BUFFER)                  "sky130_fd_sc_hd__clkbuf_16" 
set ::env(CTS_CLK_BUFFER_LIST)              "sky130_fd_sc_hd__clkbuf_2 sky130_fd_sc_hd__clkbuf_4 sky130_fd_sc_hd__clkbuf_8 sky130_fd_sc_hd__clkbuf_16"

# ------------------------------------------------------------------------------
# ROUTING 
# ------------------------------------------------------------------------------
set ::env(ROUTING_CORES)                    "4"
set ::env(RT_MAX_LAYER)                     "met5"
set ::env(RT_MIN_LAYER)                     "met1"
set ::env(RUN_DRT)                          "1"

# --- Global Routing ---
set ::env(GLOBAL_ROUTER)                     "fastroute"

# --- Detailed Routing --
set ::env(DETAILED_ROUTER)                   "tritonroute"
set ::env(DRT_OPT_ITERS)                     "64"

# --- Antenna fix ---
set ::env(GRT_REPAIR_ANTENNAS)               "1"
set ::env(GRT_ANT_ITERS)                     "150"
set ::env(GRT_ANT_MARGIN)                    "25"
set ::env(GRT_MAX_DIODE_INS_ITERS)           "150"
set ::env(GRT_ESTIMATE_PARASITICS)           "1"
set ::env(GRT_OVERFLOW_ITERS)                "120" 

# ==============================================================================
# SIGNOFF & CHECKES
# ==============================================================================
set ::env(RUN_SPEF_EXTRACTION)  "1"
set ::env(SPEF_EXTRACTOR)       "openrcx"

set ::env(RUN_MAGIC) 1
set ::env(RUN_MAGIC_DRC) 1
set ::env(RUN_LVS) 1

set ::env(QUIT_ON_SYNTH_CHECKS) 1
set ::env(QUIT_ON_TR_DRC) 1
set ::env(QUIT_ON_MAGIC_DRC) 1
set ::env(QUIT_ON_LVS_ERROR) 1
