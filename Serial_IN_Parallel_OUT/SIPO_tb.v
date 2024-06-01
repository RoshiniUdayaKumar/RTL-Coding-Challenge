`timescale 1ns / 1ps

module SIPO_tb( );
reg Din,clk,reset;
wire [3:0]Q;

//module instantiation 
SIPO dut(Din,clk,reset,Q);

//generating clock 
initial begin 
clk=0;
forever #5 clk=~clk;
end

//input stimulus 
initial begin
reset=1'b1; Din=1'b0;
#10 reset=1'b0; Din=1'b1;
#10 Din=1'b1;
#10 Din=1'b0;
#10 Din=1'b1;
end
endmodule
