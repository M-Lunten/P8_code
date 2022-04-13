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
-- Generated on "04/13/2022 14:39:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sincos
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sincos_vhd_vec_tst IS
END sincos_vhd_vec_tst;
ARCHITECTURE sincos_arch OF sincos_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL cosOut : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL data : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL i_clock : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL sinOut : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT sincos
	PORT (
	cosOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	data : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	i_clock : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	sinOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : sincos
	PORT MAP (
-- list connections between master ports and signals
	cosOut => cosOut,
	data => data,
	i_clock => i_clock,
	reset => reset,
	sinOut => sinOut
	);
-- data[11]
t_prcs_data_11: PROCESS
BEGIN
	data(11) <= '1';
WAIT;
END PROCESS t_prcs_data_11;
-- data[10]
t_prcs_data_10: PROCESS
BEGIN
	data(10) <= '1';
WAIT;
END PROCESS t_prcs_data_10;
-- data[9]
t_prcs_data_9: PROCESS
BEGIN
	data(9) <= '0';
WAIT;
END PROCESS t_prcs_data_9;
-- data[8]
t_prcs_data_8: PROCESS
BEGIN
	data(8) <= '0';
WAIT;
END PROCESS t_prcs_data_8;
-- data[7]
t_prcs_data_7: PROCESS
BEGIN
	data(7) <= '0';
WAIT;
END PROCESS t_prcs_data_7;
-- data[6]
t_prcs_data_6: PROCESS
BEGIN
	data(6) <= '0';
WAIT;
END PROCESS t_prcs_data_6;
-- data[5]
t_prcs_data_5: PROCESS
BEGIN
	data(5) <= '1';
WAIT;
END PROCESS t_prcs_data_5;
-- data[4]
t_prcs_data_4: PROCESS
BEGIN
	data(4) <= '0';
WAIT;
END PROCESS t_prcs_data_4;
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	data(3) <= '1';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	data(2) <= '0';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
	data(1) <= '1';
WAIT;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
	data(0) <= '1';
WAIT;
END PROCESS t_prcs_data_0;

-- i_clock
t_prcs_i_clock: PROCESS
BEGIN
LOOP
	i_clock <= '0';
	WAIT FOR 10000 ps;
	i_clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_i_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END sincos_arch;
