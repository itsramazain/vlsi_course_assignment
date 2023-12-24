module mydesign(A,B,i,j,C,F);
	input [7:0]A,B,C;
	input [2:0]i,j;
	output [15:0]F;
	wire [7:0]E;
	wire cout;
	Evalue evalue(A,B,E,i,j);
	
	multiblication mlti(E,C,F,cout);


endmodule
