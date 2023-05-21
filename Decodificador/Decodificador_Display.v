// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Tue Nov 01 21:32:55 2022"

module Decodificador_Display(
	B,
	S
);


input wire	[7:0] B;
output wire	[9:0] S;

wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;

assign	S[0] = B[0];
assign	SYNTHESIZED_WIRE_11 = 0;




\74185 	b2v_inst(
	.A(B[3]),
	.B(B[4]),
	.D(B[6]),
	.C(B[5]),
	.E(B[7]),
	.GN(SYNTHESIZED_WIRE_11),
	.Y1(SYNTHESIZED_WIRE_2),
	.Y3(SYNTHESIZED_WIRE_3),
	.Y2(SYNTHESIZED_WIRE_1),
	.Y5(SYNTHESIZED_WIRE_8),
	.Y4(SYNTHESIZED_WIRE_6),
	.Y6(SYNTHESIZED_WIRE_7)
	
	);


\74185 	b2v_inst11(
	.A(B[1]),
	.B(B[2]),
	.D(SYNTHESIZED_WIRE_1),
	.C(SYNTHESIZED_WIRE_2),
	.E(SYNTHESIZED_WIRE_3),
	.GN(SYNTHESIZED_WIRE_11),
	.Y1(S[1]),
	.Y3(S[3]),
	.Y2(S[2]),
	.Y5(SYNTHESIZED_WIRE_5),
	.Y4(S[4])
	
	
	);


\74185 	b2v_inst16(
	.A(SYNTHESIZED_WIRE_5),
	.B(SYNTHESIZED_WIRE_6),
	.D(SYNTHESIZED_WIRE_7),
	.C(SYNTHESIZED_WIRE_8),
	.E(SYNTHESIZED_WIRE_11),
	.GN(SYNTHESIZED_WIRE_11),
	.Y1(S[5]),
	.Y3(S[7]),
	.Y2(S[6]),
	.Y5(S[9]),
	.Y4(S[8])
	
	
	);



endmodule
