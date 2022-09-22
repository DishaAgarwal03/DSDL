`timescale 1ns/1ns
`include "four.v"

module four_tb();
reg [3:0]A,B;
wire AeqB, AgtB, AltB;

four ex(A, B, AeqB, AgtB, AltB);
initial
begin
	$dumpfile("four_tb.vcd");
	$dumpvars(0, four_tb);
	
	A=5'b00001; B=5'b00011; #20;
	A=5'b00101; B=5'b00101; #20;
	A=5'b01101; B=5'b00011; #20;
	
	$display("Test complete");
end
endmodule
