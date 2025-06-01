Single Port RAM Designs (3 Versions)

Hey there!  
This repo contains my implementations of **Single Port RAM** in Verilog, each designed with a slightly different behavior for how the data is read and written. It was fun experimenting with these — especially seeing the simulations run smoothly! 

What's Inside?

I've created 3 versions of single port RAM based on how and when the data is read:

1. Old Data Read - Output Registered  
- Reads the **old** data from the memory.  
- The output is **registered**, meaning it updates on the clock edge.

2. New Data Read - Write Address Registered  
- Reads the **new** data being written.  
- The **write address** is registered inside the design.

3. New Data Read - Read Address Registered  
- Reads the **new** data just written.  
- The **read address** is registered.

Each design is structured with clarity and includes simulation-tested results.

Tools Used
- **Vivado** for simulation and testing  
- **Verilog** for design

