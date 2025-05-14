`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2025 16:30:52
// Design Name: 
// Module Name: encoder_prior_4to2_tb
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


module encoder_prior_4to2_tb;
reg [3:0]d;
wire [1:0]y;

    encoder_prior_4to2 uut(.d(d), .y(y));
    initial begin
    $monitor("%b %b", d, y);
    
    d = 4'b0001; #10;
    d = 4'b0010; #10;
    d = 4'b0100; #10;
    d = 4'b1000; #10;
    
    d = 4'b0011; #10;
    d = 4'b1100; #10;
    d = 4'b0110; #10;
    $finish;
    end
endmodule