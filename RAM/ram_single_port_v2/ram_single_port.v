`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2025 20:17:55
// Design Name: 
// Module Name: single_port_ram
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


module single_port_ram(
input clk,we,
input [7:0]data,
input [5:0]addr,
output[7:0]q);
reg[7:0] mem[63:0];
reg[7:0]addr_reg;

         always@(posedge clk)begin
           if(we)
             mem[addr] <= data;
             addr_reg <= addr;
         end
         assign q =  mem[addr_reg];
         
endmodule
