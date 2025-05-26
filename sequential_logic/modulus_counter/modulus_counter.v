`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 19:45:05
// Design Name: 
// Module Name: modulus_counter
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


module modulus_counter(count, rst, clk);
input clk, rst;
output reg[5:0]count;

     always@(posedge clk)
       if(!rst || count >= 6'd46)
         count <= 6'd0;
       else
         count <= count+1;

endmodule