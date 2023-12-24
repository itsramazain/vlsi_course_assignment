module mux8x1(k,io,i1,i2,i3,i4,i5,i6,i7,muxout);
	input io,i1,i2,i3,i4,i5,i6,i7;
	output reg muxout;
	input [2:0]k;
	always@(*)
	case(k)
	3'b000:muxout=io;
	3'b001:muxout=i1;
	3'b010:muxout=i2;
	3'b011:muxout=i3;
	3'b100:muxout=i4;
	3'b101:muxout=i5;
	3'b110:muxout=i6;
	3'b111:muxout=i7;
	endcase
	
endmodule
