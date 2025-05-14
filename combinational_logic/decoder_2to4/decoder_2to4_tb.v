`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 12:27:31
// Design Name: 
// Module Name: decoder_2to4_tb
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


module decoder_2to4_tb;
reg [1:0]i;
reg en;
wire [3:0]y;
    decoder_2to4 uut(.i(i), .en(en), .y(y));
    
    initial begin
    $display("en  i  y    ");
    $display("------------");
    $monitor("%b  %b %b", en, i, y);
    
    en = 1;
    i = 2'b00; #10;
    i = 2'b01; #10;
    i = 2'b10; #10;
    i = 2'b11; #10;
    
    en = 0;
    i = 2'b10; #10;
    $finish;