`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2025 15:37:55
// Design Name: 
// Module Name: fifo
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


module fifo(clk, rst, buf_in, buf_out, wr_en, rd_en, buf_empty, buf_full, fifo_counter);
input clk, rst, wr_en, rd_en;
input [7:0]buf_in;
output [7:0]buf_out;
output buf_full, buf_empty;
output [6:0]fifo_counter;

reg [7:0]buf_out;
reg buf_full, buf_empty;
reg [6:0]fifo_counter;
reg [6:0]rd_ptr, wr_ptr;
reg [7:0]buf_mem[63:0];

            //for status flagas
          always@(fifo_counter)begin
            buf_empty = (fifo_counter == 0);
            buf_full = (fifo_counter == 64); 
          end
            
            //to set fifo counter
          always@(posedge clk)begin
            if(rst)
              fifo_counter <= 0;
            else if((!buf_empty && rd_en) && (!buf_full && wr_en))
              fifo_counter <= fifo_counter;
            else if(!buf_full && wr_en)
              fifo_counter <= fifo_counter+1;
            else if(!buf_empty && rd_en)
              fifo_counter <= fifo_counter-1;
            else
              fifo_counter <= fifo_counter;
          end
              
             //to write data into fifo
          always@(posedge clk)begin
            if(!buf_full && wr_en)
              buf_mem[wr_ptr] <= buf_in;
            else
             buf_mem[wr_ptr] <=  buf_mem[wr_ptr];
          end
          
             //to fetch data from fifo
          always@(posedge clk)begin
            if(rst)
              buf_out <= 0;
            else if(!buf_empty && rd_en)
              buf_out <= buf_mem[rd_ptr];
            else
              buf_out <= buf_out;
          end
          
             //to manage pointers
          always@(posedge clk)begin
            if(rst)begin
              rd_ptr <= 0;
              wr_ptr <= 0;
            end 
            else begin
            if(!buf_full && wr_en)
              wr_ptr <= wr_ptr+1;
            else 
              wr_ptr <= wr_ptr;
            if(!buf_empty && rd_en)
              rd_ptr <= rd_ptr+1;
            else
              rd_ptr <= rd_ptr;
           end
         end                
          
endmodule