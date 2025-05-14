`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 09:34:42
// Design Name: 
// Module Name: mux_4_1_tb
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


module mux_4_1_tb;
reg [3:0]d;
reg [1:0]s;
wire y;

mux_4_1 uut(.d(d), .s(s), .y(y));

initial begin
     $monitor("%b  %b  %b",d, s, y);
     d = 4'b1010;
     
     s = 2'b00; #10;
     s = 2'b01; #10;
     s = 2'b10; #10;
     s = 2'b11; #10;
     $finish;
     
end
     endmodule