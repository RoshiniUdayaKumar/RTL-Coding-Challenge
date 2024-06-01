`timescale 1ns / 1ps

module SISO_tb( );
reg D,clk,reset;
wire out;

//module instantiation 
SISO dut(D,clk,reset,out);

//generating clock 
initial begin 
clk=0;
forever #5 clk=~clk;
end

//input stimulus 
initial begin
reset=1'b1; D=1'b0;
#10 reset=1'b0; D=1'b1;
#10 D=1'b1;
#10 D=1'b0;
#10 D=1'b1;
end
endmodule
