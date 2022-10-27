`timescale 1ns/1ns
`include "four.v"

module four_tb();
reg [2:0]S;
reg [7:0]I;
wire f;

four ex(I,S,f);
initial
begin
	$dumpfile("four_tb.vcd");
	$dumpvars(0,four_tb);
	
	I=8'b00110010;
	S=3'b000; #20;
	S=3'b001; #20;
	S=3'b010; #20;
	S=3'b011; #20;
	S=3'b100; #20;
	S=3'b101; #20;
	S=3'b110; #20;
	S=3'b111; #20;
		
	$display("test Complete");
end
endmodule
