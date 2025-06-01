`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2025 18:56:29
// Design Name: 
// Module Name: dual_port_ram
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dual_port_ram(
input clk, we_a, we_b,
input [7:0]data_a, data_b,
input [5:0]addr_a, addr_b,
output reg[7:0]q_a, q_b);
reg[7:0] mem[63:0];

          always@(posedge clk)begin
            if(we_a)
              mem[addr_a] <= data_a;
              
            q_a <= mem[addr_a];
          end
           
          always@(posedge clk)begin
            if(we_b)
              mem[addr_b] <= data_b;
              
            q_b <= mem[addr_b];
          end    
endmodule