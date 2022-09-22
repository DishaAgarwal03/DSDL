module one(A, B, AeqB, AgtB, AltB);
	input [4:0]A,B;
	output reg AeqB, AgtB, AltB;
	assign L = (A[4]~^B[4]) & (A[3]~^B[3]) & (A[2]~^B[2]) & (A[1]~^B[1]) & (A[0]~^B[0]);
	assign M = (A[4] & ~B[4]) | ((A[4]~^B[4]) & A[3] & ~B[3]) | ((A[4]~^B[4]) & (A[3]~^B[3]) & A[2] & ~B[2]) | ((A[4]~^B[4]) & (A[3]~^B[3]) & (A[2]~^B[2]) & A[1] & ~B[1]) | ((A[4]~^B[4]) & (A[3]~^B[3]) & (A[2]~^B[2]) & (A[1]~^B[1]) & A[0] & ~B[0]);
	
	always @(L,M)
	begin
		AeqB=0;
		AgtB=0;
		AltB=0;
		if (L==1)
			AeqB=1;
		else if (M==1)
			AgtB=1;
		else
			AltB=1;
	end
endmodule
	

