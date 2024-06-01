`timescale 1ns / 1ps

module Decimal_to_BCD_Encoder(
    input D0,
    input D1,
    input D2,
    input D3,
    input D4,
    input D5,
    input D6,
    input D7,
    input D8,
    input D9,
    output A,
    output B,
    output C,
    output D
    );

or (A,D8,D9);
or (B,D4,D5,D6,D7);
or (C,D2,D3,D6,D7);
or (D,D1,D3,D5,D7,D9);
endmodule
