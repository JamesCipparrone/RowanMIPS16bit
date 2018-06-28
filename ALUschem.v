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
// CREATED		"Wed Jun 27 20:17:31 2018"

module ALUschem(
	A,
	B,
	Cin,
	Anext,
	FS,
	F,
	Cout
);


input wire	A;
input wire	B;
input wire	Cin;
input wire	Anext;
input wire	[4:0] FS;
output wire	F;
output wire	Cout;

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

assign	SYNTHESIZED_WIRE_0 = 0;
assign	SYNTHESIZED_WIRE_1 = 1;




mux4	b2v_inst(
	.S1(B),
	.S0(A),
	.W(FS[0]),
	.X(FS[1]),
	.Y(FS[2]),
	.Z(FS[3]),
	.F(SYNTHESIZED_WIRE_3));


mux2	b2v_inst10(
	.S(FS[0]),
	.W(Cin),
	.X(Anext),
	.F(SYNTHESIZED_WIRE_6));


mux4	b2v_inst11(
	.S1(FS[2]),
	.S0(FS[1]),
	.W(SYNTHESIZED_WIRE_0),
	.X(SYNTHESIZED_WIRE_1),
	.Y(B),
	.Z(SYNTHESIZED_WIRE_2),
	.F(SYNTHESIZED_WIRE_9));


mux2	b2v_inst12(
	.S(FS[4]),
	.W(SYNTHESIZED_WIRE_3),
	.X(SYNTHESIZED_WIRE_4),
	.F(F));


mux2	b2v_inst13(
	.S(FS[3]),
	.W(SYNTHESIZED_WIRE_5),
	.X(SYNTHESIZED_WIRE_6),
	.F(SYNTHESIZED_WIRE_4));


mux2	b2v_inst14(
	.S(FS[3]),
	.W(SYNTHESIZED_WIRE_7),
	.X(A),
	.F(Cout));

assign	SYNTHESIZED_WIRE_10 =  ~A;

assign	SYNTHESIZED_WIRE_2 =  ~B;




fullAdder	b2v_inst5(
	.A(SYNTHESIZED_WIRE_8),
	.B(SYNTHESIZED_WIRE_9),
	.Cin(Cin),
	.R(SYNTHESIZED_WIRE_5),
	.Cout(SYNTHESIZED_WIRE_7));


mux2	b2v_inst9(
	.S(FS[0]),
	.W(A),
	.X(SYNTHESIZED_WIRE_10),
	.F(SYNTHESIZED_WIRE_8));


endmodule
