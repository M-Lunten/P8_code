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
-- Generated on "05/21/2022 16:20:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          cwControlPath
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cwControlPath_vhd_vec_tst IS
END cwControlPath_vhd_vec_tst;
ARCHITECTURE cwControlPath_arch OF cwControlPath_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL aluSub : STD_LOGIC;
SIGNAL clkIn : STD_LOGIC;
SIGNAL lfsrEnable : STD_LOGIC;
SIGNAL muxControl : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ramEnable : STD_LOGIC;
SIGNAL regControl : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL startIn : STD_LOGIC;
SIGNAL validNum : STD_LOGIC;
COMPONENT cwControlPath
	PORT (
	aluSub : OUT STD_LOGIC;
	clkIn : IN STD_LOGIC;
	lfsrEnable : OUT STD_LOGIC;
	muxControl : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ramEnable : OUT STD_LOGIC;
	regControl : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
	startIn : IN STD_LOGIC;
	validNum : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : cwControlPath
	PORT MAP (
-- list connections between master ports and signals
	aluSub => aluSub,
	clkIn => clkIn,
	lfsrEnable => lfsrEnable,
	muxControl => muxControl,
	ramEnable => ramEnable,
	regControl => regControl,
	startIn => startIn,
	validNum => validNum
	);

-- clkIn
t_prcs_clkIn: PROCESS
BEGIN
LOOP
	clkIn <= '0';
	WAIT FOR 5000 ps;
	clkIn <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clkIn;

-- startIn
t_prcs_startIn: PROCESS
BEGIN
	startIn <= '0';
	WAIT FOR 70000 ps;
	startIn <= '1';
WAIT;
END PROCESS t_prcs_startIn;
END cwControlPath_arch;
