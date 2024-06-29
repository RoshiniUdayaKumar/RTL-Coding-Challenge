`timescale 1ns / 1ps

module Even_Parity_Generator(A,B,C,P);
input A,B,C;
output P;


//3-bit even parity generator 
assign P=A^B^C; //obtain logical expression from the truth table
endmodule
