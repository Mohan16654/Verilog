`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 10:08:29
// Design Name: 
// Module Name: full_adder_4_bit
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


module full_adder_4bit (s,cout,a,b,cin);
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;

assign {cout,s} = a+b+cin;

endmodule