Optimized MAC (Multiply-Accumulate) Unit

Hey there! 
This repository contains my B.Tech project: an **Optimized Multiply-Accumulate (MAC) Unit** built using **Verilog HDL**. It's designed for **high-performance computing**, especially for **DSP** and **VLSI** applications.

---

Overview

The MAC unit integrates multiple optimized modules for speed and low power consumption. Key techniques used include:

- **Dadda Multiplier** – Efficient parallel multiplication
- **Approximate Adders** – Faster addition with power-area benefits
- **PASTA-based Montgomery Multiplier** – Accelerated modular arithmetic

These components are connected to form a **pipelined MAC architecture**.

---

Features

- 16-bit data support
- Modular and hierarchical Verilog design
- Fully structural implementation (no behavioral shortcuts!)
- Simulation-ready with testbench

---

Tools Used

- Verilog HDL
- Vivado 2022.1 (Design & Simulation)

---

Simulation

- Open the project in **Vivado**
- Run the testbench (`tb.v`)
- Observe waveforms and output to verify correct multiply-accumulate behavior

---

Credits

This was my final year engineering project, and it gave me deep insight into **MAC design techniques** used in modern digital systems.

---

Feel free to fork, explore, simulate, and reuse!  
Made with by **Kurma Mohan**