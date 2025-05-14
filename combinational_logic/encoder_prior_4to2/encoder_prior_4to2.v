`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 16:22:31
// Design Name: 
// Module Name: encoder_prior_4to2
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


module encoder_prior_4to2(y, d);
input [3:0]d;
output reg [1:0]y;

   always@(*)begin
   casez(d)
      4'b1??? : y = 2'b11;
      4'b01?? : y = 2'b10;
      4'b001? : y = 2'b01;
      4'b0001 : y = 2'b00;
      default : y = 2'b00;
   endcase
   end
endmodule