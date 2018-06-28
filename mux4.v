module mux4(F, S1, S0, W, X, Y, Z);
	input W, X, Y, Z, S1, S0;
	output wire F;
	
	assign F = S1 ? (S0 ? Z : Y) : (S0 ? X : W);
endmodule
