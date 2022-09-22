module two(A,B,C,D,f);
	input A,B,C,D;
	output f;
	
	nor(a,A,A);
	nor(b,B,B);
	nor(c,C,C);
	nor(d,D,D);
	nor(l,a,b);
	nor(m,c,d);
	nor(n,b,D);
	nor(f,l,m,n);
	
endmodule
