`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.05.2025 17:47:53
// Design Name: 
// Module Name: mux_2_1_tb
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


module mux_2_1_tb;
reg a,b;
reg s;
wire y;
    mux_2_1 uut (.a(a), .b(b), .s(s), .y(y));
    initial begin
    $monitor ("time = %d  a = %b  b = %b  s = %b  y = %b", $time, a, b, s, y);
    
    a = 0; b = 0; s = 0; #10;
    a = 0; b = 0; s = 1; #10;
    a = 0; b = 1; s = 0; #10;
    a = 0; b = 1; s = 1; #10;
    
    a = 1; b = 0; s = 0; #10;
    a = 1; b = 0; s = 1; #10;
    a = 1; b = 1; s = 0; #10;
    a = 1; b = 1; s = 1; #10;
    $finish;
    end
    
endmodule