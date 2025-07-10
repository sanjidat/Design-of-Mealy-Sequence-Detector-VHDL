# Design-of-Mealy 101 Non-Overlapping Sequence Detector-VHDL

### Overview
This project implements a Mealy Finite State Machine (FSM) to detect the sequence 101 in a serial bitstream without overlapping sequences. The detector outputs a high signal (1) only when the exact sequence 101 is detected, then resets to look for the next sequence without reusing bits from the previous detection.

# Features
Detects the 101 sequence in a non-overlapping manner.

Designed using VHDL (or Verilog, specify your language).

Suitable for FPGA implementation (tested on DE10-Lite board).

Mealy machine outputs result immediately upon detection.

Includes simulation setup for functional verification.


---

## 📂 Folder Structure
<pre>
/Design-of-Mealy-Sequence-Detector-VHDL
├──Mealy_3_Bit_NonOverlapping_Seq_Detector
│
│   ├── src/
│   └── Mealy_101_Sequence_detector.vhd         # VHDL source code of the sequence detector
│
├── testbench/
│   └── Mealy_101_Sequence_detector_tb.vhdl      # Testbench for simulation
│
├── scripts/
│   └── run_sim.tcl                              # TCL script to run ModelSim simulation
│
├── constraints/
│   └── Mealy_101_Sequence_detector.sdc          # Timing constraints (if applicable)
│  
├── Quartus Prime Files/
│   └── Mealy_101_Sequence_detector.qpf          # Quartus Prime File
│   └── Mealy_101_Sequence_detector.sof          # file for FPGA
│  
└── README.md                                    # This file
</pre>
---

## 🧠 How It Works
The FSM has states corresponding to how much of the sequence has been matched:

Idle / Reset State — waiting for input.

State 1 — detected 1.

State 2 — detected 10.

State 3 — detected 101, output goes high, then reset.

The machine only progresses forward when inputs match, and resets to avoid overlapping detections.

---

## Usage

### Simulation
Open ModelSim or your preferred simulator.

Compile the source and testbench files.

Run the provided TCL script (scripts/run_sim.tcl) to simulate.

Observe the waveform to verify sequence detection.

### Synthesis & Implementation
Open Quartus Prime.

Create a new project targeting the DE10-Lite FPGA device.

Add the source files from src/.

Assign pins and add constraints as necessary.

Compile and upload the bitstream to your FPGA.


## 🛠 Tools Used

Quartus Prime software

ModelSim for simulation

DE10-Lite FPGA development board (optional for hardware testing)

GitHub for version control and open-source documentation

---


🙋‍♀️ Author Developed by Sanjida Orin Tawhid


_MSc in Electronic Systems Design, specialization in Digital Design_  
