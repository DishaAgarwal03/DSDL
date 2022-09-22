module first(a,b,c,d,f);
	input a,b,c,d;
	output f;
	and(e,a,b);
	or(g,e,c);
	not(h,g);
	and(i,h,d);

	and(j,a,b);
	or(k,c,j);
	or(l,d,k);
	
	and(f,i,l);
endmodule
