`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 11:58:38
// Design Name: 
// Module Name: freq_divider_by3_tb
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


module freq_divider_by3_tb;
reg clk, rst;
wire clk_out;

      freq_divider_by3 uut(.clk(clk), .rst(rst), .clk_out(clk_out));
      
      initial begin
      clk = 0;
      forever #5 clk = ~clk;
      end
      
      initial begin 
      $monitor("clk = %b rst = %b | clk_out = %b",clk, rst, clk_out);
      
      rst = 1; #10;
      
      rst = 0; #200;
      $finish;
      end
      
endmodule