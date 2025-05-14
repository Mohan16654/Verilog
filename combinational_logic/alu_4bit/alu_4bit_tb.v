`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 22:42:41
// Design Name: 
// Module Name: alu_4bit_tb
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


module alu_4bit_tb;
reg [3:0]a, b, opcode;
wire [3:0]x, y;
integer i;

    alu_4bit uut(.a(a), .b(b), .opcode(opcode), .x(x), .y(y));
    
     initial begin
         $display(" a    b    opcode |   x    y  ");
         $display("------------------------------");
         $monitor("%b %b %b | %b %b", a, b, opcode, x, y);
         
             a = 4'b1100; b = 4'b1101;
             for(i = 0; i < 16; i = i+1)begin
             opcode = i; #10;
             end
             $finish;
     end
     
endmodule