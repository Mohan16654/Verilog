`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 18:03:28
// Design Name: 
// Module Name: shift_register_8bit_tb
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


module shift_register_8bit_tb;
reg si, clk,rst;
wire so;
     shift_register_siso uut(.si(si), .clk(clk), .rst(rst), .so(so));
     
     initial begin
     clk = 0;
     forever #5 clk = ~clk;
     end
     
     initial begin
     $display("clk rst si | so");
     $monitor("%d %b %b | %b",clk, rst, si, so);
     
     rst = 1;
     si = 1; #10;
     
     rst = 0;
     si = 1; #10;
     si = 0; #10;
     si = 1; #10;
     si = 1; #10;
     si = 0; #10;
     $finish;
     end
     

endmodule