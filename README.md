# PicoRV32 Low-Power Physical Design on SKY130 using OpenLane

<p align="center">
  Physical Design • OpenLane • OpenROAD • SKY130 • PicoRV32 • Operand Isolation • Clock Gating
</p>

---

## Overview

This project presents the complete RTL-to-GDSII physical implementation of the PicoRV32 RISC-V processor using the open-source OpenLane flow and the SkyWater SKY130 technology.

Two low-power optimization techniques were investigated:

- Operand Isolation (OPI)
- Clock Gating (CG)

Three design versions were implemented and compared:

- Base
- Operand Isolation
- Clock Gating

The impact of each technique was evaluated using Power, Performance and Area (PPA) metrics.

---

## Objectives

- Complete RTL-to-GDSII implementation using OpenLane.
- Implement low-power optimization techniques.
- Compare Base, OPI and CG implementations.
- Analyze trade-offs between Power, Performance and Area.
- Meet timing at 100 MHz on SKY130.

---

## Design Flow

The physical design flow consists of:

1. RTL Design
2. Logic Synthesis
3. Floorplanning
4. Placement
5. Clock Tree Synthesis
6. Routing
7. Sign-off Verification
8. GDSII Generation

---

## Technology

| Item | Description |
|------|-------------|
| Processor | PicoRV32 |
| ISA | RV32I |
| Technology | SkyWater SKY130 |
| Flow | OpenLane |
| PnR Engine | OpenROAD |
| Synthesis | Yosys |
| STA | OpenSTA |
| DRC | Magic |
| LVS | Netgen |
| Clock Frequency | 100 MHz |

---

## Design Variants

| Version | Description |
|----------|-------------|
| Base | Original PicoRV32 implementation |
| OPI | Operand Isolation optimization |
| CG | Clock Gating optimization |

---

## Repository Structure

```
picorv32-low-power-sky130/
│
├── base/                 # Baseline implementation
├── opi/                  # Operand Isolation implementation
├── cg/                   # Clock Gating implementation
│
├── images/               # Layouts, charts and figures
│
├── README.md
└── .gitignore
```

---

## Main Results

✔ Completed the OpenLane physical design flow from Synthesis to GDSII

✔ Generated manufacturable GDSII layouts for three design variants

✔ Achieved timing closure at 100 MHz

✔ Evaluated the impact of Operand Isolation and Clock Gating on PPA

---

## Future Work

- Apply additional low-power optimization techniques.
- Integrate PicoRV32 into a complete SoC.
- Compare results with commercial EDA tools.
- Explore advanced technology nodes (65nm, 28nm, etc.).

---

## References

- OpenLane
- OpenROAD
- SkyWater SKY130 PDK
- PicoRV32 by Clifford Wolf

---

## Author

**Le Dang Thanh Son**

Ho Chi Minh City University of Technology and Engineering (HCM-UTE)

