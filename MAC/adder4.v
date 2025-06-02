module adder4( a ,b ,cin, sum ,carry );

output [3:0] sum ;
output carry ;

input [3:0] a ;
input [3:0] b ;
input cin;

wire [2:0]s;
fullAdder u0 (a[0],b[0],1'b0,sum[0],s[0]);
fullAdder u1 (a[1],b[1],s[0],sum[1],s[1]);
fullAdder u2 (a[2],b[2],s[1],sum[2],s[2]);
fullAdder u3 (a[3],b[3],s[2],sum[3],carry);



endmodule
