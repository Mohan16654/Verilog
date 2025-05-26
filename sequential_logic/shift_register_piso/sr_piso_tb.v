`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 10:30:36
// Design Name: 
// Module Name: shift_register_piso_tb
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


module shift_register_piso_tb;

  reg rst, clk, load;
  reg [4:0] pi;
  wire so;

  shift_register_piso uut (
    .rst(rst),
    .clk(clk),
    .load(load),
    .pi(pi),
    .so(so)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    rst = 1; load = 0; pi = 5'b00000;
    #12;
    rst = 0;
    load = 1; pi = 5'b10111;
    #10;

    load = 0;
    #60;
    $finish;
  end

  always @(posedge clk) begin
    #1; 
    $display("Time: %0t | clk=%b rst=%b load=%b pi=%b | so=%b", 
              $time, clk, rst, load, pi, so);
  end

endmodule