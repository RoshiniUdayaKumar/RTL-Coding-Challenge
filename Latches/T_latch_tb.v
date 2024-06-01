`timescale 1ns / 1ps
module T_latch_tb();
reg en,T;
wire Q,Qbar;

//module instantiation 
T_latch dut(en,T,Q,Qbar);

//input stimulus 
initial begin
en=1'b1; T=0;//Q=1
#10 en=1'b0; T=1; //Q will be flipped, Q=0
#10 en=1'b1;T=1;//Q=0
#10 T=0;//Q=1
#10 T=1; //Q=0
end
endmodule


