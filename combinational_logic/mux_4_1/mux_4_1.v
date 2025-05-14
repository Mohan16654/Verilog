`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 09:27:47
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1(y, d, s);
input [3:0]d;
input [1:0]s;
output reg y;
           
        always@(*)begin
              case(s)
                2'b00 : y = d[0];
                2'b01 : y = d[1];
                2'b10 : y = d[2];
                2'b11 : y = d[3];
                default : y = 1'b0;
              endcase
         end
endmodule