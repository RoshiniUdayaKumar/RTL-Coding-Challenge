`timescale 1ns / 1ps

module T_ff(
    input T,clk,reset,
    output reg Q
    );
always@(negedge clk)
begin

if(reset==1) begin
Q=1'b0; end
else
if(T==0) begin
Q=Q; end
else if(T==1) begin
Q=~Q; end	
end
endmodule