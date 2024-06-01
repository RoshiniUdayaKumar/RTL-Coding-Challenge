`timescale 1ns / 1ps

module D_latch_tb();
//port declaration
reg [3:0] D;
reg en;
wire [3:0] out;

//module instantiation 
D_latch dut(D,en, out);

initial begin 
en=0; 
D<=4'b0000;
#100 en=1;
D<=4'b0001;
#100 D<=4'b1110;
#100 D<=4'b1111;
#100 D<=4'b0110;
#100 en=0;
D<=4'b0101;
end
endmodule
