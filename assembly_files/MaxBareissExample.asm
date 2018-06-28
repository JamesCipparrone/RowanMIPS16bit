##########
#
# file    MaxBareissExample.asm
# date    6/27/2018
# source  http://www.maxbareiss.com/assembler.html
#
##########

LDI R0,0
LDI R1,1
LDI R2,3
LDI R3,7
LDI R4,15
LDI R5,31
LDI R6,63
LDI R7,127
SHL R0,R0
SHL R1,R1
SHL R2,R2
SHL R3,R3
SHL R4,R4
SHL R5,R5
SHL R6,R6
SHL R7,R7
INC R0,R0
INC R1,R1
INC R2,R2
INC R3,R3
INC R4,R4
INC R5,R5
INC R6,R6
INC R7,R7
BRN R7,-24
JMPI 8
LRLI R2,1232

## The assembled machine code is inside the "case" block:
#
#module rom_case(out, address);
#   output reg [15:0] out;
#   input  [7:0] address; // address- 8 deep memory
#
#   always @(address) begin
#      case (address)
#         8'h0:  out = 16'ha000; // LDI R0,0
#         8'h1:  out = 16'ha101; // LDI R1,1
#         8'h2:  out = 16'ha203; // LDI R2,3
#         8'h3:  out = 16'ha307; // LDI R3,7
#         8'h4:  out = 16'ha40f; // LDI R4,15
#         8'h5:  out = 16'ha51f; // LDI R5,31
#         8'h6:  out = 16'ha63f; // LDI R6,63
#         8'h7:  out = 16'ha77f; // LDI R7,127
#         8'h8:  out = 16'h7000; // SHL R0,R0
#         8'h9:  out = 16'h7048; // SHL R1,R1
#         8'ha:  out = 16'h7090; // SHL R2,R2
#         8'hb:  out = 16'h70d8; // SHL R3,R3
#         8'hc:  out = 16'h7120; // SHL R4,R4
#         8'hd:  out = 16'h7168; // SHL R5,R5
#         8'he:  out = 16'h71b0; // SHL R6,R6
#         8'hf:  out = 16'h71f8; // SHL R7,R7
#         8'h10:  out = 16'h6000; // INC R0,R0
#         8'h11:  out = 16'h6048; // INC R1,R1
#         8'h12:  out = 16'h6090; // INC R2,R2
#         8'h13:  out = 16'h60d8; // INC R3,R3
#         8'h14:  out = 16'h6120; // INC R4,R4
#         8'h15:  out = 16'h6168; // INC R5,R5
#         8'h16:  out = 16'h61b0; // INC R6,R6
#         8'h17:  out = 16'h61f8; // INC R7,R7
#         8'h18:  out = 16'hbfe8; // BRN R7,-24
#         8'h19:  out = 16'h9808; // JMPI 8
#         8'h1a:  out = 16'h8480; // LRLI R2,1232
#         8'h1b:  out = 16'h04d0; // LRLI R2,1232
#         default: out=16'h0000;
#      endcase
#   end
#endmodule // rom_case