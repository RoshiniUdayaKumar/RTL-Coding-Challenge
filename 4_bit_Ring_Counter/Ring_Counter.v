`timescale 1ns / 1ps
module Ring_Counter(clk,reset,Q);
//4-bit input for a 4-bit ring counter
input clk,reset;
output [3:0] Q;

reg [3:0] tmp;
always @(posedge clk)
begin 
if(reset)
tmp<=4'b0001;
else 
tmp<= {tmp[2:0], tmp[3]};
end

assign Q= tmp;
endmodule
