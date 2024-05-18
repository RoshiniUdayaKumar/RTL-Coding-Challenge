`timescale 1ns / 1ps

module Half_Adder(
    input A,
    input B,
    output Sum,
    output Cout
    );
//structural --gates 
xor (Sum,A,B);
and (Cout, A,B);

//dataflow
assign Sum=A^B;
assign Cout=A&B;

//behavioural modelling 
always @(A or B)
Sum= A^B;
Cout= A&B;
endmodule
