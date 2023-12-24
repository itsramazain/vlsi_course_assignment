module acrrypropegateadder(a,b,cout,sum);
	input [7:0]a;
	input [7:0]b;
	output cout;
	output [7:0]sum;
	
	
	wire c0,c1,c2,c3,c4,c5,c6;
	
	fulladder f1(a[0],b[0],0,sum[0],c0);
	fulladder f2(a[1],b[1],c0,sum[1],c1);
	fulladder f3(a[2],b[2],c1,sum[2],c2);
	fulladder f4(a[3],b[3],c2,sum[3],c3);
	fulladder f5(a[4],b[4],c3,sum[4],c4);
	fulladder f6(a[5],b[5],c4,sum[5],c5);
	fulladder f7(a[6],b[6],c5,sum[6],c6);
	fulladder f8(a[7],b[7],c6,sum[7],cout);

endmodule
