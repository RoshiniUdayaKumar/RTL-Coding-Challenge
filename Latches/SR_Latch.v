`timescale 1ns / 1ps

module SR_latch(en,S,R,Q);
input en,S,R;
output reg Q;

always @(en or S or R) begin
if(en)
case({S,R})
2'b00:Q<=Q;
2'b01:Q<=1'b0;
2'b10:Q<=1'b1;
2'b11:Q<=1'bx;
endcase
else 
Q<=1'b0;
end
endmodule
