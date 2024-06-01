`timescale 1ns / 1ps

module PIPO(
    input [3:0] D,
    input clk,
    input reset,
    output [3:0] Q
    );

//structural modelling 
D_FF ff3(D[3],clk,reset,Q[3]);
D_FF ff2(D[2],clk,reset,Q[2]);
D_FF ff1(D[1],clk,reset,Q[1]);
D_FF ff0(D[0],clk,reset,Q[0]);

endmodule
