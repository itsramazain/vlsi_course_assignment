module multiblication(x,y,fout,cout);
	input [7:0]x,y;
	output [15:0]fout;
	
	
	wire [7:0]a;
	wire [8:0]b;
	
	wire [9:0]c;
	wire [10:0]d;
	wire [11:0]e;
	wire [12:0]f;
	wire [13:0]g;
	wire [14:0]h;
	
	output cout;
	assign a={{y[0]&&x[7]},{y[0]&&x[6]},{y[0]&&x[5]},{y[0]&&x[4]},{y[0]&&x[3]},{y[0]&&x[2]},{y[0]&&x[1]},{y[0]&&x[0]}};
	assign b={{y[1]&&x[7]},{y[1]&&x[6]},{y[1]&&x[5]},{y[1]&&x[4]},{y[1]&&x[3]},{y[1]&&x[2]},{y[1]&&x[1]},{y[1]&&x[0]},{1'b0}};
	assign c={{y[2]&&x[7]},{y[2]&&x[6]},{y[2]&&x[5]},{y[2]&&x[4]},{y[2]&&x[3]},{y[2]&&x[2]},{y[2]&&x[1]},{y[2]&&x[0]},{1'b0},{1'b0}};
	assign d={{y[3]&&x[7]},{y[3]&&x[6]},{y[3]&&x[5]},{y[3]&&x[4]},{y[3]&&x[3]},{y[3]&&x[2]},{y[3]&&x[1]},{y[3]&&x[0]},{1'b0},{1'b0},{1'b0}};
	assign e={{y[4]&&x[7]},{y[4]&&x[6]},{y[4]&&x[5]},{y[4]&&x[4]},{y[4]&&x[3]},{y[4]&&x[2]},{y[4]&&x[1]},{y[4]&&x[0]},{1'b0},{1'b0},{1'b0},{1'b0}};
	assign f={{y[5]&&x[7]},{y[5]&&x[6]},{y[5]&&x[5]},{y[5]&&x[4]},{y[5]&&x[3]},{y[5]&&x[2]},{y[5]&&x[1]},{y[5]&&x[0]},{1'b0},{1'b0},{1'b0},{1'b0},{1'b0}};
	assign g={{y[6]&&x[7]},{y[6]&&x[6]},{y[6]&&x[5]},{y[6]&&x[4]},{y[6]&&x[3]},{y[6]&&x[2]},{y[6]&&x[1]},{y[6]&&x[0]},{1'b0},{1'b0},{1'b0},{1'b0},{1'b0},{1'b0}};
	assign h={{y[7]&&x[7]},{y[7]&&x[6]},{y[7]&&x[5]},{y[7]&&x[4]},{y[7]&&x[3]},{y[7]&&x[2]},{y[7]&&x[1]},{y[7]&&x[0]},{1'b0},{1'b0},{1'b0},{1'b0},{1'b0},{1'b0},{1'b0}};
	
	wire [7:0]sum1,carry1;
	
	firstcsa csa1(a[7:0],b[8:1],c[9:2],sum1,carry1);
	
	wire [9:0]csa1sum,csa1carry;
	assign csa1sum={{c[9]},{sum1[7:0]},{a[0]}};
	assign csa1carry={{1'b0},{carry1},{1'b0}};
	
	wire [7:0]sum2,carry2;
	
	secondcsa csa2(f[12:5],e[11:4],d[10:3],sum2,carry2);
	
	wire [12:0]csa2sum,csa2carry;
	assign csa2sum={f[12],{sum2[7:0]},{d[3]},{3'b0}};
	assign csa2carry={{1'b0},{carry2[7:0]},{4'b0}};
	
	wire [7:0]sum4,carry4;
	
	fouthcsa csa4(sum1,sum2,carry1,sum4,carry4,d[3],c[9]);
	
	wire [12:0]csa4sum,csa4carry;
	assign csa4sum={{f[12]},{sum2[7:6]},{sum4[7:0]},{sum1[0]},{a[0]}};
	assign csa4carry={{1'b0},{carry4[7:0]},{2'b0}};
	
	
	wire [7:0]sum3,carry3;
	
	thiredcsa csa3(g[13:6],h[14:7],carry2,sum3,carry3);
	
	wire [14:0]csa3sum,csa3carry;
	
	assign csa3sum={{h[14]},{sum3[7:0]},{carry2[0]},{5'b0}};
	assign csa3carry={{1'b0},{carry3[7:0]},{6'b0}};
	
	
	
	wire [9:0]sum5,carry5;
	
	
	fithmodule fcsa(sum1,sum2,sum4,carry2,carry4,sum3,f[12],sum5,carry5);
	
	wire [14:0] fithcsasum,fithcsacarry;
	
	
	
	assign fithcsasum={{h[14]},{sum3[7]},{sum5[9:0]},{sum4[0]},{sum1[0]},{a[0]}};
	assign fithcsacarry={{2'b0},{carry5[9:0]},{3'b0}};
	
	
	wire [10:0]sum6,carry6;
	
	sixthcsa csa6(carry5,carry3,sum3,sum5,sum6,carry6,h[14]);
	
	
	
	wire [14:0] sixthcsasum,sixthcsacarry;
	assign sixthcsasum={{sum6[10:0]},{sum5[0]},{sum4[0]},{sum1[0]},{a[0]}};
	assign sixthcsacarry={{carry6[10:0]},{4'b0}};
	
	
	acrrypropegateadder2 cpaf({{1'b0},{sixthcsasum}},{{sixthcsacarry},{1'b0}},cout,fout);
	
	
	
	
	
	
	
	
	
	
endmodule
