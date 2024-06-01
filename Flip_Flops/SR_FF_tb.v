`timescale 1ns / 1ps

module SR_FF_tb();

reg clk,reset,S,R;
wire Q;

//module instantiation 
SR_FF dut(clk,reset,S,R,Q);

//generating clock
initial begin 
clk=0;
forever #5 clk=~clk;
end

//input stimulus 
initial begin
reset=1'b1; S=0; R=0;
#10 reset=1'b0; S=0; R=1;
#10 S=1; R=0;
#10 S=1; R=1;
#10 S=0; R=0;
end
endmodule
