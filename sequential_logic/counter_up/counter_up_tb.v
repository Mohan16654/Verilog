`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 12:51:46
// Design Name: 
// Module Name: counter_up_tb
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


module counter_up_tb;
reg clk, rst;
wire [7:0]count;
    counter_up uut(.clk(clk), .rst(rst), .count(count));
    
    initial begin
    clk = 0;
    forever #5 clk = ~clk;
    end
    
    initial begin 
    $monitor("clk = %b rst = %b | count = %b",clk, rst, count);
    
    rst = 1; #10;
    
    rst = 0; #100;
    $finish;
    end
    
endmodule