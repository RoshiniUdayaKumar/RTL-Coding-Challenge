`timescale 1ns / 1ps
module Binary_to_Grey_Code(
    input [2:0] B,
    output [2:0] G
    );
assign G[0]=B[1]^B[0];
assign G[1]=B[2]^B[1];
assign G[2]=B[2];
endmodule
