`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2025 09:59:08
// Design Name: 
// Module Name: dual_clk_fifo
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


module dual_clk_fifo(clk_w, clk_r, wr_en, rd_en, buf_in, buf_out, fifo_counter, rst, buf_empty, buf_full);
input clk_w, clk_r, rst, rd_en, wr_en;
input [7:0]buf_in;
output reg buf_full, buf_empty;
output reg [7:0]buf_out;
output reg [6:0]fifo_counter;
reg [6:0]rd_ptr, wr_ptr;
reg[7:0] buf_mem[63:0];

          //status flags
        always@(fifo_counter)begin
          buf_empty = (fifo_counter == 0);
          buf_full = (fifo_counter == 64);
        end
        
          //fifo_counter write
        always@(posedge clk_w)begin
          if(rst)
            fifo_counter <= 0;
          else if(!buf_full && wr_en)
            fifo_counter <= fifo_counter+1;
        end
        
          //fifo_counter read
        always@(posedge clk_r)begin
          if(rst)
            fifo_counter <= 0;
          else if(!buf_empty && rd_en)
             fifo_counter <=  fifo_counter-1;
        end
        
          //to write
        always@(posedge clk_w)begin
          if(!buf_full && wr_en)
            buf_mem[wr_ptr] <= buf_in;
          else
            buf_mem[wr_ptr] <= buf_mem[wr_ptr];
        end

          //to fetch data
        always@(posedge clk_r)begin
          if(rst)
            buf_out <= 0;
          else if(!buf_empty && rd_en)
            buf_out <= buf_mem[rd_ptr];
          else
            buf_out <= buf_out;
        end   
        
          //wr_ptr
        always@(posedge clk_w)begin
          if(rst)
            wr_ptr <= 0;
          else if(!buf_full && wr_en)
            wr_ptr <= wr_ptr+1;
          else
            wr_ptr <= wr_ptr;
        end
        
          //rd_ptr
        always@(posedge clk_r)begin
         if(rst)
           rd_ptr <= 0;
         else if(!buf_empty && rd_en)
           rd_ptr <= rd_ptr+1;
         else
           rd_ptr <= rd_ptr;
       end
        
endmodule