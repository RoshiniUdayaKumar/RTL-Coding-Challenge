`timescale 1ns / 1ps

module SISO(
    input D,
    input clk,
    input reset,
    output  out
    );
    
    wire Q3,Q2,Q1;

//defining the flip flop module 
D_FF ff3(D,clk,reset,Q3);
D_FF ff2(Q3,clk,reset,Q2);
D_FF ff1(Q2,clk,reset,Q1);
D_FF ff0(Q1,clk,reset,out);

endmodule
