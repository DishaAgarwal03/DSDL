`timescale 1ns/1ns
`include "three.v"

module three_tb();
reg [3:0]C;
wire [3:0]B;

three ex(C, B);
initial
begin
	$dumpfile("three_tb.vcd");
	$dumpvars(0, three_tb);
	
	C=4'b0000; #20;
	C=4'b0111; #20;
	C=4'b0110; #20;
	C=4'b1010; #20;

	$display("Test complete");
end
endmodule
