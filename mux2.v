module mux2(F, S, W, X);
	input W, X;
	input S;
	output wire F;
	
	assign F = S ? X : W;
endmodule
