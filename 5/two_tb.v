`timescale 1ns/1ns
`include "two.v"

module two_tb();
parameter N=4;
reg [N-1:0]G;
wire [N-1:0]B;

two ex(G, B);
initial
begin
	$dumpfile("two_tb.vcd");
	$dumpvars(0, two_tb);
	
	G=4'b0001; #20;
	G=4'b0010; #20;
	G=4'b0011; #20;
	
	$display("Test complete");
end
endmodule
