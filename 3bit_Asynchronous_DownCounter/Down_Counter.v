`timescale 1ns / 1ps

module Down_Counter(
    input clk,reset,
    output [2:0] Q,
    output [2:0] Qbar
    );
	 
T_FF ff0(1'b1,clk,reset,Q[0],Qbar[0]),
    ff1(1'b1,Qbar[0],reset,Q[1],Qbar[1]),
    ff2(1'b1,Qbar[1],reset,Q[2],Qbar[2]);

endmodule
