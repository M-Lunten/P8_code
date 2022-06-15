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
-- Generated on "06/15/2022 13:00:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          histogram_vhdl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY histogram_vhdl_vhd_vec_tst IS
END histogram_vhdl_vhd_vec_tst;
ARCHITECTURE histogram_vhdl_arch OF histogram_vhdl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL halt : STD_LOGIC;
SIGNAL input : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL master_clk : STD_LOGIC;
SIGNAL mux_ctrl : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL out_sum : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT histogram_vhdl
	PORT (
	halt : OUT STD_LOGIC;
	input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	master_clk : IN STD_LOGIC;
	mux_ctrl : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	out_sum : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : histogram_vhdl
	PORT MAP (
-- list connections between master ports and signals
	halt => halt,
	input => input,
	master_clk => master_clk,
	mux_ctrl => mux_ctrl,
	out_sum => out_sum
	);
-- input[15]
t_prcs_input_15: PROCESS
BEGIN
	input(15) <= '0';
WAIT;
END PROCESS t_prcs_input_15;
-- input[14]
t_prcs_input_14: PROCESS
BEGIN
	input(14) <= '0';
WAIT;
END PROCESS t_prcs_input_14;
-- input[13]
t_prcs_input_13: PROCESS
BEGIN
	input(13) <= '0';
WAIT;
END PROCESS t_prcs_input_13;
-- input[12]
t_prcs_input_12: PROCESS
BEGIN
	input(12) <= '0';
WAIT;
END PROCESS t_prcs_input_12;
-- input[11]
t_prcs_input_11: PROCESS
BEGIN
	input(11) <= '0';
WAIT;
END PROCESS t_prcs_input_11;
-- input[10]
t_prcs_input_10: PROCESS
BEGIN
	input(10) <= '0';
WAIT;
END PROCESS t_prcs_input_10;
-- input[9]
t_prcs_input_9: PROCESS
BEGIN
	input(9) <= '0';
WAIT;
END PROCESS t_prcs_input_9;
-- input[8]
t_prcs_input_8: PROCESS
BEGIN
	input(8) <= '0';
WAIT;
END PROCESS t_prcs_input_8;
-- input[7]
t_prcs_input_7: PROCESS
BEGIN
	input(7) <= '0';
WAIT;
END PROCESS t_prcs_input_7;
-- input[6]
t_prcs_input_6: PROCESS
BEGIN
	input(6) <= '0';
WAIT;
END PROCESS t_prcs_input_6;
-- input[5]
t_prcs_input_5: PROCESS
BEGIN
	input(5) <= '0';
WAIT;
END PROCESS t_prcs_input_5;
-- input[4]
t_prcs_input_4: PROCESS
BEGIN
	input(4) <= '0';
WAIT;
END PROCESS t_prcs_input_4;
-- input[3]
t_prcs_input_3: PROCESS
BEGIN
	input(3) <= '0';
WAIT;
END PROCESS t_prcs_input_3;
-- input[2]
t_prcs_input_2: PROCESS
BEGIN
	input(2) <= '0';
WAIT;
END PROCESS t_prcs_input_2;
-- input[1]
t_prcs_input_1: PROCESS
BEGIN
	input(1) <= '0';
WAIT;
END PROCESS t_prcs_input_1;
-- input[0]
t_prcs_input_0: PROCESS
BEGIN
	input(0) <= '0';
WAIT;
END PROCESS t_prcs_input_0;

-- master_clk
t_prcs_master_clk: PROCESS
BEGIN
LOOP
	master_clk <= '0';
	WAIT FOR 10000 ps;
	master_clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_master_clk;
-- mux_ctrl[6]
t_prcs_mux_ctrl_6: PROCESS
BEGIN
	mux_ctrl(6) <= '0';
WAIT;
END PROCESS t_prcs_mux_ctrl_6;
-- mux_ctrl[5]
t_prcs_mux_ctrl_5: PROCESS
BEGIN
	mux_ctrl(5) <= '0';
WAIT;
END PROCESS t_prcs_mux_ctrl_5;
-- mux_ctrl[4]
t_prcs_mux_ctrl_4: PROCESS
BEGIN
	mux_ctrl(4) <= '0';
WAIT;
END PROCESS t_prcs_mux_ctrl_4;
-- mux_ctrl[3]
t_prcs_mux_ctrl_3: PROCESS
BEGIN
	mux_ctrl(3) <= '0';
WAIT;
END PROCESS t_prcs_mux_ctrl_3;
-- mux_ctrl[2]
t_prcs_mux_ctrl_2: PROCESS
BEGIN
	mux_ctrl(2) <= '0';
WAIT;
END PROCESS t_prcs_mux_ctrl_2;
-- mux_ctrl[1]
t_prcs_mux_ctrl_1: PROCESS
BEGIN
	mux_ctrl(1) <= '0';
WAIT;
END PROCESS t_prcs_mux_ctrl_1;
-- mux_ctrl[0]
t_prcs_mux_ctrl_0: PROCESS
BEGIN
	mux_ctrl(0) <= '0';
WAIT;
END PROCESS t_prcs_mux_ctrl_0;
END histogram_vhdl_arch;
