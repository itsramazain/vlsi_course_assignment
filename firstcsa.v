module firstcsa(a,b,c,sum1,carry1);
	input [7:0]a,b,c;
	output [7:0]sum1;
	output [7:0]carry1;
	
	fulladder fa21(a[1],b[0],0,sum1[0],carry1[0]);
	fulladder fa11(a[2],b[1],c[0],sum1[1],carry1[1]);
	fulladder fa31(a[3],b[2],c[1],sum1[2],carry1[2]);
	fulladder fa41(a[4],b[3],c[2],sum1[3],carry1[3]);
	fulladder fa51(a[5],b[4],c[3],sum1[4],carry1[4]);
	fulladder fa61(a[6],b[5],c[4],sum1[5],carry1[5]);
	fulladder fa71(a[7],b[6],c[5],sum1[6],carry1[6]);
	fulladder fa711(0,b[7],c[6],sum1[7],carry1[7]);
	

endmodule
