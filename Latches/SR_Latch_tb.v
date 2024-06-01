`timescale 1ns / 1ps

module SR_latch_tb();

reg en,S,R;
wire Q;

//module instantiation 
SR_latch dut(en,S,R,Q);

//input stimulus 
initial begin
en=0;S=0; R=0;
#20 en=1'b1; S=0; R=1;
#20 S=1; R=0;
#20 S=1; R=1;
#10 S=0; R=0;
end
endmodule
