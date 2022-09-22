`timescale 1ns/1ns
`include "one.v"

module one_tb();
reg [4:0]A,B;
wire AeqB, AgtB, AltB;

one ex(A, B, AeqB, AgtB, AltB);
initial
begin
	$dumpfile("one_tb.vcd");
	$dumpvars(0, one_tb);
	
	A=5'b00001; B=5'b00011; #20;
	A=5'b00101; B=5'b00101; #20;
	A=5'b01101; B=5'b00011; #20;
	
	$display("Test complete");
end
endmodule
