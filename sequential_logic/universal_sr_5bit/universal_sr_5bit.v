`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 11:27:47
// Design Name: 
// Module Name: universal_sr_5bit
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


module universal_sr_5bit(so, po, si, clk, rst, sel, pi);
input clk, rst, si;
input [4:0]pi;
input [1:0]sel;
output so;
output reg[4:0]po;

         always@(posedge clk) begin
         if(rst)
           po <= 5'b00000;
         else begin
           case(sel)
               2'b00 : po <= po;
               2'b01 : po <= {si, po[4:1]};
               2'b10 : po <= {po[3:0], si};
               2'b11 : po <= pi;
               default : po <= 0;
           endcase
         end
       end
         
         assign so = (sel == 2'b01)? po[0] : po[4];

endmodule