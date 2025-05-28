Dual Clock FIFO (First-In First-Out)

This project includes a Verilog implementation of a **Dual Clock FIFO**.

What is it?
A FIFO memory design where **write and read operations work with different clocks**. This makes it suitable for crossing data between two clock domains (asynchronous systems).

What’s included?
- Verilog source code of the Dual Clock FIFO
- A testbench to test across different clock domains
- Simulation result showing successful operation

Simulation
Simulated using **Vivado** with separate write and read clocks.  
Seeing it run correctly made me feel really accomplished! 

Applications
- Clock domain crossing
- Communication between asynchronous modules