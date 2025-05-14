`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 18:01:31
// Design Name: 
// Module Name: barrel_shifter_8bit_tb
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


module barrel_shifter_8bit_tb;
reg [7:0]in;
reg [2:0]n;
reg lr;
wire [7:0]out;
integer i;

     barrel_shifter_8bit dut(.in(in), .n(n), .lr(lr), .out(out));
     
     initial begin
     $display(" time lr  in     n |     out   ");
     $display("-------------------------------");
     $monitor("%d %b %b %b | %b", $time, lr, in, n, out);
     
         lr = 1; in = 8'b11010110;
         for(i = 0; i < 8; i = i+1)begin
         n = i;
         #10;
         end
         
         lr = 0; in = 8'b11010110;
         for(i = 0; i < 8; i = i+1)begin
         n = i;
         #10; 
         end
         
         $finish;
         
         end
      endmodule