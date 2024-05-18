`timescale 1ns / 1ps

module FA_using_HA(A,B,Cin,Sum,Cout);
input A,B,Cin;
output Sum,Cout;
wire S1,C1,C2;

half_adder ha0(A,B,S1,C1);
half_adder ha1(S1,Cin,Sum,C2);
assign Cout=C1|C2;
endmodule
