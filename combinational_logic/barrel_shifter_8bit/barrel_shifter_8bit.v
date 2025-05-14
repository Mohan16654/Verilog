`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 17:55:16
// Design Name: 
// Module Name: barrel_shifter_8bit
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


module barrel_shifter_8bit(out, in, lr, n);
input [7:0]in;
input [2:0]n;
input lr;
output reg[7:0]out;

      always@(*)begin
          if(lr)
             out = in << n;
          else
             out = in >> n;
             
     end
endmodule