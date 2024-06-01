`timescale 1ns / 1ps

module JK_FF_tb();
reg clk,reset,J,K;
wire Q;

//module instantiation
JK_FF dut(clk,reset,J,K,Q);

//generating clock
initial begin 
clk=0;
forever #5 clk=~clk;
end

//input stimulus 
initial begin
reset=1'b1; J=0; K=0;
#10 reset=1'b0; J=0; K=0;
#10 reset=1'b0; J=0; K=1;
#10 J=1; K=0;
#10 J=1; K=1;
#10 J=0; K=0;
end
endmodule


