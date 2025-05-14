`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 22:39:55
// Design Name: 
// Module Name: alu_4bit
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


module alu_4bit(x,y,a,b,opcode);
input [3:0]a,b,opcode;
output reg[3:0]y,x;

         always@(*)begin
         {x, y} = 8'b0;
              case(opcode)
                  4'b0000 : y[0] = |a;
                  4'b0001 : y[0] = &a;
                  4'b0010 : y[0] = ^a;
                  4'b0011 : y = a & b;
                  4'b0100 : y = a | b;
                  4'b0101 : y = a ^ b;
                  4'b0110 : y[0] = a > b;
                  4'b0111 : y[0] = a < b;
                  4'b1000 : y[0] = a != b;
                  4'b1001 : y[0] = a == b;
                  4'b1010 : {x[0],y} = a + b;
                  4'b1011 : y = a - b;
                  4'b1100 : {x,y} = a * b;
                  4'b1101 : y = a >> 2;
                  4'b1110 : y = a << 2;
                  4'b1111 : y = ~a;
                  
                  default : $display("error");
                  
             endcase
        end
                  
                  
                  
endmodule