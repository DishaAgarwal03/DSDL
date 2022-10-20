`timescale 1ns/1ns
`include "two_b.v"
 
module two_b_tb();
reg [0:2]W;
wire f;

two_b ex(W, f); 
initial
begin
	$dumpfile("two_b_tb.vcd");
	$dumpvars(0, two_b_tb);
	W=3'b000; #20;
	W=3'b001; #20;
	W=3'b010; #20;
	W=3'b011; #20;
	W=3'b100; #20;
	W=3'b101; #20;
	W=3'b110; #20;
	W=3'b111; #20;
	$display("Test complete");
end
endmodule
