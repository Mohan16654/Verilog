`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:24:09 05/01/2021
// Design Name:   PPG
// Module Name:   C:/Users/VAMSHI/Documents/temp/AAAA/MAC.v
// Project Name:  AAAA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PPG
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MAC( clk,reset,X,Y,reg_Pro );
        input clk,reset;
		  input [7:0] X;
        input [7:0] Y;
		  
  
  wire [7:0] reg_X;
  wire [7:0] reg_Y;
  
  wire [15:0] row1;
  wire [15:0] row2;
  wire [15:0] Pro;
  
  output reg  [15:0] reg_Pro;

  reg_in R1(clk,X,reg_X);
  reg_in R2(clk,Y,reg_Y);

  PPG PP1(reg_X,reg_Y,p00,p01,p02,p03,p04,p05,p06,p07,p10,p11,p12,p13,p14,p15,p16,p17,p20,p21,p22,p23,p24,p25,
          p26,p27,p30,p31,p32,p33,p34,p35,p36,p37,p40,p41,p42,p43,p44,p45,p46,p47,p50,p51,p52,p53,
          p54,p55,p56,p57,p60,p61,p62,p63,p64,p65,p66,p67,p70,p71,p72,p73,p74,p75,p76,p77);
			 
  PPR PP2(p00,p01,p02,p03,p04,p05,p06,p07,p10,p11,p12,p13,p14,p15,p16,p17,p20,p21,p22,p23,p24,p25,
          p26,p27,p30,p31,p32,p33,p34,p35,p36,p37,p40,p41,p42,p43,p44,p45,p46,p47,p50,p51,p52,p53,
          p54,p55,p56,p57,p60,p61,p62,p63,p64,p65,p66,p67,p70,p71,p72,p73,p74,p75,p76,p77,row1,row2);
    
  alpha_adder16 a(row1,row2,1'b0,Pro,carry);
  
always@(posedge clk)
begin
if (reset)
	reg_Pro<=0;
else
	reg_Pro<=Pro+reg_Pro;
end
	 
endmodule


