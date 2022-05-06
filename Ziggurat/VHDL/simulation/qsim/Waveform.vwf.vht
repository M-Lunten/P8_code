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
-- Generated on "05/06/2022 10:11:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ZigVHDL
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ZigVHDL_vhd_vec_tst IS
END ZigVHDL_vhd_vec_tst;
ARCHITECTURE ZigVHDL_arch OF ZigVHDL_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL i_clock : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL xuout : STD_LOGIC_VECTOR(32 DOWNTO 0);
SIGNAL zigout : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT ZigVHDL
	PORT (
	i_clock : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	start : IN STD_LOGIC;
	xuout : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
	zigout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ZigVHDL
	PORT MAP (
-- list connections between master ports and signals
	i_clock => i_clock,
	reset => reset,
	start => start,
	xuout => xuout,
	zigout => zigout
	);

-- i_clock
t_prcs_i_clock: PROCESS
BEGIN
LOOP
	i_clock <= '0';
	WAIT FOR 25000 ps;
	i_clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_i_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
WAIT;
END PROCESS t_prcs_start;
END ZigVHDL_arch;
