`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2025 21:06:44
// Design Name: 
// Module Name: single_port_ram_tb
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




module single_port_ram_tb;
  reg clk, we;
  reg [7:0] data;
  reg [5:0] write_addr, read_addr;
  wire [7:0] q;

  // Instantiate the RAM module
  single_port_ram uut (
    .clk(clk),
    .we(we),
    .data(data),
    .write_addr(write_addr),
    .read_addr(read_addr),
    .q(q)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 10ns clock period
  end

  // Stimulus
  initial begin
    $monitor("Time=%0t | clk = %b | we=%b | data=%b | w_addr=%d | r_addr=%d | q=%b", $time, clk, we, data, write_addr, read_addr, q);
    
    // Initialize signals
    we = 0; data = 8'b0; write_addr = 0; read_addr = 0;

    // Wait one clock cycle
    #10;

    // Write 10101010 to address 5
    we = 1;
    data = 8'b10101010;
    write_addr = 6'd5;
    read_addr = 6'd0;  // Reading something else
    #10;

    // Now read from address 5
    we = 0;
    read_addr = 6'd5;
    #10;

    // Write 11110000 to address 10
    we = 1;
    data = 8'b11110000;
    write_addr = 6'd10;
    read_addr = 6'd5; // Should still output 10101010
    #10;

    // Now read from address 10
    we = 0;
    read_addr = 6'd10;
    #10;
    
     we = 1;
    data = 8'b10110000;
    write_addr = 6'd20;
    read_addr = 6'd20; // Should still output 10101010
    #10;

    // End simulation
    $finish;
  end
endmodule