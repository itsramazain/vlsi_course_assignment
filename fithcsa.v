module fithmodule(sum1,sum2,sum4,carry2,carry4,sum3,f,sum5,carry5);
	input [7:0]sum4,carry4;
	input [7:0]sum1;
	input f;
	
	input [7:0]sum3,sum2,carry2;
	output [9:0]sum5,carry5;
	

	fulladder fa15(sum4[1],carry4[0],0,sum5[0],carry5[0]);
	
	fulladder fa25(sum4[2],carry4[1],0,sum5[1],carry5[1]);
	
	fulladder fa35(sum4[3],carry4[2],carry2[0],sum5[2],carry5[2]);
	
	fulladder fa45(sum4[4],carry4[3],sum3[0],sum5[3],carry5[3]);
	
	fulladder fa55(sum4[5],carry4[4],sum3[1],sum5[4],carry5[4]);
	
	fulladder fa65(sum4[6],carry4[5],sum3[2],sum5[5],carry5[5]);
	
	fulladder fa75(sum4[7],carry4[6],sum3[3],sum5[6],carry5[6]);
	
	fulladder fa9500(sum3[4],carry4[7],sum2[6],sum5[7],carry5[7]);
	
	fulladder fa95111(sum3[5],0,sum2[7],sum5[8],carry5[8]);
	
	fulladder fa9512(f,0,sum3[6],sum5[9],carry5[9]);
	
	
	
	
	
	
	
	

endmodule
