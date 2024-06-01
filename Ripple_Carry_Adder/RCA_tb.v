`timescale 1ns / 1ps

module RCA_tb();
reg [3:0] A,B;
reg Cin;
wire [3:0] Sum;
wire Cout;

//module instantiation
RCA dut(A,B,Cin,Sum,Cout);

//input stimulus 
initial begin 
A=4'b0000; B=4'b0101;Cin=1'b1;
#20 A=4'b1010; B=4'b0000;Cin=1'b1;
#20 A=4'b1111; B=4'b1100;Cin=1'b0;
#20 A=4'b0011; B=4'b1010;Cin=1'b1;

end
endmodule
