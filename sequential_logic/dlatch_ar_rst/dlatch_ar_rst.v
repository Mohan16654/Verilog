`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2025 12:17:09
// Design Name: 
// Module Name: dlatch_ar_rst
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


module dlatch_ar_rst(q, en, d, rst);
input en, d, rst;
output reg q;

     always@(*)
        if(rst)
          q = 0;
        else if(en)
          q = d;
                                              
endmodule