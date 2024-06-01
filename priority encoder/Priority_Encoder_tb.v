`timescale 1ns / 1ps

module Priority_Encoder_tb();

reg [7:0]  in;
wire [2:0] out;

//module instantiation 
Priority_Encoder dut(in,out);

initial begin
//input stimulus
//outputs written based on the thruth table
in=8'b00000000;  //this condition doesnt exist
#10 in=8'b00000001; //out=3'b000
#10 in=8'b00001111; //out=011
#10 in=8'b01010000; //out=3'b110
#10 in=8'b00110011;//out=3'b101
#10 in=8'b11110000;//out=3'b111
#10 in=8'b11111111;//out=3'b111
end

endmodule
