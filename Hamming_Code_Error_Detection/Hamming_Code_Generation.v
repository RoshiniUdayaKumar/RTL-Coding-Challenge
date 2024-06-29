`timescale 1ns / 1ps

module Hamming_Code_Generation(
    input [3:0] Data,
    output [6:0] Out
    );
wire P0,P1,P2;
//In hamming code, 3 bits are parity bits and 4 bits are data bits 
//for even bit parity generation
assign P0= Data[0]^ Data[1]^ Data[3];
assign P1= Data[0]^ Data[2]^ Data[3];
assign P2= Data[1]^ Data[2]^ Data[3];

assign Out= {Data[3], Data[2], Data[1], P2,Data[0],P1,P0};
endmodule
