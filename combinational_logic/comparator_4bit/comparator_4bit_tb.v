`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 17:00:44
// Design Name: 
// Module Name: comparator_4bit_tb
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


module comparator_4bit_tb;
reg [3:0]a, b;
wire eq, gt, sm;

    comparator_4bit uut(.eq(eq), .gt(gt), .sm(sm), .a(a), .b(b));
    
    initial begin
    $display("  time   a     b    | eq gt sm");
    $display("-----------------------");
    $monitor("time=%0t a = %b  b = %b  |  eq = %b gt = %b sm = %b", $time, a, b, eq, gt, sm);
    
    a = 4'b0011; b = 4'b0001; #10;
    a = 4'b1010; b = 4'b0011; #10;
    a = 4'b0011; b = 4'b1010; #10;
    a = 4'b1111; b = 4'b0000; #10;
    a = 4'b1001; b = 4'b1001; #10;
    $finish;
    end
    
endmodule