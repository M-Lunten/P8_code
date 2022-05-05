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

-- DATE "05/05/2022 14:37:18"

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

ENTITY 	addr_gen IS
    PORT (
	clk : IN std_logic;
	MUX_ctrl : IN std_logic;
	mask : IN std_logic_vector(8 DOWNTO 0);
	origin : IN std_logic_vector(8 DOWNTO 0);
	stride : IN std_logic_vector(7 DOWNTO 0);
	addr_1 : OUT std_logic_vector(8 DOWNTO 0);
	addr_2 : OUT std_logic_vector(8 DOWNTO 0)
	);
END addr_gen;

-- Design Ports Information
-- addr_1[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_1[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_1[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_1[3]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_1[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_1[5]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_1[6]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_1[7]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_1[8]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[4]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[6]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[7]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[8]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[3]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[4]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[5]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[6]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[7]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[8]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_ctrl	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[2]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[3]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[5]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[6]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[7]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[8]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stride[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stride[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stride[2]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stride[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stride[4]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stride[5]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stride[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stride[7]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF addr_gen IS
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
SIGNAL ww_MUX_ctrl : std_logic;
SIGNAL ww_mask : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_origin : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_stride : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_addr_1 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_addr_2 : std_logic_vector(8 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \addr_1[0]~output_o\ : std_logic;
SIGNAL \addr_1[1]~output_o\ : std_logic;
SIGNAL \addr_1[2]~output_o\ : std_logic;
SIGNAL \addr_1[3]~output_o\ : std_logic;
SIGNAL \addr_1[4]~output_o\ : std_logic;
SIGNAL \addr_1[5]~output_o\ : std_logic;
SIGNAL \addr_1[6]~output_o\ : std_logic;
SIGNAL \addr_1[7]~output_o\ : std_logic;
SIGNAL \addr_1[8]~output_o\ : std_logic;
SIGNAL \addr_2[0]~output_o\ : std_logic;
SIGNAL \addr_2[1]~output_o\ : std_logic;
SIGNAL \addr_2[2]~output_o\ : std_logic;
SIGNAL \addr_2[3]~output_o\ : std_logic;
SIGNAL \addr_2[4]~output_o\ : std_logic;
SIGNAL \addr_2[5]~output_o\ : std_logic;
SIGNAL \addr_2[6]~output_o\ : std_logic;
SIGNAL \addr_2[7]~output_o\ : std_logic;
SIGNAL \addr_2[8]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \mask[0]~input_o\ : std_logic;
SIGNAL \origin[0]~input_o\ : std_logic;
SIGNAL \sPLUSo[0]~0_combout\ : std_logic;
SIGNAL \MUX_ctrl~input_o\ : std_logic;
SIGNAL \o_saved~0_combout\ : std_logic;
SIGNAL \addr_1~0_combout\ : std_logic;
SIGNAL \stride[0]~input_o\ : std_logic;
SIGNAL \sPLUSo[0]~1\ : std_logic;
SIGNAL \sPLUSo[1]~2_combout\ : std_logic;
SIGNAL \origin[1]~input_o\ : std_logic;
SIGNAL \o_saved~1_combout\ : std_logic;
SIGNAL \mask[1]~input_o\ : std_logic;
SIGNAL \addr_1~1_combout\ : std_logic;
SIGNAL \origin[2]~input_o\ : std_logic;
SIGNAL \stride[1]~input_o\ : std_logic;
SIGNAL \sPLUSo[1]~3\ : std_logic;
SIGNAL \sPLUSo[2]~4_combout\ : std_logic;
SIGNAL \o_saved~2_combout\ : std_logic;
SIGNAL \mask[2]~input_o\ : std_logic;
SIGNAL \addr_1~2_combout\ : std_logic;
SIGNAL \mask[3]~input_o\ : std_logic;
SIGNAL \origin[3]~input_o\ : std_logic;
SIGNAL \stride[2]~input_o\ : std_logic;
SIGNAL \sPLUSo[2]~5\ : std_logic;
SIGNAL \sPLUSo[3]~6_combout\ : std_logic;
SIGNAL \o_saved~3_combout\ : std_logic;
SIGNAL \addr_1~3_combout\ : std_logic;
SIGNAL \mask[4]~input_o\ : std_logic;
SIGNAL \origin[4]~input_o\ : std_logic;
SIGNAL \stride[3]~input_o\ : std_logic;
SIGNAL \sPLUSo[3]~7\ : std_logic;
SIGNAL \sPLUSo[4]~8_combout\ : std_logic;
SIGNAL \o_saved~4_combout\ : std_logic;
SIGNAL \addr_1~4_combout\ : std_logic;
SIGNAL \stride[4]~input_o\ : std_logic;
SIGNAL \sPLUSo[4]~9\ : std_logic;
SIGNAL \sPLUSo[5]~10_combout\ : std_logic;
SIGNAL \origin[5]~input_o\ : std_logic;
SIGNAL \o_saved~5_combout\ : std_logic;
SIGNAL \mask[5]~input_o\ : std_logic;
SIGNAL \addr_1~5_combout\ : std_logic;
SIGNAL \mask[6]~input_o\ : std_logic;
SIGNAL \origin[6]~input_o\ : std_logic;
SIGNAL \stride[5]~input_o\ : std_logic;
SIGNAL \sPLUSo[5]~11\ : std_logic;
SIGNAL \sPLUSo[6]~12_combout\ : std_logic;
SIGNAL \o_saved~6_combout\ : std_logic;
SIGNAL \addr_1~6_combout\ : std_logic;
SIGNAL \mask[7]~input_o\ : std_logic;
SIGNAL \origin[7]~input_o\ : std_logic;
SIGNAL \stride[6]~input_o\ : std_logic;
SIGNAL \sPLUSo[6]~13\ : std_logic;
SIGNAL \sPLUSo[7]~14_combout\ : std_logic;
SIGNAL \o_saved~7_combout\ : std_logic;
SIGNAL \addr_1~7_combout\ : std_logic;
SIGNAL \mask[8]~input_o\ : std_logic;
SIGNAL \origin[8]~input_o\ : std_logic;
SIGNAL \stride[7]~input_o\ : std_logic;
SIGNAL \sPLUSo[7]~15\ : std_logic;
SIGNAL \sPLUSo[8]~16_combout\ : std_logic;
SIGNAL \o_saved~8_combout\ : std_logic;
SIGNAL \addr_1~8_combout\ : std_logic;
SIGNAL \addr_2~0_combout\ : std_logic;
SIGNAL \addr_2~1_combout\ : std_logic;
SIGNAL \addr_2~2_combout\ : std_logic;
SIGNAL \addr_2~3_combout\ : std_logic;
SIGNAL \addr_2~4_combout\ : std_logic;
SIGNAL \addr_2~5_combout\ : std_logic;
SIGNAL \addr_2~6_combout\ : std_logic;
SIGNAL \addr_2~7_combout\ : std_logic;
SIGNAL \addr_2~8_combout\ : std_logic;
SIGNAL m_saved : std_logic_vector(8 DOWNTO 0);
SIGNAL o_saved : std_logic_vector(8 DOWNTO 0);
SIGNAL s_saved : std_logic_vector(8 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_MUX_ctrl <= MUX_ctrl;
ww_mask <= mask;
ww_origin <= origin;
ww_stride <= stride;
addr_1 <= ww_addr_1;
addr_2 <= ww_addr_2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X35_Y73_N16
\addr_1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_1~0_combout\,
	devoe => ww_devoe,
	o => \addr_1[0]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\addr_1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_1~1_combout\,
	devoe => ww_devoe,
	o => \addr_1[1]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\addr_1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_1~2_combout\,
	devoe => ww_devoe,
	o => \addr_1[2]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\addr_1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_1~3_combout\,
	devoe => ww_devoe,
	o => \addr_1[3]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\addr_1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_1~4_combout\,
	devoe => ww_devoe,
	o => \addr_1[4]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\addr_1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_1~5_combout\,
	devoe => ww_devoe,
	o => \addr_1[5]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\addr_1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_1~6_combout\,
	devoe => ww_devoe,
	o => \addr_1[6]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\addr_1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_1~7_combout\,
	devoe => ww_devoe,
	o => \addr_1[7]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\addr_1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_1~8_combout\,
	devoe => ww_devoe,
	o => \addr_1[8]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\addr_2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_2~0_combout\,
	devoe => ww_devoe,
	o => \addr_2[0]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\addr_2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_2~1_combout\,
	devoe => ww_devoe,
	o => \addr_2[1]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\addr_2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_2~2_combout\,
	devoe => ww_devoe,
	o => \addr_2[2]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\addr_2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_2~3_combout\,
	devoe => ww_devoe,
	o => \addr_2[3]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\addr_2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_2~4_combout\,
	devoe => ww_devoe,
	o => \addr_2[4]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\addr_2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_2~5_combout\,
	devoe => ww_devoe,
	o => \addr_2[5]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\addr_2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_2~6_combout\,
	devoe => ww_devoe,
	o => \addr_2[6]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\addr_2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_2~7_combout\,
	devoe => ww_devoe,
	o => \addr_2[7]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\addr_2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \addr_2~8_combout\,
	devoe => ww_devoe,
	o => \addr_2[8]~output_o\);

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

-- Location: IOIBUF_X35_Y73_N22
\mask[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(0),
	o => \mask[0]~input_o\);

-- Location: FF_X35_Y69_N5
\m_saved[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mask[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_saved(0));

-- Location: IOIBUF_X0_Y44_N8
\origin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(0),
	o => \origin[0]~input_o\);

-- Location: LCCOMB_X1_Y45_N4
\sPLUSo[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sPLUSo[0]~0_combout\ = o_saved(0) $ (VCC)
-- \sPLUSo[0]~1\ = CARRY(o_saved(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => o_saved(0),
	datad => VCC,
	combout => \sPLUSo[0]~0_combout\,
	cout => \sPLUSo[0]~1\);

-- Location: IOIBUF_X0_Y45_N22
\MUX_ctrl~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX_ctrl,
	o => \MUX_ctrl~input_o\);

-- Location: LCCOMB_X1_Y45_N0
\o_saved~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved~0_combout\ = (\MUX_ctrl~input_o\ & ((\sPLUSo[0]~0_combout\))) # (!\MUX_ctrl~input_o\ & (\origin[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \origin[0]~input_o\,
	datac => \sPLUSo[0]~0_combout\,
	datad => \MUX_ctrl~input_o\,
	combout => \o_saved~0_combout\);

-- Location: FF_X1_Y45_N1
\o_saved[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(0));

-- Location: LCCOMB_X35_Y69_N4
\addr_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_1~0_combout\ = m_saved(0) $ (o_saved(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m_saved(0),
	datad => o_saved(0),
	combout => \addr_1~0_combout\);

-- Location: IOIBUF_X0_Y46_N22
\stride[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stride(0),
	o => \stride[0]~input_o\);

-- Location: FF_X1_Y45_N7
\s_saved[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stride[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_saved(1));

-- Location: LCCOMB_X1_Y45_N6
\sPLUSo[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sPLUSo[1]~2_combout\ = (s_saved(1) & ((o_saved(1) & (\sPLUSo[0]~1\ & VCC)) # (!o_saved(1) & (!\sPLUSo[0]~1\)))) # (!s_saved(1) & ((o_saved(1) & (!\sPLUSo[0]~1\)) # (!o_saved(1) & ((\sPLUSo[0]~1\) # (GND)))))
-- \sPLUSo[1]~3\ = CARRY((s_saved(1) & (!o_saved(1) & !\sPLUSo[0]~1\)) # (!s_saved(1) & ((!\sPLUSo[0]~1\) # (!o_saved(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_saved(1),
	datab => o_saved(1),
	datad => VCC,
	cin => \sPLUSo[0]~1\,
	combout => \sPLUSo[1]~2_combout\,
	cout => \sPLUSo[1]~3\);

-- Location: IOIBUF_X0_Y52_N15
\origin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(1),
	o => \origin[1]~input_o\);

-- Location: LCCOMB_X2_Y45_N26
\o_saved~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved~1_combout\ = (\MUX_ctrl~input_o\ & (\sPLUSo[1]~2_combout\)) # (!\MUX_ctrl~input_o\ & ((\origin[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_ctrl~input_o\,
	datac => \sPLUSo[1]~2_combout\,
	datad => \origin[1]~input_o\,
	combout => \o_saved~1_combout\);

-- Location: FF_X2_Y45_N27
\o_saved[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(1));

-- Location: IOIBUF_X0_Y52_N22
\mask[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(1),
	o => \mask[1]~input_o\);

-- Location: FF_X2_Y45_N25
\m_saved[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mask[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_saved(1));

-- Location: LCCOMB_X2_Y45_N24
\addr_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_1~1_combout\ = o_saved(1) $ (m_saved(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => o_saved(1),
	datac => m_saved(1),
	combout => \addr_1~1_combout\);

-- Location: IOIBUF_X0_Y34_N22
\origin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(2),
	o => \origin[2]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\stride[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stride(1),
	o => \stride[1]~input_o\);

-- Location: FF_X1_Y45_N9
\s_saved[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stride[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_saved(2));

-- Location: LCCOMB_X1_Y45_N8
\sPLUSo[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sPLUSo[2]~4_combout\ = ((o_saved(2) $ (s_saved(2) $ (!\sPLUSo[1]~3\)))) # (GND)
-- \sPLUSo[2]~5\ = CARRY((o_saved(2) & ((s_saved(2)) # (!\sPLUSo[1]~3\))) # (!o_saved(2) & (s_saved(2) & !\sPLUSo[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => o_saved(2),
	datab => s_saved(2),
	datad => VCC,
	cin => \sPLUSo[1]~3\,
	combout => \sPLUSo[2]~4_combout\,
	cout => \sPLUSo[2]~5\);

-- Location: LCCOMB_X2_Y45_N30
\o_saved~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved~2_combout\ = (\MUX_ctrl~input_o\ & ((\sPLUSo[2]~4_combout\))) # (!\MUX_ctrl~input_o\ & (\origin[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_ctrl~input_o\,
	datac => \origin[2]~input_o\,
	datad => \sPLUSo[2]~4_combout\,
	combout => \o_saved~2_combout\);

-- Location: FF_X2_Y45_N31
\o_saved[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(2));

-- Location: IOIBUF_X0_Y52_N1
\mask[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(2),
	o => \mask[2]~input_o\);

-- Location: FF_X2_Y45_N9
\m_saved[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mask[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_saved(2));

-- Location: LCCOMB_X2_Y45_N8
\addr_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_1~2_combout\ = o_saved(2) $ (m_saved(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => o_saved(2),
	datac => m_saved(2),
	combout => \addr_1~2_combout\);

-- Location: IOIBUF_X0_Y50_N15
\mask[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(3),
	o => \mask[3]~input_o\);

-- Location: FF_X1_Y49_N5
\m_saved[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mask[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_saved(3));

-- Location: IOIBUF_X0_Y35_N1
\origin[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(3),
	o => \origin[3]~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\stride[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stride(2),
	o => \stride[2]~input_o\);

-- Location: FF_X1_Y45_N11
\s_saved[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stride[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_saved(3));

-- Location: LCCOMB_X1_Y45_N10
\sPLUSo[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sPLUSo[3]~6_combout\ = (o_saved(3) & ((s_saved(3) & (\sPLUSo[2]~5\ & VCC)) # (!s_saved(3) & (!\sPLUSo[2]~5\)))) # (!o_saved(3) & ((s_saved(3) & (!\sPLUSo[2]~5\)) # (!s_saved(3) & ((\sPLUSo[2]~5\) # (GND)))))
-- \sPLUSo[3]~7\ = CARRY((o_saved(3) & (!s_saved(3) & !\sPLUSo[2]~5\)) # (!o_saved(3) & ((!\sPLUSo[2]~5\) # (!s_saved(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => o_saved(3),
	datab => s_saved(3),
	datad => VCC,
	cin => \sPLUSo[2]~5\,
	combout => \sPLUSo[3]~6_combout\,
	cout => \sPLUSo[3]~7\);

-- Location: LCCOMB_X1_Y45_N22
\o_saved~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved~3_combout\ = (\MUX_ctrl~input_o\ & ((\sPLUSo[3]~6_combout\))) # (!\MUX_ctrl~input_o\ & (\origin[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_ctrl~input_o\,
	datac => \origin[3]~input_o\,
	datad => \sPLUSo[3]~6_combout\,
	combout => \o_saved~3_combout\);

-- Location: FF_X1_Y45_N23
\o_saved[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(3));

-- Location: LCCOMB_X1_Y49_N4
\addr_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_1~3_combout\ = m_saved(3) $ (o_saved(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m_saved(3),
	datad => o_saved(3),
	combout => \addr_1~3_combout\);

-- Location: IOIBUF_X115_Y65_N22
\mask[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(4),
	o => \mask[4]~input_o\);

-- Location: FF_X114_Y65_N9
\m_saved[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mask[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_saved(4));

-- Location: IOIBUF_X0_Y42_N1
\origin[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(4),
	o => \origin[4]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\stride[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stride(3),
	o => \stride[3]~input_o\);

-- Location: FF_X1_Y45_N13
\s_saved[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stride[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_saved(4));

-- Location: LCCOMB_X1_Y45_N12
\sPLUSo[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sPLUSo[4]~8_combout\ = ((o_saved(4) $ (s_saved(4) $ (!\sPLUSo[3]~7\)))) # (GND)
-- \sPLUSo[4]~9\ = CARRY((o_saved(4) & ((s_saved(4)) # (!\sPLUSo[3]~7\))) # (!o_saved(4) & (s_saved(4) & !\sPLUSo[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => o_saved(4),
	datab => s_saved(4),
	datad => VCC,
	cin => \sPLUSo[3]~7\,
	combout => \sPLUSo[4]~8_combout\,
	cout => \sPLUSo[4]~9\);

-- Location: LCCOMB_X1_Y45_N26
\o_saved~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved~4_combout\ = (\MUX_ctrl~input_o\ & ((\sPLUSo[4]~8_combout\))) # (!\MUX_ctrl~input_o\ & (\origin[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_ctrl~input_o\,
	datac => \origin[4]~input_o\,
	datad => \sPLUSo[4]~8_combout\,
	combout => \o_saved~4_combout\);

-- Location: FF_X1_Y45_N27
\o_saved[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(4));

-- Location: LCCOMB_X114_Y65_N8
\addr_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_1~4_combout\ = m_saved(4) $ (o_saved(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m_saved(4),
	datad => o_saved(4),
	combout => \addr_1~4_combout\);

-- Location: IOIBUF_X0_Y43_N15
\stride[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stride(4),
	o => \stride[4]~input_o\);

-- Location: FF_X1_Y45_N15
\s_saved[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stride[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_saved(5));

-- Location: LCCOMB_X1_Y45_N14
\sPLUSo[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sPLUSo[5]~10_combout\ = (s_saved(5) & ((o_saved(5) & (\sPLUSo[4]~9\ & VCC)) # (!o_saved(5) & (!\sPLUSo[4]~9\)))) # (!s_saved(5) & ((o_saved(5) & (!\sPLUSo[4]~9\)) # (!o_saved(5) & ((\sPLUSo[4]~9\) # (GND)))))
-- \sPLUSo[5]~11\ = CARRY((s_saved(5) & (!o_saved(5) & !\sPLUSo[4]~9\)) # (!s_saved(5) & ((!\sPLUSo[4]~9\) # (!o_saved(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_saved(5),
	datab => o_saved(5),
	datad => VCC,
	cin => \sPLUSo[4]~9\,
	combout => \sPLUSo[5]~10_combout\,
	cout => \sPLUSo[5]~11\);

-- Location: IOIBUF_X0_Y47_N1
\origin[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(5),
	o => \origin[5]~input_o\);

-- Location: LCCOMB_X1_Y45_N28
\o_saved~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved~5_combout\ = (\MUX_ctrl~input_o\ & (\sPLUSo[5]~10_combout\)) # (!\MUX_ctrl~input_o\ & ((\origin[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_ctrl~input_o\,
	datac => \sPLUSo[5]~10_combout\,
	datad => \origin[5]~input_o\,
	combout => \o_saved~5_combout\);

-- Location: FF_X1_Y45_N29
\o_saved[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(5));

-- Location: IOIBUF_X0_Y55_N15
\mask[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(5),
	o => \mask[5]~input_o\);

-- Location: FF_X1_Y49_N27
\m_saved[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mask[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_saved(5));

-- Location: LCCOMB_X1_Y49_N26
\addr_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_1~5_combout\ = o_saved(5) $ (m_saved(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => o_saved(5),
	datac => m_saved(5),
	combout => \addr_1~5_combout\);

-- Location: IOIBUF_X0_Y57_N22
\mask[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(6),
	o => \mask[6]~input_o\);

-- Location: FF_X1_Y49_N21
\m_saved[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mask[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_saved(6));

-- Location: IOIBUF_X0_Y34_N1
\origin[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(6),
	o => \origin[6]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\stride[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stride(5),
	o => \stride[5]~input_o\);

-- Location: FF_X1_Y45_N17
\s_saved[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stride[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_saved(6));

-- Location: LCCOMB_X1_Y45_N16
\sPLUSo[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sPLUSo[6]~12_combout\ = ((s_saved(6) $ (o_saved(6) $ (!\sPLUSo[5]~11\)))) # (GND)
-- \sPLUSo[6]~13\ = CARRY((s_saved(6) & ((o_saved(6)) # (!\sPLUSo[5]~11\))) # (!s_saved(6) & (o_saved(6) & !\sPLUSo[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_saved(6),
	datab => o_saved(6),
	datad => VCC,
	cin => \sPLUSo[5]~11\,
	combout => \sPLUSo[6]~12_combout\,
	cout => \sPLUSo[6]~13\);

-- Location: LCCOMB_X1_Y45_N2
\o_saved~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved~6_combout\ = (\MUX_ctrl~input_o\ & ((\sPLUSo[6]~12_combout\))) # (!\MUX_ctrl~input_o\ & (\origin[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_ctrl~input_o\,
	datac => \origin[6]~input_o\,
	datad => \sPLUSo[6]~12_combout\,
	combout => \o_saved~6_combout\);

-- Location: FF_X1_Y45_N3
\o_saved[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(6));

-- Location: LCCOMB_X1_Y49_N20
\addr_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_1~6_combout\ = m_saved(6) $ (o_saved(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m_saved(6),
	datad => o_saved(6),
	combout => \addr_1~6_combout\);

-- Location: IOIBUF_X0_Y55_N22
\mask[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(7),
	o => \mask[7]~input_o\);

-- Location: FF_X1_Y49_N11
\m_saved[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mask[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_saved(7));

-- Location: IOIBUF_X0_Y44_N22
\origin[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(7),
	o => \origin[7]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\stride[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stride(6),
	o => \stride[6]~input_o\);

-- Location: FF_X1_Y45_N19
\s_saved[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stride[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_saved(7));

-- Location: LCCOMB_X1_Y45_N18
\sPLUSo[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sPLUSo[7]~14_combout\ = (s_saved(7) & ((o_saved(7) & (\sPLUSo[6]~13\ & VCC)) # (!o_saved(7) & (!\sPLUSo[6]~13\)))) # (!s_saved(7) & ((o_saved(7) & (!\sPLUSo[6]~13\)) # (!o_saved(7) & ((\sPLUSo[6]~13\) # (GND)))))
-- \sPLUSo[7]~15\ = CARRY((s_saved(7) & (!o_saved(7) & !\sPLUSo[6]~13\)) # (!s_saved(7) & ((!\sPLUSo[6]~13\) # (!o_saved(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_saved(7),
	datab => o_saved(7),
	datad => VCC,
	cin => \sPLUSo[6]~13\,
	combout => \sPLUSo[7]~14_combout\,
	cout => \sPLUSo[7]~15\);

-- Location: LCCOMB_X1_Y45_N24
\o_saved~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved~7_combout\ = (\MUX_ctrl~input_o\ & ((\sPLUSo[7]~14_combout\))) # (!\MUX_ctrl~input_o\ & (\origin[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \origin[7]~input_o\,
	datab => \MUX_ctrl~input_o\,
	datad => \sPLUSo[7]~14_combout\,
	combout => \o_saved~7_combout\);

-- Location: FF_X1_Y45_N25
\o_saved[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(7));

-- Location: LCCOMB_X1_Y49_N10
\addr_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_1~7_combout\ = m_saved(7) $ (o_saved(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m_saved(7),
	datad => o_saved(7),
	combout => \addr_1~7_combout\);

-- Location: IOIBUF_X33_Y73_N1
\mask[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(8),
	o => \mask[8]~input_o\);

-- Location: FF_X32_Y69_N5
\m_saved[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \mask[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_saved(8));

-- Location: IOIBUF_X0_Y44_N15
\origin[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(8),
	o => \origin[8]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\stride[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stride(7),
	o => \stride[7]~input_o\);

-- Location: FF_X1_Y45_N21
\s_saved[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \stride[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_saved(8));

-- Location: LCCOMB_X1_Y45_N20
\sPLUSo[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sPLUSo[8]~16_combout\ = o_saved(8) $ (\sPLUSo[7]~15\ $ (!s_saved(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => o_saved(8),
	datad => s_saved(8),
	cin => \sPLUSo[7]~15\,
	combout => \sPLUSo[8]~16_combout\);

-- Location: LCCOMB_X1_Y45_N30
\o_saved~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved~8_combout\ = (\MUX_ctrl~input_o\ & ((\sPLUSo[8]~16_combout\))) # (!\MUX_ctrl~input_o\ & (\origin[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \origin[8]~input_o\,
	datab => \MUX_ctrl~input_o\,
	datad => \sPLUSo[8]~16_combout\,
	combout => \o_saved~8_combout\);

-- Location: FF_X1_Y45_N31
\o_saved[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(8));

-- Location: LCCOMB_X32_Y69_N4
\addr_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_1~8_combout\ = m_saved(8) $ (o_saved(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m_saved(8),
	datad => o_saved(8),
	combout => \addr_1~8_combout\);

-- Location: LCCOMB_X35_Y69_N2
\addr_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~0_combout\ = \mask[0]~input_o\ $ (\sPLUSo[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mask[0]~input_o\,
	datac => \sPLUSo[0]~0_combout\,
	combout => \addr_2~0_combout\);

-- Location: LCCOMB_X2_Y45_N12
\addr_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~1_combout\ = \mask[1]~input_o\ $ (\sPLUSo[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mask[1]~input_o\,
	datac => \sPLUSo[1]~2_combout\,
	combout => \addr_2~1_combout\);

-- Location: LCCOMB_X2_Y45_N10
\addr_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~2_combout\ = \sPLUSo[2]~4_combout\ $ (\mask[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sPLUSo[2]~4_combout\,
	datac => \mask[2]~input_o\,
	combout => \addr_2~2_combout\);

-- Location: LCCOMB_X1_Y46_N16
\addr_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~3_combout\ = \sPLUSo[3]~6_combout\ $ (\mask[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sPLUSo[3]~6_combout\,
	datad => \mask[3]~input_o\,
	combout => \addr_2~3_combout\);

-- Location: LCCOMB_X114_Y65_N2
\addr_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~4_combout\ = \mask[4]~input_o\ $ (\sPLUSo[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mask[4]~input_o\,
	datad => \sPLUSo[4]~8_combout\,
	combout => \addr_2~4_combout\);

-- Location: LCCOMB_X1_Y49_N16
\addr_2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~5_combout\ = \sPLUSo[5]~10_combout\ $ (\mask[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sPLUSo[5]~10_combout\,
	datac => \mask[5]~input_o\,
	combout => \addr_2~5_combout\);

-- Location: LCCOMB_X1_Y49_N14
\addr_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~6_combout\ = \mask[6]~input_o\ $ (\sPLUSo[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mask[6]~input_o\,
	datac => \sPLUSo[6]~12_combout\,
	combout => \addr_2~6_combout\);

-- Location: LCCOMB_X1_Y49_N12
\addr_2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~7_combout\ = \mask[7]~input_o\ $ (\sPLUSo[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mask[7]~input_o\,
	datac => \sPLUSo[7]~14_combout\,
	combout => \addr_2~7_combout\);

-- Location: LCCOMB_X32_Y69_N2
\addr_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~8_combout\ = \mask[8]~input_o\ $ (\sPLUSo[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mask[8]~input_o\,
	datac => \sPLUSo[8]~16_combout\,
	combout => \addr_2~8_combout\);

ww_addr_1(0) <= \addr_1[0]~output_o\;

ww_addr_1(1) <= \addr_1[1]~output_o\;

ww_addr_1(2) <= \addr_1[2]~output_o\;

ww_addr_1(3) <= \addr_1[3]~output_o\;

ww_addr_1(4) <= \addr_1[4]~output_o\;

ww_addr_1(5) <= \addr_1[5]~output_o\;

ww_addr_1(6) <= \addr_1[6]~output_o\;

ww_addr_1(7) <= \addr_1[7]~output_o\;

ww_addr_1(8) <= \addr_1[8]~output_o\;

ww_addr_2(0) <= \addr_2[0]~output_o\;

ww_addr_2(1) <= \addr_2[1]~output_o\;

ww_addr_2(2) <= \addr_2[2]~output_o\;

ww_addr_2(3) <= \addr_2[3]~output_o\;

ww_addr_2(4) <= \addr_2[4]~output_o\;

ww_addr_2(5) <= \addr_2[5]~output_o\;

ww_addr_2(6) <= \addr_2[6]~output_o\;

ww_addr_2(7) <= \addr_2[7]~output_o\;

ww_addr_2(8) <= \addr_2[8]~output_o\;
END structure;


