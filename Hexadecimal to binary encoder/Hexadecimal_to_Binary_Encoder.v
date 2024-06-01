`timescale 1ns / 1ps
module Hexadecimal_to_Binary_Encoder(
    input [15:0] in,
    output A,
    output B,
    output C,
    output D
    );

or(A,in[1],in[3],in[5],in[7],in[9],in[11],in[13],in[15]);
or(B,in[2],in[3],in[6],in[7],in[10],in[11],in[14],in[15]);
or(C,in[4],in[5],in[6],in[7],in[12],in[13],in[14],in[15]);
or (D,in[8],in[9],in[10],in[11],in[12],in[13],in[14],in[15]);    
endmodule
