`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2025 13:46:25
// Design Name: 
// Module Name: d_flip_flop_tb
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


module d_flip_flop_tb;
reg d, clk;
wire q;
    d_flip_flop uut(.d(d), .clk(clk), .q(q));
    initial begin
    $display("clk d | q");
    $display("---------");
    $monitor("%b %b | %b", clk, d, q);
    
    d = 0; #10;
    d = 1; #10;
    d = 0; #10;
    d = 1; #10;
    $finish;
    end
    
    initial begin
    clk = 0;
    forever #5 clk = ~clk;
    end
           
endmodule