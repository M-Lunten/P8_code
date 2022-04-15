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
-- Generated on "04/15/2022 11:50:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Box_Muller
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Box_Muller_vhd_vec_tst IS
END Box_Muller_vhd_vec_tst;
ARCHITECTURE Box_Muller_arch OF Box_Muller_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL gclk : STD_LOGIC;
SIGNAL greset : STD_LOGIC;
SIGNAL U1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL U2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT Box_Muller
	PORT (
	gclk : IN STD_LOGIC;
	greset : IN STD_LOGIC;
	U1 : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	U2 : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Box_Muller
	PORT MAP (
-- list connections between master ports and signals
	gclk => gclk,
	greset => greset,
	U1 => U1,
	U2 => U2
	);

-- gclk
t_prcs_gclk: PROCESS
BEGIN
	gclk <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		gclk <= '0';
		WAIT FOR 10000 ps;
		gclk <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	gclk <= '0';
WAIT;
END PROCESS t_prcs_gclk;

-- greset
t_prcs_greset: PROCESS
BEGIN
	greset <= '0';
WAIT;
END PROCESS t_prcs_greset;
END Box_Muller_arch;
