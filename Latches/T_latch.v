`timescale 1ns / 1ps

module T_latch(
    input en,
    input T,
    output reg Q,
    output reg Qbar
    );

always @(en or T)
begin 
Q=1'b1; Qbar=1'b0;

if(en) begin  //when en=0, Q=0
case(T)
1'b0: begin
Q<=1;
Qbar<=0;
end
1'b1:begin
Q<=0;
Qbar<=1;
end
endcase
end
else 
Q=0; Qbar=1;
end
endmodule