`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2025 19:07:30
// Design Name: 
// Module Name: dual_port_ram_tb
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


module dual_port_ram_tb;
reg clk, we_a, we_b;
reg [7:0]data_a, data_b;
reg [5:0]addr_a, addr_b;
wire [7:0]q_a, q_b;

        dual_port_ram uut(.clk(clk), .we_a(we_a), .we_b(we_b), .data_a(data_a), .data_b(data_b), .addr_a(addr_a), .addr_b(addr_b), .q_a(q_a), .q_b(q_b));
        
        initial begin
        clk = 0;
        forever #5 clk = ~clk;
        end
        
        initial begin
        $monitor("clk = %b | we_a = %b | we_b = %b | data_a = %d | data_b = %d | addr_a = %d | addr_b = %d | q_a = %d | q_b = %d", clk, we_a, we_b, data_a, data_b, addr_a, addr_b, q_a, q_b);
        
        we_a = 0; we_b = 0; addr_a = 0; addr_b = 0; data_a = 0; data_b = 0; #10;
        
        we_a = 1;
        data_a = 8'b10110110; addr_a = 6'b101101; #20;       
        data_a = 8'b10000110; addr_a = 6'b101001; #20;       
        data_a = 8'b10110010; addr_a = 6'b100101; #20;      
        we_a = 0; 
        
        we_b = 1;
        data_b = 8'b11110000; addr_b = 6'b111000; #20;      
        data_b = 8'b00001111; addr_b = 6'b000111; #20;       
        data_b = 8'b11001100; addr_b = 6'b101010; #20;       
        we_b = 0; 
        
        we_a = 1; we_b = 1;
        data_a = 8'd55; addr_a = 6'b101101;
        data_b = 8'd55; addr_b = 6'b111000;
        #20;
        data_a = 8'd44; addr_a = 6'b101001;
        data_b = 8'd44; addr_b = 6'b000111;
        #20;
        data_a = 8'd33; addr_a = 6'b100101;
        data_b = 8'd33; addr_b = 6'b101010;
        #20;
        $finish;
        end        
        
endmodule