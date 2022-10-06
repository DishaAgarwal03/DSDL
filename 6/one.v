module one(W, s0, s1, f);
	input [3:0]W;
	input s0, s1;
	output f;
	mux2to1 M0(W[0], W[1], s0, k);
	mux2to1 M1(W[2], W[3], s0, l);
	mux2to1 M2(k, l, s1, f);
endmodule

module mux2to1(w0, w1, s, f);
	input w0, w1, s;
	output reg f;
	
	always @(w0 or w1 or s)
	begin
		if (s==1)
			f=w1;
		else
			f=w0;
	end
endmodule
	
