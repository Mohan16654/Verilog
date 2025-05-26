`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 17:55:45
// Design Name: 
// Module Name: shift_register_siso
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


module shift_register_siso(so, clk, rst, si);
input clk, rst, si;
output so;
reg [4:0]sr;
      always@(posedge clk)
       if(rst)
         sr <= 5'b00000;
       else
         sr <= {sr[3:0], si};
         
       assign so = sr[4];
endmodule