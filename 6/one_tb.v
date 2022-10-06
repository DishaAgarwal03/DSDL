`timescale 1ns/1ns
`include "one.v"

module one_tb();
reg [3:0]W;
reg s0, s1;
wire f;

one ex(W, s0, s1, f);
initial
begin
	$dumpfile("one_tb.vcd");
	$dumpvars(0,one_tb);
	
	W=4'b0101;
	s1=1'b0;s0=1'b0; #20;
	s1=1'b0;s0=1'b1; #20;
	s1=1'b1;s0=1'b0; #20;
	s1=1'b1;s0=1'b1; #20;
	
	W=4'b1101;
	s1=1'b0;s0=1'b0; #20;
	s1=1'b0;s0=1'b1; #20;
	s1=1'b1;s0=1'b0; #20;
	s1=1'b1;s0=1'b1; #20;

	$display("test Complete");
end
endmodule
