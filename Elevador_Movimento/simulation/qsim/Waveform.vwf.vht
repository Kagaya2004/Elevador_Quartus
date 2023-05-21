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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/30/2023 22:43:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Elevador_Movimento
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Elevador_Movimento_vhd_vec_tst IS
END Elevador_Movimento_vhd_vec_tst;
ARCHITECTURE Elevador_Movimento_arch OF Elevador_Movimento_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ACT : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL EN : STD_LOGIC;
SIGNAL SAP : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL SAS : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT Elevador_Movimento
	PORT (
	ACT : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	EN : IN STD_LOGIC;
	SAP : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	SAS : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Elevador_Movimento
	PORT MAP (
-- list connections between master ports and signals
	ACT => ACT,
	CLK => CLK,
	EN => EN,
	SAP => SAP,
	SAS => SAS
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 20000 ps;
	CLK <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- EN
t_prcs_EN: PROCESS
BEGIN
	EN <= '0';
	WAIT FOR 20000 ps;
	EN <= '1';
	WAIT FOR 20000 ps;
	EN <= '0';
	WAIT FOR 20000 ps;
	EN <= '1';
	WAIT FOR 20000 ps;
	EN <= '0';
	WAIT FOR 20000 ps;
	EN <= '1';
	WAIT FOR 20000 ps;
	EN <= '0';
WAIT;
END PROCESS t_prcs_EN;

-- ACT
t_prcs_ACT: PROCESS
BEGIN
	ACT <= '1';
WAIT;
END PROCESS t_prcs_ACT;
END Elevador_Movimento_arch;
