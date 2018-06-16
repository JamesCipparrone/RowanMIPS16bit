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
// CREATED		"Mon Jun 11 00:31:23 2018"

module RegisterSchem(
	Write,
	clock,
	rst,
	data,
	select,
	selecta,
	selectb,
	a,
	b,
	regk,
	regl,
	regm,
	regn,
	rego,
	regp,
	regq,
	regr,
	regs,
	regt,
	regu,
	regv,
	regw,
	regx,
	regy,
	regz
);


input wire	Write;
input wire	clock;
input wire	rst;
input wire	[15:0] data;
input wire	[3:0] select;
input wire	[3:0] selecta;
input wire	[3:0] selectb;
output wire	[15:0] a;
output wire	[15:0] b;
output wire	[15:0] regk;
output wire	[15:0] regl;
output wire	[15:0] regm;
output wire	[15:0] regn;
output wire	[15:0] rego;
output wire	[15:0] regp;
output wire	[15:0] regq;
output wire	[15:0] regr;
output wire	[15:0] regs;
output wire	[15:0] regt;
output wire	[15:0] regu;
output wire	[15:0] regv;
output wire	[15:0] regw;
output wire	[15:0] regx;
output wire	[15:0] regy;
output wire	[15:0] regz;

wire	[15:0] out;
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
wire	[15:0] SYNTHESIZED_WIRE_48;
wire	[15:0] SYNTHESIZED_WIRE_49;
wire	[15:0] SYNTHESIZED_WIRE_50;
wire	[15:0] SYNTHESIZED_WIRE_51;
wire	[15:0] SYNTHESIZED_WIRE_52;
wire	[15:0] SYNTHESIZED_WIRE_53;
wire	[15:0] SYNTHESIZED_WIRE_54;
wire	[15:0] SYNTHESIZED_WIRE_55;
wire	[15:0] SYNTHESIZED_WIRE_56;
wire	[15:0] SYNTHESIZED_WIRE_57;
wire	[15:0] SYNTHESIZED_WIRE_58;
wire	[15:0] SYNTHESIZED_WIRE_59;
wire	[15:0] SYNTHESIZED_WIRE_60;
wire	[15:0] SYNTHESIZED_WIRE_61;
wire	[15:0] SYNTHESIZED_WIRE_62;
wire	[15:0] SYNTHESIZED_WIRE_63;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;

assign	regk = SYNTHESIZED_WIRE_63;
assign	regl = SYNTHESIZED_WIRE_62;
assign	regm = SYNTHESIZED_WIRE_61;
assign	regn = SYNTHESIZED_WIRE_60;
assign	rego = SYNTHESIZED_WIRE_59;
assign	regp = SYNTHESIZED_WIRE_58;
assign	regq = SYNTHESIZED_WIRE_57;
assign	regr = SYNTHESIZED_WIRE_56;
assign	regs = SYNTHESIZED_WIRE_55;
assign	regt = SYNTHESIZED_WIRE_54;
assign	regu = SYNTHESIZED_WIRE_53;
assign	regv = SYNTHESIZED_WIRE_52;
assign	regw = SYNTHESIZED_WIRE_51;
assign	regx = SYNTHESIZED_WIRE_50;
assign	regy = SYNTHESIZED_WIRE_49;
assign	regz = SYNTHESIZED_WIRE_48;




Register16Bit 	b2v_inst(
	.Reset(rst),
	.CLK(clock),
	.ENABLE(SYNTHESIZED_WIRE_0),
	.DBUS(data),
	.O(SYNTHESIZED_WIRE_49));


Decoder4x16	b2v_inst1(
	.in(select),
	.out(out));


Register16Bit 	b2v_inst10(
	.Reset(rst),
	.CLK(clock),
	.ENABLE(SYNTHESIZED_WIRE_1),
	.DBUS(data),
	.O(SYNTHESIZED_WIRE_58));


Register16Bit 	b2v_inst11(
	.Reset(rst),
	.CLK(clock),
	.ENABLE(SYNTHESIZED_WIRE_2),
	.DBUS(data),
	.O(SYNTHESIZED_WIRE_59));


Register16Bit 	b2v_inst12(
	.Reset(rst),
	.CLK(clock),
	.ENABLE(SYNTHESIZED_WIRE_3),
	.DBUS(data),
	.O(SYNTHESIZED_WIRE_60));


Register16Bit 	b2v_inst13(
	.Reset(rst),
	.CLK(clock),
	.ENABLE(SYNTHESIZED_WIRE_4),
	.DBUS(data),
	.O(SYNTHESIZED_WIRE_61));


Register16Bit 	b2v_inst14(
	.Reset(rst),
	.CLK(clock),
	.ENABLE(SYNTHESIZED_WIRE_5),
	.DBUS(data),
	.O(SYNTHESIZED_WIRE_62));


Register16Bit 	b2v_inst15(
	.Reset(rst),
	.CLK(clock),
	.ENABLE(SYNTHESIZED_WIRE_6),
	.DBUS(data),
	.O(SYNTHESIZED_WIRE_63));

assign	SYNTHESIZED_WIRE_6 = Write & out[15];

assign	SYNTHESIZED_WIRE_5 = Write & out[14];

