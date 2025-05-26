`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 18:29:12
// Design Name: 
// Module Name: u_d_load_counter_tb
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


module u_d_load_counter_tb;
reg clk, rst, load, u_d;
reg [7:0]data;
wire [7:0]count;
        
        u_d_load_counter uut(.clk(clk), .rst(rst), .load(load), .u_d(u_d), .data(data), .count(count));
        
        initial begin
        clk = 0;
        forever #5 clk = ~clk;
        end
        
        initial begin
        $display("clk rst load u_d   data  |  count");
        $monitor("%b %b %b %b  %b  | %b",clk, rst, load, u_d, data, count);
        
        rst = 1; load = 0; u_d = 0; data = 0; #10;
        
        rst = 0; load = 1;       
        data = 8'd10; #10;
        
        load = 0;        
        u_d = 1; #70;
        
        load = 0;
        u_d = 0;#50;
        
        rst = 1; #10;
        rst = 0; 
        u_d = 1; #50;
        $finish;
        end
        
endmodule