`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2025 18:18:52
// Design Name: 
// Module Name: full_adder_tb
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


module tb_full_adder;
    reg a, b, cin;
    wire sum, cout;

    // Instantiate the Full Adder
    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $display("A B Cin | Sum Cout");
        $display("-----------------");
        
        // Apply all input combinations
        a = 0; b = 0; cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

        a = 0; b = 0; cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

        a = 0; b = 1; cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

        a = 0; b = 1; cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

        a = 1; b = 0; cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

        a = 1; b = 0; cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

        a = 1; b = 1; cin = 0; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

        a = 1; b = 1; cin = 1; #10;
        $display("%b %b  %b  |  %b    %b", a, b, cin, sum, cout);

        $finish;
    end 
endmodule