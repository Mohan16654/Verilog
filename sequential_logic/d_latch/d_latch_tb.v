`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2025 11:41:15
// Design Name: 
// Module Name: d_latch_tb
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


module d_latch_tb;
reg d, en;
wire q;

    d_latch uut(.d(d), .en(en), .q(q));
    initial begin
    $display("en d | q");
    $display("--------");
    $monitor("%b %b | %b", en, d, q);
    
    en = 1;
    d = 1'b0; #10;
    d = 1'b1; #10;
    
    en = 0;
    d = 1'b0; #10;
    d = 1'b1; #10;
    $finish;
    end
endmodule