`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2025 16:54:51
// Design Name: 
// Module Name: twin_register_8bit_tb
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


module twin_register_8bit_tb;
reg clk, rst;
reg [7:0]d1, d2;
wire [7:0]q1, q2;

      twin_register_8bit uut(.d1(d1), .d2(d2), .q1(q1), .q2(q2), .clk(clk), .rst(rst));
      
      initial begin
      clk = 0;
      forever #5 clk = ~clk;
      end
      
      initial begin
      $display("clk d1 d2 rst | q1 q2");
      $display("---------------------");
      $monitor("%d %b %b %b | %b %b",clk, d1, d2, rst, q1, q2);
      
      rst = 1;
      d1 = 8'b1; d2 = 8'b1; #10;
     
            
      rst = 0;
      d1 = 8'd52; d2 =8'd45; #10;     
      d1 = 8'd11; d2 = 8'd16; #10;     
      d1 = 8'd36; d2 = 8'd9; #10;
      d1 = 8'd63; d2 = 8'd59; #10;
    
      $finish;
      end
endmodule