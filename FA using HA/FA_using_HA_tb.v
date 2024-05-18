`timescale 1ns / 1ps

module FA_using_HA_tb();
reg A,B,Cin;
wire Sum,Cout;

FA_using_HA dut(A,B,Cin,Sum,Cout);

initial begin
A = 0; B = 0; Cin = 0;
#10 A = 0; B = 0; Cin = 1;
#10 A = 0; B = 1; Cin = 0;
#10 A = 0; B = 1; Cin = 1;
#10 A = 1; B = 0; Cin = 1;
#10 A = 1; B = 1; Cin = 0;
#10 A = 1; B = 1; Cin = 1;
end
endmodule