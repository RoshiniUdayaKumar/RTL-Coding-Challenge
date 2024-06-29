`timescale 1ns / 1ps

module Odd_Parity_Generator(A,B,C,P);
input A,B,C;
output P;


//3-bit odd parity generator 
assign P=~(A^B^C); //obtain logical expression from the truth table
endmodule
