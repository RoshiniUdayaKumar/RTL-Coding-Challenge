`timescale 1ns / 1ps

module Grey_to_Binary_Code(
    input [2:0] G,
    output [2:0] B
    );
    
Gate G0(1'b0, G[2], B[2]);
Gate G1(B[2],G[1],B[1]);
Gate G2(B[1],G[0],B[0]);

endmodule
