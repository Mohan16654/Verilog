module alpha_adder16(a,b,cin,sum,carry );

output [15:0] sum ;
output carry ;
input [15:0] a ;
input [15:0] b ;
input cin;
wire [2:0]c;
adder4 a0 (a[3:0],b[3:0],0,sum[3:0],c[0]);
adder4 a1 (a[7:4],b[7:4],c[0],sum[7:4],c[1]);
adder4 a2 (a[11:8],b[11:8],c[1],sum[11:8],c[2]);
adder4 a3 (a[15:12],b[15:12],c[2],sum[15:12],carry);


endmodule
