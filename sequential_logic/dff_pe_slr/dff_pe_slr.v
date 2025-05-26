`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2025 19:02:14
// Design Name: 
// Module Name: dff_pe_slr
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


module dff_pe_slr(q, d, clk, rst);
input d, clk, rst;
output reg q;

      always@(posedge clk)begin
         if(!rst)
           q <= 0;
         else
           q <= d;
           end
endmodule