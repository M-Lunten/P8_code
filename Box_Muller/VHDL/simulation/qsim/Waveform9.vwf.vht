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
-- Generated on "04/12/2022 18:41:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          f_block
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY f_block_vhd_vec_tst IS
END f_block_vhd_vec_tst;
ARCHITECTURE f_block_arch OF f_block_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_in : STD_LOGIC;
SIGNAL f_res : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL U : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT f_block
	PORT (
	clk_in : IN STD_LOGIC;
	f_res : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	U : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : f_block
	PORT MAP (
-- list connections between master ports and signals
	clk_in => clk_in,
	f_res => f_res,
	U => U
	);

-- clk_in
t_prcs_clk_in: PROCESS
BEGIN
LOOP
	clk_in <= '0';
	WAIT FOR 10000 ps;
	clk_in <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_in;
-- U[31]
t_prcs_U_31: PROCESS
BEGIN
	U(31) <= '0';
WAIT;
END PROCESS t_prcs_U_31;
-- U[30]
t_prcs_U_30: PROCESS
BEGIN
	U(30) <= '1';
WAIT;
END PROCESS t_prcs_U_30;
-- U[29]
t_prcs_U_29: PROCESS
BEGIN
	U(29) <= '0';
WAIT;
END PROCESS t_prcs_U_29;
-- U[28]
t_prcs_U_28: PROCESS
BEGIN
	U(28) <= '0';
WAIT;
END PROCESS t_prcs_U_28;
-- U[27]
t_prcs_U_27: PROCESS
BEGIN
	U(27) <= '0';
WAIT;
END PROCESS t_prcs_U_27;
-- U[26]
t_prcs_U_26: PROCESS
BEGIN
	U(26) <= '0';
WAIT;
END PROCESS t_prcs_U_26;
-- U[25]
t_prcs_U_25: PROCESS
BEGIN
	U(25) <= '0';
WAIT;
END PROCESS t_prcs_U_25;
-- U[24]
t_prcs_U_24: PROCESS
BEGIN
	U(24) <= '0';
WAIT;
END PROCESS t_prcs_U_24;
-- U[23]
t_prcs_U_23: PROCESS
BEGIN
	U(23) <= '0';
WAIT;
END PROCESS t_prcs_U_23;
-- U[22]
t_prcs_U_22: PROCESS
BEGIN
	U(22) <= '0';
WAIT;
END PROCESS t_prcs_U_22;
-- U[21]
t_prcs_U_21: PROCESS
BEGIN
	U(21) <= '0';
WAIT;
END PROCESS t_prcs_U_21;
-- U[20]
t_prcs_U_20: PROCESS
BEGIN
	U(20) <= '0';
WAIT;
END PROCESS t_prcs_U_20;
-- U[19]
t_prcs_U_19: PROCESS
BEGIN
	U(19) <= '0';
WAIT;
END PROCESS t_prcs_U_19;
-- U[18]
t_prcs_U_18: PROCESS
BEGIN
	U(18) <= '0';
WAIT;
END PROCESS t_prcs_U_18;
-- U[17]
t_prcs_U_17: PROCESS
BEGIN
	U(17) <= '0';
WAIT;
END PROCESS t_prcs_U_17;
-- U[16]
t_prcs_U_16: PROCESS
BEGIN
	U(16) <= '0';
WAIT;
END PROCESS t_prcs_U_16;
-- U[15]
t_prcs_U_15: PROCESS
BEGIN
	U(15) <= '0';
WAIT;
END PROCESS t_prcs_U_15;
-- U[14]
t_prcs_U_14: PROCESS
BEGIN
	U(14) <= '0';
WAIT;
END PROCESS t_prcs_U_14;
-- U[13]
t_prcs_U_13: PROCESS
BEGIN
	U(13) <= '0';
WAIT;
END PROCESS t_prcs_U_13;
-- U[12]
t_prcs_U_12: PROCESS
BEGIN
	U(12) <= '0';
WAIT;
END PROCESS t_prcs_U_12;
-- U[11]
t_prcs_U_11: PROCESS
BEGIN
	U(11) <= '0';
WAIT;
END PROCESS t_prcs_U_11;
-- U[10]
t_prcs_U_10: PROCESS
BEGIN
	U(10) <= '0';
WAIT;
END PROCESS t_prcs_U_10;
-- U[9]
t_prcs_U_9: PROCESS
BEGIN
	U(9) <= '0';
WAIT;
END PROCESS t_prcs_U_9;
-- U[8]
t_prcs_U_8: PROCESS
BEGIN
	U(8) <= '0';
WAIT;
END PROCESS t_prcs_U_8;
-- U[7]
t_prcs_U_7: PROCESS
BEGIN
	U(7) <= '0';
WAIT;
END PROCESS t_prcs_U_7;
-- U[6]
t_prcs_U_6: PROCESS
BEGIN
	U(6) <= '0';
WAIT;
END PROCESS t_prcs_U_6;
-- U[5]
t_prcs_U_5: PROCESS
BEGIN
	U(5) <= '0';
WAIT;
END PROCESS t_prcs_U_5;
-- U[4]
t_prcs_U_4: PROCESS
BEGIN
	U(4) <= '0';
WAIT;
END PROCESS t_prcs_U_4;
-- U[3]
t_prcs_U_3: PROCESS
BEGIN
	U(3) <= '0';
WAIT;
END PROCESS t_prcs_U_3;
-- U[2]
t_prcs_U_2: PROCESS
BEGIN
	U(2) <= '0';
WAIT;
END PROCESS t_prcs_U_2;
-- U[1]
t_prcs_U_1: PROCESS
BEGIN
	U(1) <= '0';
WAIT;
END PROCESS t_prcs_U_1;
-- U[0]
t_prcs_U_0: PROCESS
BEGIN
	U(0) <= '0';
WAIT;
END PROCESS t_prcs_U_0;
END f_block_arch;
