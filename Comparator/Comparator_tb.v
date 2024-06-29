`timescale 1ns / 1ps

module Comparator_tb( );
//port declaration 
reg [1:0] A,B;
wire [2:0] out;

//module instantiation 
Comparator dut(A,B,out);

//input stimulus 
initial begin 
A=2'b00; B=2'b00;
#10 A=2'b01; B=2'b10;
#10 A=2'b11; B=2'b11;
#10 A=2'b01; B=2'b00;
#10 A=2'b10; B=2'b00;
#10 A=2'b11; B=2'b01;
#10 A=2'b00; B=2'b01;
#10 A=2'b10; B=2'b01;
#10 A=2'b10; B=2'b11;
end
endmodule
