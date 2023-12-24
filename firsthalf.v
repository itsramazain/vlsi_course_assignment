module Evalue(a,b,e,i,j);
	input [7:0]a,b;
	input [2:0]i,j;
	output [8:0]e;
	
	wire [7:0]SL,SR;
	
	//shift right
	universal_shifter rightshift(i,{{7'b0},{a[7:0]}},SR);
	//shift left
	universal_shifter leftshift(~j,{{b[7:0]},{7'b0}},SL);
	
	//addition
	acrrypropegateadder eightbitshift(SL,SR,e[8],e[7:0]);
	
endmodule
	
