`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 16:44:16
// Design Name: 
// Module Name: twin_register_8bit
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


module twin_register_8bit(q1, q2, clk, rst, d1, d2);
input clk, rst;
input [7:0]d1, d2;
output reg[7:0]q1, q2;

     always@(posedge clk)
         if(rst)begin
            q1 <= 0;
            q2 <= 0; 
            end
         else begin
            q1 <= d1;
            q2 <= d2;
         end
endmodule