# Design-of-Mealy-Sequence-Detector-VHDL
VHDL implementation of Mealy finite state machine (FSM) sequence detectors for 3-bit and 5-bit patterns, supporting both overlapping and non-overlapping cases.

# Mealy Sequence Detector (VHDL)

This project showcases the VHDL implementation of **Mealy finite state machines (FSMs)** for detecting binary input sequences. Both **overlapping** and **non-overlapping** versions are implemented for:
- 3-bit sequence `"101"`
- 5-bit sequence `"11011"`

It is designed as a personal portfolio project to demonstrate digital design skills in VHDL, simulation, synthesis, and timing analysis using **Xilinx ISE**.

---

## 📂 Folder Structure

mealy-sequence-detector-vhdl/
├── 3bit_overlapping/
├── 3bit_non_overlapping/
├── 5bit_overlapping/
├── 5bit_non_overlapping/

Each subfolder contains:
- `*.vhd` source code
- Testbench file
- Simulation waveform/image
- Synthesis and timing reports

---

## 🧠 What Is a Mealy FSM?

A **Mealy machine** is a type of FSM where the output depends on both the current state and the input. This allows for faster output transitions and more compact state representations compared to Moore machines.

---

## 🔍 Sequences Detected

| Sequence Length  | Pattern   | Overlapping  | Non-Overlapping  |
|------------------|----------|-------------- |----------------- |
| 3-bit            | `101`    | ✅            | ✅              |
| 5-bit            | `11011`  | ✅            | ✅              |

---

## 🛠 Tools Used

- **Xilinx ISE** for synthesis, place & route, and timing analysis
- **ISim** for simulation
- **GitHub** for version control and open-source documentation


🙋‍♀️ Author Developed by Sanjida Orin Tawhid
