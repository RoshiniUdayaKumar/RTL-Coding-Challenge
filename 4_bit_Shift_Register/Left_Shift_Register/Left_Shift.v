`timescale 1ns / 1ps

module Left_Shift(
    input clk,
    input reset,
    output [3:0] Q
    );
 reg [3:0] tmp;
 
always @(posedge clk)
begin
if(reset)
tmp<=4'b0001;
else 
tmp<= {tmp[2:0],tmp[3]};           //left shifitng operation
end
assign Q=tmp;
endmodule
