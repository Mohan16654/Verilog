module halfAdder ( a ,b ,sum ,carry );

output sum ;
output carry ;

input a ;
input b ;
   
assign  sum = a ^ b ;  
assign  carry = a & b;

endmodule
