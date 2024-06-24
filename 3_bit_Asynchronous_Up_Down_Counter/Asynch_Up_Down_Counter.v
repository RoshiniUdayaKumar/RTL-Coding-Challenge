`timescale 1ns / 1ps
module Asynch_Up_Down_Counter(clk,reset,J,K,Q,M);
input clk,reset,M;
input [2:0] J,K; //3-bit counter
output [2:0] Q;
wire p1,p2;

JK_FF ff1(clk,reset,1'b1,1'b1,Q[0]);
JK_FF ff2(p1,reset,1'b1,1'b1,Q[1]);
JK_FF ff3(p2,reset,1'b1,1'b1,Q[2]);

assign p1= (~M&Q[0]) | (M&~Q[0]);  
assign p2= (~M&Q[1]) | (M&~Q[2]);
endmodule
