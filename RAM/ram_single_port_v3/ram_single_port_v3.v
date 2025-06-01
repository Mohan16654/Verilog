`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2025 21:00:56
// Design Name: 
// Module Name: ram_single_port
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
input [5:0]write_addr, read_addr,
output[7:0]q);
reg[7:0] mem[63:0];
reg[5:0]read_addr_reg;

         always@(posedge clk)begin
           if(we)
             mem[write_addr] <= data;            
             
           read_addr_reg <= read_addr;
         end
            assign q = mem[read_addr_reg];
         
endmodule