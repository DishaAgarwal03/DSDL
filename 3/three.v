module three(A,B,C,D,f);
	input A,B,C,D;
	output f;
	
	nor(a,A,A);
	nor(c,C,C);
	nor(d,D,D);
	nor(l,a,c);
	nor(f,l,d);
		
endmodule
