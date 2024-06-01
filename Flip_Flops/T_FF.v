`timescale 1ns / 1ps

module T_FF(
    input clk,
    input reset,
    input T,
    output reg Q,
    output reg Qbar
    );

always @(posedge clk) //synhcronous reset
begin 
Q=1'b1; Qbar=1'b0;

if(reset) begin
Q<=0; Qbar<=1;
end

else if(T) begin
Q<=0; Qbar<=1;
end

else
begin
Q<=1; Qbar<=0;
end

end
endmodule
