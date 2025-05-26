`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2025 16:20:54
// Design Name: 
// Module Name: dff_pe_alr_ahs
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


module dff_pe_alr_ahs(q, d, clk, rst, set);
input d, clk, rst, set;
output reg q;

      always@(posedge clk, negedge rst, posedge set)
         if(!rst)
           q <= 1'b0;
         else if(set)
           q <= 1'b1;
         else 
           q <= d;
           
endmodule