`timescale 1ns / 1ps


module Half_Adder_tb();
reg A,B;
wire Sum,Cout;

//moudle instantiation 
Half_Adder dut(A,B,Sum,Cout);
initial begin
//input stimulus 
A=0;B=0;
#10 A=0;B=1;
#10 A=1;B=0;
#10 A=1; B=1; 
end
endmodule
