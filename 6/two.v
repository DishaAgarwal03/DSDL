module two(W, S, f);
	input [15:0]W;
	input [3:0]S;
	wire [3:0]k;
	output f;
	mux4to1 M0(W[3:0], S[1:0], k[0]);
	mux4to1 M1(W[7:4], S[1:0], k[1]);
	mux4to1 M2(W[11:8], S[1:0], k[2]);
	mux4to1 M3(W[15:12], S[1:0], k[3]);
	mux4to1 M4(k[3:0], S[3:2], f);
endmodule

module mux4to1(W[3:0], S[1:0], f);
	input [3:0]W;
	input [1:0]S;
	output reg f;
	
	always @(W[0] or W[1] or W[2] or W[3] or S[0] or S[1])
	begin
		f= S[1]? S[0]? W[3] : W[2] : S[0]? W[1] : W[0];
	end
endmodule
	
