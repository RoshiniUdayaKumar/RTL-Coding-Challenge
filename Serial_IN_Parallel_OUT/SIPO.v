`timescale 1ns / 1ps

module SIPO(Din,clk,reset,Q);
input Din,clk,reset;
inout [3:0]Q;

//structural modelling 
D_FF ff3(Din,clk,reset,Q[3]);
D_FF ff2(Q[3],clk,reset,Q[2]);
D_FF ff1(Q[2],clk,reset,Q[1]);
D_FF ff0(Q[1],clk,reset,Q[0]);

endmodule
