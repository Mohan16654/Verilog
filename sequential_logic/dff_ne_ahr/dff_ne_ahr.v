`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2025 15:04:04
// Design Name: 
// Module Name: dff_ne_ahr
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


module dff_ne_ahr(q, d, clk, rst);
input d, clk, rst;
output reg q;

      always@(negedge clk or posedge rst)
         if(rst)
           q <= 0;
         else
           q <= d;
endmodule