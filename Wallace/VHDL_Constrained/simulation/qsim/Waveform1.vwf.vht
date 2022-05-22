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
-- Generated on "05/22/2022 17:34:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU_vhd_vec_tst IS
END ALU_vhd_vec_tst;
ARCHITECTURE ALU_arch OF ALU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL add_sub : STD_LOGIC;
SIGNAL cin : STD_LOGIC;
SIGNAL dataa : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL datab : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL result : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT ALU
	PORT (
	add_sub : IN STD_LOGIC;
	cin : IN STD_LOGIC;
	dataa : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	datab : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ALU
	PORT MAP (
-- list connections between master ports and signals
	add_sub => add_sub,
	cin => cin,
	dataa => dataa,
	datab => datab,
	result => result
	);

-- add_sub
t_prcs_add_sub: PROCESS
BEGIN
	add_sub <= '0';
	WAIT FOR 200000 ps;
	add_sub <= 'H';
	WAIT FOR 300000 ps;
	add_sub <= '0';
WAIT;
END PROCESS t_prcs_add_sub;

-- cin
t_prcs_cin: PROCESS
BEGIN
	cin <= '0';
	WAIT FOR 400000 ps;
	cin <= 'H';
	WAIT FOR 300000 ps;
	cin <= '0';
WAIT;
END PROCESS t_prcs_cin;
-- dataa[15]
t_prcs_dataa_15: PROCESS
BEGIN
	dataa(15) <= '0';
	WAIT FOR 300000 ps;
	dataa(15) <= '1';
	WAIT FOR 100000 ps;
	dataa(15) <= '0';
	WAIT FOR 100000 ps;
	dataa(15) <= '1';
	WAIT FOR 400000 ps;
	dataa(15) <= '0';
WAIT;
END PROCESS t_prcs_dataa_15;
-- dataa[14]
t_prcs_dataa_14: PROCESS
BEGIN
	dataa(14) <= '1';
	WAIT FOR 100000 ps;
	dataa(14) <= '0';
	WAIT FOR 100000 ps;
	dataa(14) <= '1';
	WAIT FOR 100000 ps;
	dataa(14) <= '0';
	WAIT FOR 500000 ps;
	dataa(14) <= '1';
	WAIT FOR 100000 ps;
	dataa(14) <= '0';
WAIT;
END PROCESS t_prcs_dataa_14;
-- dataa[13]
t_prcs_dataa_13: PROCESS
BEGIN
	dataa(13) <= '1';
	WAIT FOR 100000 ps;
	dataa(13) <= '0';
	WAIT FOR 100000 ps;
	dataa(13) <= '1';
	WAIT FOR 100000 ps;
	dataa(13) <= '0';
	WAIT FOR 200000 ps;
	dataa(13) <= '1';
	WAIT FOR 100000 ps;
	dataa(13) <= '0';
	WAIT FOR 100000 ps;
	dataa(13) <= '1';
	WAIT FOR 200000 ps;
	dataa(13) <= '0';
WAIT;
END PROCESS t_prcs_dataa_13;
-- dataa[12]
t_prcs_dataa_12: PROCESS
BEGIN
	dataa(12) <= '0';
	WAIT FOR 400000 ps;
	dataa(12) <= '1';
	WAIT FOR 100000 ps;
	dataa(12) <= '0';
WAIT;
END PROCESS t_prcs_dataa_12;
-- dataa[11]
t_prcs_dataa_11: PROCESS
BEGIN
	dataa(11) <= '0';
	WAIT FOR 200000 ps;
	dataa(11) <= '1';
	WAIT FOR 400000 ps;
	dataa(11) <= '0';
	WAIT FOR 200000 ps;
	dataa(11) <= '1';
WAIT;
END PROCESS t_prcs_dataa_11;
-- dataa[10]
t_prcs_dataa_10: PROCESS
BEGIN
	dataa(10) <= '1';
	WAIT FOR 300000 ps;
	dataa(10) <= '0';
	WAIT FOR 200000 ps;
	dataa(10) <= '1';
WAIT;
END PROCESS t_prcs_dataa_10;
-- dataa[9]
t_prcs_dataa_9: PROCESS
BEGIN
	dataa(9) <= '0';
	WAIT FOR 100000 ps;
	dataa(9) <= '1';
	WAIT FOR 100000 ps;
	dataa(9) <= '0';
	WAIT FOR 100000 ps;
	dataa(9) <= '1';
	WAIT FOR 200000 ps;
	dataa(9) <= '0';
	WAIT FOR 100000 ps;
	dataa(9) <= '1';
	WAIT FOR 200000 ps;
	dataa(9) <= '0';
WAIT;
END PROCESS t_prcs_dataa_9;
-- dataa[8]
t_prcs_dataa_8: PROCESS
BEGIN
	dataa(8) <= '0';
	WAIT FOR 200000 ps;
	dataa(8) <= '1';
	WAIT FOR 200000 ps;
	dataa(8) <= '0';
	WAIT FOR 100000 ps;
	dataa(8) <= '1';
	WAIT FOR 100000 ps;
	dataa(8) <= '0';
	WAIT FOR 100000 ps;
	dataa(8) <= '1';
	WAIT FOR 200000 ps;
	dataa(8) <= '0';
WAIT;
END PROCESS t_prcs_dataa_8;
-- dataa[7]
t_prcs_dataa_7: PROCESS
BEGIN
	dataa(7) <= '1';
	WAIT FOR 100000 ps;
	dataa(7) <= '0';
	WAIT FOR 400000 ps;
	dataa(7) <= '1';
	WAIT FOR 400000 ps;
	dataa(7) <= '0';
WAIT;
END PROCESS t_prcs_dataa_7;
-- dataa[6]
t_prcs_dataa_6: PROCESS
BEGIN
	dataa(6) <= '0';
	WAIT FOR 100000 ps;
	dataa(6) <= '1';
	WAIT FOR 200000 ps;
	dataa(6) <= '0';
	WAIT FOR 400000 ps;
	dataa(6) <= '1';
	WAIT FOR 100000 ps;
	dataa(6) <= '0';
WAIT;
END PROCESS t_prcs_dataa_6;
-- dataa[5]
t_prcs_dataa_5: PROCESS
BEGIN
	dataa(5) <= '0';
	WAIT FOR 200000 ps;
	dataa(5) <= '1';
	WAIT FOR 400000 ps;
	dataa(5) <= '0';
WAIT;
END PROCESS t_prcs_dataa_5;
-- dataa[4]
t_prcs_dataa_4: PROCESS
BEGIN
	dataa(4) <= '1';
	WAIT FOR 100000 ps;
	dataa(4) <= '0';
	WAIT FOR 100000 ps;
	dataa(4) <= '1';
	WAIT FOR 100000 ps;
	dataa(4) <= '0';
	WAIT FOR 200000 ps;
	dataa(4) <= '1';
	WAIT FOR 100000 ps;
	dataa(4) <= '0';
WAIT;
END PROCESS t_prcs_dataa_4;
-- dataa[3]
t_prcs_dataa_3: PROCESS
BEGIN
	dataa(3) <= '1';
	WAIT FOR 100000 ps;
	dataa(3) <= '0';
	WAIT FOR 300000 ps;
	dataa(3) <= '1';
	WAIT FOR 100000 ps;
	dataa(3) <= '0';
	WAIT FOR 200000 ps;
	dataa(3) <= '1';
WAIT;
END PROCESS t_prcs_dataa_3;
-- dataa[2]
t_prcs_dataa_2: PROCESS
BEGIN
	dataa(2) <= '0';
	WAIT FOR 100000 ps;
	dataa(2) <= '1';
	WAIT FOR 600000 ps;
	dataa(2) <= '0';
	WAIT FOR 100000 ps;
	dataa(2) <= '1';
	WAIT FOR 100000 ps;
	dataa(2) <= '0';
WAIT;
END PROCESS t_prcs_dataa_2;
-- dataa[1]
t_prcs_dataa_1: PROCESS
BEGIN
	dataa(1) <= '0';
	WAIT FOR 100000 ps;
	dataa(1) <= '1';
	WAIT FOR 100000 ps;
	dataa(1) <= '0';
	WAIT FOR 200000 ps;
	dataa(1) <= '1';
	WAIT FOR 200000 ps;
	dataa(1) <= '0';
	WAIT FOR 100000 ps;
	dataa(1) <= '1';
	WAIT FOR 100000 ps;
	dataa(1) <= '0';
	WAIT FOR 100000 ps;
	dataa(1) <= '1';
WAIT;
END PROCESS t_prcs_dataa_1;
-- dataa[0]
t_prcs_dataa_0: PROCESS
BEGIN
	dataa(0) <= '1';
	WAIT FOR 100000 ps;
	dataa(0) <= '0';
	WAIT FOR 400000 ps;
	dataa(0) <= '1';
	WAIT FOR 100000 ps;
	dataa(0) <= '0';
	WAIT FOR 200000 ps;
	dataa(0) <= '1';
	WAIT FOR 100000 ps;
	dataa(0) <= '0';
WAIT;
END PROCESS t_prcs_dataa_0;
-- datab[15]
t_prcs_datab_15: PROCESS
BEGIN
	datab(15) <= '0';
	WAIT FOR 100000 ps;
	datab(15) <= '1';
	WAIT FOR 400000 ps;
	datab(15) <= '0';
	WAIT FOR 200000 ps;
	datab(15) <= '1';
	WAIT FOR 100000 ps;
	datab(15) <= '0';
WAIT;
END PROCESS t_prcs_datab_15;
-- datab[14]
t_prcs_datab_14: PROCESS
BEGIN
	datab(14) <= '0';
	WAIT FOR 700000 ps;
	datab(14) <= '1';
	WAIT FOR 100000 ps;
	datab(14) <= '0';
WAIT;
END PROCESS t_prcs_datab_14;
-- datab[13]
t_prcs_datab_13: PROCESS
BEGIN
	datab(13) <= '0';
	WAIT FOR 100000 ps;
	datab(13) <= '1';
	WAIT FOR 200000 ps;
	datab(13) <= '0';
	WAIT FOR 300000 ps;
	datab(13) <= '1';
	WAIT FOR 100000 ps;
	datab(13) <= '0';
WAIT;
END PROCESS t_prcs_datab_13;
-- datab[12]
t_prcs_datab_12: PROCESS
BEGIN
	datab(12) <= '0';
	WAIT FOR 100000 ps;
	datab(12) <= '1';
	WAIT FOR 200000 ps;
	datab(12) <= '0';
	WAIT FOR 200000 ps;
	datab(12) <= '1';
	WAIT FOR 200000 ps;
	datab(12) <= '0';
	WAIT FOR 100000 ps;
	datab(12) <= '1';
	WAIT FOR 100000 ps;
	datab(12) <= '0';
WAIT;
END PROCESS t_prcs_datab_12;
-- datab[11]
t_prcs_datab_11: PROCESS
BEGIN
	datab(11) <= '0';
	WAIT FOR 700000 ps;
	datab(11) <= '1';
WAIT;
END PROCESS t_prcs_datab_11;
-- datab[10]
t_prcs_datab_10: PROCESS
BEGIN
	datab(10) <= '0';
	WAIT FOR 100000 ps;
	datab(10) <= '1';
	WAIT FOR 100000 ps;
	datab(10) <= '0';
	WAIT FOR 200000 ps;
	datab(10) <= '1';
WAIT;
END PROCESS t_prcs_datab_10;
-- datab[9]
t_prcs_datab_9: PROCESS
BEGIN
	datab(9) <= '0';
	WAIT FOR 100000 ps;
	datab(9) <= '1';
	WAIT FOR 100000 ps;
	datab(9) <= '0';
	WAIT FOR 100000 ps;
	datab(9) <= '1';
	WAIT FOR 100000 ps;
	datab(9) <= '0';
	WAIT FOR 100000 ps;
	datab(9) <= '1';
	WAIT FOR 100000 ps;
	datab(9) <= '0';
	WAIT FOR 300000 ps;
	datab(9) <= '1';
WAIT;
END PROCESS t_prcs_datab_9;
-- datab[8]
t_prcs_datab_8: PROCESS
BEGIN
	datab(8) <= '0';
	WAIT FOR 100000 ps;
	datab(8) <= '1';
	WAIT FOR 300000 ps;
	datab(8) <= '0';
	WAIT FOR 300000 ps;
	datab(8) <= '1';
WAIT;
END PROCESS t_prcs_datab_8;
-- datab[7]
t_prcs_datab_7: PROCESS
BEGIN
	datab(7) <= '1';
	WAIT FOR 100000 ps;
	datab(7) <= '0';
	WAIT FOR 100000 ps;
	datab(7) <= '1';
	WAIT FOR 100000 ps;
	datab(7) <= '0';
	WAIT FOR 100000 ps;
	datab(7) <= '1';
	WAIT FOR 100000 ps;
	datab(7) <= '0';
	WAIT FOR 300000 ps;
	datab(7) <= '1';
	WAIT FOR 100000 ps;
	datab(7) <= '0';
WAIT;
END PROCESS t_prcs_datab_7;
-- datab[6]
t_prcs_datab_6: PROCESS
BEGIN
	datab(6) <= '0';
	WAIT FOR 200000 ps;
	datab(6) <= '1';
	WAIT FOR 100000 ps;
	datab(6) <= '0';
	WAIT FOR 100000 ps;
	datab(6) <= '1';
	WAIT FOR 200000 ps;
	datab(6) <= '0';
	WAIT FOR 100000 ps;
	datab(6) <= '1';
	WAIT FOR 100000 ps;
	datab(6) <= '0';
	WAIT FOR 100000 ps;
	datab(6) <= '1';
WAIT;
END PROCESS t_prcs_datab_6;
-- datab[5]
t_prcs_datab_5: PROCESS
BEGIN
	datab(5) <= '1';
	WAIT FOR 100000 ps;
	datab(5) <= '0';
	WAIT FOR 100000 ps;
	datab(5) <= '1';
	WAIT FOR 200000 ps;
	datab(5) <= '0';
	WAIT FOR 100000 ps;
	datab(5) <= '1';
	WAIT FOR 100000 ps;
	datab(5) <= '0';
	WAIT FOR 300000 ps;
	datab(5) <= '1';
WAIT;
END PROCESS t_prcs_datab_5;
-- datab[4]
t_prcs_datab_4: PROCESS
BEGIN
	datab(4) <= '0';
	WAIT FOR 200000 ps;
	datab(4) <= '1';
	WAIT FOR 500000 ps;
	datab(4) <= '0';
	WAIT FOR 200000 ps;
	datab(4) <= '1';
WAIT;
END PROCESS t_prcs_datab_4;
-- datab[3]
t_prcs_datab_3: PROCESS
BEGIN
	datab(3) <= '0';
	WAIT FOR 100000 ps;
	datab(3) <= '1';
	WAIT FOR 300000 ps;
	datab(3) <= '0';
	WAIT FOR 100000 ps;
	datab(3) <= '1';
	WAIT FOR 300000 ps;
	datab(3) <= '0';
WAIT;
END PROCESS t_prcs_datab_3;
-- datab[2]
t_prcs_datab_2: PROCESS
BEGIN
	datab(2) <= '1';
	WAIT FOR 100000 ps;
	datab(2) <= '0';
	WAIT FOR 100000 ps;
	datab(2) <= '1';
	WAIT FOR 200000 ps;
	datab(2) <= '0';
	WAIT FOR 100000 ps;
	datab(2) <= '1';
	WAIT FOR 100000 ps;
	datab(2) <= '0';
	WAIT FOR 200000 ps;
	datab(2) <= '1';
WAIT;
END PROCESS t_prcs_datab_2;
-- datab[1]
t_prcs_datab_1: PROCESS
BEGIN
	datab(1) <= '1';
	WAIT FOR 100000 ps;
	datab(1) <= '0';
	WAIT FOR 200000 ps;
	datab(1) <= '1';
	WAIT FOR 300000 ps;
	datab(1) <= '0';
	WAIT FOR 200000 ps;
	datab(1) <= '1';
WAIT;
END PROCESS t_prcs_datab_1;
-- datab[0]
t_prcs_datab_0: PROCESS
BEGIN
	datab(0) <= '1';
	WAIT FOR 100000 ps;
	datab(0) <= '0';
	WAIT FOR 100000 ps;
	datab(0) <= '1';
	WAIT FOR 100000 ps;
	datab(0) <= '0';
	WAIT FOR 300000 ps;
	datab(0) <= '1';
	WAIT FOR 200000 ps;
	datab(0) <= '0';
WAIT;
END PROCESS t_prcs_datab_0;
END ALU_arch;
