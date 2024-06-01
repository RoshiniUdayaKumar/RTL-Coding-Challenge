`timescale 1ns / 1ps
module T_FF_tb();
reg clk,reset,T;
wire Q,Qbar;

//module instantiation 
T_FF dut(clk,reset,T,Q,Qbar);

//generating clock
initial begin 
clk=0;
forever #5 clk=~clk;
end

//input stimulus 
initial begin
reset=1'b1; T=0;
#10 reset=1'b0; T=1;
#10 T=1;
#10 T=0;
#10 T=1;
end
endmodule

