module four(W, Y, z);
	input [15:0]W;
	output reg z;
	output reg [3:0]Y;
	always @(*)
	begin
		if (W!=0)
			begin
			z=1;
			for(i=0; i<16 && W[i]!=1; i=i+1);
			Y=i;
			end
		else
			begin
			z=0;
			Y=4'bxxxx;
			end			 
	end	
endmodule

