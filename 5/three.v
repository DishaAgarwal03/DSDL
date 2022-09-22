module three(C, B);
	input [3:0]C;
	output [3:0]B;

	assign B[0] = C[0];
        assign B[1] = C[1]^C[0];
        assign B[2] = C[2] ^ (C[0] | C[1]);
        assign B[3] = C[3] & (C[2] | ((~C[1]) & (~C[0])));

endmodule
	

