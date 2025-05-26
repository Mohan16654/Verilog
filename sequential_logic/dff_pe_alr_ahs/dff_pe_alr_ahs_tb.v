`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2025 16:43:38
// Design Name: 
// Module Name: dff_pe_alr_ahs_tb
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


module dff_pe_alr_ahs_tb;
reg d, clk, rst, set;
wire q;

    dff_pe_alr_ahs uut(.d(d), .clk(clk), .rst(rst), .q(q), .set(set));
    
    initial begin
    clk = 0;
    forever #5 clk = ~clk;
    end
    
    initial begin 
    $display("time clk rst set d | q");
    $monitor("%d %b %b %b %b | %b",$time, clk, rst, set, d, q);
    
    set = 1'b1; #10;
    
    set = 1'b0;
    rst = 1'b0;
    d = 1'b0; #10;
    d = 1'b1; #10;
    
    rst = 1'b1;
    d = 1'b0; #10;
    d = 1'b1; #10;                  
    $finish;
    
    end
    
endmodule