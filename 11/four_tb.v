`timescale 1ns/1ns
`include "four.v" 
module four_tb();
reg clk, reset; 
wire [3:0]out;
four ex(clk, reset, out);
initial
begin
	$dumpfile("four_tb.vcd");
	$dumpvars(0, four_tb);
	clk=0; 
	forever #20 clk = ~clk;
end
initial
begin
	reset=0;#40;
	reset=1;
	$display("Test complete");
end
endmodule
