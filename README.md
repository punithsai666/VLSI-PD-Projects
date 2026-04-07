# VLSI & Digital Physical Design Portfolio 🚀

Welcome to my hardware design portfolio. Hi! I am an Electronics and Communication Engineering student passionate about the semiconductor industry. This repository documents my hands-on projects, moving from Digital Logic Design to the ASIC Physical Design (PD) Flow.

My goal is to learn how modern chips are designed, verified, and prepared for manufacturing using open-source EDA tools.

📂 Featured Projects
1️⃣ 4-Bit Arithmetic Logic Unit (ALU) ✅
Focus: Combinational Logic & RTL Coding

I designed a 4-bit ALU that handles 8 core operations. This project helped me understand the mathematical "heart" of a processor.

What I did: Implemented ADD, SUB, AND, OR, XOR, NOT, SLT, and MUL in Verilog.

Verification: Created a Testbench to simulate all opcodes and verified the results.

Tools: Icarus Verilog, GTKWave.

Learning: Mastered how to translate a truth table into functional hardware code.

View ALU Code | View My Waveform

2️⃣ UART Transmitter Design 📡
Focus: Sequential Logic & Finite State Machines (FSM)

I built a UART Transmitter to learn how chips communicate serialized data.

What I did: Designed a 4-state FSM (IDLE, START, DATA, STOP) to send 8-bit data over a single wire.

The Frame: Ensured correct timing for Start and Stop bits to maintain data integrity.

Learning: Gained experience with Clock-driven logic and bit-level synchronization.

Tools: Verilog, iVerilog, GTKWave.

View UART Code | View My Waveform

3️⃣ ASIC Physical Design Flow (OpenLane) 🏗️
Focus: RTL-to-GDSII Implementation

This is where I explore how my Verilog code becomes a physical silicon layout. I am studying the OpenLane automated flow using the Sky130 PDK.

Stages I am exploring:

Synthesis: Converting my Verilog into a gate-level netlist.

Floorplanning: Setting the chip boundary and placing I/O pins.

Placement: Organizing gates to save area and power.

CTS (Clock Tree Synthesis): Building the clock network to avoid timing errors.

Routing: Drawing the physical metal wires to connect the entire design.

🛠️ My Technical Toolkit
Languages: Verilog HDL

Simulators: Icarus Verilog

Waveform Viewer: GTKWave

PD Platform: OpenLane / Sky130 PDK

Tools: VS Code (Windows) & Linux (Ubuntu)

🌟 Why I am doing this?
I want to contribute to the future of the Semiconductor Industry. By building these projects, I am developing the "Front-end" (RTL) and "Back-end" (Physical Design) skills required for a professional VLSI Engineer.

📫 Let's Connect!
I am always looking for internships and learning opportunities:

LinkedIn: www.linkedin.com/in/punith-sai-354745360

Email: punithsai50@gmail.com

Built with ❤️ by a future VLSI Engineer
