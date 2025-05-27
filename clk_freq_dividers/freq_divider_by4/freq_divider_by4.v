`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 10:34:08
// Design Name: 
// Module Name: freq_divider_by4
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


module freq_divider_by4(clk_out, clk, rst);
input clk, rst;
output reg clk_out;
reg [1:0]count;

       always@(posedge clk)begin
         if(!rst)begin
           count <= 0;
           clk_out <= 0;
         end
         else begin
           count <= count+1;
         if(count == 2'b01 || count == 2'b11)
           clk_out <= ~clk_out;
       end
       end
         
endmodule