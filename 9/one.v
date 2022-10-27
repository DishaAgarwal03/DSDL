module one(En, W, f);
	input [3:0]W;
	input En;
	output f;
	wire [0:15]Y;
	decoder4t16 D(En, W,Y);
	assign f=Y[1] | Y[3] | Y[6] | Y[7] | Y[9] | Y[14] | Y[15];
endmodule

module decoder4t16(En, W, Y);
	input [3:0]W;
	input En;
	output reg [0:15]Y; 
	integer k;
	always @(*)
	begin
		Y=16'b0000000000000000;
		for (k = 0; k <= 15; k = k+1)
			if ((W == k) && (En == 1))
				Y[k] = 1;   			 
	end
endmodule
