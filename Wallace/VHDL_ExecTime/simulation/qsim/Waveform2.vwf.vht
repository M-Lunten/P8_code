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
-- Generated on "05/09/2022 12:07:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          transformation
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY transformation_vhd_vec_tst IS
END transformation_vhd_vec_tst;
ARCHITECTURE transformation_arch OF transformation_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Tctrl : STD_LOGIC;
SIGNAL x1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL x1_res : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL x2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL x2_res : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL x3 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL x3_res : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL x4 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL x4_res : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT transformation
	PORT (
	clk : IN STD_LOGIC;
	Tctrl : IN STD_LOGIC;
	x1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	x1_res : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	x2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	x2_res : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	x3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	x3_res : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	x4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	x4_res : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : transformation
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Tctrl => Tctrl,
	x1 => x1,
	x1_res => x1_res,
	x2 => x2,
	x2_res => x2_res,
	x3 => x3,
	x3_res => x3_res,
	x4 => x4,
	x4_res => x4_res
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clk <= '0';
		WAIT FOR 40000 ps;
		clk <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- Tctrl
t_prcs_Tctrl: PROCESS
BEGIN
	Tctrl <= '0';
WAIT;
END PROCESS t_prcs_Tctrl;
-- x1[15]
t_prcs_x1_15: PROCESS
BEGIN
	x1(15) <= '1';
WAIT;
END PROCESS t_prcs_x1_15;
-- x1[14]
t_prcs_x1_14: PROCESS
BEGIN
	x1(14) <= '1';
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
	x1(12) <= '1';
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
	x1(7) <= '1';
WAIT;
END PROCESS t_prcs_x1_7;
-- x1[6]
t_prcs_x1_6: PROCESS
BEGIN
	x1(6) <= '1';
WAIT;
END PROCESS t_prcs_x1_6;
-- x1[5]
t_prcs_x1_5: PROCESS
BEGIN
	x1(5) <= '1';
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
	x1(3) <= '1';
WAIT;
END PROCESS t_prcs_x1_3;
-- x1[2]
t_prcs_x1_2: PROCESS
BEGIN
	x1(2) <= '1';
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
-- x2[15]
t_prcs_x2_15: PROCESS
BEGIN
	x2(15) <= '0';
WAIT;
END PROCESS t_prcs_x2_15;
-- x2[14]
t_prcs_x2_14: PROCESS
BEGIN
	x2(14) <= '0';
WAIT;
END PROCESS t_prcs_x2_14;
-- x2[13]
t_prcs_x2_13: PROCESS
BEGIN
	x2(13) <= '0';
WAIT;
END PROCESS t_prcs_x2_13;
-- x2[12]
t_prcs_x2_12: PROCESS
BEGIN
	x2(12) <= '0';
WAIT;
END PROCESS t_prcs_x2_12;
-- x2[11]
t_prcs_x2_11: PROCESS
BEGIN
	x2(11) <= '0';
WAIT;
END PROCESS t_prcs_x2_11;
-- x2[10]
t_prcs_x2_10: PROCESS
BEGIN
	x2(10) <= '0';
WAIT;
END PROCESS t_prcs_x2_10;
-- x2[9]
t_prcs_x2_9: PROCESS
BEGIN
	x2(9) <= '1';
WAIT;
END PROCESS t_prcs_x2_9;
-- x2[8]
t_prcs_x2_8: PROCESS
BEGIN
	x2(8) <= '0';
WAIT;
END PROCESS t_prcs_x2_8;
-- x2[7]
t_prcs_x2_7: PROCESS
BEGIN
	x2(7) <= '0';
WAIT;
END PROCESS t_prcs_x2_7;
-- x2[6]
t_prcs_x2_6: PROCESS
BEGIN
	x2(6) <= '0';
WAIT;
END PROCESS t_prcs_x2_6;
-- x2[5]
t_prcs_x2_5: PROCESS
BEGIN
	x2(5) <= '0';
WAIT;
END PROCESS t_prcs_x2_5;
-- x2[4]
t_prcs_x2_4: PROCESS
BEGIN
	x2(4) <= '0';
WAIT;
END PROCESS t_prcs_x2_4;
-- x2[3]
t_prcs_x2_3: PROCESS
BEGIN
	x2(3) <= '1';
WAIT;
END PROCESS t_prcs_x2_3;
-- x2[2]
t_prcs_x2_2: PROCESS
BEGIN
	x2(2) <= '1';
WAIT;
END PROCESS t_prcs_x2_2;
-- x2[1]
t_prcs_x2_1: PROCESS
BEGIN
	x2(1) <= '0';
WAIT;
END PROCESS t_prcs_x2_1;
-- x2[0]
t_prcs_x2_0: PROCESS
BEGIN
	x2(0) <= '0';
WAIT;
END PROCESS t_prcs_x2_0;
-- x3[15]
t_prcs_x3_15: PROCESS
BEGIN
	x3(15) <= '0';
WAIT;
END PROCESS t_prcs_x3_15;
-- x3[14]
t_prcs_x3_14: PROCESS
BEGIN
	x3(14) <= '0';
WAIT;
END PROCESS t_prcs_x3_14;
-- x3[13]
t_prcs_x3_13: PROCESS
BEGIN
	x3(13) <= '1';
WAIT;
END PROCESS t_prcs_x3_13;
-- x3[12]
t_prcs_x3_12: PROCESS
BEGIN
	x3(12) <= '1';
WAIT;
END PROCESS t_prcs_x3_12;
-- x3[11]
t_prcs_x3_11: PROCESS
BEGIN
	x3(11) <= '1';
WAIT;
END PROCESS t_prcs_x3_11;
-- x3[10]
t_prcs_x3_10: PROCESS
BEGIN
	x3(10) <= '1';
WAIT;
END PROCESS t_prcs_x3_10;
-- x3[9]
t_prcs_x3_9: PROCESS
BEGIN
	x3(9) <= '0';
WAIT;
END PROCESS t_prcs_x3_9;
-- x3[8]
t_prcs_x3_8: PROCESS
BEGIN
	x3(8) <= '0';
WAIT;
END PROCESS t_prcs_x3_8;
-- x3[7]
t_prcs_x3_7: PROCESS
BEGIN
	x3(7) <= '0';
WAIT;
END PROCESS t_prcs_x3_7;
-- x3[6]
t_prcs_x3_6: PROCESS
BEGIN
	x3(6) <= '0';
WAIT;
END PROCESS t_prcs_x3_6;
-- x3[5]
t_prcs_x3_5: PROCESS
BEGIN
	x3(5) <= '1';
WAIT;
END PROCESS t_prcs_x3_5;
-- x3[4]
t_prcs_x3_4: PROCESS
BEGIN
	x3(4) <= '1';
WAIT;
END PROCESS t_prcs_x3_4;
-- x3[3]
t_prcs_x3_3: PROCESS
BEGIN
	x3(3) <= '0';
WAIT;
END PROCESS t_prcs_x3_3;
-- x3[2]
t_prcs_x3_2: PROCESS
BEGIN
	x3(2) <= '0';
WAIT;
END PROCESS t_prcs_x3_2;
-- x3[1]
t_prcs_x3_1: PROCESS
BEGIN
	x3(1) <= '0';
WAIT;
END PROCESS t_prcs_x3_1;
-- x3[0]
t_prcs_x3_0: PROCESS
BEGIN
	x3(0) <= '1';
WAIT;
END PROCESS t_prcs_x3_0;
-- x4[15]
t_prcs_x4_15: PROCESS
BEGIN
	x4(15) <= '0';
WAIT;
END PROCESS t_prcs_x4_15;
-- x4[14]
t_prcs_x4_14: PROCESS
BEGIN
	x4(14) <= '0';
WAIT;
END PROCESS t_prcs_x4_14;
-- x4[13]
t_prcs_x4_13: PROCESS
BEGIN
	x4(13) <= '0';
WAIT;
END PROCESS t_prcs_x4_13;
-- x4[12]
t_prcs_x4_12: PROCESS
BEGIN
	x4(12) <= '0';
WAIT;
END PROCESS t_prcs_x4_12;
-- x4[11]
t_prcs_x4_11: PROCESS
BEGIN
	x4(11) <= '0';
WAIT;
END PROCESS t_prcs_x4_11;
-- x4[10]
t_prcs_x4_10: PROCESS
BEGIN
	x4(10) <= '0';
WAIT;
END PROCESS t_prcs_x4_10;
-- x4[9]
t_prcs_x4_9: PROCESS
BEGIN
	x4(9) <= '0';
WAIT;
END PROCESS t_prcs_x4_9;
-- x4[8]
t_prcs_x4_8: PROCESS
BEGIN
	x4(8) <= '0';
WAIT;
END PROCESS t_prcs_x4_8;
-- x4[7]
t_prcs_x4_7: PROCESS
BEGIN
	x4(7) <= '0';
WAIT;
END PROCESS t_prcs_x4_7;
-- x4[6]
t_prcs_x4_6: PROCESS
BEGIN
	x4(6) <= '0';
WAIT;
END PROCESS t_prcs_x4_6;
-- x4[5]
t_prcs_x4_5: PROCESS
BEGIN
	x4(5) <= '0';
WAIT;
END PROCESS t_prcs_x4_5;
-- x4[4]
t_prcs_x4_4: PROCESS
BEGIN
	x4(4) <= '1';
WAIT;
END PROCESS t_prcs_x4_4;
-- x4[3]
t_prcs_x4_3: PROCESS
BEGIN
	x4(3) <= '1';
WAIT;
END PROCESS t_prcs_x4_3;
-- x4[2]
t_prcs_x4_2: PROCESS
BEGIN
	x4(2) <= '0';
WAIT;
END PROCESS t_prcs_x4_2;
-- x4[1]
t_prcs_x4_1: PROCESS
BEGIN
	x4(1) <= '0';
WAIT;
END PROCESS t_prcs_x4_1;
-- x4[0]
t_prcs_x4_0: PROCESS
BEGIN
	x4(0) <= '0';
WAIT;
END PROCESS t_prcs_x4_0;
END transformation_arch;
