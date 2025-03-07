
`timescale 1ns/1ps 
module shift_register (clk, reset, out);
  
  input clk, reset;
  output [3:0] out;
  
  reg [3:0] shift;
  
    always @(posedge clk) begin //using non-blocking assignment 
    if(reset) 
      shift<=4'b0011; //initial value
    else
      shift<={shift[2:0], 1'b0}; //left-shifting
    
  end
  
  assign out=shift;
  
endmodule
