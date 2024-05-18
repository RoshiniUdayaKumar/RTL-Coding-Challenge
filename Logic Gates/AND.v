`timescale 1ns / 1ps
//data flow modelling 
module logic_gates(A,B,C);
input A,B;
output C;
assign C=A&B;
endmodule

//structural modelling 
and (C,A,B)

//behavioural modelling
`timescale 1ns / 1ps
module logic_gates(A,B,C);
input A,B;
output reg C;
always @(A or B)
C=A&B;
endmodule