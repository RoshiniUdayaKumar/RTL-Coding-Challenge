`timescale 1ns / 1ps

module Full_subtractor_tb();

reg A,B,Bin;
wire Diff,Bout;

//moudle instantiation 
Full_subtractor dut(A,B,Bin,Diff,Bout);
initial begin
//input stimulus 
A=0;B=0;Bin=0;
#10 A=0;B=0;Bin=1;
#10 A=0;B=1;Bin=0;
#10 A=0;B=1;Bin=1;
#10 A=1;B=0;Bin=0;
#10 A=1;B=0;Bin=1;
#10 A=1;B=1;Bin=0;
#10 A=1;B=1;Bin=1;
end
endmodule
