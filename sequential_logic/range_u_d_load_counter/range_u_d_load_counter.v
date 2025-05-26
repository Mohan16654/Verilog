`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 20:46:54
// Design Name: 
// Module Name: range_u_d_load_counter
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


module range_u_d_load_counter(count, clk, rst, u_d, data, load);
input clk, rst, load, u_d;
input [5:0]data;
output reg[5:0]count;

      always@(posedge clk)begin
        if(rst)
          count <= 6'd10;
        else if(count < 6'd10)
          count <= 6'd10;
        else if(count >= 6'd40)
          count <= 6'd10;
        else if(load)
          count <= data;
        else if(u_d)
          count <= (count >= 6'd40)? 6'd10 : count+1;
        else 
          count <= (count < 6'd10)? 6'd40 : count-1;
      end
          
endmodule