`timescale 1ns/1ns
`include "one.v"

module one_tb();
reg [3:0]W;
reg En;
wire f;

one ex(En, W, f);
initial
begin
	$dumpfile("one_tb.vcd");
	$dumpvars(0,one_tb);
	
	En=1'b1;
	W=4'b0000; #20;
	W=4'b0001; #20;
	W=4'b0010; #20;
	W=4'b0011; #20;
	W=4'b0100; #20;
	W=4'b0101; #20;
	W=4'b0110; #20;
	W=4'b0111; #20;
	W=4'b1000; #20;
	W=4'b1001; #20;
	W=4'b1010; #20;
	W=4'b1011; #20;
	W=4'b1100; #20;
	W=4'b1101; #20;
	W=4'b1110; #20;
	W=4'b1111; #20;

	$display("test Complete");
end
endmodule
