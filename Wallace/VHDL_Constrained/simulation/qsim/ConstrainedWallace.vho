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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/22/2022 17:34:02"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	add_sub : IN std_logic;
	cin : IN std_logic;
	dataa : IN std_logic_vector(15 DOWNTO 0);
	datab : IN std_logic_vector(15 DOWNTO 0);
	result : OUT std_logic_vector(15 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- result[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add_sub	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[0]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[1]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[2]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[4]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[5]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[5]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[6]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[6]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[7]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[8]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[9]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[9]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[10]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[10]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[11]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[11]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[12]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[12]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[13]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[13]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[14]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[14]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[15]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[15]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_add_sub : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_dataa : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_datab : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(15 DOWNTO 0);
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \dataa[0]~input_o\ : std_logic;
SIGNAL \datab[0]~input_o\ : std_logic;
SIGNAL \add_sub~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \datab[1]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \dataa[1]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \datab[2]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \dataa[2]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \dataa[3]~input_o\ : std_logic;
SIGNAL \datab[3]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \datab[4]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \dataa[4]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \dataa[5]~input_o\ : std_logic;
SIGNAL \datab[5]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \dataa[6]~input_o\ : std_logic;
SIGNAL \datab[6]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|_~6_combout\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \dataa[7]~input_o\ : std_logic;
SIGNAL \datab[7]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|_~7_combout\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \datab[8]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|_~8_combout\ : std_logic;
SIGNAL \dataa[8]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \dataa[9]~input_o\ : std_logic;
SIGNAL \datab[9]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|_~9_combout\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \datab[10]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|_~10_combout\ : std_logic;
SIGNAL \dataa[10]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \dataa[11]~input_o\ : std_logic;
SIGNAL \datab[11]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|_~11_combout\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \dataa[12]~input_o\ : std_logic;
SIGNAL \datab[12]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|_~12_combout\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[12]~25\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[13]~26_combout\ : std_logic;
SIGNAL \dataa[13]~input_o\ : std_logic;
SIGNAL \datab[13]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|_~13_combout\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[13]~27\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[14]~28_combout\ : std_logic;
SIGNAL \datab[14]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|_~14_combout\ : std_logic;
SIGNAL \dataa[14]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[14]~29\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[15]~30_combout\ : std_logic;
SIGNAL \dataa[15]~input_o\ : std_logic;
SIGNAL \datab[15]~input_o\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|_~15_combout\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[15]~31\ : std_logic;
SIGNAL \LPM_ADD_SUB_component|auto_generated|result_int[16]~32_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_add_sub <= add_sub;
ww_cin <= cin;
ww_dataa <= dataa;
ww_datab <= datab;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y50_N16
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|result_int[13]~26_combout\,
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|result_int[14]~28_combout\,
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|result_int[15]~30_combout\,
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LPM_ADD_SUB_component|auto_generated|result_int[16]~32_combout\,
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOIBUF_X0_Y55_N22
\dataa[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(0),
	o => \dataa[0]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\datab[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(0),
	o => \datab[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\add_sub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add_sub,
	o => \add_sub~input_o\);

-- Location: LCCOMB_X1_Y47_N0
\LPM_ADD_SUB_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|_~0_combout\ = \datab[0]~input_o\ $ (\add_sub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datab[0]~input_o\,
	datac => \add_sub~input_o\,
	combout => \LPM_ADD_SUB_component|auto_generated|_~0_combout\);

-- Location: IOIBUF_X0_Y47_N15
\cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: LCCOMB_X1_Y47_N16
\LPM_ADD_SUB_component|auto_generated|result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ = CARRY(\cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cin~input_o\,
	datad => VCC,
	cout => \LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X1_Y47_N18
\LPM_ADD_SUB_component|auto_generated|result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\ = (\dataa[0]~input_o\ & ((\LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # 
-- (!\LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\ & VCC)))) # (!\dataa[0]~input_o\ & ((\LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\) # (GND))) # (!\LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\))))
-- \LPM_ADD_SUB_component|auto_generated|result_int[1]~3\ = CARRY((\dataa[0]~input_o\ & (\LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\)) # (!\dataa[0]~input_o\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[0]~input_o\,
	datab => \LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|result_int[0]~1_cout\,
	combout => \LPM_ADD_SUB_component|auto_generated|result_int[1]~2_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|result_int[1]~3\);

-- Location: IOIBUF_X0_Y44_N15
\datab[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(1),
	o => \datab[1]~input_o\);

-- Location: LCCOMB_X1_Y44_N8
\LPM_ADD_SUB_component|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|_~1_combout\ = \add_sub~input_o\ $ (\datab[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_sub~input_o\,
	datad => \datab[1]~input_o\,
	combout => \LPM_ADD_SUB_component|auto_generated|_~1_combout\);

-- Location: IOIBUF_X0_Y33_N22
\dataa[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(1),
	o => \dataa[1]~input_o\);

-- Location: LCCOMB_X1_Y47_N20
\LPM_ADD_SUB_component|auto_generated|result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\ = ((\LPM_ADD_SUB_component|auto_generated|_~1_combout\ $ (\dataa[1]~input_o\ $ (\LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)))) # (GND)
-- \LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ = CARRY((\LPM_ADD_SUB_component|auto_generated|_~1_combout\ & (\dataa[1]~input_o\ & !\LPM_ADD_SUB_component|auto_generated|result_int[1]~3\)) # (!\LPM_ADD_SUB_component|auto_generated|_~1_combout\ & 
-- ((\dataa[1]~input_o\) # (!\LPM_ADD_SUB_component|auto_generated|result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LPM_ADD_SUB_component|auto_generated|_~1_combout\,
	datab => \dataa[1]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|result_int[1]~3\,
	combout => \LPM_ADD_SUB_component|auto_generated|result_int[2]~4_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|result_int[2]~5\);

-- Location: IOIBUF_X0_Y52_N22
\datab[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(2),
	o => \datab[2]~input_o\);

-- Location: LCCOMB_X1_Y47_N10
\LPM_ADD_SUB_component|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|_~2_combout\ = \add_sub~input_o\ $ (\datab[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_sub~input_o\,
	datad => \datab[2]~input_o\,
	combout => \LPM_ADD_SUB_component|auto_generated|_~2_combout\);

-- Location: IOIBUF_X0_Y59_N22
\dataa[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(2),
	o => \dataa[2]~input_o\);

-- Location: LCCOMB_X1_Y47_N22
\LPM_ADD_SUB_component|auto_generated|result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\ = (\LPM_ADD_SUB_component|auto_generated|_~2_combout\ & ((\dataa[2]~input_o\ & (!\LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)) # (!\dataa[2]~input_o\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (GND))))) # (!\LPM_ADD_SUB_component|auto_generated|_~2_combout\ & ((\dataa[2]~input_o\ & (\LPM_ADD_SUB_component|auto_generated|result_int[2]~5\ & VCC)) # (!\dataa[2]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|result_int[2]~5\))))
-- \LPM_ADD_SUB_component|auto_generated|result_int[3]~7\ = CARRY((\LPM_ADD_SUB_component|auto_generated|_~2_combout\ & ((!\LPM_ADD_SUB_component|auto_generated|result_int[2]~5\) # (!\dataa[2]~input_o\))) # 
-- (!\LPM_ADD_SUB_component|auto_generated|_~2_combout\ & (!\dataa[2]~input_o\ & !\LPM_ADD_SUB_component|auto_generated|result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LPM_ADD_SUB_component|auto_generated|_~2_combout\,
	datab => \dataa[2]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|result_int[2]~5\,
	combout => \LPM_ADD_SUB_component|auto_generated|result_int[3]~6_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|result_int[3]~7\);

-- Location: IOIBUF_X0_Y30_N8
\dataa[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(3),
	o => \dataa[3]~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\datab[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(3),
	o => \datab[3]~input_o\);

-- Location: LCCOMB_X1_Y45_N0
\LPM_ADD_SUB_component|auto_generated|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|_~3_combout\ = \add_sub~input_o\ $ (\datab[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_sub~input_o\,
	datad => \datab[3]~input_o\,
	combout => \LPM_ADD_SUB_component|auto_generated|_~3_combout\);

-- Location: LCCOMB_X1_Y47_N24
\LPM_ADD_SUB_component|auto_generated|result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\ = ((\dataa[3]~input_o\ $ (\LPM_ADD_SUB_component|auto_generated|_~3_combout\ $ (\LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))) # (GND)
-- \LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ = CARRY((\dataa[3]~input_o\ & ((!\LPM_ADD_SUB_component|auto_generated|result_int[3]~7\) # (!\LPM_ADD_SUB_component|auto_generated|_~3_combout\))) # (!\dataa[3]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|_~3_combout\ & !\LPM_ADD_SUB_component|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[3]~input_o\,
	datab => \LPM_ADD_SUB_component|auto_generated|_~3_combout\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|result_int[3]~7\,
	combout => \LPM_ADD_SUB_component|auto_generated|result_int[4]~8_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|result_int[4]~9\);

-- Location: IOIBUF_X0_Y31_N15
\datab[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(4),
	o => \datab[4]~input_o\);

-- Location: LCCOMB_X1_Y47_N12
\LPM_ADD_SUB_component|auto_generated|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|_~4_combout\ = \add_sub~input_o\ $ (\datab[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub~input_o\,
	datac => \datab[4]~input_o\,
	combout => \LPM_ADD_SUB_component|auto_generated|_~4_combout\);

-- Location: IOIBUF_X0_Y44_N1
\dataa[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(4),
	o => \dataa[4]~input_o\);

-- Location: LCCOMB_X1_Y47_N26
\LPM_ADD_SUB_component|auto_generated|result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\ = (\LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((\dataa[4]~input_o\ & (!\LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)) # (!\dataa[4]~input_o\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (GND))))) # (!\LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((\dataa[4]~input_o\ & (\LPM_ADD_SUB_component|auto_generated|result_int[4]~9\ & VCC)) # (!\dataa[4]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|result_int[4]~9\))))
-- \LPM_ADD_SUB_component|auto_generated|result_int[5]~11\ = CARRY((\LPM_ADD_SUB_component|auto_generated|_~4_combout\ & ((!\LPM_ADD_SUB_component|auto_generated|result_int[4]~9\) # (!\dataa[4]~input_o\))) # 
-- (!\LPM_ADD_SUB_component|auto_generated|_~4_combout\ & (!\dataa[4]~input_o\ & !\LPM_ADD_SUB_component|auto_generated|result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LPM_ADD_SUB_component|auto_generated|_~4_combout\,
	datab => \dataa[4]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|result_int[4]~9\,
	combout => \LPM_ADD_SUB_component|auto_generated|result_int[5]~10_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|result_int[5]~11\);

-- Location: IOIBUF_X0_Y55_N8
\dataa[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(5),
	o => \dataa[5]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\datab[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(5),
	o => \datab[5]~input_o\);

-- Location: LCCOMB_X1_Y47_N14
\LPM_ADD_SUB_component|auto_generated|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|_~5_combout\ = \add_sub~input_o\ $ (\datab[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_sub~input_o\,
	datad => \datab[5]~input_o\,
	combout => \LPM_ADD_SUB_component|auto_generated|_~5_combout\);

-- Location: LCCOMB_X1_Y47_N28
\LPM_ADD_SUB_component|auto_generated|result_int[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\ = ((\dataa[5]~input_o\ $ (\LPM_ADD_SUB_component|auto_generated|_~5_combout\ $ (\LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))) # (GND)
-- \LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ = CARRY((\dataa[5]~input_o\ & ((!\LPM_ADD_SUB_component|auto_generated|result_int[5]~11\) # (!\LPM_ADD_SUB_component|auto_generated|_~5_combout\))) # (!\dataa[5]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|_~5_combout\ & !\LPM_ADD_SUB_component|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[5]~input_o\,
	datab => \LPM_ADD_SUB_component|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|result_int[5]~11\,
	combout => \LPM_ADD_SUB_component|auto_generated|result_int[6]~12_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|result_int[6]~13\);

-- Location: IOIBUF_X0_Y60_N15
\dataa[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(6),
	o => \dataa[6]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\datab[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(6),
	o => \datab[6]~input_o\);

-- Location: LCCOMB_X1_Y47_N8
\LPM_ADD_SUB_component|auto_generated|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|_~6_combout\ = \datab[6]~input_o\ $ (\add_sub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datab[6]~input_o\,
	datac => \add_sub~input_o\,
	combout => \LPM_ADD_SUB_component|auto_generated|_~6_combout\);

-- Location: LCCOMB_X1_Y47_N30
\LPM_ADD_SUB_component|auto_generated|result_int[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\ = (\dataa[6]~input_o\ & ((\LPM_ADD_SUB_component|auto_generated|_~6_combout\ & (!\LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # 
-- (!\LPM_ADD_SUB_component|auto_generated|_~6_combout\ & (\LPM_ADD_SUB_component|auto_generated|result_int[6]~13\ & VCC)))) # (!\dataa[6]~input_o\ & ((\LPM_ADD_SUB_component|auto_generated|_~6_combout\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|result_int[6]~13\) # (GND))) # (!\LPM_ADD_SUB_component|auto_generated|_~6_combout\ & (!\LPM_ADD_SUB_component|auto_generated|result_int[6]~13\))))
-- \LPM_ADD_SUB_component|auto_generated|result_int[7]~15\ = CARRY((\dataa[6]~input_o\ & (\LPM_ADD_SUB_component|auto_generated|_~6_combout\ & !\LPM_ADD_SUB_component|auto_generated|result_int[6]~13\)) # (!\dataa[6]~input_o\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|_~6_combout\) # (!\LPM_ADD_SUB_component|auto_generated|result_int[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[6]~input_o\,
	datab => \LPM_ADD_SUB_component|auto_generated|_~6_combout\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|result_int[6]~13\,
	combout => \LPM_ADD_SUB_component|auto_generated|result_int[7]~14_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|result_int[7]~15\);

-- Location: IOIBUF_X0_Y33_N15
\dataa[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(7),
	o => \dataa[7]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\datab[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(7),
	o => \datab[7]~input_o\);

-- Location: LCCOMB_X1_Y45_N2
\LPM_ADD_SUB_component|auto_generated|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|_~7_combout\ = \add_sub~input_o\ $ (\datab[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_sub~input_o\,
	datad => \datab[7]~input_o\,
	combout => \LPM_ADD_SUB_component|auto_generated|_~7_combout\);

-- Location: LCCOMB_X1_Y46_N0
\LPM_ADD_SUB_component|auto_generated|result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\ = ((\dataa[7]~input_o\ $ (\LPM_ADD_SUB_component|auto_generated|_~7_combout\ $ (\LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))) # (GND)
-- \LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ = CARRY((\dataa[7]~input_o\ & ((!\LPM_ADD_SUB_component|auto_generated|result_int[7]~15\) # (!\LPM_ADD_SUB_component|auto_generated|_~7_combout\))) # (!\dataa[7]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|_~7_combout\ & !\LPM_ADD_SUB_component|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[7]~input_o\,
	datab => \LPM_ADD_SUB_component|auto_generated|_~7_combout\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|result_int[7]~15\,
	combout => \LPM_ADD_SUB_component|auto_generated|result_int[8]~16_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|result_int[8]~17\);

-- Location: IOIBUF_X0_Y42_N8
\datab[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(8),
	o => \datab[8]~input_o\);

-- Location: LCCOMB_X1_Y46_N26
\LPM_ADD_SUB_component|auto_generated|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|_~8_combout\ = \add_sub~input_o\ $ (\datab[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub~input_o\,
	datac => \datab[8]~input_o\,
	combout => \LPM_ADD_SUB_component|auto_generated|_~8_combout\);

-- Location: IOIBUF_X0_Y46_N15
\dataa[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(8),
	o => \dataa[8]~input_o\);

-- Location: LCCOMB_X1_Y46_N2
\LPM_ADD_SUB_component|auto_generated|result_int[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\ = (\LPM_ADD_SUB_component|auto_generated|_~8_combout\ & ((\dataa[8]~input_o\ & (!\LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)) # (!\dataa[8]~input_o\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (GND))))) # (!\LPM_ADD_SUB_component|auto_generated|_~8_combout\ & ((\dataa[8]~input_o\ & (\LPM_ADD_SUB_component|auto_generated|result_int[8]~17\ & VCC)) # (!\dataa[8]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|result_int[8]~17\))))
-- \LPM_ADD_SUB_component|auto_generated|result_int[9]~19\ = CARRY((\LPM_ADD_SUB_component|auto_generated|_~8_combout\ & ((!\LPM_ADD_SUB_component|auto_generated|result_int[8]~17\) # (!\dataa[8]~input_o\))) # 
-- (!\LPM_ADD_SUB_component|auto_generated|_~8_combout\ & (!\dataa[8]~input_o\ & !\LPM_ADD_SUB_component|auto_generated|result_int[8]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LPM_ADD_SUB_component|auto_generated|_~8_combout\,
	datab => \dataa[8]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|result_int[8]~17\,
	combout => \LPM_ADD_SUB_component|auto_generated|result_int[9]~18_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|result_int[9]~19\);

-- Location: IOIBUF_X0_Y52_N1
\dataa[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(9),
	o => \dataa[9]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\datab[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(9),
	o => \datab[9]~input_o\);

-- Location: LCCOMB_X1_Y46_N20
\LPM_ADD_SUB_component|auto_generated|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|_~9_combout\ = \datab[9]~input_o\ $ (\add_sub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datab[9]~input_o\,
	datac => \add_sub~input_o\,
	combout => \LPM_ADD_SUB_component|auto_generated|_~9_combout\);

-- Location: LCCOMB_X1_Y46_N4
\LPM_ADD_SUB_component|auto_generated|result_int[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\ = ((\dataa[9]~input_o\ $ (\LPM_ADD_SUB_component|auto_generated|_~9_combout\ $ (\LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))) # (GND)
-- \LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ = CARRY((\dataa[9]~input_o\ & ((!\LPM_ADD_SUB_component|auto_generated|result_int[9]~19\) # (!\LPM_ADD_SUB_component|auto_generated|_~9_combout\))) # (!\dataa[9]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|_~9_combout\ & !\LPM_ADD_SUB_component|auto_generated|result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[9]~input_o\,
	datab => \LPM_ADD_SUB_component|auto_generated|_~9_combout\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|result_int[9]~19\,
	combout => \LPM_ADD_SUB_component|auto_generated|result_int[10]~20_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|result_int[10]~21\);

-- Location: IOIBUF_X0_Y32_N15
\datab[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(10),
	o => \datab[10]~input_o\);

-- Location: LCCOMB_X1_Y46_N30
\LPM_ADD_SUB_component|auto_generated|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|_~10_combout\ = \add_sub~input_o\ $ (\datab[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub~input_o\,
	datac => \datab[10]~input_o\,
	combout => \LPM_ADD_SUB_component|auto_generated|_~10_combout\);

-- Location: IOIBUF_X0_Y46_N22
\dataa[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(10),
	o => \dataa[10]~input_o\);

-- Location: LCCOMB_X1_Y46_N6
\LPM_ADD_SUB_component|auto_generated|result_int[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\ = (\LPM_ADD_SUB_component|auto_generated|_~10_combout\ & ((\dataa[10]~input_o\ & (!\LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)) # (!\dataa[10]~input_o\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (GND))))) # (!\LPM_ADD_SUB_component|auto_generated|_~10_combout\ & ((\dataa[10]~input_o\ & (\LPM_ADD_SUB_component|auto_generated|result_int[10]~21\ & VCC)) # (!\dataa[10]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|result_int[10]~21\))))
-- \LPM_ADD_SUB_component|auto_generated|result_int[11]~23\ = CARRY((\LPM_ADD_SUB_component|auto_generated|_~10_combout\ & ((!\LPM_ADD_SUB_component|auto_generated|result_int[10]~21\) # (!\dataa[10]~input_o\))) # 
-- (!\LPM_ADD_SUB_component|auto_generated|_~10_combout\ & (!\dataa[10]~input_o\ & !\LPM_ADD_SUB_component|auto_generated|result_int[10]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LPM_ADD_SUB_component|auto_generated|_~10_combout\,
	datab => \dataa[10]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|result_int[10]~21\,
	combout => \LPM_ADD_SUB_component|auto_generated|result_int[11]~22_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|result_int[11]~23\);

-- Location: IOIBUF_X0_Y42_N1
\dataa[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(11),
	o => \dataa[11]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\datab[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(11),
	o => \datab[11]~input_o\);

-- Location: LCCOMB_X1_Y46_N24
\LPM_ADD_SUB_component|auto_generated|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|_~11_combout\ = \add_sub~input_o\ $ (\datab[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub~input_o\,
	datac => \datab[11]~input_o\,
	combout => \LPM_ADD_SUB_component|auto_generated|_~11_combout\);

-- Location: LCCOMB_X1_Y46_N8
\LPM_ADD_SUB_component|auto_generated|result_int[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\ = ((\dataa[11]~input_o\ $ (\LPM_ADD_SUB_component|auto_generated|_~11_combout\ $ (\LPM_ADD_SUB_component|auto_generated|result_int[11]~23\)))) # (GND)
-- \LPM_ADD_SUB_component|auto_generated|result_int[12]~25\ = CARRY((\dataa[11]~input_o\ & ((!\LPM_ADD_SUB_component|auto_generated|result_int[11]~23\) # (!\LPM_ADD_SUB_component|auto_generated|_~11_combout\))) # (!\dataa[11]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|_~11_combout\ & !\LPM_ADD_SUB_component|auto_generated|result_int[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[11]~input_o\,
	datab => \LPM_ADD_SUB_component|auto_generated|_~11_combout\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|result_int[11]~23\,
	combout => \LPM_ADD_SUB_component|auto_generated|result_int[12]~24_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|result_int[12]~25\);

-- Location: IOIBUF_X0_Y34_N22
\dataa[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(12),
	o => \dataa[12]~input_o\);

-- Location: IOIBUF_X0_Y64_N1
\datab[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(12),
	o => \datab[12]~input_o\);

-- Location: LCCOMB_X1_Y46_N18
\LPM_ADD_SUB_component|auto_generated|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|_~12_combout\ = \add_sub~input_o\ $ (\datab[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_sub~input_o\,
	datad => \datab[12]~input_o\,
	combout => \LPM_ADD_SUB_component|auto_generated|_~12_combout\);

-- Location: LCCOMB_X1_Y46_N10
\LPM_ADD_SUB_component|auto_generated|result_int[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|result_int[13]~26_combout\ = (\dataa[12]~input_o\ & ((\LPM_ADD_SUB_component|auto_generated|_~12_combout\ & (!\LPM_ADD_SUB_component|auto_generated|result_int[12]~25\)) # 
-- (!\LPM_ADD_SUB_component|auto_generated|_~12_combout\ & (\LPM_ADD_SUB_component|auto_generated|result_int[12]~25\ & VCC)))) # (!\dataa[12]~input_o\ & ((\LPM_ADD_SUB_component|auto_generated|_~12_combout\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|result_int[12]~25\) # (GND))) # (!\LPM_ADD_SUB_component|auto_generated|_~12_combout\ & (!\LPM_ADD_SUB_component|auto_generated|result_int[12]~25\))))
-- \LPM_ADD_SUB_component|auto_generated|result_int[13]~27\ = CARRY((\dataa[12]~input_o\ & (\LPM_ADD_SUB_component|auto_generated|_~12_combout\ & !\LPM_ADD_SUB_component|auto_generated|result_int[12]~25\)) # (!\dataa[12]~input_o\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|_~12_combout\) # (!\LPM_ADD_SUB_component|auto_generated|result_int[12]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[12]~input_o\,
	datab => \LPM_ADD_SUB_component|auto_generated|_~12_combout\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|result_int[12]~25\,
	combout => \LPM_ADD_SUB_component|auto_generated|result_int[13]~26_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|result_int[13]~27\);

-- Location: IOIBUF_X0_Y44_N22
\dataa[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(13),
	o => \dataa[13]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\datab[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(13),
	o => \datab[13]~input_o\);

-- Location: LCCOMB_X1_Y46_N28
\LPM_ADD_SUB_component|auto_generated|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|_~13_combout\ = \add_sub~input_o\ $ (\datab[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub~input_o\,
	datac => \datab[13]~input_o\,
	combout => \LPM_ADD_SUB_component|auto_generated|_~13_combout\);

-- Location: LCCOMB_X1_Y46_N12
\LPM_ADD_SUB_component|auto_generated|result_int[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|result_int[14]~28_combout\ = ((\dataa[13]~input_o\ $ (\LPM_ADD_SUB_component|auto_generated|_~13_combout\ $ (\LPM_ADD_SUB_component|auto_generated|result_int[13]~27\)))) # (GND)
-- \LPM_ADD_SUB_component|auto_generated|result_int[14]~29\ = CARRY((\dataa[13]~input_o\ & ((!\LPM_ADD_SUB_component|auto_generated|result_int[13]~27\) # (!\LPM_ADD_SUB_component|auto_generated|_~13_combout\))) # (!\dataa[13]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|_~13_combout\ & !\LPM_ADD_SUB_component|auto_generated|result_int[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dataa[13]~input_o\,
	datab => \LPM_ADD_SUB_component|auto_generated|_~13_combout\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|result_int[13]~27\,
	combout => \LPM_ADD_SUB_component|auto_generated|result_int[14]~28_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|result_int[14]~29\);

-- Location: IOIBUF_X0_Y53_N1
\datab[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(14),
	o => \datab[14]~input_o\);

-- Location: LCCOMB_X1_Y46_N22
\LPM_ADD_SUB_component|auto_generated|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|_~14_combout\ = \add_sub~input_o\ $ (\datab[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_sub~input_o\,
	datac => \datab[14]~input_o\,
	combout => \LPM_ADD_SUB_component|auto_generated|_~14_combout\);

-- Location: IOIBUF_X0_Y28_N15
\dataa[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(14),
	o => \dataa[14]~input_o\);

-- Location: LCCOMB_X1_Y46_N14
\LPM_ADD_SUB_component|auto_generated|result_int[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|result_int[15]~30_combout\ = (\LPM_ADD_SUB_component|auto_generated|_~14_combout\ & ((\dataa[14]~input_o\ & (!\LPM_ADD_SUB_component|auto_generated|result_int[14]~29\)) # (!\dataa[14]~input_o\ & 
-- ((\LPM_ADD_SUB_component|auto_generated|result_int[14]~29\) # (GND))))) # (!\LPM_ADD_SUB_component|auto_generated|_~14_combout\ & ((\dataa[14]~input_o\ & (\LPM_ADD_SUB_component|auto_generated|result_int[14]~29\ & VCC)) # (!\dataa[14]~input_o\ & 
-- (!\LPM_ADD_SUB_component|auto_generated|result_int[14]~29\))))
-- \LPM_ADD_SUB_component|auto_generated|result_int[15]~31\ = CARRY((\LPM_ADD_SUB_component|auto_generated|_~14_combout\ & ((!\LPM_ADD_SUB_component|auto_generated|result_int[14]~29\) # (!\dataa[14]~input_o\))) # 
-- (!\LPM_ADD_SUB_component|auto_generated|_~14_combout\ & (!\dataa[14]~input_o\ & !\LPM_ADD_SUB_component|auto_generated|result_int[14]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LPM_ADD_SUB_component|auto_generated|_~14_combout\,
	datab => \dataa[14]~input_o\,
	datad => VCC,
	cin => \LPM_ADD_SUB_component|auto_generated|result_int[14]~29\,
	combout => \LPM_ADD_SUB_component|auto_generated|result_int[15]~30_combout\,
	cout => \LPM_ADD_SUB_component|auto_generated|result_int[15]~31\);

-- Location: IOIBUF_X0_Y35_N15
\dataa[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(15),
	o => \dataa[15]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\datab[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(15),
	o => \datab[15]~input_o\);

-- Location: LCCOMB_X2_Y46_N24
\LPM_ADD_SUB_component|auto_generated|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|_~15_combout\ = \add_sub~input_o\ $ (\datab[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_sub~input_o\,
	datad => \datab[15]~input_o\,
	combout => \LPM_ADD_SUB_component|auto_generated|_~15_combout\);

-- Location: LCCOMB_X1_Y46_N16
\LPM_ADD_SUB_component|auto_generated|result_int[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \LPM_ADD_SUB_component|auto_generated|result_int[16]~32_combout\ = \dataa[15]~input_o\ $ (\LPM_ADD_SUB_component|auto_generated|result_int[15]~31\ $ (\LPM_ADD_SUB_component|auto_generated|_~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dataa[15]~input_o\,
	datad => \LPM_ADD_SUB_component|auto_generated|_~15_combout\,
	cin => \LPM_ADD_SUB_component|auto_generated|result_int[15]~31\,
	combout => \LPM_ADD_SUB_component|auto_generated|result_int[16]~32_combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;
END structure;


