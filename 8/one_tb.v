`timescale 1ns/1ns
`include "one.v"

module one_tb();
reg [2:0]W;
reg En;
wire [0:7]Y;

one ex(En, W, Y);
initial
begin
	$dumpfile("one_tb.vcd");
	$dumpvars(0,one_tb);
	
	En=1'b1;
	W=3'b000; #20;
	W=3'b001; #20;
	W=3'b010; #20;
	W=3'b011; #20;
	W=3'b100; #20;
	W=3'b101; #20;
	W=3'b110; #20;
	W=3'b111; #20;
	
	En=1'b0; W=3'b101; #20;

	
	$display("test Complete");
end
endmodule
