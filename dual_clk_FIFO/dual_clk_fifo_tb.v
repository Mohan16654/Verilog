`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 10:50:41
// Design Name: 
// Module Name: dual_clk_fifo_tb
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


module dual_clk_fifo_tb;
reg rst, clk_w, clk_r, wr_en, rd_en;
reg [7:0]buf_in;
wire [7:0]buf_out;
wire buf_empty, buf_full;
wire [6:0]fifo_counter;
integer i;
     
     dual_clk_fifo uut(.rst(rst), .clk_w(clk_w), .clk_r(clk_r), .wr_en(wr_en), .rd_en(rd_en), .buf_in(buf_in), .buf_out(buf_out), .buf_empty(buf_empty), .buf_full(buf_full), .fifo_counter(fifo_counter));
     
     initial begin
     clk_w = 0;
     forever #5 clk_w = ~clk_w;
     end
     
     initial begin
     clk_r = 0;
     forever #7 clk_r = ~clk_r;
     end
     
     initial begin
     $display("clk_w clk_r rst wr_en rd_en buf_empty buf_full fifo_counter   buf_in  |   buf_out ");
     $monitor(" %b     %b   %b   %b    %b     %b        %b         %b          %b     |     %b   ",clk_w, clk_r, rst, wr_en, rd_en, buf_empty, buf_full, fifo_counter, buf_in, buf_out);
     
     rst = 1; wr_en = 0; rd_en = 0; buf_in = 0; #10;
     
     rst = 0;
     wr_en = 1;
     buf_in = 8'b00110010; #10;
     buf_in = 8'b00011101; #10;
     buf_in = 8'b00111101; #10;
     wr_en = 0; buf_in = 0;
     
     rd_en = 1; #20;
     rd_en = 0;
     
     wr_en = 1;
     for(i = 0; i < 63; i = i+1)begin
     buf_in = i; #10;
     end
     wr_en = 0; buf_in = 0;
     
     rd_en = 1; #100;
     $finish;
     end
                  
endmodule