`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 12:45:59
// Design Name: 
// Module Name: counter_up
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


module counter_up(count, clk, rst);
input rst, clk;
output reg[7:0]count;
         always@(posedge clk)
           if(rst)
              count <= 8'd0;
           else
              count <= count+1;
endmodule