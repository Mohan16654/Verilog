`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 16:44:29
// Design Name: 
// Module Name: up_counter_load
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


module up_counter_load(count, clk, rst, load, data);
input rst, clk, load;
input [7:0]data;
output [7:0]count;
reg [7:0]count_temp;
          
           always@(posedge clk)begin
             if(rst)
                count_temp <= 8'd0;
             else if(load)
                count_temp <= data;
             else
                count_temp <= count_temp+1;
           end
                
           assign count = count_temp;
endmodule