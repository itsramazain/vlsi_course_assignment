module fulladder(a,b,cin,s,cout);
	input a,b;
	input cin;
	output s,cout;
	
	assign s=a^b^cin;
	assign cout=a&b||cin&(a^b);


endmodule
