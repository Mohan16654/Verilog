`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2025 10:14:25
// Design Name: 
// Module Name: full_adder_4_bit_tb
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


module full_adder_4bit_tb;

  reg [3:0]a, b;
  reg cin;
  wire [3:0]s;
  wire cout;

  integer i, j, k;

  full_adder_4bit uut (
    .a(a),
    .b(b),
    .cin(cin),
    .s(s),
    .cout(cout)
  );

  initial begin
    $display("a     b     cin | s     cout");
    $display("----------------------------");
    for (i = 0; i < 16; i = i + 1) begin
      for (j = 0; j < 16; j = j + 1) begin
        for (k = 0; k < 2; k = k + 1) begin
          a = i;
          b = j;
          cin = k;
          #10; // wait for signals to propagate
          $display("%b %b   %b   | %b   %b", a, b, cin, s, cout);
        end
      end
    end
  end

endmodule