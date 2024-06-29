`timescale 1ns / 1ps

module Comparator(A,B,out);
input [1:0] A;
input [1:0] B;
output [2:0] out;

//comparator is a combinational circuit 
//write the truth table for comparator and obtain the logical expresssions 
assign out[0]= (~A[1]&B[1])| (~A[0]&B[1]&B[0])| (~A[1]&~A[0]&B[0]);
assign out[1]= ~(A[1]^A[0]) & ~(B[1]^B[0]);
assign out[2]= (~B[1]&A[1])| (~B[1]&~B[0]&A[0])|(A[1]&A[0]&~B[0]);
endmodule
