`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2025 12:22:07
// Design Name: 
// Module Name: dlatch_ar_rst_tb
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


module dlatch_ar_rst_tb;
reg d, en, rst;
wire q;

    dlatch_ar_rst uut(.d(d), .en(en), .rst(rst), .q(q));
    initial begin
    $display("rst en d | q");
    $display("-------------");
    $monitor("%b %b %b | %b", rst, en, d, q);
    
    en = 1;
    d = 1'b0; #10;
    d = 1'b1; #10;
    
    en = 0;
    d = 1'b0; #10;
    
    rst = 1; #10;
    $finish;
    end
    
endmodule