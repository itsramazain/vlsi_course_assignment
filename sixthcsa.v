module sixthcsa(carry5,carry3,sum3,sum5,sum6,carry6,h);
                
	input [7:0]carry3,sum3;
	input [9:0]sum5,carry5;
	input h;
	
	output [10:0]sum6,carry6;
	
	
	fulladder fa15(sum5[1],carry5[0],0,sum6[0],carry6[0]);
	
	fulladder fa25(sum5[2],carry5[1],0,sum6[1],carry6[1]);
	
	fulladder fa35(sum5[3],carry5[2],0,sum6[2],carry6[2]);
	
	fulladder fa45(sum5[4],carry5[3],carry3[0],sum6[3],carry6[3]);
	
	fulladder fa55(sum5[5],carry5[4],carry3[1],sum6[4],carry6[4]);
	
	fulladder fa65(sum5[6],carry5[5],carry3[2],sum6[5],carry6[5]);
	
	fulladder fa75(sum5[7],carry5[6],carry3[3],sum6[6],carry6[6]);
	
	fulladder fa95(sum5[8],carry5[7],carry3[4],sum6[7],carry6[7]);
	
	fulladder fa105(sum5[9],carry5[8],carry3[5],sum6[8],carry6[8]);
	
	fulladder f11511(carry3[6],carry5[9],sum3[7],sum6[9],carry6[9]);
	
	fulladder f115111(carry3[7],h,0,sum6[10],carry6[10]);
	
	

endmodule
