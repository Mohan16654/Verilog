`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 14:54:47
// Design Name: 
// Module Name: decoder_3to8_tb
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


module decoder_3to8_tb;
reg [2:0]i;
reg en;
wire [7:0]y;
    decoder_3to8 uut(.i(i), .en(en), .y(y));
    initial begin
    $display("en  i     y");
    $display("---------------");
    $monitor("%b %b %b", en, i, y);
    
    en = 1;
    i = 3'b000; #10;
    i = 3'b001; #10;
    i = 3'b010; #10;
    i = 3'b011; #10;
    i = 3'b100; #10;
    i = 3'b101; #10;
    i = 3'b110; #10;
    i = 3'b111; #10;
    
    en = 0;
    i = 3'b101; #10;
    $finish;
    end
    
endmodule