`timescale 1ns / 1ps

module half_adder(A,B,Sum,Cout);
input  A,B;
output  Sum, Cout;

//logic for sum 
xor(Sum,A,B);
and (Cout,A,B);

endmodule
