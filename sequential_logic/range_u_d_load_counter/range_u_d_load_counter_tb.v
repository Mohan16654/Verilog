`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 20:57:34
// Design Name: 
// Module Name: range_u_d_load_counter_tb
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


module range_u_d_load_counter_tb;
reg clk, rst, u_d, load;
reg [5:0]data;
wire [5:0]count;

     range_u_d_load_counter uut(.clk(clk), .rst(rst), .u_d(u_d), .load(load), .data(data), .count(count));
     
     initial begin
     clk = 0;
     forever #5 clk = ~clk;
     end
     
     initial begin
     $display("clk rst u_d load   data |  count");
     $monitor("%b %b %b %b  %b  |  %b ", clk, rst, u_d, load, data, count);
     
     rst = 1; data = 6'd0; load = 0; #10;
     
     rst = 0; 
     data = 6'd22;
     load = 1; #10;
     
     load = 0; 
     u_d = 1; #80;
     
     u_d = 0; #100;
     $finish;
     end
     
endmodule