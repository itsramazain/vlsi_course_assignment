module secondcsa(f,e,d,sum2,carry2);
	input [7:0]f,e,d;
	output [7:0]sum2,carry2;
	
	fulladder fa23(d[1],e[0],0,sum2[0],carry2[0]);
	fulladder fa13(d[2],e[1],f[0],sum2[1],carry2[1]);
	fulladder fa33(d[3],e[2],f[1],sum2[2],carry2[2]);
	fulladder fa43(d[4],e[3],f[2],sum2[3],carry2[3]);
	fulladder fa53(d[5],e[4],f[3],sum2[4],carry2[4]);
	fulladder fa63(d[6],e[5],f[4],sum2[5],carry2[5]);
	fulladder fa733(d[7],e[6],f[5],sum2[6],carry2[6]);
	fulladder fa73(0,e[7],f[6],sum2[7],carry2[7]);


endmodule
