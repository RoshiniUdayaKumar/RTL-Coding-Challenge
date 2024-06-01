`timescale 1ns / 1ps

module Decoder(
    input A,
    input B,
    input C,
    output [7:0] out
    );
 
and (out[0],~A,~B,~C);
and (out[1],~A,~B,C);
and (out[2],~A,B,~C);
and (out[3],~A,B,C);
and (out[4],A,~B,~C);
and (out[5],A,~B,C);
and (out[6],A,B,~C);
and (out[7],A,B,C);
endmodule
