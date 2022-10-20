module four(W, Y, z);
	input [3:0]W;
	output reg z;
	output reg [1:0]Y;
	always @(*)
	begin
		z=1;
		casex(W)
			4'bxxx1: Y=0;
			4'bxx10: Y=1;
			4'bx100: Y=2;
			4'b1000: Y=3;
			default: begin
					z=0;
					Y=2'bxx;
				 end					
		endcase   			 
	end	
endmodule

