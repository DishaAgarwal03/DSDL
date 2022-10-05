module two(G, B);
	parameter N=4;
	input [N-1:0]G;
	output reg [N-1:0]B;
	integer i;
	
	always @(B,G)
	begin
		B[N-1]=G[N-1];
		for (i=N-2; i>=0; i=i-1)
		begin
			B[i] = G[i] ^ B[i+1];
		end
	end
endmodule
	

