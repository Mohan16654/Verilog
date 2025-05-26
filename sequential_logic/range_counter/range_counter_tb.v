`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 20:23:20
// Design Name: 
// Module Name: range_counter_tb
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


module range_counter_tb;
reg clk, rst;
wire [5:0]count;

    range_counter uut(.clk(clk), .rst(rst), .count(count));
    
    initial begin
    clk = 0;
    forever #5 clk = ~clk;
    end
    
    initial begin
    $monitor("clk = %b rst = %b | count = %b",clk, rst, count);
    
    rst = 1; #10;
    
    rst = 0; #350;
    $finish;
    end
    
endmodule