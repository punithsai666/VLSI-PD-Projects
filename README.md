# VLSI & Digital Physical Design Portfolio 🚀

Welcome to my hardware design portfolio. This repository showcases my journey from **RTL Design** to **Functional Verification** and the **ASIC Physical Design Flow**. 

As an Electronics and Communication Engineering student/aspirant, I focus on building efficient digital systems using industry-standard open-source EDA tools.

---

## 📂 Projects Overview

### 1️⃣ 4-Bit Arithmetic Logic Unit (ALU) ✅
**Status:** Completed | **Core Skill:** Combinational Logic & RTL Coding

Designed a 4-bit ALU supporting 8 distinct arithmetic and logical operations. This project serves as the computational heart of a processor.

- **Operations:** ADD, SUB, AND, OR, XOR, NOT, SLT, MUL.
- **Tools:** Icarus Verilog (Simulation), GTKWave (Waveform Analysis).
- **Key Outcome:** Verified 100% logic accuracy across all opcodes via a custom testbench.

> [View ALU Source Code](./alu.v) | [View Waveform](./alu_waveform.png)

---

### 2️⃣ UART Transmitter Design ✅
**Status:** Completed | **Core Skill:** Sequential Logic & Finite State Machines (FSM)

Implemented the Universal Asynchronous Receiver-Transmitter (UART) protocol to convert 8-bit parallel data into a serial bitstream for communication.

- **Protocol:** 8N1 (1 Start bit, 8 Data bits, 1 Stop bit).
- **Design:** 4-State FSM (IDLE, START, DATA, STOP).
- **Tools:** Verilog HDL, iVerilog, GTKWave.
- **Key Outcome:** Successfully serialized Hex data (0x41) with precise timing alignment.

> [View UART Source Code](./uart_tx.v) | [View Waveform](./uart_waveform.png)

---

### 3️⃣ ASIC Physical Design Flow (OpenLane) 🏗️
**Status:** Documentation & Flow Study | **Core Skill:** RTL-to-GDSII Implementation

Explored the automated ASIC design flow using the **OpenLane** platform and **Sky130 PDK** (130nm process). This project focuses on the physical implementation of digital logic onto silicon.

- **The Flow Stages:**
  1. **Synthesis:** Converting RTL to a gate-level netlist (Yosys).
  2. **Floorplanning:** Defining die area and I/O pin placement.
  3. **Placement:** Global and detailed placement of standard cells.
  4. **CTS:** Clock Tree Synthesis to minimize clock skew.
  5. **Routing:** Global and detailed routing of metal interconnects.
- **Tools:** OpenROAD, Magic VLSI, Netgen.

---

## 🛠️ Technical Stack
- **Languages:** Verilog HDL
- **Simulators:** Icarus Verilog (iVerilog)
- **Analysis:** GTKWave
- **ASIC Flow:** OpenLane / Sky130 PDK
- **Platform:** Windows (VS Code) / Linux (Ubuntu for OpenLane)

---

## 📈 Future Goals
- Implement a **UART Receiver** to complete the full Duplex communication.
- Perform **Static Timing Analysis (STA)** on the ALU design.
- Explore **FPGA Prototyping** using Xilinx Vivado.

---

## ✉️ Connect with Me
If you are interested in VLSI design or have any suggestions, feel free to reach out!
- **LinkedIn:** [Insert Your LinkedIn Profile Link Here]
- **Email:** [Insert Your Email Here]
