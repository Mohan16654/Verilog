`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 11:49:21
// Design Name: 
// Module Name: universal_sr_5bit_tb
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


module universal_sr_5bit_tb;
reg [1:0]sel;
reg [4:0]pi;
reg rst, clk, si;
wire so;

    universal_sr_5bit uut(.clk(clk), .rst(rst), .si(si), .sel(sel), .pi(pi), .so(so));
    
    initial begin
    clk = 0;
    forever #5 clk = ~clk;
    end
    
    initial begin
    $display("clk rst pi si sel | so");
    $monitor("%d %b   %b  %b %b  | %b",clk, rst, pi, si, sel, so);
    
    rst = 1; si = 0; pi = 5'd0; sel = 2'b00; #10;
    
    rst = 0; 
    
    sel = 2'b01;
    si = 1; #10;
    si = 0; #10;
    si = 1; #10;
    si = 1; #10;
    si = 0; #10;
    #40;
    
    sel = 2'b10;
    si = 1; #10;
    si = 0; #10;
    si = 1; #10;
    si = 1; #10;
    si = 0; #10;
    
    pi = 5'b11010;
    
    sel = 2'b00; #10;
    sel = 2'b11; #10;
    $finish;
  end   
endmodule