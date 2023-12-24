module fouthcsa(sum1,sum2,carry1,sum4,carry4,d,c);
	input d,c;
	input [7:0]sum1,carry1;
	input [7:0]sum2;
	
	
	output [7:0]sum4,carry4;
	
	
	fulladder fa24(sum1[1],carry1[0],0,      sum4[0],carry4[0]);
	fulladder fa14(sum1[2],carry1[1],d,      sum4[1],carry4[1]);
	fulladder fa34(sum1[3],carry1[2],sum2[0],sum4[2],carry4[2]);
	fulladder fa44(sum1[4],carry1[3],sum2[1],sum4[3],carry4[3]);
	fulladder fa54(sum1[5],carry1[4],sum2[2],sum4[4],carry4[4]);
	fulladder fa64(sum1[6],carry1[5],sum2[3],sum4[5],carry4[5]);
	fulladder fa74(sum1[7],carry1[6],sum2[4],	sum4[6],carry4[6]);
	fulladder fa7410(c,carry1[7],sum2[5],	sum4[7],carry4[7]);
	
	

endmodule 
