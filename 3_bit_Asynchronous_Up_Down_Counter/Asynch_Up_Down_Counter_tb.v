`timescale 1ns / 1ps
module Asynch_Up_Down_Counter_tb( );

//port declaration 
reg clk,reset,M;
reg [2:0] J,K;
wire [2:0] Q;

//module instantiaion 
Asynch_Up_Down_Counter dut (clk,reset,J,K,Q,M);

//generating clock 
initial begin 
clk=1'b0;
forever #5 clk=~clk;
end

//generating input stimulus
initial begin
clk=1'b0;
reset=1'b1;
M=0;
#50 clk=1'b1;
reset=1'b0;
M=0;
#100 
M=1;
end
endmodule
