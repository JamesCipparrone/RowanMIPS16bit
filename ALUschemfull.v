// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Wed Jun 27 20:23:39 2018"

module ALUschemfull(
	C0,
	A,
	B,
	OC,
	O
);


input wire	C0;
input wire	[15:0] A;
input wire	[15:0] B;
input wire	[4:0] OC;
output wire	[15:0] O;

wire	[15:0] O_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;





ALUschem	b2v_inst(
	.A(A[0]),
	.B(B[0]),
	.Cin(C0),
	.Anext(A[1]),
	.FS(OC),
	.F(O_ALTERA_SYNTHESIZED[0]),
	.Cout(SYNTHESIZED_WIRE_0));


ALUschem	b2v_inst1(
	.A(A[1]),
	.B(B[1]),
	.Cin(SYNTHESIZED_WIRE_0),
	.Anext(A[2]),
	.FS(OC),
	.F(O_ALTERA_SYNTHESIZED[1]),
	.Cout(SYNTHESIZED_WIRE_8));


ALUschem	b2v_inst10(
	.A(A[10]),
	.B(B[10]),
	.Cin(SYNTHESIZED_WIRE_1),
	.Anext(A[11]),
	.FS(OC),
	.F(O_ALTERA_SYNTHESIZED[10]),
	.Cout(SYNTHESIZED_WIRE_2));


ALUschem	b2v_inst11(
	.A(A[11]),
	.B(B[11]),
	.Cin(SYNTHESIZED_WIRE_2),
	.Anext(A[12]),
	.FS(OC),
	.F(O_ALTERA_SYNTHESIZED[11]),
	.Cout(SYNTHESIZED_WIRE_3));


ALUschem	b2v_inst12(
	.A(A[12]),
	.B(B[12]),
	.Cin(SYNTHESIZED_WIRE_3),
	.Anext(A[13]),
	.FS(OC),
	.F(O_ALTERA_SYNTHESIZED[12]),
	.Cout(SYNTHESIZED_WIRE_4));


ALUschem	b2v_inst13(
	.A(A[13]),
	.B(B[13]),
	.Cin(SYNTHESIZED_WIRE_4),
	.Anext(A[14]),
	.FS(OC),
	.F(O_ALTERA_SYNTHESIZED[13]),
	.Cout(SYNTHESIZED_WIRE_5));


ALUschem	b2v_inst14(
	.A(A[14]),
	.B(B[14]),
	.Cin(SYNTHESIZED_WIRE_5),
	.Anext(A[15]),
	.FS(OC),
	.F(O_ALTERA_SYNTHESIZED[14]),
	.Cout(SYNTHESIZED_WIRE_6));


ALUschem	b2v_inst15(
	.A(A[15]),
	.B(B[15]),
	.Cin(SYNTHESIZED_WIRE_6),
	.Anext(SYNTHESIZED_WIRE_7),
	.FS(OC),
	.F(O_ALTERA_SYNTHESIZED[15]),
	.Cout(SYNTHESIZED_WIRE_7));


ALUschem	b2v_inst2(
	.A(A[2]),
	.B(B[2]),
	.Cin(SYNTHESIZED_WIRE_8),
	.Anext(A[3]),
	.FS(OC),
	.F(O_ALTERA_SYNTHESIZED[2]),
	.Cout(SYNTHESIZED_WIRE_9));


ALUschem	b2v_inst3(
	.A(A[3]),
	.B(B[3]),
	.Cin(SYNTHESIZED_WIRE_9),
	.Anext(A[4]),
	.FS(OC),
	.F(O_ALTERA_SYNTHESIZED[3]),
	.Cout(SYNTHESIZED_WIRE_10));


ALUschem	b2v_inst4(
	.A(A[4]),
	.B(B[4]),
	.Cin(SYNTHESIZED_WIRE_10),
	.Anext(A[5]),
	.FS(OC),
	.F(O_ALTERA_SYNTHESIZED[4]),
	.Cout(SYNTHESIZED_WIRE_11));


ALUschem	b2v_inst5(
	.A(A[5]),
	.B(B[5]),
	.Cin(SYNTHESIZED_WIRE_11),
	.Anext(A[6]),
	.FS(OC),
	.F(O_ALTERA_SYNTHESIZED[5]),
	.Cout(SYNTHESIZED_WIRE_12));


ALUschem	b2v_inst6(
	.A(A[6]),
	.B(B[6]),
	.Cin(SYNTHESIZED_WIRE_12),
	.Anext(A[7]),
	.FS(OC),
	.F(O_ALTERA_SYNTHESIZED[6]),
	.Cout(SYNTHESIZED_WIRE_14));


ALUschem	b2v_inst7(
	.A(A[9]),
	.B(B[9]),
	.Cin(SYNTHESIZED_WIRE_13),
	.Anext(A[10]),
	.FS(OC),
	.F(O_ALTERA_SYNTHESIZED[9]),
	.Cout(SYNTHESIZED_WIRE_1));


ALUschem	b2v_inst8(
	.A(A[7]),
	.B(B[7]),
	.Cin(SYNTHESIZED_WIRE_14),
	.Anext(A[8]),
	.FS(OC),
	.F(O_ALTERA_SYNTHESIZED[7]),
	.Cout(SYNTHESIZED_WIRE_15));


ALUschem	b2v_inst9(
	.A(A[8]),
	.B(B[8]),
	.Cin(SYNTHESIZED_WIRE_15),
	.Anext(A[9]),
	.FS(OC),
	.F(O_ALTERA_SYNTHESIZED[8]),
	.Cout(SYNTHESIZED_WIRE_13));

assign	O = O_ALTERA_SYNTHESIZED;

endmodule
