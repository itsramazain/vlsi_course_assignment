module universal_shifter(k,z,out);
	input [14:0] z;
	input [2:0]k;
	output [7:0]out; 
	
	
	mux8x1 mux1(k,z[0],z[1],z[2],z[3],z[4],z[5],z[6],z[7],out[0]);
	mux8x1 mux2(k,z[1],z[2],z[3],z[4],z[5],z[6],z[7],z[8],out[1]);
	mux8x1 mux3(k,z[2],z[3],z[4],z[5],z[6],z[7],z[8],z[9],out[2]);
	mux8x1 mux4(k,z[3],z[4],z[5],z[6],z[7],z[8],z[9],z[10],out[3]);
	mux8x1 mux5(k,z[4],z[5],z[6],z[7],z[8],z[9],z[10],z[11],out[4]);
	mux8x1 mux6(k,z[5],z[6],z[7],z[8],z[9],z[10],z[11],z[12],out[5]);
	mux8x1 mux7(k,z[6],z[7],z[8],z[9],z[10],z[11],z[12],z[13],out[6]);
	mux8x1 mux8(k,z[7],z[8],z[9],z[10],z[11],z[12],z[13],z[14],out[7]);
	
endmodule 
