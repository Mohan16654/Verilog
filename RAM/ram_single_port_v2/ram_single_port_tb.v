`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2025 20:21:43
// Design Name: 
// Module Name: single_port_ram_tb
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


module single_port_ram_tb;
reg clk, we;
reg [7:0]data;
reg [5:0]addr;
wire [7:0]q;

       single_port_ram uut(.clk(clk), .we(we), .data(data), .addr(addr), .q(q));
       
       initial begin
       clk = 0;
       forever #5 clk = ~clk;
       end
       
       initial begin
       $monitor("clk = %b we = %b data = %b addr = %b | q = %b", clk, we, data, addr, q);
             
       we = 0; data = 0; addr = 0; #10;
       
       addr = 6'd5; data = 8'haa; we = 1; #10;
       
       addr = 6'd25; data = 8'h55; we = 1; #10;
       
       addr = 6'd55; data = 8'h45; we = 1; #10;

       $finish;
       end
       
endmodule