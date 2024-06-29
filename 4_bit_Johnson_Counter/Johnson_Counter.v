`timescale 1ns / 1ps
module Johnson_Counter(D,clk,reset,Q);
input [3:0] D; //4-bit input for a 4-bit ring counter
input clk,reset;
output [3:0] Q;

D_FF ff1(~Q[3],clk,reset,Q[0]);
D_FF ff2(Q[0],clk,reset,Q[1]);
D_FF ff3(Q[1],clk,reset,Q[2]);
D_FF ff4(Q[2],clk,reset,Q[3]);
endmodule
