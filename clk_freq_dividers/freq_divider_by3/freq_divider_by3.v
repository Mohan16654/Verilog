`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 11:41:59
// Design Name: 
// Module Name: freq_divider_by3
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


module freq_divider_by3(clk_out, clk, rst);
input clk, rst;
output clk_out;
reg [1:0]pos_cnt;
reg [1:0]neg_cnt;

         always@(posedge clk)begin
           if(rst)
             pos_cnt <= 0;
           else if(pos_cnt == 2'b10)
             pos_cnt <= 0;
           else
             pos_cnt <= pos_cnt+1;
         end
         
         always@(negedge clk)begin
           if(rst)
             neg_cnt <= 0;
           else if(neg_cnt == 2'b10)
             neg_cnt <= 0;
           else
             neg_cnt <= neg_cnt+1;
         end
         
         assign clk_out = ((pos_cnt == 2'b10) || (neg_cnt == 2'b10));
             
endmodule