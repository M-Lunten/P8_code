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
-- Generated on "05/05/2022 14:36:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          addr_gen
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY addr_gen_vhd_vec_tst IS
END addr_gen_vhd_vec_tst;
ARCHITECTURE addr_gen_arch OF addr_gen_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr_1 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL addr_2 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL mask : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL MUX_ctrl : STD_LOGIC;
SIGNAL origin : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL stride : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT addr_gen
	PORT (
	addr_1 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	addr_2 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	clk : IN STD_LOGIC;
	mask : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	MUX_ctrl : IN STD_LOGIC;
	origin : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	stride : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : addr_gen
	PORT MAP (
-- list connections between master ports and signals
	addr_1 => addr_1,
	addr_2 => addr_2,
	clk => clk,
	mask => mask,
	MUX_ctrl => MUX_ctrl,
	origin => origin,
	stride => stride
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- mask[8]
t_prcs_mask_8: PROCESS
BEGIN
	mask(8) <= '0';
WAIT;
END PROCESS t_prcs_mask_8;
-- mask[7]
t_prcs_mask_7: PROCESS
BEGIN
	mask(7) <= '0';
WAIT;
END PROCESS t_prcs_mask_7;
-- mask[6]
t_prcs_mask_6: PROCESS
BEGIN
	mask(6) <= '0';
WAIT;
END PROCESS t_prcs_mask_6;
-- mask[5]
t_prcs_mask_5: PROCESS
BEGIN
	mask(5) <= '0';
WAIT;
END PROCESS t_prcs_mask_5;
-- mask[4]
t_prcs_mask_4: PROCESS
BEGIN
	mask(4) <= '0';
WAIT;
END PROCESS t_prcs_mask_4;
-- mask[3]
t_prcs_mask_3: PROCESS
BEGIN
	mask(3) <= '0';
WAIT;
END PROCESS t_prcs_mask_3;
-- mask[2]
t_prcs_mask_2: PROCESS
BEGIN
	mask(2) <= '0';
WAIT;
END PROCESS t_prcs_mask_2;
-- mask[1]
t_prcs_mask_1: PROCESS
BEGIN
	mask(1) <= '0';
WAIT;
END PROCESS t_prcs_mask_1;
-- mask[0]
t_prcs_mask_0: PROCESS
BEGIN
	mask(0) <= '0';
WAIT;
END PROCESS t_prcs_mask_0;

-- MUX_ctrl
t_prcs_MUX_ctrl: PROCESS
BEGIN
	MUX_ctrl <= 'L';
	WAIT FOR 150000 ps;
	MUX_ctrl <= 'H';
WAIT;
END PROCESS t_prcs_MUX_ctrl;
-- origin[8]
t_prcs_origin_8: PROCESS
BEGIN
	origin(8) <= '0';
WAIT;
END PROCESS t_prcs_origin_8;
-- origin[7]
t_prcs_origin_7: PROCESS
BEGIN
	origin(7) <= '1';
WAIT;
END PROCESS t_prcs_origin_7;
-- origin[6]
t_prcs_origin_6: PROCESS
BEGIN
	origin(6) <= '0';
WAIT;
END PROCESS t_prcs_origin_6;
-- origin[5]
t_prcs_origin_5: PROCESS
BEGIN
	origin(5) <= '0';
WAIT;
END PROCESS t_prcs_origin_5;
-- origin[4]
t_prcs_origin_4: PROCESS
BEGIN
	origin(4) <= '0';
WAIT;
END PROCESS t_prcs_origin_4;
-- origin[3]
t_prcs_origin_3: PROCESS
BEGIN
	origin(3) <= '0';
WAIT;
END PROCESS t_prcs_origin_3;
-- origin[2]
t_prcs_origin_2: PROCESS
BEGIN
	origin(2) <= '0';
WAIT;
END PROCESS t_prcs_origin_2;
-- origin[1]
t_prcs_origin_1: PROCESS
BEGIN
	origin(1) <= '0';
WAIT;
END PROCESS t_prcs_origin_1;
-- origin[0]
t_prcs_origin_0: PROCESS
BEGIN
	origin(0) <= '0';
WAIT;
END PROCESS t_prcs_origin_0;
-- stride[7]
t_prcs_stride_7: PROCESS
BEGIN
	stride(7) <= '0';
WAIT;
END PROCESS t_prcs_stride_7;
-- stride[6]
t_prcs_stride_6: PROCESS
BEGIN
	stride(6) <= '0';
WAIT;
END PROCESS t_prcs_stride_6;
-- stride[5]
t_prcs_stride_5: PROCESS
BEGIN
	stride(5) <= '1';
WAIT;
END PROCESS t_prcs_stride_5;
-- stride[4]
t_prcs_stride_4: PROCESS
BEGIN
	stride(4) <= '0';
WAIT;
END PROCESS t_prcs_stride_4;
-- stride[3]
t_prcs_stride_3: PROCESS
BEGIN
	stride(3) <= '0';
WAIT;
END PROCESS t_prcs_stride_3;
-- stride[2]
t_prcs_stride_2: PROCESS
BEGIN
	stride(2) <= '0';
WAIT;
END PROCESS t_prcs_stride_2;
-- stride[1]
t_prcs_stride_1: PROCESS
BEGIN
	stride(1) <= '0';
WAIT;
END PROCESS t_prcs_stride_1;
-- stride[0]
t_prcs_stride_0: PROCESS
BEGIN
	stride(0) <= '0';
WAIT;
END PROCESS t_prcs_stride_0;
END addr_gen_arch;
