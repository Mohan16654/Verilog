`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 20:12:30
// Design Name: 
// Module Name: range_counter
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


module range_counter(count, clk, rst);
input clk, rst;
output [5:0]count;
reg [5:0]count_temp;

     always@(posedge clk)
       if(rst)
         count_temp <= 6'd0;
       else if(count_temp < 6'd10)
         count_temp <= 6'd10;
       else if(count_temp >= 6'd40)
         count_temp <= 6'd10;
       else
         count_temp <= count_temp+1;
         
       assign count = count_temp;
         
endmodule