`timescale 1ns / 1ps

module Up_Counter(
    input clk,reset,
    output [2:0] Q
    );
	 
T_ff ff0(1'b1,clk,reset,Q[0]),
    ff1(1'b1,Q[0],reset,Q[1]),
    ff2(1'b1,Q[1],reset,Q[2]);

endmodule