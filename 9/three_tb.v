`timescale 1ns/1ns
`include "three.v"
 
module three_tb();
reg [2:0]W;
reg En;
wire f;

three ex(En, W, f); 
initial
begin
	$dumpfile("three_tb.vcd");
	$dumpvars(0, three_tb);
	En=1'b1;
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
