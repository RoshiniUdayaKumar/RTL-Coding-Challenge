`timescale 1ns / 1ps

module Half_subtractor(
    input A,
    input B,
    output reg Diff,
    output reg Bout
    );
 
 always @ (A or B) begin 
 Diff= A^B;
 Bout= ~A & B; 
 end
endmodule
