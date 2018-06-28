

//functions
//0000 - F = A + 1       arith
//0001 - F = A + B       arith
//0010 - F = A - B       arith
//0011 - F = A - 1       arith
//0100 - F = -A          arith
//0101 - F = A + B + C0  opt arith
//0110 - F = 0           logic
//0111 - F = A           logic
//1000 - F = ~A          logic
//1001 - F = A & B       logic
//1010 - F = A | B       logic
//1011 - F = A ^ B       logic
//1100 - F = 16'b1       opt logic
//1101 - F = A >> 1      shift
//1110 - F = A << 1      shift
//1111 - F = A >> MSb    opt shift



















/*module ALU(A, B, FS, C0, F, status);
	input [63:0] A, B;
	input [4:0]FS;
	// FS0 - b invert
	// FS1 - a invert
	// FS4:2 - op. select
	//   000 - AND
	//   001 - OR
	//   010 - ADD
	//   011 - XOR
	//   100 - shift left
	//   101 - shift right
	//   110 - none / 0
	//   111 - none / 0
	input C0;
	output [63:0]F;
	output [3:0]status;
	
	wire Z, N, C, V;
	assign status = {V, C, N, Z};
	
	wire [63:0] A_Signal, B_Signal;
	// A Mux
	assign A_Signal = FS[1] ? ~A : A;
	// B Mux
	assign B_Signal = FS[0] ? ~B : B;
	
	assign N = F[63];
	
	assign Z = (F == 64'b0) ? 1'b1 : 1'b0;
	
	assign V = ~(A_Signal[63] ^ B_Signal[63]) &  (F[63] ^ A_Signal[63]);
	
	wire [63:0]and_output, or_output, xor_output, add_output, shift_left, shift_right;
	assign and_output = A_Signal & B_Signal;
	assign or_output = A_Signal | B_Signal;
	assign xor_output = A_Signal ^ B_Signal;
	Adder adder_inst (A_Signal, B_Signal, C0, add_output, C);
	Shifter shift_inst (A, B[5:0], shift_left, shift_right);
	
	Mux8to1Nbit main_mux (F, FS[4:2], and_output, or_output, add_output, xor_output, shift_left, shift_right, 64'b0, 64'b0);
endmodule

module Shifter(A, shift_amount, left, right);
	input [63:0] A;
	input [5:0] shift_amount;
	output [63:0] left, right;
	
	assign left = A << shift_amount;
	assign right = A >> shift_amount;
endmodule

module Adder(A, B, Cin, S, Cout);
	input [63:0] A, B;
	input Cin;
	output [63:0] S;
	output Cout;
	
	assign {Cout, S} = A + B + Cin;
endmodule
*/