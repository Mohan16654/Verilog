`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 19:50:08
// Design Name: 
// Module Name: modulus_counter_tb
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


module modulus_counter_tb;
reg clk, rst;
wire [5:0]count;

    modulus_counter uut(.clk(clk), .rst(rst), .count(count));
    
    initial begin  
    clk = 0;
    forever #5 clk = ~clk;
    end
    
    initial begin
    $display("clk rst | count");
    $monitor("%b %b | %b",clk, rst, count);
    
    rst = 0; #10;
    
    rst = 1; #500;
    $finish;
    end
    
endmodule