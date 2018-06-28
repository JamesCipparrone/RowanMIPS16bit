module ALUschemfull_tb();
	reg C0;
	reg [15:0] A, B;
	reg [4:0] OC;
	wire [15:0] O;
	
	ALUschemfull testunit(
	.C0 (C0),
	.A (A),
	.B (B),
	.OC (OC),
	.O (O)
	);
	
	
	initial
	begin
		#5
		//F = A ADD B expecting 0000000000001001
		OC <= 5'b10100;
		A <= 16'b0000000000000110;
		B <= 16'b0000000000000011;
		C0 <= 0;
		#150
		
		#5
		//F = A ADD 1 expecting 0000000000000111
		OC <= 5'b10000;
		A <= 16'b0000000000000110;
		B <= 16'b0000000000000011;
		C0 <= 1;
		#150
		
		#5
		//F = A SUB B expecting 0000000000000100
		OC <= 5'b10110;
		A <= 16'b0000000000000111;
		B <= 16'b0000000000000011;
		C0 <= 1;
		#150
		
		#5
		//F = A SUB 1 expecting 000000000000101
		OC <= 5'b10010;
		A <= 16'b0000000000000110;
		B <= 16'b0000000000000011;
		C0 <= 0;
		#150
		
		#5
		//F = 0 SUB A expecting 1111111111111010
		OC <= 5'b10001;
		A <= 16'b0000000000000110;
		B <= 16'b0000000000000011;
		C0 <= 1;
		#150
		
		#5
		//F = 0 expecting 0000000000000000
		OC <= 5'b00000;
		A <= 16'b0000000000000110;
		B <= 16'b0000000000000011;
		C0 <= 0;
		#150
		
		#5
		//F = A expecting 0000000000000110
		OC <= 5'b01010;
		A <= 16'b0000000000000110;
		B <= 16'b0000000000000011;
		C0 <= 0;
		#150
		
		#5
		//F = !A expecting 1111111111111001
		OC <= 5'b00101;
		A <= 16'b0000000000000110;
		B <= 16'b0000000000000011;
		C0 <= 0;
		#150
		
		#5
		//F = A AND B expecting 0000000000000010
		OC <= 5'b01000;
		A <= 16'b0000000000000110;
		B <= 16'b0000000000000011;
		C0 <= 0;
		#150
		
		#5
		//F = A OR B expecting 0000000000000111
		OC <= 5'b01110;
		A <= 16'b0000000000000110;
		B <= 16'b0000000000000011;
		C0 <= 0;
		#150
		
		#5
		//F = A XOR B expecting 0000000000000101
		OC <= 5'b00110;
		A <= 16'b0000000000000110;
		B <= 16'b0000000000000011;
		C0 <= 0;
		#150
		
		#5
		//F = SET 1's expecting 1111111111111111
		
		OC <= 5'b01111;
		A <= 16'b0000000000000110;
		B <= 16'b0000000000000011;
		C0 <= 0;
		#150
		
		#5
		//F = A >> 1 expecting 0000000000001011
		OC <= 5'b11001;
		A <= 16'b0000000000010110;
		B <= 16'b0000000000000011;
		C0 <= 0;
		#150
		
		#5
		//F = A << 1 expecting 0000000000101100
		OC <= 5'b11000;
		A <= 16'b0000000000010110;
		B <= 16'b0000000000000011;
		C0 <= 0;
		#150
		
		#5
		//F = A >> 1 MSb expecting 1000000000001011
		OC <= 5'b11001;
		A <= 16'b0100000000010110;
		B <= 16'b0000000000000011;
		C0 <= 1;
		#150
		
		#5
		//F = A ADD B ADD C0 expecting 1000000000011010
		OC <= 5'b10100;
		A <= 16'b0000000000010110;
		B <= 16'b0000000000000011;
		C0 <= 1;
		//#150
	end
	initial 
   #2000 $stop;
	
endmodule

//What we're trying to go for here is that the value in register 5 is 21, and we want to add it with the value in register 7 which is 9
//our expected result should be 30 or 11110










/*module ALU_LEGv8_Testbench();
	reg [63:0] A, B;
	reg [4:0] FS;
	reg C0;
	wire [63:0] F;
	wire [3:0] status;
	
	ALU_LEGv8 dut (A, B, FS, C0, F, status);
	
	initial begin
		/*FS <= 5'b00000; // A AND B
		A <= 64'b110;
		B <= 64'b011;
		#5 
		FS <= 5'b00100; // A OR B
		#5 
		FS <= 5'b01000; // A + B
		C0 <= 1'b0;
		#5 FS <= 5'b01100; // A XOR B
		#5 A <= {$random, $random};
		B <= {$random, $random};
		#5 FS <= 5'b00011; // ~A AND ~B = A NOR B
		#5 FS <= 5'b00111; // ~A OR ~B = A NAND B
		#5 FS <= 5'b10000; // shift left
		A <= 64'b1; // shift 1 a random number of times
		#5 FS <= 5'b10100; // shift right
		A <= 64'h8000000000000000;
		#5000 $stop;
	end
	
	always begin
		#5
		FS <= $random;
		A <= {$random, $random};
		B <= {$random, $random};
		C0 <= $random;
	end
	
	reg [63:0] Fexp;
	wire [63:0] A2, B2;
	assign A2 = FS[1] ? ~A : A;
	assign B2 = FS[0] ? ~B : B;
	
	always @(*) begin
		case (FS[4:2])
			3'b000: Fexp <= A2 & B2;
			3'b001: Fexp <= A2 | B2;
			3'b010: Fexp <= A2 + B2 + C0;
			3'b011: Fexp <= A2 ^ B2;
			3'b100: Fexp <= A << B[5:0];
			3'b101: Fexp <= A >> B[5:0];
			3'b110: Fexp <= 64'b0;
			3'b111: Fexp <= 64'b0;
		endcase
	end
	
	always begin
		#5 
		if(F != Fexp) begin
			$display("time %d, F %x, Fexp %x, FS %b, A %x, B %x", $time, F, Fexp, FS, A, B);
		end
	end
	
endmodule
*/
