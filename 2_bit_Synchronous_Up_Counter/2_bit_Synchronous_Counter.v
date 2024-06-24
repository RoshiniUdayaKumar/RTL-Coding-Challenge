`timescale 1ns / 1ps
module Two_bit_Synchronous_Counter(clk, reset, J,K,Q);
input clk,reset;
input [1:0] J,K; //2-bits input 
output [1:0] Q; //2-bits output
wire p1,p2; 
//we could avoid using inputs J and K since we dont use them. 
//The goal is to check couting using JK FF, not to verify its meeting FF operation.
JK_FF ff0(clk,reset,1'b1,1'b1,Q[0]);
JK_FF ff1(clk,reset,p1,p2,Q[1]);

assign p1= (~Q[1])&&Q[0];
assign p2= (Q[1])&&Q[0];
endmodule
