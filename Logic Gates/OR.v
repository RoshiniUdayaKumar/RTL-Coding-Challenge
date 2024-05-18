`timescale 1ns / 1ps
//three modelling 
//1.Behavioural --using always block
//2. structural -- gate
//3. data flow --assign statement 
module logic_gates(A,B,C);
input A,B;
output C;
//structural 
or(C,A,B);
endmodule

//data flow
assign C=A|B;

//behavioural
always (A or B)
C=A|B;