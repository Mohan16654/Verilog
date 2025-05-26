`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2025 19:32:07
// Design Name: 
// Module Name: dff_pe_slr_shs
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


module dff_pe_slr_shs(q, d, clk, rst, set);
input d, clk, rst, set;
output reg q;

      always@(posedge clk)
         if(!rst)
           q <= 0;
         else if(set)
           q <= 1'b1;
         else
           q <= d;
endmodule
