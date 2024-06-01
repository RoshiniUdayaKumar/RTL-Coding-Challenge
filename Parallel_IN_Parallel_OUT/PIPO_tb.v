`timescale 1ns / 1ps

module PIPO_tb( );
reg [3:0]D;
reg clk,reset;
wire [3:0] Q;

//module instantiation 
PIPO dut(D,clk,reset,Q);

//generating clock 
initial begin 
clk=0;
forever #5 clk=~clk;
end

//input stimulus 
initial begin
reset=1'b1; D=4'b1100;
#10 reset=1'b0; D=4'b1010;
end
endmodule
