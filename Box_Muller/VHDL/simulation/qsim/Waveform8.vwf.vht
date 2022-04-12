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
-- Generated on "04/12/2022 18:37:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          addressing_unit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY addressing_unit_vhd_vec_tst IS
END addressing_unit_vhd_vec_tst;
ARCHITECTURE addressing_unit_arch OF addressing_unit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL L : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL U_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL w : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT addressing_unit
	PORT (
	L : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	U_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	w : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : addressing_unit
	PORT MAP (
-- list connections between master ports and signals
	L => L,
	U_in => U_in,
	w => w
	);
-- U_in[31]
t_prcs_U_in_31: PROCESS
BEGIN
	U_in(31) <= '0';
	WAIT FOR 400000 ps;
	U_in(31) <= '1';
WAIT;
END PROCESS t_prcs_U_in_31;
-- U_in[30]
t_prcs_U_in_30: PROCESS
BEGIN
	U_in(30) <= '1';
	WAIT FOR 400000 ps;
	U_in(30) <= '0';
	WAIT FOR 400000 ps;
	U_in(30) <= '1';
WAIT;
END PROCESS t_prcs_U_in_30;
-- U_in[29]
t_prcs_U_in_29: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		U_in(29) <= '0';
		WAIT FOR 200000 ps;
		U_in(29) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	U_in(29) <= '0';
WAIT;
END PROCESS t_prcs_U_in_29;
-- U_in[28]
t_prcs_U_in_28: PROCESS
BEGIN
LOOP
	U_in(28) <= '0';
	WAIT FOR 100000 ps;
	U_in(28) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_U_in_28;
-- U_in[27]
t_prcs_U_in_27: PROCESS
BEGIN
	U_in(27) <= '0';
WAIT;
END PROCESS t_prcs_U_in_27;
-- U_in[26]
t_prcs_U_in_26: PROCESS
BEGIN
	U_in(26) <= '0';
WAIT;
END PROCESS t_prcs_U_in_26;
-- U_in[25]
t_prcs_U_in_25: PROCESS
BEGIN
	U_in(25) <= '0';
WAIT;
END PROCESS t_prcs_U_in_25;
-- U_in[24]
t_prcs_U_in_24: PROCESS
BEGIN
	U_in(24) <= '0';
WAIT;
END PROCESS t_prcs_U_in_24;
-- U_in[23]
t_prcs_U_in_23: PROCESS
BEGIN
	U_in(23) <= '0';
WAIT;
END PROCESS t_prcs_U_in_23;
-- U_in[22]
t_prcs_U_in_22: PROCESS
BEGIN
	U_in(22) <= '0';
WAIT;
END PROCESS t_prcs_U_in_22;
-- U_in[21]
t_prcs_U_in_21: PROCESS
BEGIN
	U_in(21) <= '0';
WAIT;
END PROCESS t_prcs_U_in_21;
-- U_in[20]
t_prcs_U_in_20: PROCESS
BEGIN
	U_in(20) <= '0';
WAIT;
END PROCESS t_prcs_U_in_20;
-- U_in[19]
t_prcs_U_in_19: PROCESS
BEGIN
	U_in(19) <= '0';
WAIT;
END PROCESS t_prcs_U_in_19;
-- U_in[18]
t_prcs_U_in_18: PROCESS
BEGIN
	U_in(18) <= '0';
WAIT;
END PROCESS t_prcs_U_in_18;
-- U_in[17]
t_prcs_U_in_17: PROCESS
BEGIN
	U_in(17) <= '0';
WAIT;
END PROCESS t_prcs_U_in_17;
-- U_in[16]
t_prcs_U_in_16: PROCESS
BEGIN
	U_in(16) <= '0';
WAIT;
END PROCESS t_prcs_U_in_16;
-- U_in[15]
t_prcs_U_in_15: PROCESS
BEGIN
	U_in(15) <= '0';
WAIT;
END PROCESS t_prcs_U_in_15;
-- U_in[14]
t_prcs_U_in_14: PROCESS
BEGIN
	U_in(14) <= '0';
WAIT;
END PROCESS t_prcs_U_in_14;
-- U_in[13]
t_prcs_U_in_13: PROCESS
BEGIN
	U_in(13) <= '0';
WAIT;
END PROCESS t_prcs_U_in_13;
-- U_in[12]
t_prcs_U_in_12: PROCESS
BEGIN
	U_in(12) <= '0';
WAIT;
END PROCESS t_prcs_U_in_12;
-- U_in[11]
t_prcs_U_in_11: PROCESS
BEGIN
	U_in(11) <= '0';
WAIT;
END PROCESS t_prcs_U_in_11;
-- U_in[10]
t_prcs_U_in_10: PROCESS
BEGIN
	U_in(10) <= '0';
WAIT;
END PROCESS t_prcs_U_in_10;
-- U_in[9]
t_prcs_U_in_9: PROCESS
BEGIN
	U_in(9) <= '0';
WAIT;
END PROCESS t_prcs_U_in_9;
-- U_in[8]
t_prcs_U_in_8: PROCESS
BEGIN
	U_in(8) <= '0';
WAIT;
END PROCESS t_prcs_U_in_8;
-- U_in[7]
t_prcs_U_in_7: PROCESS
BEGIN
	U_in(7) <= '0';
WAIT;
END PROCESS t_prcs_U_in_7;
-- U_in[6]
t_prcs_U_in_6: PROCESS
BEGIN
	U_in(6) <= '0';
WAIT;
END PROCESS t_prcs_U_in_6;
-- U_in[5]
t_prcs_U_in_5: PROCESS
BEGIN
	U_in(5) <= '0';
WAIT;
END PROCESS t_prcs_U_in_5;
-- U_in[4]
t_prcs_U_in_4: PROCESS
BEGIN
	U_in(4) <= '0';
WAIT;
END PROCESS t_prcs_U_in_4;
-- U_in[3]
t_prcs_U_in_3: PROCESS
BEGIN
	U_in(3) <= '0';
WAIT;
END PROCESS t_prcs_U_in_3;
-- U_in[2]
t_prcs_U_in_2: PROCESS
BEGIN
	U_in(2) <= '0';
WAIT;
END PROCESS t_prcs_U_in_2;
-- U_in[1]
t_prcs_U_in_1: PROCESS
BEGIN
	U_in(1) <= '0';
WAIT;
END PROCESS t_prcs_U_in_1;
-- U_in[0]
t_prcs_U_in_0: PROCESS
BEGIN
	U_in(0) <= '0';
WAIT;
END PROCESS t_prcs_U_in_0;
END addressing_unit_arch;
