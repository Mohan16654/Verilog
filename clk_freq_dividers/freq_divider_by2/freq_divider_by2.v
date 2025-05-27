`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 10:00:21
// Design Name: 
// Module Name: freq_divider_by2
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


module freq_divider_by2(clk_out, rst, clk);
input rst, clk;
output reg clk_out;

    always@(posedge clk)
      if(!rst)
        clk_out <= 0;
      else
        clk_out <= ~clk_out;
endmodule