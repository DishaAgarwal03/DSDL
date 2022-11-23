`timescale 1ns/1ns
`include "two.v" 
module two_tb();
reg clk, reset, set; 
wire [4:0]out;
two ex(clk, reset, set, out);
initial
begin
	$dumpfile("two_tb.vcd");
	$dumpvars(0, two_tb);
	clk=0;
	forever #20 clk = ~clk;
end
initial 
begin
	reset=0; set=1; #40;
	reset=1; #320;
	$display("Test complete");
end
endmodule
