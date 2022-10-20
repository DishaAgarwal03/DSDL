module four(B, G);
	input [3:0]B;
	output [3:0]G;
	assign G[3]=B[3];
	mux4xor M0(B[3:2],G[2]);
	mux4xor M1(B[2:1],G[1]);
	mux4xor M2(B[1:0],G[0]);
endmodule

module mux4xor(W, f);
	input [1:0]W;
	output reg f;
	
	always @(*)
	begin
		case(W)
			2'b00:begin
				f=1'b0;
			      end
			2'b01:begin
				f=1'b1;
			      end
			2'b10:begin
				f=1'b1;
			      end
			2'b11:begin
				f=1'b0;
			      end  
		endcase    			 
	end
endmodule
