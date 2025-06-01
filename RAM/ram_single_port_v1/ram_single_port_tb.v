`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2025 17:19:45
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
    // Testbench signals
    reg        clk;             // Clock
    reg        we;              // Write enable
    reg  [7:0] data;            // 8-bit input data
    reg  [5:0] write_addr;      // 6-bit write address
    reg  [5:0] read_addr;       // 6-bit read address
    wire [7:0] q;               // 8-bit output data

    // Instantiate RAM
    single_port_ram ram_inst (
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
        forever #5 clk = ~clk; // 100MHz clock (10ns period)
    end

    // Test stimulus
    initial begin
        // Initialize signals
        we = 0;
        data = 8'h00;
        write_addr = 6'h00;
        read_addr = 6'h00;

        // Test 1: Write to multiple addresses
        @(posedge clk);
        we = 1;
        data = 8'hAA; write_addr = 6'h00; #10;
        data = 8'hBB; write_addr = 6'h01; #10;
        data = 8'hCC; write_addr = 6'h02; #10;
        we = 0;

        // Test 2: Read from written addresses
        @(posedge clk);
        read_addr = 6'h00; #10; // Expect q = 0xAA
        read_addr = 6'h01; #10; // Expect q = 0xBB
        read_addr = 6'h02; #10; // Expect q = 0xCC

        // Test 3: Simultaneous read and write (same address)
        @(posedge clk);
        we = 1;
        data = 8'hDD;
        write_addr = 6'h03;
        read_addr = 6'h03; #10; // Expect q = old data (undefined or previous)
        we = 0;
        #10; // Expect q = 0xDD (new data after write)

        // Test 4: Write and read different addresses
        @(posedge clk);
        we = 1;
        data = 8'hEE;
        write_addr = 6'h04;
        read_addr = 6'h01; #10; // Expect q = 0xBB
        we = 0;

        // Test 5: Read from unwritten address
        @(posedge clk);
        read_addr = 6'h05; #10; // Expect q = undefined or 0 (simulator-dependent)

        #20 $finish; // End simulation
    end

    // Monitor output
    initial begin
        $monitor("Time=%0t clk=%b we=%b data=%h write_addr=%h read_addr=%h q=%h",
                 $time, clk, we, data, write_addr, read_addr, q);
    end

endmodule