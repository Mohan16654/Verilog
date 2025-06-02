`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:05:48 05/01/2021
// Design Name:   dadda8
// Module Name:   C:/Users/VAMSHI/Documents/temp/AAAA/tb.v
// Project Name:  AAAA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dadda8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg clk,reset;
	reg [7:0] X;
	reg [7:0] Y;

	// Outputs
	wire [15:0] reg_Pro;

	// Instantiate the Unit Under Test (UUT)
	MAC uut (
	   .clk(clk),
		.reset(reset),
		.X(X), 
		.Y(Y), 
		.reg_Pro(reg_Pro)
	);
always #5 clk=~clk;
	initial begin
	clk=1;
	reset=1;
		X = 00;
		Y = 00;

	#10;
		reset=0;

		// Initialize Inputs
		X = 69;
		Y = 47;
	  #10;
		X = 16;
		Y = 19;
		#10;
                X = 13;
                Y = 11;
		// Wait 100 ns for global reset to finish
		#20 $finish;
        
		// Add stimulus here

	end
      
endmodule


