module four(A, B, AeqB, AgtB, AltB);
	input [3:0]A,B;
	output AeqB, AgtB, AltB;
	twocomp TC0(A[3:2], B[3:2], eq1, gt1, lt1);
	twocomp TC1(A[1:0], B[1:0], eq2, gt2, lt2);
	assign AeqB = eq1 & eq2;
	assign AltB = (lt1) | (eq1 & lt2);
	assign AgtB = (gt1) | (eq1 & gt2);
endmodule

module twocomp(A, B, AeqB, AgtB, AltB);
	input [1:0]A,B;
	output reg AeqB, AgtB, AltB;
	assign L = (A[1]~^B[1]) & (A[0]~^B[0]);
	assign M = (A[1] & ~B[1]) | ((A[1]~^B[1]) & A[0] & ~B[0]);
	
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
	

