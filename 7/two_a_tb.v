`timescale 1ns/1ns
`include "two_a.v"
 
module two_a_tb();
reg [0:2]W;
wire f;

two_a ex(W, f); 
initial
begin
	$dumpfile("two_a_tb.vcd");
	$dumpvars(0, two_a_tb);
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
