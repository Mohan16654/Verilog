`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 15:34:42
// Design Name: 
// Module Name: encoder_4to2_tb
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


module encoder_4to2_tb;
reg [3:0]d;
wire [1:0]y;

encoder_4to2 uut(.d(d), .y(y));

     initial begin
     $display("d  |  y");
     $display("-------------");
     
     d = 4'b1000; #10;
     $display("%b | %b", d, y);
     d = 4'b0100; #10;
     $display("%b | %b", d, y);
     d = 4'b0010; #10;
     $display("%b | %b", d, y);
     d = 4'b0001; #10;
     $display("%b | %b", d, y);
     
     $finish;
     
     end
endmodule
