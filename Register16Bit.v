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
// CREATED		"Mon Jun 11 02:07:59 2018"

module Register16Bit (
	Reset,
	CLK,
	ENABLE,
	DBUS,
	O
);


input wire	Reset;
input wire	CLK;
input wire	ENABLE;
input wire	[15:0] DBUS;
output wire	[15:0] O;

reg	[15:0] O_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;

assign	SYNTHESIZED_WIRE_32 = 1;




always@(posedge CLK or negedge SYNTHESIZED_WIRE_33 or negedge SYNTHESIZED_WIRE_32)
begin
if (!SYNTHESIZED_WIRE_33)
	begin
	O_ALTERA_SYNTHESIZED[0] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_32)
	begin
	O_ALTERA_SYNTHESIZED[0] <= 1;
	end
else
if (ENABLE)
	begin
	O_ALTERA_SYNTHESIZED[0] <= DBUS[0];
	end
end


assign	SYNTHESIZED_WIRE_33 =  ~Reset;


always@(posedge CLK or negedge SYNTHESIZED_WIRE_33 or negedge SYNTHESIZED_WIRE_32)
begin
if (!SYNTHESIZED_WIRE_33)
	begin
	O_ALTERA_SYNTHESIZED[1] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_32)
	begin
	O_ALTERA_SYNTHESIZED[1] <= 1;
	end
else
if (ENABLE)
	begin
	O_ALTERA_SYNTHESIZED[1] <= DBUS[1];
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_33 or negedge SYNTHESIZED_WIRE_32)
begin
if (!SYNTHESIZED_WIRE_33)
	begin
	O_ALTERA_SYNTHESIZED[2] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_32)
	begin
	O_ALTERA_SYNTHESIZED[2] <= 1;
	end
else
if (ENABLE)
	begin
	O_ALTERA_SYNTHESIZED[2] <= DBUS[2];
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_33 or negedge SYNTHESIZED_WIRE_32)
begin
if (!SYNTHESIZED_WIRE_33)
	begin
	O_ALTERA_SYNTHESIZED[3] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_32)
	begin
	O_ALTERA_SYNTHESIZED[3] <= 1;
	end
else
if (ENABLE)
	begin
	O_ALTERA_SYNTHESIZED[3] <= DBUS[3];
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_33 or negedge SYNTHESIZED_WIRE_32)
begin
if (!SYNTHESIZED_WIRE_33)
	begin
	O_ALTERA_SYNTHESIZED[4] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_32)
	begin
	O_ALTERA_SYNTHESIZED[4] <= 1;
	end
else
if (ENABLE)
	begin
	O_ALTERA_SYNTHESIZED[4] <= DBUS[4];
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_33 or negedge SYNTHESIZED_WIRE_32)
begin
if (!SYNTHESIZED_WIRE_33)
	begin
	O_ALTERA_SYNTHESIZED[5] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_32)
	begin
	O_ALTERA_SYNTHESIZED[5] <= 1;
	end
else
if (ENABLE)
	begin
	O_ALTERA_SYNTHESIZED[5] <= DBUS[5];
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_33 or negedge SYNTHESIZED_WIRE_32)
begin
if (!SYNTHESIZED_WIRE_33)
	begin
	O_ALTERA_SYNTHESIZED[6] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_32)
	begin
	O_ALTERA_SYNTHESIZED[6] <= 1;
	end
else
if (ENABLE)
	begin
	O_ALTERA_SYNTHESIZED[6] <= DBUS[6];
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_33 or negedge SYNTHESIZED_WIRE_32)
begin
if (!SYNTHESIZED_WIRE_33)
	begin
	O_ALTERA_SYNTHESIZED[7] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_32)
	begin
	O_ALTERA_SYNTHESIZED[7] <= 1;
	end
else
if (ENABLE)
	begin
	O_ALTERA_SYNTHESIZED[7] <= DBUS[7];
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_33 or negedge SYNTHESIZED_WIRE_32)
begin
if (!SYNTHESIZED_WIRE_33)
	begin
	O_ALTERA_SYNTHESIZED[8] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_32)
	begin
	O_ALTERA_SYNTHESIZED[8] <= 1;
	end
else
if (ENABLE)
	begin
	O_ALTERA_SYNTHESIZED[8] <= DBUS[8];
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_33 or negedge SYNTHESIZED_WIRE_32)
begin
if (!SYNTHESIZED_WIRE_33)
	begin
	O_ALTERA_SYNTHESIZED[9] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_32)
	begin
	O_ALTERA_SYNTHESIZED[9] <= 1;
	end
else
if (ENABLE)
	begin
	O_ALTERA_SYNTHESIZED[9] <= DBUS[9];
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_33 or negedge SYNTHESIZED_WIRE_32)
begin
if (!SYNTHESIZED_WIRE_33)
	begin
	O_ALTERA_SYNTHESIZED[10] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_32)
	begin
	O_ALTERA_SYNTHESIZED[10] <= 1;
	end
else
if (ENABLE)
	begin
	O_ALTERA_SYNTHESIZED[10] <= DBUS[10];
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_33 or negedge SYNTHESIZED_WIRE_32)
begin
if (!SYNTHESIZED_WIRE_33)
	begin
	O_ALTERA_SYNTHESIZED[11] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_32)
	begin
	O_ALTERA_SYNTHESIZED[11] <= 1;
	end
else
if (ENABLE)
	begin
	O_ALTERA_SYNTHESIZED[11] <= DBUS[11];
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_33 or negedge SYNTHESIZED_WIRE_32)
begin
if (!SYNTHESIZED_WIRE_33)
	begin
	O_ALTERA_SYNTHESIZED[12] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_32)
	begin
	O_ALTERA_SYNTHESIZED[12] <= 1;
	end
else
if (ENABLE)
	begin
	O_ALTERA_SYNTHESIZED[12] <= DBUS[12];
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_33 or negedge SYNTHESIZED_WIRE_32)
begin
if (!SYNTHESIZED_WIRE_33)
	begin
	O_ALTERA_SYNTHESIZED[13] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_32)
	begin
	O_ALTERA_SYNTHESIZED[13] <= 1;
	end
else
if (ENABLE)
	begin
	O_ALTERA_SYNTHESIZED[13] <= DBUS[13];
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_33 or negedge SYNTHESIZED_WIRE_32)
begin
if (!SYNTHESIZED_WIRE_33)
	begin
	O_ALTERA_SYNTHESIZED[14] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_32)
	begin
	O_ALTERA_SYNTHESIZED[14] <= 1;
	end
else
if (ENABLE)
	begin
	O_ALTERA_SYNTHESIZED[14] <= DBUS[14];
	end
end


always@(posedge CLK or negedge SYNTHESIZED_WIRE_33 or negedge SYNTHESIZED_WIRE_32)
begin
if (!SYNTHESIZED_WIRE_33)
	begin
	O_ALTERA_SYNTHESIZED[15] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_32)
	begin
	O_ALTERA_SYNTHESIZED[15] <= 1;
	end
else
if (ENABLE)
	begin
	O_ALTERA_SYNTHESIZED[15] <= DBUS[15];
	end
end

assign	O = O_ALTERA_SYNTHESIZED;

endmodule
