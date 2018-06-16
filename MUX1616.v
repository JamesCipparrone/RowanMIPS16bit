module MUX1616(in, out, ra, rb, rc, rd, re, rf, rg, rh, ri, rj, rk, rl, rm, rn, ro, rp);
	input [3:0]in;
	input [15:0]ra;
	input [15:0]rb;
	input [15:0]rc;
	input [15:0]rd;
	input [15:0]re;
	input [15:0]rf;
	input [15:0]rg;
	input [15:0]rh;
	input [15:0]ri;
	input [15:0]rj;
	input [15:0]rk;
	input [15:0]rl;
	input [15:0]rm;
	input [15:0]rn;
	input [15:0]ro;
	input [15:0]rp;
	output reg [15:0]out;
	
	always @*
	
	
	if(in == 0 )
	 out = ra;
	
	else if (in == 1)
	 out = rb;
	
	else if (in == 2)
	 out = rc;
	
	else if (in == 3)
	 out = rd;
	
	else if (in == 4)
	 out = re;
	
	else if (in == 5)
	 out = rf;
	
	else if (in == 6)
	 out = rg;
	
	else if (in == 7)
	 out = rh;
	
	else if (in == 8)
	 out = ri;
	
	else if (in == 9)
	 out = rj;
	
	else if (in == 10)
	 out = rk;
	
	else if (in == 11)
	 out = rl;
	
	else if (in == 12)
	 out = rm;
	
	else if (in == 13)
	 out = rn;
	
	else if (in == 14)
	 out = ro;
	
	else
	 out = rp;
	 
	
		 
endmodule
