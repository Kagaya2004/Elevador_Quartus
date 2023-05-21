-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/30/2023 22:43:13"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Elevador_Movimento IS
    PORT (
	SAP : OUT std_logic_vector(2 DOWNTO 0);
	CLK : IN std_logic;
	EN : IN std_logic;
	ACT : IN std_logic;
	SAS : OUT std_logic_vector(2 DOWNTO 0)
	);
END Elevador_Movimento;

-- Design Ports Information
-- SAP[2]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAP[1]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAP[0]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAS[2]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAS[1]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAS[0]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACT	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Elevador_Movimento IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SAP : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_ACT : std_logic;
SIGNAL ww_SAS : std_logic_vector(2 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SAP[2]~output_o\ : std_logic;
SIGNAL \SAP[1]~output_o\ : std_logic;
SIGNAL \SAP[0]~output_o\ : std_logic;
SIGNAL \SAS[2]~output_o\ : std_logic;
SIGNAL \SAS[1]~output_o\ : std_logic;
SIGNAL \SAS[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \ACT~input_o\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|fstate.T~q\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst|fstate.A1~q\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst|fstate.A2~q\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|Selector3~1_combout\ : std_logic;
SIGNAL \inst|fstate.A3~q\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|fstate.A4~q\ : std_logic;
SIGNAL \inst|SA2~combout\ : std_logic;
SIGNAL \inst|SA1~combout\ : std_logic;
SIGNAL \inst|SA0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_SA0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

SAP <= ww_SAP;
ww_CLK <= CLK;
ww_EN <= EN;
ww_ACT <= ACT;
SAS <= ww_SAS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst|ALT_INV_SA0~0_combout\ <= NOT \inst|SA0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y24_N9
\SAP[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SA2~combout\,
	devoe => ww_devoe,
	o => \SAP[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\SAP[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SA1~combout\,
	devoe => ww_devoe,
	o => \SAP[1]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\SAP[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_SA0~0_combout\,
	devoe => ww_devoe,
	o => \SAP[0]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\SAS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SA2~combout\,
	devoe => ww_devoe,
	o => \SAS[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\SAS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SA1~combout\,
	devoe => ww_devoe,
	o => \SAS[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\SAS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_SA0~0_combout\,
	devoe => ww_devoe,
	o => \SAS[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y24_N8
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\ACT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ACT,
	o => \ACT~input_o\);

-- Location: LCCOMB_X2_Y23_N6
\inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\EN~input_o\ & ((\ACT~input_o\) # ((\inst|fstate.T~q\ & !\inst|fstate.A1~q\)))) # (!\EN~input_o\ & (((\inst|fstate.T~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \ACT~input_o\,
	datac => \inst|fstate.T~q\,
	datad => \inst|fstate.A1~q\,
	combout => \inst|Selector0~0_combout\);

-- Location: FF_X2_Y23_N7
\inst|fstate.T\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.T~q\);

-- Location: LCCOMB_X2_Y23_N28
\inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\EN~input_o\ & ((\ACT~input_o\ & ((!\inst|fstate.T~q\))) # (!\ACT~input_o\ & (\inst|fstate.A2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \ACT~input_o\,
	datac => \inst|fstate.A2~q\,
	datad => \inst|fstate.T~q\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCCOMB_X2_Y23_N30
\inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~1_combout\ = (\inst|Selector1~0_combout\) # ((!\EN~input_o\ & \inst|fstate.A1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datac => \inst|fstate.A1~q\,
	datad => \inst|Selector1~0_combout\,
	combout => \inst|Selector1~1_combout\);

-- Location: FF_X2_Y23_N31
\inst|fstate.A1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.A1~q\);

-- Location: LCCOMB_X2_Y23_N18
\inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\EN~input_o\ & ((\ACT~input_o\ & (\inst|fstate.A1~q\)) # (!\ACT~input_o\ & ((\inst|fstate.A3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \ACT~input_o\,
	datac => \inst|fstate.A1~q\,
	datad => \inst|fstate.A3~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X2_Y23_N4
\inst|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~1_combout\ = (\inst|Selector2~0_combout\) # ((!\EN~input_o\ & \inst|fstate.A2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datac => \inst|fstate.A2~q\,
	datad => \inst|Selector2~0_combout\,
	combout => \inst|Selector2~1_combout\);

-- Location: FF_X2_Y23_N5
\inst|fstate.A2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.A2~q\);

-- Location: LCCOMB_X2_Y23_N16
\inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\EN~input_o\ & ((\ACT~input_o\ & (\inst|fstate.A2~q\)) # (!\ACT~input_o\ & ((\inst|fstate.A4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \ACT~input_o\,
	datac => \inst|fstate.A2~q\,
	datad => \inst|fstate.A4~q\,
	combout => \inst|Selector3~0_combout\);

-- Location: LCCOMB_X2_Y23_N24
\inst|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector3~1_combout\ = (\inst|Selector3~0_combout\) # ((!\EN~input_o\ & \inst|fstate.A3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datac => \inst|fstate.A3~q\,
	datad => \inst|Selector3~0_combout\,
	combout => \inst|Selector3~1_combout\);

-- Location: FF_X2_Y23_N25
\inst|fstate.A3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.A3~q\);

-- Location: LCCOMB_X2_Y23_N10
\inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\EN~input_o\ & (\ACT~input_o\ & ((\inst|fstate.A4~q\) # (\inst|fstate.A3~q\)))) # (!\EN~input_o\ & (((\inst|fstate.A4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \ACT~input_o\,
	datac => \inst|fstate.A4~q\,
	datad => \inst|fstate.A3~q\,
	combout => \inst|Selector4~0_combout\);

-- Location: FF_X2_Y23_N11
\inst|fstate.A4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.A4~q\);

-- Location: LCCOMB_X2_Y23_N20
\inst|SA2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SA2~combout\ = (\inst|fstate.A4~q\) # (\inst|fstate.A3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|fstate.A4~q\,
	datad => \inst|fstate.A3~q\,
	combout => \inst|SA2~combout\);

-- Location: LCCOMB_X1_Y23_N16
\inst|SA1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SA1~combout\ = (\inst|fstate.A1~q\) # (\inst|fstate.A2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|fstate.A1~q\,
	datad => \inst|fstate.A2~q\,
	combout => \inst|SA1~combout\);

-- Location: LCCOMB_X2_Y23_N26
\inst|SA0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SA0~0_combout\ = (\inst|fstate.A1~q\) # (\inst|fstate.A3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|fstate.A1~q\,
	datad => \inst|fstate.A3~q\,
	combout => \inst|SA0~0_combout\);

ww_SAP(2) <= \SAP[2]~output_o\;

ww_SAP(1) <= \SAP[1]~output_o\;

ww_SAP(0) <= \SAP[0]~output_o\;

ww_SAS(2) <= \SAS[2]~output_o\;

ww_SAS(1) <= \SAS[1]~output_o\;

ww_SAS(0) <= \SAS[0]~output_o\;
END structure;


