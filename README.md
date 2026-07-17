# PicoRV32 Low-Power Physical Design

This repository presents the RTL-to-GDSII implementation of the PicoRV32 RISC-V processor using OpenLane/OpenROAD on SkyWater 130nm technology.

## Design Variants

- Base
- Operand Isolation (OPI)
- Clock Gating (CG)

## Design Flow

RTL → Synthesis → Floorplan → Placement → CTS → Routing → Signoff → GDSII

## Technology

- SkyWater SKY130
- OpenLane
- OpenROAD
- Yosys
- Magic
- Netgen

## Target

- 100 MHz
