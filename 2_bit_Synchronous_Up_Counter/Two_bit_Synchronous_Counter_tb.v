`timescale 1ns / 1ps
module Two_bit_Synchronous_Counter_tb();
//port declaration 
reg clk,reset;
reg [1:0] J,K;
wire [1:0] Q;

//module instantiation 
Two_bit_Synchronous_Counter dut(clk,reset,J,K,Q);

//generating clock 
initial begin 
clk=1'b0;
forever #5 clk=~clk;
end

//input stimulus 
initial begin 
reset=1'b1;
#10 reset=1'b0;
end
endmodule
