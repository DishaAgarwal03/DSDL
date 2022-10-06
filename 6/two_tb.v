`timescale 1ns/1ns
`include "two.v"

module two_tb();
reg [15:0]W;
reg [3:0]S;
wire f;

two ex(W, S, f);
initial
begin
	$dumpfile("two_tb.vcd");
	$dumpvars(0,two_tb);
	
	W=16'b0011001100110011;
	S=4'b0000; #20;
	S=4'b0001; #20;
	S=4'b0010; #20;
	S=4'b0011; #20;
	S=4'b0100; #20;
	S=4'b0101; #20;
	S=4'b0110; #20;
	S=4'b0111; #20;
	
	S=4'b1000; #20;
	S=4'b1001; #20;
	S=4'b1010; #20;
	S=4'b1011; #20;
	S=4'b1100; #20;
	S=4'b1101; #20;
	S=4'b1110; #20;
	S=4'b1111; #20;
	
	$display("test Complete");
end
endmodule
