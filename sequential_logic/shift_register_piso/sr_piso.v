`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 10:13:02
// Design Name: 
// Module Name: shift_register_piso
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


module shift_register_piso (
  input wire clk,
  input wire rst,
  input wire load,
  input wire [4:0] pi,
  output reg so
);
  reg [4:0] sr;

  always @(posedge clk) begin
    if (rst) begin
      sr <= 5'b00000;
      so <= 0;
    end else if (load) 
      sr <= pi;
    else begin
      sr <= {1'b0, sr[4:1]};
      so <= sr[0];  // shifting right, next LSB moves to output
    end
  end

endmodule