assign	SYNTHESIZED_WIRE_4 = Write & out[13];

assign	SYNTHESIZED_WIRE_3 = Write & out[12];


Register16Bit 	b2v_inst2(
	.Reset(rst),
	.CLK(clock),
	.ENABLE(SYNTHESIZED_WIRE_7),
	.DBUS(data),
	.O(SYNTHESIZED_WIRE_50));

assign	SYNTHESIZED_WIRE_2 = Write & out[11];

assign	SYNTHESIZED_WIRE_1 = Write & out[10];

assign	SYNTHESIZED_WIRE_47 = Write & out[9];

assign	SYNTHESIZED_WIRE_46 = Write & out[8];

assign	SYNTHESIZED_WIRE_45 = Write & out[7];

assign	SYNTHESIZED_WIRE_44 = Write & out[6];

assign	SYNTHESIZED_WIRE_43 = Write & out[5];

assign	SYNTHESIZED_WIRE_42 = Write & out[4];

assign	SYNTHESIZED_WIRE_8 = Write & out[3];

assign	SYNTHESIZED_WIRE_7 = Write & out[2];


Register16Bit 	b2v_inst3(
	.Reset(rst),
	.CLK(clock),
	.ENABLE(SYNTHESIZED_WIRE_8),
	.DBUS(data),
	.O(SYNTHESIZED_WIRE_51));

assign	SYNTHESIZED_WIRE_0 = Write & out[1];


Register16Bit 	b2v_inst31(
	.Reset(rst),
	.CLK(clock),
	.ENABLE(SYNTHESIZED_WIRE_9),
	.DBUS(data),
	.O(SYNTHESIZED_WIRE_48));

assign	SYNTHESIZED_WIRE_9 = Write & out[0];


MUX1616	b2v_inst33(
	.in(selecta),
	.ra(SYNTHESIZED_WIRE_48),
	.rb(SYNTHESIZED_WIRE_49),
	.rc(SYNTHESIZED_WIRE_50),
	.rd(SYNTHESIZED_WIRE_51),
	.re(SYNTHESIZED_WIRE_52),
	.rf(SYNTHESIZED_WIRE_53),
	.rg(SYNTHESIZED_WIRE_54),
	.rh(SYNTHESIZED_WIRE_55),
	.ri(SYNTHESIZED_WIRE_56),
	.rj(SYNTHESIZED_WIRE_57),
	.rk(SYNTHESIZED_WIRE_58),
	.rl(SYNTHESIZED_WIRE_59),
	.rm(SYNTHESIZED_WIRE_60),
	.rn(SYNTHESIZED_WIRE_61),
	.ro(SYNTHESIZED_WIRE_62),
	.rp(SYNTHESIZED_WIRE_63),
	.out(a));


MUX1616	b2v_inst35(
	.in(selectb),
	.ra(SYNTHESIZED_WIRE_48),
	.rb(SYNTHESIZED_WIRE_49),
	.rc(SYNTHESIZED_WIRE_50),
	.rd(SYNTHESIZED_WIRE_51),
	.re(SYNTHESIZED_WIRE_52),
	.rf(SYNTHESIZED_WIRE_53),
	.rg(SYNTHESIZED_WIRE_54),
	.rh(SYNTHESIZED_WIRE_55),
	.ri(SYNTHESIZED_WIRE_56),
	.rj(SYNTHESIZED_WIRE_57),
	.rk(SYNTHESIZED_WIRE_58),
	.rl(SYNTHESIZED_WIRE_59),
	.rm(SYNTHESIZED_WIRE_60),
	.rn(SYNTHESIZED_WIRE_61),
	.ro(SYNTHESIZED_WIRE_62),
	.rp(SYNTHESIZED_WIRE_63),
	.out(b));


Register16Bit 	b2v_inst4(
	.Reset(rst),
	.CLK(clock),
	.ENABLE(SYNTHESIZED_WIRE_42),
	.DBUS(data),
	.O(SYNTHESIZED_WIRE_52));


Register16Bit 	b2v_inst5(
	.Reset(rst),
	.CLK(clock),
	.ENABLE(SYNTHESIZED_WIRE_43),
	.DBUS(data),
	.O(SYNTHESIZED_WIRE_53));


Register16Bit 	b2v_inst6(
	.Reset(rst),
	.CLK(clock),
	.ENABLE(SYNTHESIZED_WIRE_44),
	.DBUS(data),
	.O(SYNTHESIZED_WIRE_54));


Register16Bit 	b2v_inst7(
	.Reset(rst),
	.CLK(clock),
	.ENABLE(SYNTHESIZED_WIRE_45),
	.DBUS(data),
	.O(SYNTHESIZED_WIRE_55));


Register16Bit 	b2v_inst8(
	.Reset(rst),
	.CLK(clock),
	.ENABLE(SYNTHESIZED_WIRE_46),
	.DBUS(data),
	.O(SYNTHESIZED_WIRE_56));


Register16Bit 	b2v_inst9(
	.Reset(rst),
	.CLK(clock),
	.ENABLE(SYNTHESIZED_WIRE_47),
	.DBUS(data),
	.O(SYNTHESIZED_WIRE_57));


endmodule
