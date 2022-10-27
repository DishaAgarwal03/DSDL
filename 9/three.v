module three(En, W, f);
	input [2:0]W;
	input En;
	output f;
	wire [0:7]Y;
	not(a,W[2]);
	and(e0,a,En);
	and(e1,W[2],En);
	decoder2t4 D0(e0, W[1:0],Y[0:3]);
	decoder2t4 D1(e1, W[1:0],Y[4:7]);
	assign f=Y[3] | Y[5] | Y[6] | Y[7];
endmodule

module decoder2t4(En, W, Y);
	input [1:0]W;
	input En;
	output reg [0:3]Y; 
	always @(*)
	begin
		Y=4'b0000;
		if (En==1'b0);
		
		else if(W==0)
			Y[0]=1'b1;
		else if(W==1)
			Y[1]=1'b1;
		else if(W==2)
			Y[2]=1'b1;
		else
			Y[3]=1'b1;   			 
	end
endmodule

