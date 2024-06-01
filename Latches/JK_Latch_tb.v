`timescale 1ns / 1ps

module JK_latch_tb();
reg en,J,K;
wire Q;

//module instantiation
JK_latch dut(en,J,K,Q);

//input stimulus 
initial begin
en=1'b0; J=0; K=0; //Q=0
#20 en=1'b1; J=0; K=0; //Q=0
#20 en=1'b0; J=0; K=1; //Q=0
#20 en=1'b1; J=1; K=0; //Q=1
#20 J=0; K=1;
#20 J=1; K=1;
#20 J=0; K=0;
end
endmodule


