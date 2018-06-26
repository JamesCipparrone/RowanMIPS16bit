/**
 * @file ALU_Nbit.v
 * @brief A complete ALU 
 * 
 * @author James Cipparrone 
 * @date 6/5/2018 
 * 
 */ 

`default_nettype none /// no implicit nets created. All nets (wires) must be declared. 
`define true  1
`define false 0

/* 
inputs:  A, B, Cin, FS 
outputs: Fout, status 
ALU is strictly combinational, so there are no clock or reset ports. 
*/

module ALU_Nbit #(parameter N=16)
(	input  wire Cin, 
	input  wire [N-1:0] A, 
	input  wire [N-1:0] B, 
	input  wire   [4:0] FS, /// ALU function select 
	output wire Cout, 
	output wire   [3:0] status,
	output wire [N-1:0] Fout
	);

	/*
	Think about where to put the *register* that stores the C_out 
	(overflow) from the previous instruction. 
	This is needed for the ADDC instruction. 
	We could use a dedicated 1-bit register that's always active, 
	or we could use one of the 16-bit registers, but only when needed.
	*/


	///// STATUS SIGNALS: V, C, N, Z (with more descriptive names) /////////////////
	wire             oVerflow, CarryOut, NegativeNum, Zero ;
	assign status = {oVerflow, CarryOut, NegativeNum, Zero};
	
	assign oVerflow = ~(Ainternal[N-1] ^ Binternal[N-1])  &  (F[N-1] ^ Ainternal[N-1]) ; /// @note NO INSTRUCTION uses the V status bit. 
//	assign CarryOut = ???
	assign NegativeNum = F[N-1];   /// If the MSb is 1, then NegativeNum is 1, thereby indicating that Fout is a negative number. 
	assign Zero = ~| Fout ;    /* NOR all the bits of Fout together. 
					NOR is 1 if and only if all its inputs are 0. 
					So whenever Fout==16'b0, then Zero==1. */
	/// Alternatively, this works too: assign Zero = (Fout == 'b0) ? 1'b1 : 1'b0; 


	/// input muxes with inverters //////////////////////////////////////////
	wire [N-1:0] Ainternal, Binternal;
	// "mux_A_adder" in the Example ALU Cell Design (Fig. 1. in the ALU Design Guide)
	assign Ainternal = FS[0] ? ~A : A;
/*	// "mux_B_adder"
	assign Binternal = FS[2:1] ? ~B : B; // <--This is NOT correct. 
	00 GND 'b0
	01 VDD 'b1
	10  B
	11 ~B
*/	

	Mux4to1Nbit  mux_logic #(N=N)(Binternal, FS[2:1], FS[0], FS[1], FS[2], FS[3]); /// @note mux's order of ports: outputPort, followed by the select signal and the the 4 input ports.




// These are the sixteen-ish arithmetic, logic, and shift operations that our ALU should perform
// @note The cases needn't be in numerical order. Put 'em in whatever order you want. 
	always @ (posedge clk, posedge reset) begin
		case ( FS[4:0] ) 	/// @note There are FIVE bits for FS but only 16 functions.
			// arithmetic operations 
			5'd1 : Fout = A + B;          // ADD A to B.
			5'd2 : Fout = A + ~B + 1'b1; // SUB: two's complement subtraction 
			5'd3 : Fout = A - 1'b1;     // DEC: Decrement A by 1.
			5'd4 : Fout =~A + 1'b1;    // NEG: -A == (the two's complement of A)
			5'd5 : Fout = A ^ B;      // ¿Why is XOR is among the arithmetic operations?
			5'd6 : Fout = A + B + C0;// ADDC (optional). Requires storage of C0. 
			5'd7 : Fout = A + 1'b1; // INC: Increment A by 1.

			// Logical operations 
		/// XOR is included in the arithmetic operations, for whatever reason. 
			5'd0  : Fout = 'b0;  /// CLR. 0 goes out, regardless of what goes in. 
			5'd8  : Fout = 'hFFFF; // SET (optional): Every bit is set to 1.
			5'd9  : Fout = ~A ;    /// NOT: Invert all bits of A.
			5'd10 : Fout =  A & B ; /// AND
			5'd11 : Fout =  A | B ; /// OR
			5'd12 : Fout =  A ; /// MOVA (input goes straight to output.) 
			5'd16 : Fout =  B ; /// MOVB (input goes straight to output.) 

			// Shift operations
			5'd13 : Fout = A >> 1 ; // SHR: Shift a 0 into the MSb.
			5'd14 : Fout = A << 1 ; // SHL: Shift a 0 into the LSb. 
			5'd15 : Fout = A >>> 1; // ASHR (optional): Arithmetic shift right by one place. Shift-in a copy of the MSb, to maintain the sign of the shifted number.

			default: Fout = 16'b1000_0000_0000_0000;
		endcase
	end // always block for FS 

	
/* 		(from ALU Design Guide, pg. 1)

Table 1 shows the functions required by the ALU in order to 
implement the desired instruction set for the processor. 
The optional arithmetic function is required by ADDC (add with carry input), 
the optional logic function is required by SET (set all bits to 1), 
and the optional shift function is required by ASHR (arithmetic shift right). 
 ________________________________________________________
|	Table 1 - Required ALU Functions in Verilog syntax    |
|	Arithmetic 	|	Logic 	|	Shift
|--------------+-----------+-----------------------------|
|	F = A + 1 	|	F = 0 	|	F = A >> 1 (shift in a 0)
|	F = A + B 	|	F = A 	|	F = A << 1 (shift in a 0)
|	F = A - B 	|	F = ~A
|	F = A - 1 	|	F = A & B
|	F = -A   	|	F = A | B
|	F = A ^ B (XOR)
|Optional Arithmetic 	Optional Logic          	Optional Shift
|  F = A + B + C0  	F = 16'b1111111111111111 	F = A >> 1 (shift in the MSb) [But ">>>" is the arithmetic shift operator!]
|______________________________________________________________________________
*/

	
endmodule // ALU_Nbit ////////////////////////////////////////////////////////


/*
(From pp.3-4 of ALU Design Guide)

OPTIMIZATION TECHNIQUES

Reducing Gates

For each multiplexer (with the exception of mux_logic) the select signals are the same
for each bit. This means there are redundant decoders in each of the multiplexers (recall
a 2^N-to-1 multiplexer can be build from an N-to-2^N decoder, 2^N AND gates, and a 2^N- input OR
gate). The number of gates required for the ALU can be reduced by reusing one decoder
for all bits. 

Increasing Speed

The arithmetic functions in the design in this document will have the longest gate delay
since each cell has a carry output that is used as a carry input to the next cell thus the
signal would have to propagate through all cells before the result is correct. The solution
to this ripple-carry problem is a Carry Lookahead Adder.

Another technique to increase the speed (reduce the gate delay) of the ALU is to flatten
the design. For example the design in Figure 1 has the output of the adder going
through two 2:1 multiplexers, this could be easily redesigned to use one 4:1 multiplexer
and thus reduce the gate delay.
*/