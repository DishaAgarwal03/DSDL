module four(I, S, f);
	input [7:0]I;
	input [2:0]S;
	wire [7:0]Y;
	output reg f;
	decoder3t8 D0(1'b1, S, Y);
	integer k;
	always @(*)
	begin
		f=0;
		for(k=0; k<=7; k=k+1)
			f=f|(I[k]&Y[k]);
	end
endmodule


module decoder3t8(En, W, Y);
	input [2:0]W;
	input En;
	output reg [7:0]Y; 
	integer k;
	always @(*)
	begin
		Y=8'b00000000;
		for (k = 0; k <= 7; k = k+1)
			if ((W == k) && (En == 1))
				Y[k] = 1;   			 
	end
endmodule
