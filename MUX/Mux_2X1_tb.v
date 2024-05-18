`timescale 1ns / 1ps

module Mux_2X1_tb();

wire Y;
reg I0,I1,SL;

//module instantiation 
Mux_2X1 dut(I0,I1,SL,Y);

//simulation 
initial begin
SL=1'b0; I0=1'b0; I1=1'b1;   //select line is 0
#2  I0=1'b1; I1=1'b1;  //still select line is 0
#2 SL=1'b1;  I0=1'b0; I1=1'b1; //select line is 1
#2  I0=1'b1; I1=1'b0; 
end
endmodule
