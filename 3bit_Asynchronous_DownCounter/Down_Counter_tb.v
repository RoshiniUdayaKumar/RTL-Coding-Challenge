`timescale 1ns / 1ps

module Down_Counter_tb();
	reg clk,reset;
	wire [2:0] Q;
	wire [2:0] Qbar;

//module instantiation 
Down_Counter dut(clk,reset,Q,Qbar);

//generating clock
	initial begin
		clk = 1; reset = 1;
		#10; clk=1; reset=0;
	end
	
	always begin
	forever #5 clk=~clk;
	end
      
endmodule
