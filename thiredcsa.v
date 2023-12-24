module thiredcsa(g,h,carry2,sum3,carry3);
	input [7:0]g,h,carry2;
	output [7:0]sum3,carry3;
	
	fulladder fa232(g[0],0,carry2[1],   sum3[0],carry3[0]);
	fulladder fa132(g[1],h[0],carry2[2],sum3[1],carry3[1]);
	fulladder fa332(g[2],h[1],carry2[3],sum3[2],carry3[2]);
	fulladder fa432(g[3],h[2],carry2[4],sum3[3],carry3[3]);
	fulladder fa532(g[4],h[3],carry2[5],sum3[4],carry3[4]);
	fulladder fa632(g[5],h[4],carry2[6],sum3[5],carry3[5]);
	fulladder fa7323(g[6],h[5],carry2[7],sum3[6],carry3[6]);
	fulladder fa732(g[7],h[6],0,        sum3[7],carry3[7]);
	
	

endmodule
