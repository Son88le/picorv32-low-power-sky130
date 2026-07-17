# PicoRV32 Low-Power Physical Design

RTL-to-GDSII implementation of the **PicoRV32 RISC-V processor** using the **OpenLane/OpenROAD** open-source ASIC flow on the **SkyWater SKY130** technology node.

This project investigates the impact of two low-power optimization techniques—**Operand Isolation (OPI)** and **Clock Gating (CG)**—on the processor's **Power, Performance, and Area (PPA)**.

---

## Design Variants

| Version | Description                                  |
|---------|----------------------------------------------|
| Base    | Original PicoRV32 implementation             |
| OPI     | PicoRV32 with Operand Isolation optimization |
| CG      | PicoRV32 with integrated Clock Gating cells  |

---

## Physical Design Flow

```
RTL
 └── Synthesis
      └── Floorplan
           └── Placement
                └── Clock Tree Synthesis (CTS)
                     └── Routing
                          └── Signoff
                               └── GDSII
```

---

## Technology

- **Technology Node:** SkyWater SKY130 (130 nm)
- **EDA Flow:** OpenLane
- **PnR Engine:** OpenROAD
- **Logic Synthesis:** Yosys
- **Layout Verification:** Magic
- **LVS:** Netgen
- **Timing Analysis:** OpenSTA

---

## Design Target

| Item            | Value               |
|-----------------|---------------------|
| Clock Frequency | **100 MHz**         |
| Technology      | **SkyWater SKY130** |
| Design Flow     | **RTL-to-GDSII**    |

---

## Project Objectives

- Implement PicoRV32 using the OpenLane/OpenROAD ASIC flow.
- Compare three design variants:
  - Base
  - Operand Isolation (OPI)
  - Clock Gating (CG)
- Analyze the impact of each optimization on:
  - Power
  - Performance
  - Area (PPA)

---

## Repository Structure

```
├── rtl/                # RTL source files
├── constraints/        # Timing constraints
├── openlane/           # OpenLane configuration
├── reports/            # Timing, power and area reports
├── results/            # GDSII, DEF, LEF, SPEF, SDF...
├── docs/               # Figures and documentation
└── README.md
```

---

## Tools

- OpenLane
- OpenROAD
- Yosys
- OpenSTA
- Magic
- Netgen
- KLayout

---

## Output Files

The physical design flow generates:

- Netlist
- DEF
- LEF
- GDSII
- SDF
- SPEF
- Liberty (.lib)
- DRC Report
- LVS Report
- STA Report

---

## Results

The project successfully completed the RTL-to-GDSII flow for all three design variants and achieved the target operating frequency of **100 MHz** on the **SkyWater SKY130** technology.

---

## License

This project is intended for educational and research purposes.
