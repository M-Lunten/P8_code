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
-- Generated on "05/10/2022 22:45:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          chi_corr
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY chi_corr_vhd_vec_tst IS
END chi_corr_vhd_vec_tst;
ARCHITECTURE chi_corr_arch OF chi_corr_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL ctrl_sig : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL G : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL x1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT chi_corr
	PORT (
	clk : IN STD_LOGIC;
	ctrl_sig : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	G : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	x1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : chi_corr
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	ctrl_sig => ctrl_sig,
	G => G,
	x1 => x1
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 20000 ps;
	clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- ctrl_sig[7]
t_prcs_ctrl_sig_7: PROCESS
BEGIN
	ctrl_sig(7) <= '1';
	WAIT FOR 80000 ps;
	ctrl_sig(7) <= '0';
WAIT;
END PROCESS t_prcs_ctrl_sig_7;
-- ctrl_sig[6]
t_prcs_ctrl_sig_6: PROCESS
BEGIN
	ctrl_sig(6) <= '1';
	WAIT FOR 80000 ps;
	ctrl_sig(6) <= '0';
WAIT;
END PROCESS t_prcs_ctrl_sig_6;
-- ctrl_sig[5]
t_prcs_ctrl_sig_5: PROCESS
BEGIN
	ctrl_sig(5) <= '1';
	WAIT FOR 80000 ps;
	ctrl_sig(5) <= '0';
WAIT;
END PROCESS t_prcs_ctrl_sig_5;
-- ctrl_sig[4]
t_prcs_ctrl_sig_4: PROCESS
BEGIN
	ctrl_sig(4) <= '1';
	WAIT FOR 80000 ps;
	ctrl_sig(4) <= '0';
	WAIT FOR 640000 ps;
	ctrl_sig(4) <= '1';
WAIT;
END PROCESS t_prcs_ctrl_sig_4;
-- ctrl_sig[3]
t_prcs_ctrl_sig_3: PROCESS
BEGIN
	ctrl_sig(3) <= '1';
	WAIT FOR 80000 ps;
	ctrl_sig(3) <= '0';
	WAIT FOR 320000 ps;
	ctrl_sig(3) <= '1';
	WAIT FOR 320000 ps;
	ctrl_sig(3) <= '0';
WAIT;
END PROCESS t_prcs_ctrl_sig_3;
-- ctrl_sig[2]
t_prcs_ctrl_sig_2: PROCESS
BEGIN
	ctrl_sig(2) <= '1';
	WAIT FOR 80000 ps;
	FOR i IN 1 TO 2
	LOOP
		ctrl_sig(2) <= '0';
		WAIT FOR 160000 ps;
		ctrl_sig(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	ctrl_sig(2) <= '0';
	WAIT FOR 160000 ps;
	ctrl_sig(2) <= '1';
WAIT;
END PROCESS t_prcs_ctrl_sig_2;
-- ctrl_sig[1]
t_prcs_ctrl_sig_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		ctrl_sig(1) <= '1';
		WAIT FOR 80000 ps;
		ctrl_sig(1) <= '0';
		WAIT FOR 80000 ps;
	END LOOP;
	ctrl_sig(1) <= '1';
WAIT;
END PROCESS t_prcs_ctrl_sig_1;
-- ctrl_sig[0]
t_prcs_ctrl_sig_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		ctrl_sig(0) <= '0';
		WAIT FOR 40000 ps;
		ctrl_sig(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	ctrl_sig(0) <= '0';
WAIT;
END PROCESS t_prcs_ctrl_sig_0;
-- x1[15]
t_prcs_x1_15: PROCESS
BEGIN
	x1(15) <= '0';
WAIT;
END PROCESS t_prcs_x1_15;
-- x1[14]
t_prcs_x1_14: PROCESS
BEGIN
	x1(14) <= '0';
WAIT;
END PROCESS t_prcs_x1_14;
-- x1[13]
t_prcs_x1_13: PROCESS
BEGIN
	x1(13) <= '0';
WAIT;
END PROCESS t_prcs_x1_13;
-- x1[12]
t_prcs_x1_12: PROCESS
BEGIN
	x1(12) <= '0';
WAIT;
END PROCESS t_prcs_x1_12;
-- x1[11]
t_prcs_x1_11: PROCESS
BEGIN
	x1(11) <= '0';
WAIT;
END PROCESS t_prcs_x1_11;
-- x1[10]
t_prcs_x1_10: PROCESS
BEGIN
	x1(10) <= '0';
WAIT;
END PROCESS t_prcs_x1_10;
-- x1[9]
t_prcs_x1_9: PROCESS
BEGIN
	x1(9) <= '0';
WAIT;
END PROCESS t_prcs_x1_9;
-- x1[8]
t_prcs_x1_8: PROCESS
BEGIN
	x1(8) <= '0';
WAIT;
END PROCESS t_prcs_x1_8;
-- x1[7]
t_prcs_x1_7: PROCESS
BEGIN
	x1(7) <= '0';
WAIT;
END PROCESS t_prcs_x1_7;
-- x1[6]
t_prcs_x1_6: PROCESS
BEGIN
	x1(6) <= '0';
WAIT;
END PROCESS t_prcs_x1_6;
-- x1[5]
t_prcs_x1_5: PROCESS
BEGIN
	x1(5) <= '0';
WAIT;
END PROCESS t_prcs_x1_5;
-- x1[4]
t_prcs_x1_4: PROCESS
BEGIN
	x1(4) <= '0';
WAIT;
END PROCESS t_prcs_x1_4;
-- x1[3]
t_prcs_x1_3: PROCESS
BEGIN
	x1(3) <= '0';
WAIT;
END PROCESS t_prcs_x1_3;
-- x1[2]
t_prcs_x1_2: PROCESS
BEGIN
	x1(2) <= '0';
WAIT;
END PROCESS t_prcs_x1_2;
-- x1[1]
t_prcs_x1_1: PROCESS
BEGIN
	x1(1) <= '0';
WAIT;
END PROCESS t_prcs_x1_1;
-- x1[0]
t_prcs_x1_0: PROCESS
BEGIN
	x1(0) <= '0';
WAIT;
END PROCESS t_prcs_x1_0;
END chi_corr_arch;
