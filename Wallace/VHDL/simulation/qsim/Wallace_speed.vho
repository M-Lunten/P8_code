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

-- DATE "05/10/2022 22:45:13"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	chi_corr IS
    PORT (
	clk : IN std_logic;
	ctrl_sig : IN std_logic_vector(7 DOWNTO 0);
	x1 : IN std_logic_vector(15 DOWNTO 0);
	G : OUT std_logic_vector(15 DOWNTO 0)
	);
END chi_corr;

-- Design Ports Information
-- x1[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[0]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[3]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[4]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[5]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[6]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[7]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[8]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[9]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[10]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[11]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[12]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[13]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[14]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[15]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[7]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_sig[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_sig[1]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_sig[2]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_sig[3]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_sig[4]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_sig[5]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_sig[6]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_sig[7]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[6]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[5]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[4]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[8]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[1]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[10]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[9]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[11]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[12]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[13]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[14]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x1[15]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF chi_corr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ctrl_sig : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x1[0]~input_o\ : std_logic;
SIGNAL \G[0]~output_o\ : std_logic;
SIGNAL \G[1]~output_o\ : std_logic;
SIGNAL \G[2]~output_o\ : std_logic;
SIGNAL \G[3]~output_o\ : std_logic;
SIGNAL \G[4]~output_o\ : std_logic;
SIGNAL \G[5]~output_o\ : std_logic;
SIGNAL \G[6]~output_o\ : std_logic;
SIGNAL \G[7]~output_o\ : std_logic;
SIGNAL \G[8]~output_o\ : std_logic;
SIGNAL \G[9]~output_o\ : std_logic;
SIGNAL \G[10]~output_o\ : std_logic;
SIGNAL \G[11]~output_o\ : std_logic;
SIGNAL \G[12]~output_o\ : std_logic;
SIGNAL \G[13]~output_o\ : std_logic;
SIGNAL \G[14]~output_o\ : std_logic;
SIGNAL \G[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \x1[5]~input_o\ : std_logic;
SIGNAL \variate[5]~feeder_combout\ : std_logic;
SIGNAL \ctrl_sig[5]~input_o\ : std_logic;
SIGNAL \ctrl_sig[7]~input_o\ : std_logic;
SIGNAL \ctrl_sig[4]~input_o\ : std_logic;
SIGNAL \ctrl_sig[6]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \ctrl_sig[2]~input_o\ : std_logic;
SIGNAL \ctrl_sig[0]~input_o\ : std_logic;
SIGNAL \ctrl_sig[3]~input_o\ : std_logic;
SIGNAL \ctrl_sig[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \x1[4]~input_o\ : std_logic;
SIGNAL \x1[3]~input_o\ : std_logic;
SIGNAL \x1[2]~input_o\ : std_logic;
SIGNAL \add_res[2]~15\ : std_logic;
SIGNAL \add_res[3]~17\ : std_logic;
SIGNAL \add_res[4]~18_combout\ : std_logic;
SIGNAL \x1[7]~input_o\ : std_logic;
SIGNAL \x1[6]~input_o\ : std_logic;
SIGNAL \add_res[4]~19\ : std_logic;
SIGNAL \add_res[5]~21\ : std_logic;
SIGNAL \add_res[6]~22_combout\ : std_logic;
SIGNAL \add_res[5]~20_combout\ : std_logic;
SIGNAL \x1[8]~input_o\ : std_logic;
SIGNAL \add_res[6]~23\ : std_logic;
SIGNAL \add_res[7]~24_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][8]~0_combout\ : std_logic;
SIGNAL \add_res[2]~14_combout\ : std_logic;
SIGNAL \add_res[3]~16_combout\ : std_logic;
SIGNAL \x1[1]~input_o\ : std_logic;
SIGNAL \add_res[1]~42_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][12]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][7]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][11]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][6]~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][10]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][9]~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][5]~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~7_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \x1[10]~input_o\ : std_logic;
SIGNAL \x1[9]~input_o\ : std_logic;
SIGNAL \add_res[7]~25\ : std_logic;
SIGNAL \add_res[8]~27\ : std_logic;
SIGNAL \add_res[9]~28_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \add_res[8]~26_combout\ : std_logic;
SIGNAL \mult_res[0]~16_cout\ : std_logic;
SIGNAL \mult_res[0]~17_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][9]~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][13]~9_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \x1[11]~input_o\ : std_logic;
SIGNAL \add_res[9]~29\ : std_logic;
SIGNAL \add_res[10]~30_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][5]~10_combout\ : std_logic;
SIGNAL \mult_res[0]~18\ : std_logic;
SIGNAL \mult_res[1]~19_combout\ : std_logic;
SIGNAL \x1[12]~input_o\ : std_logic;
SIGNAL \add_res[10]~31\ : std_logic;
SIGNAL \add_res[11]~32_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][6]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][14]~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][10]~11_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \mult_res[1]~20\ : std_logic;
SIGNAL \mult_res[2]~21_combout\ : std_logic;
SIGNAL \x1[13]~input_o\ : std_logic;
SIGNAL \add_res[11]~33\ : std_logic;
SIGNAL \add_res[12]~34_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][7]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][11]~13_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \mult_res[2]~22\ : std_logic;
SIGNAL \mult_res[3]~23_combout\ : std_logic;
SIGNAL \x1[14]~input_o\ : std_logic;
SIGNAL \variate[14]~feeder_combout\ : std_logic;
SIGNAL \add_res[12]~35\ : std_logic;
SIGNAL \add_res[13]~36_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][8]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][12]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \mult_res[3]~24\ : std_logic;
SIGNAL \mult_res[4]~25_combout\ : std_logic;
SIGNAL \x1[15]~input_o\ : std_logic;
SIGNAL \add_res[13]~37\ : std_logic;
SIGNAL \add_res[14]~38_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][5]~15_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][9]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][13]~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \mult_res[4]~26\ : std_logic;
SIGNAL \mult_res[5]~27_combout\ : std_logic;
SIGNAL \Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][10]~combout\ : std_logic;
SIGNAL \add_res[14]~39\ : std_logic;
SIGNAL \add_res[15]~40_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][6]~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \mult_res[5]~28\ : std_logic;
SIGNAL \mult_res[6]~29_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][7]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][11]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \mult_res[6]~30\ : std_logic;
SIGNAL \mult_res[7]~31_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][8]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][12]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \mult_res[7]~32\ : std_logic;
SIGNAL \mult_res[8]~33_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][9]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[2][13]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \mult_res[8]~34\ : std_logic;
SIGNAL \mult_res[9]~35_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][10]~17_combout\ : std_logic;
SIGNAL \Mult0|mult_core|_~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \mult_res[9]~36\ : std_logic;
SIGNAL \mult_res[10]~37_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][11]~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \mult_res[10]~38\ : std_logic;
SIGNAL \mult_res[11]~39_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][12]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \mult_res[11]~40\ : std_logic;
SIGNAL \mult_res[12]~41_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[3][13]~19_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \mult_res[12]~42\ : std_logic;
SIGNAL \mult_res[13]~43_combout\ : std_logic;
SIGNAL \Mult0|mult_core|_~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \mult_res[13]~44\ : std_logic;
SIGNAL \mult_res[14]~45_combout\ : std_logic;
SIGNAL mult_res : std_logic_vector(15 DOWNTO 0);
SIGNAL add_res : std_logic_vector(15 DOWNTO 0);
SIGNAL variate : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_ctrl_sig <= ctrl_sig;
ww_x1 <= x1;
G <= ww_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X83_Y73_N9
\G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mult_res(0),
	devoe => ww_devoe,
	o => \G[0]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mult_res(1),
	devoe => ww_devoe,
	o => \G[1]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mult_res(2),
	devoe => ww_devoe,
	o => \G[2]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mult_res(3),
	devoe => ww_devoe,
	o => \G[3]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mult_res(4),
	devoe => ww_devoe,
	o => \G[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mult_res(5),
	devoe => ww_devoe,
	o => \G[5]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mult_res(6),
	devoe => ww_devoe,
	o => \G[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mult_res(7),
	devoe => ww_devoe,
	o => \G[7]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\G[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mult_res(8),
	devoe => ww_devoe,
	o => \G[8]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\G[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mult_res(9),
	devoe => ww_devoe,
	o => \G[9]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\G[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mult_res(10),
	devoe => ww_devoe,
	o => \G[10]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\G[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mult_res(11),
	devoe => ww_devoe,
	o => \G[11]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\G[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mult_res(12),
	devoe => ww_devoe,
	o => \G[12]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\G[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mult_res(13),
	devoe => ww_devoe,
	o => \G[13]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\G[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mult_res(14),
	devoe => ww_devoe,
	o => \G[14]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\G[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \G[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X72_Y73_N22
\x1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(5),
	o => \x1[5]~input_o\);

-- Location: LCCOMB_X80_Y68_N18
\variate[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \variate[5]~feeder_combout\ = \x1[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x1[5]~input_o\,
	combout => \variate[5]~feeder_combout\);

-- Location: IOIBUF_X89_Y73_N22
\ctrl_sig[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_sig(5),
	o => \ctrl_sig[5]~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\ctrl_sig[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_sig(7),
	o => \ctrl_sig[7]~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\ctrl_sig[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_sig(4),
	o => \ctrl_sig[4]~input_o\);

-- Location: IOIBUF_X94_Y73_N8
\ctrl_sig[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_sig(6),
	o => \ctrl_sig[6]~input_o\);

-- Location: LCCOMB_X90_Y72_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\ctrl_sig[5]~input_o\ & (\ctrl_sig[7]~input_o\ & (\ctrl_sig[4]~input_o\ & \ctrl_sig[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_sig[5]~input_o\,
	datab => \ctrl_sig[7]~input_o\,
	datac => \ctrl_sig[4]~input_o\,
	datad => \ctrl_sig[6]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X96_Y73_N15
\ctrl_sig[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_sig(2),
	o => \ctrl_sig[2]~input_o\);

-- Location: IOIBUF_X96_Y73_N22
\ctrl_sig[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_sig(0),
	o => \ctrl_sig[0]~input_o\);

-- Location: IOIBUF_X98_Y73_N15
\ctrl_sig[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_sig(3),
	o => \ctrl_sig[3]~input_o\);

-- Location: IOIBUF_X98_Y73_N22
\ctrl_sig[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_sig(1),
	o => \ctrl_sig[1]~input_o\);

-- Location: LCCOMB_X97_Y72_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\ctrl_sig[2]~input_o\ & (\ctrl_sig[0]~input_o\ & (\ctrl_sig[3]~input_o\ & \ctrl_sig[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_sig[2]~input_o\,
	datab => \ctrl_sig[0]~input_o\,
	datac => \ctrl_sig[3]~input_o\,
	datad => \ctrl_sig[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X89_Y72_N4
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X80_Y68_N19
\variate[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \variate[5]~feeder_combout\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => variate(5));

-- Location: IOIBUF_X81_Y73_N1
\x1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(4),
	o => \x1[4]~input_o\);

-- Location: FF_X81_Y68_N3
\variate[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x1[4]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => variate(4));

-- Location: IOIBUF_X81_Y73_N8
\x1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(3),
	o => \x1[3]~input_o\);

-- Location: FF_X81_Y68_N5
\variate[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x1[3]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => variate(3));

-- Location: IOIBUF_X69_Y73_N1
\x1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(2),
	o => \x1[2]~input_o\);

-- Location: FF_X82_Y68_N25
\variate[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x1[2]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => variate(2));

-- Location: LCCOMB_X81_Y68_N2
\add_res[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_res[2]~14_combout\ = (variate(3) & (variate(2) $ (VCC))) # (!variate(3) & (variate(2) & VCC))
-- \add_res[2]~15\ = CARRY((variate(3) & variate(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => variate(3),
	datab => variate(2),
	datad => VCC,
	combout => \add_res[2]~14_combout\,
	cout => \add_res[2]~15\);

-- Location: LCCOMB_X81_Y68_N4
\add_res[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_res[3]~16_combout\ = (variate(4) & (\add_res[2]~15\ & VCC)) # (!variate(4) & (!\add_res[2]~15\))
-- \add_res[3]~17\ = CARRY((!variate(4) & !\add_res[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => variate(4),
	datad => VCC,
	cin => \add_res[2]~15\,
	combout => \add_res[3]~16_combout\,
	cout => \add_res[3]~17\);

-- Location: LCCOMB_X81_Y68_N6
\add_res[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_res[4]~18_combout\ = (variate(5) & ((GND) # (!\add_res[3]~17\))) # (!variate(5) & (\add_res[3]~17\ $ (GND)))
-- \add_res[4]~19\ = CARRY((variate(5)) # (!\add_res[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => variate(5),
	datad => VCC,
	cin => \add_res[3]~17\,
	combout => \add_res[4]~18_combout\,
	cout => \add_res[4]~19\);

-- Location: FF_X82_Y68_N7
\add_res[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \add_res[4]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_res(4));

-- Location: IOIBUF_X69_Y73_N22
\x1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(7),
	o => \x1[7]~input_o\);

-- Location: FF_X80_Y68_N13
\variate[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x1[7]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => variate(7));

-- Location: IOIBUF_X81_Y73_N22
\x1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(6),
	o => \x1[6]~input_o\);

-- Location: FF_X81_Y68_N7
\variate[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x1[6]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => variate(6));

-- Location: LCCOMB_X81_Y68_N8
\add_res[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_res[5]~20_combout\ = (variate(6) & (\add_res[4]~19\ & VCC)) # (!variate(6) & (!\add_res[4]~19\))
-- \add_res[5]~21\ = CARRY((!variate(6) & !\add_res[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => variate(6),
	datad => VCC,
	cin => \add_res[4]~19\,
	combout => \add_res[5]~20_combout\,
	cout => \add_res[5]~21\);

-- Location: LCCOMB_X81_Y68_N10
\add_res[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_res[6]~22_combout\ = (variate(7) & ((GND) # (!\add_res[5]~21\))) # (!variate(7) & (\add_res[5]~21\ $ (GND)))
-- \add_res[6]~23\ = CARRY((variate(7)) # (!\add_res[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => variate(7),
	datad => VCC,
	cin => \add_res[5]~21\,
	combout => \add_res[6]~22_combout\,
	cout => \add_res[6]~23\);

-- Location: FF_X82_Y68_N21
\add_res[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \add_res[6]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_res(6));

-- Location: FF_X82_Y68_N9
\add_res[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \add_res[5]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_res(5));

-- Location: IOIBUF_X69_Y73_N15
\x1[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(8),
	o => \x1[8]~input_o\);

-- Location: FF_X80_Y68_N25
\variate[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x1[8]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => variate(8));

-- Location: LCCOMB_X81_Y68_N12
\add_res[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_res[7]~24_combout\ = (variate(8) & (\add_res[6]~23\ & VCC)) # (!variate(8) & (!\add_res[6]~23\))
-- \add_res[7]~25\ = CARRY((!variate(8) & !\add_res[6]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => variate(8),
	datad => VCC,
	cin => \add_res[6]~23\,
	combout => \add_res[7]~24_combout\,
	cout => \add_res[7]~25\);

-- Location: FF_X82_Y68_N3
\add_res[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \add_res[7]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_res(7));

-- Location: LCCOMB_X82_Y68_N4
\Mult0|mult_core|romout[1][8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][8]~0_combout\ = (add_res(5) & ((add_res(4) & (add_res(6) & !add_res(7))) # (!add_res(4) & ((add_res(6)) # (!add_res(7)))))) # (!add_res(5) & (add_res(7) $ (((add_res(4) & !add_res(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(4),
	datab => add_res(6),
	datac => add_res(5),
	datad => add_res(7),
	combout => \Mult0|mult_core|romout[1][8]~0_combout\);

-- Location: FF_X83_Y68_N31
\add_res[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \add_res[2]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_res(2));

-- Location: FF_X83_Y68_N1
\add_res[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \add_res[3]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_res(3));

-- Location: IOIBUF_X85_Y73_N8
\x1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(1),
	o => \x1[1]~input_o\);

-- Location: FF_X82_Y68_N27
\variate[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x1[1]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => variate(1));

-- Location: FF_X83_Y68_N29
\add_res[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => variate(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_res(0));

-- Location: LCCOMB_X82_Y68_N22
\add_res[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_res[1]~42_combout\ = !variate(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => variate(2),
	combout => \add_res[1]~42_combout\);

-- Location: FF_X82_Y68_N23
\add_res[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \add_res[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_res(1));

-- Location: LCCOMB_X83_Y68_N28
\Mult0|mult_core|romout[0][12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][12]~1_combout\ = (add_res(2) & ((add_res(3) & (add_res(0) & add_res(1))) # (!add_res(3) & ((!add_res(1)))))) # (!add_res(2) & ((add_res(3) & ((add_res(0)) # (add_res(1)))) # (!add_res(3) & (add_res(0) & add_res(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(2),
	datab => add_res(3),
	datac => add_res(0),
	datad => add_res(1),
	combout => \Mult0|mult_core|romout[0][12]~1_combout\);

-- Location: LCCOMB_X82_Y68_N12
\Mult0|mult_core|romout[1][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][7]~combout\ = (add_res(4) & ((add_res(6) & ((add_res(5)) # (add_res(7)))) # (!add_res(6) & ((!add_res(7)) # (!add_res(5)))))) # (!add_res(4) & (add_res(6) $ (((add_res(5) & add_res(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(4),
	datab => add_res(6),
	datac => add_res(5),
	datad => add_res(7),
	combout => \Mult0|mult_core|romout[1][7]~combout\);

-- Location: LCCOMB_X83_Y68_N0
\Mult0|mult_core|romout[0][11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][11]~2_combout\ = (add_res(2) & ((add_res(0) & ((!add_res(1)))) # (!add_res(0) & (add_res(3) & add_res(1))))) # (!add_res(2) & ((add_res(0) & (add_res(3) & add_res(1))) # (!add_res(0) & ((add_res(3)) # (add_res(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(2),
	datab => add_res(0),
	datac => add_res(3),
	datad => add_res(1),
	combout => \Mult0|mult_core|romout[0][11]~2_combout\);

-- Location: LCCOMB_X82_Y68_N14
\Mult0|mult_core|romout[1][6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][6]~3_combout\ = add_res(5) $ (add_res(7) $ (((add_res(4) & add_res(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(4),
	datab => add_res(6),
	datac => add_res(5),
	datad => add_res(7),
	combout => \Mult0|mult_core|romout[1][6]~3_combout\);

-- Location: LCCOMB_X82_Y68_N28
\Mult0|mult_core|romout[0][10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][10]~combout\ = (add_res(1) & ((add_res(2) & ((add_res(3)) # (add_res(0)))) # (!add_res(2) & (add_res(3) & add_res(0))))) # (!add_res(1) & (add_res(3) $ (((add_res(2)) # (add_res(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(2),
	datab => add_res(1),
	datac => add_res(3),
	datad => add_res(0),
	combout => \Mult0|mult_core|romout[0][10]~combout\);

-- Location: LCCOMB_X82_Y68_N16
\Mult0|mult_core|romout[0][9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][9]~5_combout\ = (add_res(2) & (add_res(0) $ (((add_res(3)) # (!add_res(1)))))) # (!add_res(2) & ((add_res(3) & ((add_res(0)))) # (!add_res(3) & (add_res(1) & !add_res(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(2),
	datab => add_res(1),
	datac => add_res(3),
	datad => add_res(0),
	combout => \Mult0|mult_core|romout[0][9]~5_combout\);

-- Location: LCCOMB_X82_Y68_N30
\Mult0|mult_core|romout[1][5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][5]~4_combout\ = add_res(6) $ (add_res(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => add_res(6),
	datad => add_res(4),
	combout => \Mult0|mult_core|romout[1][5]~4_combout\);

-- Location: LCCOMB_X83_Y68_N30
\Mult0|mult_core|romout[0][8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~6_combout\ = (add_res(3) & ((add_res(0) & (add_res(2) & !add_res(1))) # (!add_res(0) & ((add_res(2)) # (!add_res(1)))))) # (!add_res(3) & (add_res(1) $ (((add_res(0) & !add_res(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(0),
	datab => add_res(3),
	datac => add_res(2),
	datad => add_res(1),
	combout => \Mult0|mult_core|romout[0][8]~6_combout\);

-- Location: LCCOMB_X83_Y68_N2
\Mult0|mult_core|romout[0][7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][7]~7_combout\ = (add_res(2) & ((add_res(3) & ((add_res(0)) # (!add_res(1)))) # (!add_res(3) & ((add_res(1)) # (!add_res(0)))))) # (!add_res(2) & (add_res(0) $ (((add_res(3) & add_res(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(2),
	datab => add_res(3),
	datac => add_res(0),
	datad => add_res(1),
	combout => \Mult0|mult_core|romout[0][7]~7_combout\);

-- Location: LCCOMB_X83_Y68_N4
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\ = CARRY((add_res(4) & \Mult0|mult_core|romout[0][7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(4),
	datab => \Mult0|mult_core|romout[0][7]~7_combout\,
	datad => VCC,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X83_Y68_N6
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\ = CARRY((\Mult0|mult_core|romout[0][8]~6_combout\ & (!add_res(5) & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\)) # (!\Mult0|mult_core|romout[0][8]~6_combout\ & 
-- ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\) # (!add_res(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][8]~6_combout\,
	datab => add_res(5),
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1_cout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X83_Y68_N8
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\ = CARRY((\Mult0|mult_core|romout[0][9]~5_combout\ & ((\Mult0|mult_core|romout[1][5]~4_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\))) # 
-- (!\Mult0|mult_core|romout[0][9]~5_combout\ & (\Mult0|mult_core|romout[1][5]~4_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][9]~5_combout\,
	datab => \Mult0|mult_core|romout[1][5]~4_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3_cout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X83_Y68_N10
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\ = CARRY((\Mult0|mult_core|romout[1][6]~3_combout\ & (!\Mult0|mult_core|romout[0][10]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\)) # 
-- (!\Mult0|mult_core|romout[1][6]~3_combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\) # (!\Mult0|mult_core|romout[0][10]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][6]~3_combout\,
	datab => \Mult0|mult_core|romout[0][10]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5_cout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X83_Y68_N12
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\Mult0|mult_core|romout[1][7]~combout\ $ (\Mult0|mult_core|romout[0][11]~2_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\Mult0|mult_core|romout[1][7]~combout\ & ((\Mult0|mult_core|romout[0][11]~2_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\))) # 
-- (!\Mult0|mult_core|romout[1][7]~combout\ & (\Mult0|mult_core|romout[0][11]~2_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][7]~combout\,
	datab => \Mult0|mult_core|romout[0][11]~2_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7_cout\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X83_Y68_N14
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Mult0|mult_core|romout[1][8]~0_combout\ & ((\Mult0|mult_core|romout[0][12]~1_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\Mult0|mult_core|romout[0][12]~1_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # (!\Mult0|mult_core|romout[1][8]~0_combout\ & ((\Mult0|mult_core|romout[0][12]~1_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|romout[0][12]~1_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\Mult0|mult_core|romout[1][8]~0_combout\ & (!\Mult0|mult_core|romout[0][12]~1_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\Mult0|mult_core|romout[1][8]~0_combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\Mult0|mult_core|romout[0][12]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][8]~0_combout\,
	datab => \Mult0|mult_core|romout[0][12]~1_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: IOIBUF_X81_Y73_N15
\x1[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(10),
	o => \x1[10]~input_o\);

-- Location: FF_X81_Y68_N13
\variate[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x1[10]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => variate(10));

-- Location: IOIBUF_X72_Y73_N15
\x1[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(9),
	o => \x1[9]~input_o\);

-- Location: FF_X80_Y68_N5
\variate[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x1[9]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => variate(9));

-- Location: LCCOMB_X81_Y68_N14
\add_res[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_res[8]~26_combout\ = (variate(9) & (\add_res[7]~25\ $ (GND))) # (!variate(9) & (!\add_res[7]~25\ & VCC))
-- \add_res[8]~27\ = CARRY((variate(9) & !\add_res[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => variate(9),
	datad => VCC,
	cin => \add_res[7]~25\,
	combout => \add_res[8]~26_combout\,
	cout => \add_res[8]~27\);

-- Location: LCCOMB_X81_Y68_N16
\add_res[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_res[9]~28_combout\ = (variate(10) & (!\add_res[8]~27\)) # (!variate(10) & ((\add_res[8]~27\) # (GND)))
-- \add_res[9]~29\ = CARRY((!\add_res[8]~27\) # (!variate(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => variate(10),
	datad => VCC,
	cin => \add_res[8]~27\,
	combout => \add_res[9]~28_combout\,
	cout => \add_res[9]~29\);

-- Location: FF_X81_Y68_N17
\add_res[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \add_res[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_res(9));

-- Location: FF_X81_Y68_N15
\add_res[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \add_res[8]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_res(8));

-- Location: LCCOMB_X84_Y68_N0
\mult_res[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult_res[0]~16_cout\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & add_res(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => add_res(8),
	datad => VCC,
	cout => \mult_res[0]~16_cout\);

-- Location: LCCOMB_X84_Y68_N2
\mult_res[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult_res[0]~17_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((add_res(9) & (\mult_res[0]~16_cout\ & VCC)) # (!add_res(9) & (!\mult_res[0]~16_cout\)))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ 
-- & ((add_res(9) & (!\mult_res[0]~16_cout\)) # (!add_res(9) & ((\mult_res[0]~16_cout\) # (GND)))))
-- \mult_res[0]~18\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!add_res(9) & !\mult_res[0]~16_cout\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\mult_res[0]~16_cout\) # (!add_res(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => add_res(9),
	datad => VCC,
	cin => \mult_res[0]~16_cout\,
	combout => \mult_res[0]~17_combout\,
	cout => \mult_res[0]~18\);

-- Location: FF_X84_Y68_N3
\mult_res[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult_res[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_res(0));

-- Location: LCCOMB_X82_Y68_N10
\Mult0|mult_core|romout[1][9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][9]~8_combout\ = (add_res(4) & ((add_res(6) & (add_res(5) & !add_res(7))) # (!add_res(6) & ((add_res(7)))))) # (!add_res(4) & (add_res(6) $ (((add_res(5) & !add_res(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(4),
	datab => add_res(6),
	datac => add_res(5),
	datad => add_res(7),
	combout => \Mult0|mult_core|romout[1][9]~8_combout\);

-- Location: LCCOMB_X82_Y68_N24
\Mult0|mult_core|romout[0][13]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][13]~9_combout\ = (add_res(3) & ((!add_res(2)))) # (!add_res(3) & (add_res(1) & add_res(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(1),
	datab => add_res(3),
	datad => add_res(2),
	combout => \Mult0|mult_core|romout[0][13]~9_combout\);

-- Location: LCCOMB_X83_Y68_N16
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\Mult0|mult_core|romout[1][9]~8_combout\ $ (\Mult0|mult_core|romout[0][13]~9_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\Mult0|mult_core|romout[1][9]~8_combout\ & ((\Mult0|mult_core|romout[0][13]~9_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))) # 
-- (!\Mult0|mult_core|romout[1][9]~8_combout\ & (\Mult0|mult_core|romout[0][13]~9_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][9]~8_combout\,
	datab => \Mult0|mult_core|romout[0][13]~9_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: IOIBUF_X74_Y73_N22
\x1[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(11),
	o => \x1[11]~input_o\);

-- Location: FF_X81_Y68_N11
\variate[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x1[11]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => variate(11));

-- Location: LCCOMB_X81_Y68_N18
\add_res[10]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_res[10]~30_combout\ = (variate(11) & ((GND) # (!\add_res[9]~29\))) # (!variate(11) & (\add_res[9]~29\ $ (GND)))
-- \add_res[10]~31\ = CARRY((variate(11)) # (!\add_res[9]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => variate(11),
	datad => VCC,
	cin => \add_res[9]~29\,
	combout => \add_res[10]~30_combout\,
	cout => \add_res[10]~31\);

-- Location: FF_X81_Y68_N19
\add_res[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \add_res[10]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_res(10));

-- Location: LCCOMB_X80_Y68_N28
\Mult0|mult_core|romout[2][5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][5]~10_combout\ = add_res(8) $ (add_res(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => add_res(8),
	datad => add_res(10),
	combout => \Mult0|mult_core|romout[2][5]~10_combout\);

-- Location: LCCOMB_X84_Y68_N4
\mult_res[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult_res[1]~19_combout\ = ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ (\Mult0|mult_core|romout[2][5]~10_combout\ $ (!\mult_res[0]~18\)))) # (GND)
-- \mult_res[1]~20\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((\Mult0|mult_core|romout[2][5]~10_combout\) # (!\mult_res[0]~18\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & 
-- (\Mult0|mult_core|romout[2][5]~10_combout\ & !\mult_res[0]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datab => \Mult0|mult_core|romout[2][5]~10_combout\,
	datad => VCC,
	cin => \mult_res[0]~18\,
	combout => \mult_res[1]~19_combout\,
	cout => \mult_res[1]~20\);

-- Location: FF_X84_Y68_N5
\mult_res[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult_res[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_res(1));

-- Location: IOIBUF_X74_Y73_N15
\x1[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(12),
	o => \x1[12]~input_o\);

-- Location: FF_X81_Y68_N9
\variate[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x1[12]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => variate(12));

-- Location: LCCOMB_X81_Y68_N20
\add_res[11]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_res[11]~32_combout\ = (variate(12) & (!\add_res[10]~31\)) # (!variate(12) & ((\add_res[10]~31\) # (GND)))
-- \add_res[11]~33\ = CARRY((!\add_res[10]~31\) # (!variate(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => variate(12),
	datad => VCC,
	cin => \add_res[10]~31\,
	combout => \add_res[11]~32_combout\,
	cout => \add_res[11]~33\);

-- Location: FF_X81_Y68_N21
\add_res[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \add_res[11]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_res(11));

-- Location: LCCOMB_X80_Y68_N6
\Mult0|mult_core|romout[2][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][6]~combout\ = add_res(11) $ (add_res(9) $ (((add_res(10) & add_res(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(11),
	datab => add_res(10),
	datac => add_res(8),
	datad => add_res(9),
	combout => \Mult0|mult_core|romout[2][6]~combout\);

-- Location: LCCOMB_X82_Y68_N0
\Mult0|mult_core|romout[0][14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][14]~12_combout\ = (add_res(3) & add_res(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => add_res(3),
	datad => add_res(2),
	combout => \Mult0|mult_core|romout[0][14]~12_combout\);

-- Location: LCCOMB_X82_Y68_N18
\Mult0|mult_core|romout[1][10]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][10]~11_combout\ = (add_res(7) & (add_res(5) $ (((!add_res(4) & !add_res(6)))))) # (!add_res(7) & ((add_res(4) & ((add_res(6)) # (!add_res(5)))) # (!add_res(4) & (add_res(6) & !add_res(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(4),
	datab => add_res(7),
	datac => add_res(6),
	datad => add_res(5),
	combout => \Mult0|mult_core|romout[1][10]~11_combout\);

-- Location: LCCOMB_X83_Y68_N18
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\Mult0|mult_core|romout[0][14]~12_combout\ & ((\Mult0|mult_core|romout[1][10]~11_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ & VCC)) # 
-- (!\Mult0|mult_core|romout[1][10]~11_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)))) # (!\Mult0|mult_core|romout[0][14]~12_combout\ & ((\Mult0|mult_core|romout[1][10]~11_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\Mult0|mult_core|romout[1][10]~11_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((\Mult0|mult_core|romout[0][14]~12_combout\ & (!\Mult0|mult_core|romout[1][10]~11_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # 
-- (!\Mult0|mult_core|romout[0][14]~12_combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\Mult0|mult_core|romout[1][10]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][14]~12_combout\,
	datab => \Mult0|mult_core|romout[1][10]~11_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X84_Y68_N6
\mult_res[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult_res[2]~21_combout\ = (\Mult0|mult_core|romout[2][6]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (\mult_res[1]~20\ & VCC)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & 
-- (!\mult_res[1]~20\)))) # (!\Mult0|mult_core|romout[2][6]~combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\mult_res[1]~20\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((\mult_res[1]~20\) # 
-- (GND)))))
-- \mult_res[2]~22\ = CARRY((\Mult0|mult_core|romout[2][6]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & !\mult_res[1]~20\)) # (!\Mult0|mult_core|romout[2][6]~combout\ & ((!\mult_res[1]~20\) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][6]~combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \mult_res[1]~20\,
	combout => \mult_res[2]~21_combout\,
	cout => \mult_res[2]~22\);

-- Location: FF_X84_Y68_N7
\mult_res[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult_res[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_res(2));

-- Location: IOIBUF_X72_Y73_N8
\x1[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(13),
	o => \x1[13]~input_o\);

-- Location: FF_X80_Y68_N3
\variate[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x1[13]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => variate(13));

-- Location: LCCOMB_X81_Y68_N22
\add_res[12]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_res[12]~34_combout\ = (variate(13) & ((GND) # (!\add_res[11]~33\))) # (!variate(13) & (\add_res[11]~33\ $ (GND)))
-- \add_res[12]~35\ = CARRY((variate(13)) # (!\add_res[11]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => variate(13),
	datad => VCC,
	cin => \add_res[11]~33\,
	combout => \add_res[12]~34_combout\,
	cout => \add_res[12]~35\);

-- Location: FF_X81_Y68_N23
\add_res[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \add_res[12]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_res(12));

-- Location: LCCOMB_X85_Y68_N0
\Mult0|mult_core|romout[2][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][7]~combout\ = (add_res(8) & ((add_res(9) & ((add_res(10)) # (!add_res(11)))) # (!add_res(9) & ((add_res(11)) # (!add_res(10)))))) # (!add_res(8) & (add_res(10) $ (((add_res(9) & add_res(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(9),
	datab => add_res(8),
	datac => add_res(11),
	datad => add_res(10),
	combout => \Mult0|mult_core|romout[2][7]~combout\);

-- Location: LCCOMB_X85_Y68_N4
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ = (add_res(12) & (\Mult0|mult_core|romout[2][7]~combout\ $ (VCC))) # (!add_res(12) & (\Mult0|mult_core|romout[2][7]~combout\ & VCC))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\ = CARRY((add_res(12) & \Mult0|mult_core|romout[2][7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(12),
	datab => \Mult0|mult_core|romout[2][7]~combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\);

-- Location: LCCOMB_X82_Y68_N8
\Mult0|mult_core|romout[1][11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][11]~13_combout\ = (add_res(4) & ((add_res(6) & (!add_res(5))) # (!add_res(6) & (add_res(5) & add_res(7))))) # (!add_res(4) & ((add_res(6) & (add_res(5) & add_res(7))) # (!add_res(6) & ((add_res(5)) # (add_res(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(4),
	datab => add_res(6),
	datac => add_res(5),
	datad => add_res(7),
	combout => \Mult0|mult_core|romout[1][11]~13_combout\);

-- Location: LCCOMB_X83_Y68_N20
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = (\Mult0|mult_core|romout[1][11]~13_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ $ (GND))) # (!\Mult0|mult_core|romout[1][11]~13_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\Mult0|mult_core|romout[1][11]~13_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][11]~13_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X84_Y68_N8
\mult_res[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult_res[3]~23_combout\ = ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ $ (!\mult_res[2]~22\)))) # (GND)
-- \mult_res[3]~24\ = CARRY((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\) # (!\mult_res[2]~22\))) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\ & 
-- (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & !\mult_res[2]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~0_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \mult_res[2]~22\,
	combout => \mult_res[3]~23_combout\,
	cout => \mult_res[3]~24\);

-- Location: FF_X84_Y68_N9
\mult_res[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult_res[3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_res(3));

-- Location: IOIBUF_X72_Y73_N1
\x1[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(14),
	o => \x1[14]~input_o\);

-- Location: LCCOMB_X80_Y68_N8
\variate[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \variate[14]~feeder_combout\ = \x1[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x1[14]~input_o\,
	combout => \variate[14]~feeder_combout\);

-- Location: FF_X80_Y68_N9
\variate[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \variate[14]~feeder_combout\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => variate(14));

-- Location: LCCOMB_X81_Y68_N24
\add_res[13]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_res[13]~36_combout\ = (variate(14) & (\add_res[12]~35\ & VCC)) # (!variate(14) & (!\add_res[12]~35\))
-- \add_res[13]~37\ = CARRY((!variate(14) & !\add_res[12]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => variate(14),
	datad => VCC,
	cin => \add_res[12]~35\,
	combout => \add_res[13]~36_combout\,
	cout => \add_res[13]~37\);

-- Location: FF_X81_Y68_N25
\add_res[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \add_res[13]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_res(13));

-- Location: LCCOMB_X85_Y68_N2
\Mult0|mult_core|romout[2][8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][8]~combout\ = (add_res(9) & ((add_res(8) & (!add_res(11) & add_res(10))) # (!add_res(8) & ((add_res(10)) # (!add_res(11)))))) # (!add_res(9) & (add_res(11) $ (((add_res(8) & !add_res(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(9),
	datab => add_res(8),
	datac => add_res(11),
	datad => add_res(10),
	combout => \Mult0|mult_core|romout[2][8]~combout\);

-- Location: LCCOMB_X85_Y68_N6
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ = (add_res(13) & ((\Mult0|mult_core|romout[2][8]~combout\ & (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\ & VCC)) # (!\Mult0|mult_core|romout[2][8]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\)))) # (!add_res(13) & ((\Mult0|mult_core|romout[2][8]~combout\ & (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|romout[2][8]~combout\ & 
-- ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\ = CARRY((add_res(13) & (!\Mult0|mult_core|romout[2][8]~combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\)) # (!add_res(13) & 
-- ((!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\) # (!\Mult0|mult_core|romout[2][8]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => add_res(13),
	datab => \Mult0|mult_core|romout[2][8]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\);

-- Location: LCCOMB_X82_Y68_N2
\Mult0|mult_core|romout[1][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][12]~combout\ = (add_res(6) & ((add_res(7) & (add_res(4) & add_res(5))) # (!add_res(7) & ((!add_res(5)))))) # (!add_res(6) & ((add_res(4) & ((add_res(7)) # (add_res(5)))) # (!add_res(4) & (add_res(7) & add_res(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(4),
	datab => add_res(6),
	datac => add_res(7),
	datad => add_res(5),
	combout => \Mult0|mult_core|romout[1][12]~combout\);

-- Location: LCCOMB_X83_Y68_N22
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = (\Mult0|mult_core|romout[1][12]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # (!\Mult0|mult_core|romout[1][12]~combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (GND)))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ = CARRY((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (!\Mult0|mult_core|romout[1][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][12]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X84_Y68_N10
\mult_res[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult_res[4]~25_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (\mult_res[3]~24\ & VCC)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (!\mult_res[3]~24\)))) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (!\mult_res[3]~24\)) # 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((\mult_res[3]~24\) # (GND)))))
-- \mult_res[4]~26\ = CARRY((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & !\mult_res[3]~24\)) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\ & 
-- ((!\mult_res[3]~24\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~2_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \mult_res[3]~24\,
	combout => \mult_res[4]~25_combout\,
	cout => \mult_res[4]~26\);

-- Location: FF_X84_Y68_N11
\mult_res[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult_res[4]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_res(4));

-- Location: IOIBUF_X67_Y73_N22
\x1[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(15),
	o => \x1[15]~input_o\);

-- Location: FF_X80_Y68_N27
\variate[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \x1[15]~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => variate(15));

-- Location: LCCOMB_X81_Y68_N26
\add_res[14]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_res[14]~38_combout\ = (variate(15) & (\add_res[13]~37\ $ (GND))) # (!variate(15) & (!\add_res[13]~37\ & VCC))
-- \add_res[14]~39\ = CARRY((variate(15) & !\add_res[13]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => variate(15),
	datad => VCC,
	cin => \add_res[13]~37\,
	combout => \add_res[14]~38_combout\,
	cout => \add_res[14]~39\);

-- Location: FF_X81_Y68_N27
\add_res[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \add_res[14]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_res(14));

-- Location: LCCOMB_X86_Y68_N4
\Mult0|mult_core|romout[3][5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][5]~15_combout\ = add_res(12) $ (add_res(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => add_res(12),
	datad => add_res(14),
	combout => \Mult0|mult_core|romout[3][5]~15_combout\);

-- Location: LCCOMB_X85_Y68_N28
\Mult0|mult_core|romout[2][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][9]~combout\ = (add_res(9) & (add_res(8) $ (add_res(11) $ (!add_res(10))))) # (!add_res(9) & ((add_res(8) & (add_res(11) & !add_res(10))) # (!add_res(8) & ((add_res(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(9),
	datab => add_res(8),
	datac => add_res(11),
	datad => add_res(10),
	combout => \Mult0|mult_core|romout[2][9]~combout\);

-- Location: LCCOMB_X85_Y68_N8
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ = ((\Mult0|mult_core|romout[3][5]~15_combout\ $ (\Mult0|mult_core|romout[2][9]~combout\ $ (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\ = CARRY((\Mult0|mult_core|romout[3][5]~15_combout\ & ((\Mult0|mult_core|romout[2][9]~combout\) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\))) # 
-- (!\Mult0|mult_core|romout[3][5]~15_combout\ & (\Mult0|mult_core|romout[2][9]~combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[3][5]~15_combout\,
	datab => \Mult0|mult_core|romout[2][9]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\);

-- Location: LCCOMB_X82_Y68_N20
\Mult0|mult_core|romout[1][13]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][13]~14_combout\ = (add_res(7) & (!add_res(6))) # (!add_res(7) & (add_res(6) & add_res(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => add_res(7),
	datac => add_res(6),
	datad => add_res(5),
	combout => \Mult0|mult_core|romout[1][13]~14_combout\);

-- Location: LCCOMB_X83_Y68_N24
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ = (\Mult0|mult_core|romout[1][13]~14_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ $ (GND))) # (!\Mult0|mult_core|romout[1][13]~14_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ = CARRY((\Mult0|mult_core|romout[1][13]~14_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[1][13]~14_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X84_Y68_N12
\mult_res[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult_res[5]~27_combout\ = ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ $ (!\mult_res[4]~26\)))) # (GND)
-- \mult_res[5]~28\ = CARRY((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\) # (!\mult_res[4]~26\))) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\ & 
-- (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & !\mult_res[4]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~4_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \mult_res[4]~26\,
	combout => \mult_res[5]~27_combout\,
	cout => \mult_res[5]~28\);

-- Location: FF_X84_Y68_N13
\mult_res[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult_res[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_res(5));

-- Location: LCCOMB_X82_Y68_N6
\Mult0|mult_core|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|_~0_combout\ = (add_res(7) & add_res(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(7),
	datad => add_res(6),
	combout => \Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X83_Y68_N26
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ = \Mult0|mult_core|_~0_combout\ $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|_~0_combout\,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\);

-- Location: LCCOMB_X85_Y68_N30
\Mult0|mult_core|romout[2][10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][10]~combout\ = (add_res(9) & ((add_res(8) & ((add_res(11)) # (add_res(10)))) # (!add_res(8) & (add_res(11) & add_res(10))))) # (!add_res(9) & (add_res(11) $ (((add_res(8)) # (add_res(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(9),
	datab => add_res(8),
	datac => add_res(11),
	datad => add_res(10),
	combout => \Mult0|mult_core|romout[2][10]~combout\);

-- Location: LCCOMB_X81_Y68_N28
\add_res[15]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_res[15]~40_combout\ = variate(15) $ (!\add_res[14]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => variate(15),
	cin => \add_res[14]~39\,
	combout => \add_res[15]~40_combout\);

-- Location: FF_X81_Y68_N29
\add_res[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \add_res[15]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => add_res(15));

-- Location: LCCOMB_X81_Y68_N0
\Mult0|mult_core|romout[3][6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][6]~16_combout\ = add_res(15) $ (add_res(13) $ (((add_res(14) & add_res(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(14),
	datab => add_res(15),
	datac => add_res(12),
	datad => add_res(13),
	combout => \Mult0|mult_core|romout[3][6]~16_combout\);

-- Location: LCCOMB_X85_Y68_N10
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ = (\Mult0|mult_core|romout[2][10]~combout\ & ((\Mult0|mult_core|romout[3][6]~16_combout\ & (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\ & VCC)) # 
-- (!\Mult0|mult_core|romout[3][6]~16_combout\ & (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\)))) # (!\Mult0|mult_core|romout[2][10]~combout\ & ((\Mult0|mult_core|romout[3][6]~16_combout\ & 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|romout[3][6]~16_combout\ & ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~7\ = CARRY((\Mult0|mult_core|romout[2][10]~combout\ & (!\Mult0|mult_core|romout[3][6]~16_combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|romout[2][10]~combout\ 
-- & ((!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\) # (!\Mult0|mult_core|romout[3][6]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[2][10]~combout\,
	datab => \Mult0|mult_core|romout[3][6]~16_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~7\);

-- Location: LCCOMB_X84_Y68_N14
\mult_res[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult_res[6]~29_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ & (\mult_res[5]~28\ & VCC)) # 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ & (!\mult_res[5]~28\)))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ & (!\mult_res[5]~28\)) # 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ & ((\mult_res[5]~28\) # (GND)))))
-- \mult_res[6]~30\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\ & !\mult_res[5]~28\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & 
-- ((!\mult_res[5]~28\) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	datab => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \mult_res[5]~28\,
	combout => \mult_res[6]~29_combout\,
	cout => \mult_res[6]~30\);

-- Location: FF_X84_Y68_N15
\mult_res[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult_res[6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_res(6));

-- Location: LCCOMB_X80_Y68_N16
\Mult0|mult_core|romout[3][7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][7]~combout\ = (add_res(12) & ((add_res(13) & ((add_res(14)) # (!add_res(15)))) # (!add_res(13) & ((add_res(15)) # (!add_res(14)))))) # (!add_res(12) & (add_res(14) $ (((add_res(13) & add_res(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(13),
	datab => add_res(12),
	datac => add_res(14),
	datad => add_res(15),
	combout => \Mult0|mult_core|romout[3][7]~combout\);

-- Location: LCCOMB_X80_Y68_N10
\Mult0|mult_core|romout[2][11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][11]~combout\ = (add_res(10) & ((add_res(8) & ((!add_res(9)))) # (!add_res(8) & (add_res(11) & add_res(9))))) # (!add_res(10) & ((add_res(11) & ((add_res(9)) # (!add_res(8)))) # (!add_res(11) & (!add_res(8) & add_res(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(11),
	datab => add_res(10),
	datac => add_res(8),
	datad => add_res(9),
	combout => \Mult0|mult_core|romout[2][11]~combout\);

-- Location: LCCOMB_X85_Y68_N12
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ = ((\Mult0|mult_core|romout[3][7]~combout\ $ (\Mult0|mult_core|romout[2][11]~combout\ $ (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\ = CARRY((\Mult0|mult_core|romout[3][7]~combout\ & ((\Mult0|mult_core|romout[2][11]~combout\) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~7\))) # (!\Mult0|mult_core|romout[3][7]~combout\ 
-- & (\Mult0|mult_core|romout[2][11]~combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[3][7]~combout\,
	datab => \Mult0|mult_core|romout[2][11]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\);

-- Location: LCCOMB_X84_Y68_N16
\mult_res[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult_res[7]~31_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ & (\mult_res[6]~30\ $ (GND))) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ & (!\mult_res[6]~30\ & VCC))
-- \mult_res[7]~32\ = CARRY((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\ & !\mult_res[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \mult_res[6]~30\,
	combout => \mult_res[7]~31_combout\,
	cout => \mult_res[7]~32\);

-- Location: FF_X84_Y68_N17
\mult_res[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult_res[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_res(7));

-- Location: LCCOMB_X80_Y68_N20
\Mult0|mult_core|romout[3][8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][8]~combout\ = (add_res(13) & ((add_res(14) & ((!add_res(15)) # (!add_res(12)))) # (!add_res(14) & (!add_res(12) & !add_res(15))))) # (!add_res(13) & (add_res(15) $ (((!add_res(14) & add_res(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(14),
	datab => add_res(12),
	datac => add_res(13),
	datad => add_res(15),
	combout => \Mult0|mult_core|romout[3][8]~combout\);

-- Location: LCCOMB_X81_Y68_N30
\Mult0|mult_core|romout[2][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][12]~combout\ = (add_res(11) & ((add_res(10) & (add_res(8) & add_res(9))) # (!add_res(10) & ((add_res(8)) # (add_res(9)))))) # (!add_res(11) & ((add_res(10) & ((!add_res(9)))) # (!add_res(10) & (add_res(8) & add_res(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(11),
	datab => add_res(10),
	datac => add_res(8),
	datad => add_res(9),
	combout => \Mult0|mult_core|romout[2][12]~combout\);

-- Location: LCCOMB_X85_Y68_N14
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ = (\Mult0|mult_core|romout[3][8]~combout\ & ((\Mult0|mult_core|romout[2][12]~combout\ & (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\ & VCC)) # 
-- (!\Mult0|mult_core|romout[2][12]~combout\ & (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\)))) # (!\Mult0|mult_core|romout[3][8]~combout\ & ((\Mult0|mult_core|romout[2][12]~combout\ & (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\)) 
-- # (!\Mult0|mult_core|romout[2][12]~combout\ & ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~11\ = CARRY((\Mult0|mult_core|romout[3][8]~combout\ & (!\Mult0|mult_core|romout[2][12]~combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|romout[3][8]~combout\ & 
-- ((!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\) # (!\Mult0|mult_core|romout[2][12]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[3][8]~combout\,
	datab => \Mult0|mult_core|romout[2][12]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~11\);

-- Location: LCCOMB_X84_Y68_N18
\mult_res[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult_res[8]~33_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ & (!\mult_res[7]~32\)) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\ & ((\mult_res[7]~32\) # (GND)))
-- \mult_res[8]~34\ = CARRY((!\mult_res[7]~32\) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \mult_res[7]~32\,
	combout => \mult_res[8]~33_combout\,
	cout => \mult_res[8]~34\);

-- Location: FF_X84_Y68_N19
\mult_res[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult_res[8]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_res(8));

-- Location: LCCOMB_X80_Y68_N14
\Mult0|mult_core|romout[3][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][9]~combout\ = (add_res(14) & (add_res(12) $ (((add_res(15)) # (!add_res(13)))))) # (!add_res(14) & ((add_res(12) & ((add_res(15)))) # (!add_res(12) & (add_res(13) & !add_res(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(14),
	datab => add_res(12),
	datac => add_res(13),
	datad => add_res(15),
	combout => \Mult0|mult_core|romout[3][9]~combout\);

-- Location: LCCOMB_X80_Y68_N24
\Mult0|mult_core|romout[2][13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[2][13]~combout\ = (add_res(11) & ((!add_res(10)))) # (!add_res(11) & (add_res(9) & add_res(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(11),
	datab => add_res(9),
	datad => add_res(10),
	combout => \Mult0|mult_core|romout[2][13]~combout\);

-- Location: LCCOMB_X85_Y68_N16
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ = ((\Mult0|mult_core|romout[3][9]~combout\ $ (\Mult0|mult_core|romout[2][13]~combout\ $ (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~13\ = CARRY((\Mult0|mult_core|romout[3][9]~combout\ & ((\Mult0|mult_core|romout[2][13]~combout\) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~11\))) # 
-- (!\Mult0|mult_core|romout[3][9]~combout\ & (\Mult0|mult_core|romout[2][13]~combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[3][9]~combout\,
	datab => \Mult0|mult_core|romout[2][13]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~11\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~13\);

-- Location: LCCOMB_X84_Y68_N20
\mult_res[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult_res[9]~35_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ & (\mult_res[8]~34\ $ (GND))) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ & (!\mult_res[8]~34\ & VCC))
-- \mult_res[9]~36\ = CARRY((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\ & !\mult_res[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \mult_res[8]~34\,
	combout => \mult_res[9]~35_combout\,
	cout => \mult_res[9]~36\);

-- Location: FF_X84_Y68_N21
\mult_res[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult_res[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_res(9));

-- Location: LCCOMB_X80_Y68_N22
\Mult0|mult_core|romout[3][10]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][10]~17_combout\ = (add_res(13) & ((add_res(14) & ((add_res(12)) # (add_res(15)))) # (!add_res(14) & (add_res(12) & add_res(15))))) # (!add_res(13) & (add_res(15) $ (((add_res(14)) # (add_res(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(14),
	datab => add_res(12),
	datac => add_res(13),
	datad => add_res(15),
	combout => \Mult0|mult_core|romout[3][10]~17_combout\);

-- Location: LCCOMB_X82_Y68_N26
\Mult0|mult_core|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|_~1_combout\ = (add_res(11) & add_res(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => add_res(11),
	datad => add_res(10),
	combout => \Mult0|mult_core|_~1_combout\);

-- Location: LCCOMB_X85_Y68_N18
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\ = (\Mult0|mult_core|romout[3][10]~17_combout\ & ((\Mult0|mult_core|_~1_combout\ & (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~13\ & VCC)) # (!\Mult0|mult_core|_~1_combout\ & 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~13\)))) # (!\Mult0|mult_core|romout[3][10]~17_combout\ & ((\Mult0|mult_core|_~1_combout\ & (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~13\)) # (!\Mult0|mult_core|_~1_combout\ & 
-- ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~13\) # (GND)))))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~15\ = CARRY((\Mult0|mult_core|romout[3][10]~17_combout\ & (!\Mult0|mult_core|_~1_combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~13\)) # (!\Mult0|mult_core|romout[3][10]~17_combout\ & 
-- ((!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~13\) # (!\Mult0|mult_core|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[3][10]~17_combout\,
	datab => \Mult0|mult_core|_~1_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~13\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~15\);

-- Location: LCCOMB_X84_Y68_N22
\mult_res[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult_res[10]~37_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\ & (!\mult_res[9]~36\)) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\ & ((\mult_res[9]~36\) # (GND)))
-- \mult_res[10]~38\ = CARRY((!\mult_res[9]~36\) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \mult_res[9]~36\,
	combout => \mult_res[10]~37_combout\,
	cout => \mult_res[10]~38\);

-- Location: FF_X84_Y68_N23
\mult_res[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult_res[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_res(10));

-- Location: LCCOMB_X80_Y68_N0
\Mult0|mult_core|romout[3][11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][11]~18_combout\ = (add_res(14) & ((add_res(13) & (add_res(15) & !add_res(12))) # (!add_res(13) & ((add_res(12)))))) # (!add_res(14) & ((add_res(15) & ((add_res(13)) # (!add_res(12)))) # (!add_res(15) & (add_res(13) & 
-- !add_res(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(14),
	datab => add_res(15),
	datac => add_res(13),
	datad => add_res(12),
	combout => \Mult0|mult_core|romout[3][11]~18_combout\);

-- Location: LCCOMB_X85_Y68_N20
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ = (\Mult0|mult_core|romout[3][11]~18_combout\ & (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~15\ $ (GND))) # (!\Mult0|mult_core|romout[3][11]~18_combout\ & 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~15\ & VCC))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~17\ = CARRY((\Mult0|mult_core|romout[3][11]~18_combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[3][11]~18_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~15\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~17\);

-- Location: LCCOMB_X84_Y68_N24
\mult_res[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult_res[11]~39_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ & (\mult_res[10]~38\ $ (GND))) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ & (!\mult_res[10]~38\ & VCC))
-- \mult_res[11]~40\ = CARRY((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\ & !\mult_res[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \mult_res[10]~38\,
	combout => \mult_res[11]~39_combout\,
	cout => \mult_res[11]~40\);

-- Location: FF_X84_Y68_N25
\mult_res[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult_res[11]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_res(11));

-- Location: LCCOMB_X80_Y68_N30
\Mult0|mult_core|romout[3][12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][12]~combout\ = (add_res(14) & ((add_res(13) & (add_res(12) & add_res(15))) # (!add_res(13) & ((!add_res(15)))))) # (!add_res(14) & ((add_res(12) & ((add_res(13)) # (add_res(15)))) # (!add_res(12) & (add_res(13) & add_res(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => add_res(14),
	datab => add_res(12),
	datac => add_res(13),
	datad => add_res(15),
	combout => \Mult0|mult_core|romout[3][12]~combout\);

-- Location: LCCOMB_X85_Y68_N22
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\ = (\Mult0|mult_core|romout[3][12]~combout\ & (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~17\)) # (!\Mult0|mult_core|romout[3][12]~combout\ & 
-- ((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~17\) # (GND)))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~19\ = CARRY((!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~17\) # (!\Mult0|mult_core|romout[3][12]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[3][12]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~17\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~19\);

-- Location: LCCOMB_X84_Y68_N26
\mult_res[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult_res[12]~41_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\ & (!\mult_res[11]~40\)) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\ & ((\mult_res[11]~40\) # (GND)))
-- \mult_res[12]~42\ = CARRY((!\mult_res[11]~40\) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \mult_res[11]~40\,
	combout => \mult_res[12]~41_combout\,
	cout => \mult_res[12]~42\);

-- Location: FF_X84_Y68_N27
\mult_res[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult_res[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_res(12));

-- Location: LCCOMB_X86_Y68_N2
\Mult0|mult_core|romout[3][13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[3][13]~19_combout\ = (add_res(15) & ((!add_res(14)))) # (!add_res(15) & (add_res(13) & add_res(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => add_res(15),
	datac => add_res(13),
	datad => add_res(14),
	combout => \Mult0|mult_core|romout[3][13]~19_combout\);

-- Location: LCCOMB_X85_Y68_N24
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\ = (\Mult0|mult_core|romout[3][13]~19_combout\ & (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~19\ $ (GND))) # (!\Mult0|mult_core|romout[3][13]~19_combout\ & 
-- (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~19\ & VCC))
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~21\ = CARRY((\Mult0|mult_core|romout[3][13]~19_combout\ & !\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[3][13]~19_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~19\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\,
	cout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~21\);

-- Location: LCCOMB_X84_Y68_N28
\mult_res[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult_res[13]~43_combout\ = (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\ & (\mult_res[12]~42\ $ (GND))) # (!\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\ & (!\mult_res[12]~42\ & VCC))
-- \mult_res[13]~44\ = CARRY((\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\ & !\mult_res[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \mult_res[12]~42\,
	combout => \mult_res[13]~43_combout\,
	cout => \mult_res[13]~44\);

-- Location: FF_X84_Y68_N29
\mult_res[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult_res[13]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_res(13));

-- Location: LCCOMB_X86_Y68_N24
\Mult0|mult_core|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|_~2_combout\ = (add_res(15) & add_res(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => add_res(15),
	datad => add_res(14),
	combout => \Mult0|mult_core|_~2_combout\);

-- Location: LCCOMB_X85_Y68_N26
\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~22_combout\ = \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~21\ $ (\Mult0|mult_core|_~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|_~2_combout\,
	cin => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~21\,
	combout => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~22_combout\);

-- Location: LCCOMB_X84_Y68_N30
\mult_res[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mult_res[14]~45_combout\ = \mult_res[13]~44\ $ (\Mult0|mult_core|padder|adder[1]|auto_generated|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|padder|adder[1]|auto_generated|op_1~22_combout\,
	cin => \mult_res[13]~44\,
	combout => \mult_res[14]~45_combout\);

-- Location: FF_X84_Y68_N31
\mult_res[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mult_res[14]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mult_res(14));

-- Location: IOIBUF_X49_Y73_N15
\x1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x1(0),
	o => \x1[0]~input_o\);

ww_G(0) <= \G[0]~output_o\;

ww_G(1) <= \G[1]~output_o\;

ww_G(2) <= \G[2]~output_o\;

ww_G(3) <= \G[3]~output_o\;

ww_G(4) <= \G[4]~output_o\;

ww_G(5) <= \G[5]~output_o\;

ww_G(6) <= \G[6]~output_o\;

ww_G(7) <= \G[7]~output_o\;

ww_G(8) <= \G[8]~output_o\;

ww_G(9) <= \G[9]~output_o\;

ww_G(10) <= \G[10]~output_o\;

ww_G(11) <= \G[11]~output_o\;

ww_G(12) <= \G[12]~output_o\;

ww_G(13) <= \G[13]~output_o\;

ww_G(14) <= \G[14]~output_o\;

ww_G(15) <= \G[15]~output_o\;
END structure;


