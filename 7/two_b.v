module two_b(W, f);
	input [0:2]W;
	output f;
	mux2to1 M0(1'b0, W[2], W[1], x0);
	mux2to1 M1(W[2], 1'b1, W[1], x1);
	mux2to1 M2(x0, x1, W[0], f);
endmodule

module mux2to1(w0, w1, s, f);
	input w0, w1, s;
	output reg f;
	
	always @(w0 or w1 or s)
	begin
		f=s==1?w1:w0;
	end
endmodule
