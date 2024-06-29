`timescale 1ns / 1ps

module Odd_Parity_Generator_tb( );
//port declaration 
reg A,B,C; 
wire P;

//module instantiation 
Odd_Parity_Generator dut (A,B,C,P);

//input stimulus 
initial begin
A=1'b0; B=1'b0; C=1'b0; 
#10 A=1'b0; B=1'b0; C=1'b1;
#10 A=1'b0; B=1'b1; C=1'b0; 
#10 A=1'b0; B=1'b1; C=1'b1;
#10 A=1'b1; B=1'b0; C=1'b0; 
#10 A=1'b1; B=1'b0; C=1'b1;
#10 A=1'b1; B=1'b1; C=1'b0; 
#10 A=1'b1; B=1'b1; C=1'b1;
end
endmodule
