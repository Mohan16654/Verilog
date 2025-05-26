`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 16:52:17
// Design Name: 
// Module Name: up_counter_load_tb
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


module up_counter_load_tb;
reg clk, rst, load;
reg [7:0]data;
wire [7:0]count;
      
      up_counter_load uut(.rst(rst), .clk(clk), .load(load), .data(data), .count(count));
      
      initial begin
      clk = 0;
      forever #5 clk = ~clk;
      end
      
      initial begin
      $monitor("clk = %b rst = %b load = %b data = %b | count = %b",clk, rst, load, data, count);
      
      rst = 1; load = 0; data = 0; #10;
      
      rst = 0; load = 1; data = 8'd205; #10;
      
      rst = 0; load = 0; #50;
      
      rst = 1; #10;
      rst = 0; #10;
      load = 0; #69;
      
      $finish;
      end
endmodule