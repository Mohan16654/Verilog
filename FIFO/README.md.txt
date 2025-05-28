Single Clock FIFO (First-In First-Out)

This project contains a Verilog implementation of a **Single Clock FIFO**.

What is it?
A FIFO (First-In First-Out) memory buffer where **both read and write operations are controlled by the same clock**. It’s mainly used when both producer and consumer are in the same clock domain.

What’s included?
- Verilog source code of the Single Clock FIFO
- A testbench to verify its functionality
- Simulation output to confirm correct behavior

Simulation
Designed and tested on **Vivado**.  
I felt really happy when I saw it working correctly in the simulation.

Applications
- UART buffering
- Data streaming in synchronous systems