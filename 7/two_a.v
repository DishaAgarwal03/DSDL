module two_a(W, f);
	input [0:2]W;
	output f;
	and(m0,	W[1], W[2]);
	or(m1, W[1], W[2]);
	mux2to1 M2(m0, m1, W[0], f);
endmodule

module mux2to1(w0, w1, s, f);
	input w0, w1, s;
	output reg f;
	
	always @(w0 or w1 or s)
	begin
		f=s==1?w1:w0;
	end
endmodule
