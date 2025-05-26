`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 18:22:30
// Design Name: 
// Module Name: u_d_load_counter
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


module u_d_load_counter(count, clk, rst, u_d, load, data);
input clk, rst, load, u_d;
input [7:0]data;
output reg[7:0]count;

     
         always@(posedge clk)
           if(rst)
             count <= 8'd0;
           else if(load)
             count <= data;
           else if(u_d)
             count <= count+1;
           else 
             count <= count-1;       
                
endmodule