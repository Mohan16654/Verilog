`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 15.10.2019 18:53:48
// Design Name:
// Module Name: dadda8
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

module reg_in(clk,in,out);
input clk;
input [7:0]in;
output reg [7:0]out;

always@(posedge clk)
begin
	out<=in;
end
endmodule




module PPG(X,Y,p00,p01,p02,p03,p04,p05,p06,p07,p10,p11,p12,p13,p14,p15,p16,p17,p20,p21,p22,p23,p24,p25,
          p26,p27,p30,p31,p32,p33,p34,p35,p36,p37,p40,p41,p42,p43,p44,p45,p46,p47,p50,p51,p52,p53,
          p54,p55,p56,p57,p60,p61,p62,p63,p64,p65,p66,p67,p70,p71,p72,p73,p74,p75,p76,p77);
			 
      input [7:0] X;
      input [7:0] Y;
		
		output p00,p01,p02,p03,p04,p05,p06,p07,p10,p11,p12,p13,p14,p15,p16,p17,p20,p21,p22,p23,p24,p25,
           p26,p27,p30,p31,p32,p33,p34,p35,p36,p37,p40,p41,p42,p43,p44,p45,p46,p47,p50,p51,p52,p53,
           p54,p55,p56,p57,p60,p61,p62,p63,p64,p65,p66,p67,p70,p71,p72,p73,p74,p75,p76,p77;


	 assign     p10 = X[1] & Y[0];
    assign     p20 = X[2] & Y[0];
    assign     p30 = X[3] & Y[0];
    assign     p40 = X[4] & Y[0];
    assign     p50 = X[5] & Y[0];
    assign     p60 = X[6] & Y[0];
    assign     p70 = X[7] & Y[0];
    assign     p01 = X[0] & Y[1];
    assign     p11 = X[1] & Y[1];
    assign     p21 = X[2] & Y[1];
    assign     p31 = X[3] & Y[1];
    assign     p41 = X[4] & Y[1];
    assign     p51 = X[5] & Y[1];
    assign     p61 = X[6] & Y[1];
    assign     p71 = X[7] & Y[1];
    assign     p00 = X[0] & Y[0];
    assign     p02 = X[0] & Y[2];
    assign     p12 = X[1] & Y[2];
    assign     p22 = X[2] & Y[2];
    assign     p32 = X[3] & Y[2];
    assign     p42 = X[4] & Y[2];
    assign     p52 = X[5] & Y[2];
    assign     p62 = X[6] & Y[2];
    assign     p72 = X[7] & Y[2];
    assign     p03 = X[0] & Y[3];
    assign     p13 = X[1] & Y[3];
    assign     p23 = X[2] & Y[3];
    assign     p33 = X[3] & Y[3];
    assign     p43 = X[4] & Y[3];
    assign     p53 = X[5] & Y[3];
    assign     p63 = X[6] & Y[3];
    assign     p73 = X[7] & Y[3];
    assign     p04 = X[0] & Y[4];
    assign     p14 = X[1] & Y[4];
    assign     p24 = X[2] & Y[4];
    assign     p34 = X[3] & Y[4];
    assign     p44 = X[4] & Y[4];
    assign     p54 = X[5] & Y[4];
    assign     p64 = X[6] & Y[4];
    assign     p74 = X[7] & Y[4];
    assign     p05 = X[0] & Y[5];
    assign     p15 = X[1] & Y[5];
    assign     p25 = X[2] & Y[5];
    assign     p35 = X[3] & Y[5];
    assign     p45 = X[4] & Y[5];
    assign     p55 = X[5] & Y[5];
    assign     p65 = X[6] & Y[5];
    assign     p75 = X[7] & Y[5];
    assign     p06 = X[0] & Y[6];
    assign     p16 = X[1] & Y[6];
    assign     p26 = X[2] & Y[6];
    assign     p36 = X[3] & Y[6];
    assign     p46 = X[4] & Y[6];
    assign     p56 = X[5] & Y[6];
    assign     p66 = X[6] & Y[6];
    assign     p76 = X[7] & Y[6];
    assign     p07 = X[0] & Y[7];
    assign     p17 = X[1] & Y[7];
    assign     p27 = X[2] & Y[7];
    assign     p37 = X[3] & Y[7];
    assign     p47 = X[4] & Y[7];
    assign     p57 = X[5] & Y[7];
    assign     p67 = X[6] & Y[7];
    assign     p77 = X[7] & Y[7];


endmodule

module PPR(p00,p01,p02,p03,p04,p05,p06,p07,p10,p11,p12,p13,p14,p15,p16,p17,p20,p21,p22,p23,p24,p25,
          p26,p27,p30,p31,p32,p33,p34,p35,p36,p37,p40,p41,p42,p43,p44,p45,p46,p47,p50,p51,p52,p53,
          p54,p55,p56,p57,p60,p61,p62,p63,p64,p65,p66,p67,p70,p71,p72,p73,p74,p75,p76,p77,row1,row2);

input     p00,p01,p02,p03,p04,p05,p06,p07,p10,p11,p12,p13,p14,p15,p16,p17,p20,p21,p22,p23,p24,p25,
          p26,p27,p30,p31,p32,p33,p34,p35,p36,p37,p40,p41,p42,p43,p44,p45,p46,p47,p50,p51,p52,p53,
          p54,p55,p56,p57,p60,p61,p62,p63,p64,p65,p66,p67,p70,p71,p72,p73,p74,p75,p76,p77;
	 output [15:0] row1;
    output [15:0] row2;	 
		
			  
     wire  [42:1] s;
     wire  [42:1] c;
	  
	  // 1st level

 	  halfAdder  h1(p60,p51,s[1],c[1]);
     fullAdder  h2(p70,p61,p52,s[2],c[2]);
     halfAdder  h3(p43,p34,s[3],c[3]);
     fullAdder  h4(p62,p53,p44,s[4],c[4]);
     halfAdder  h5(p26,p35,s[5],c[5]);
     fullAdder  h6(p36,p45,p54,s[6],c[6]);
   
    // 2nd level
    
 
    halfAdder  h7(p31,p40,s[7],c[7]);
    halfAdder  h8(p14,p23,s[8],c[8]);
    fullAdder  h9(p32,p50,p41,s[9],c[9]);
    fullAdder  h10(p06,p15,p24,s[10],c[10]);
    fullAdder  h11(p33,p42,s[1],s[11],c[11]);
    fullAdder  h12(p07,p16,p25,s[12],c[12]);    
    fullAdder  h13(s[2],s[3],c[1],s[13],c[13]);
    fullAdder  h14(p71,p17,s[5],s[14],c[14]);
    fullAdder  h15(c[2],s[4],c[3],s[15],c[15]);
    fullAdder  h16(p63,p27,p72 ,s[16],c[16]);
    fullAdder  h17(s[6],c[4], c[5],s[17],c[17]);
    fullAdder  h18(p55,p64,p73,s[18],c[18]);
    fullAdder  h19(p37,p46,c[6],s[19],c[19]);
    fullAdder  h20(p56,p65,p74,s[20],c[20]);


    //3rd level


    halfAdder  h21(p21,p30,s[21],c[21]);
    fullAdder  h22(p13,p22,s[7],s[22],c[22]);
    fullAdder  h23(s[8],s[9],c[7],s[23],c[23]);
    fullAdder  h24(s[11],c[8],c[9],s[24],c[24]);
    fullAdder  h25(s[13],c[10],c[11],s[25],c[25]);
    fullAdder  h26(s[15],c[12],c[13],s[26],c[26]);
    fullAdder  h27(s[17],c[14],c[15],s[27],c[27]);
    fullAdder  h28(s[19],c[16],c[17],s[28],c[28]);
    fullAdder  h29(c[18],c[19],p47,s[29],c[29]);
    fullAdder  h30(p66,p75,c[20],s[30],c[30]);


    //4th level


    halfAdder  h31(p11,p20,s[31],c[31]);
    fullAdder  h32(p03,p12,s[21],s[32],c[32]);//
    fullAdder  h33(p04,c[21],s[22],s[33],c[33]);
    fullAdder  h34(p05,s[23],c[22],s[34],c[34]);
    fullAdder  h35(s[10],s[24],c[23],s[35],c[35]);//
    fullAdder  h36(s[12],s[25],c[24],s[36],c[36]);//
    fullAdder  h37(s[14],s[26],c[25],s[37],c[37]);
    fullAdder  h38(s[16],s[27],c[26],s[38],c[38]);
    fullAdder  h40(s[18],s[28],c[27],s[39],c[39]);
    fullAdder  h41(s[20],s[29],c[28],s[40],c[40]);
    fullAdder  h42(p57,s[30],c[29],s[41],c[41]);
    fullAdder  h43(p67,p76,c[30],s[42],c[42]);



    assign row1[0] = p00;
    assign row1[1] = p01;
    assign row1[2] = p02;
    assign row1[3] = s[32];
    assign row1[4] = s[33];
    assign row1[5] = s[34];
    assign row1[6] = s[35];
    assign row1[7] = s[36];
    assign row1[8] = s[37];
    assign row1[9] = s[38];
    assign row1[10]= s[39];
    assign row1[11]= s[40];
    assign row1[12]= s[41];
    assign row1[13]= s[42];
    assign row1[14]= p77;
    assign row1[15]= 0;
    
    assign row2[0] = 0;
    assign row2[1] = p10;
    assign row2[2] = s[31];
    assign row2[3] = c[31];
    assign row2[4] = c[32];
    assign row2[5] = c[33];
    assign row2[6] = c[34];
    assign row2[7] = c[35];
    assign row2[8] = c[36];
    assign row2[9] = c[37];
    assign row2[10]= c[38];
    assign row2[11]= c[39];
    assign row2[12]= c[40];
    assign row2[13]= c[41];
    assign row2[14]= c[42];
    assign row2[15]= 0;
endmodule

		

