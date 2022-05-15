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

-- DATE "05/05/2022 13:55:37"

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
-- addr_1[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_1[1]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_1[2]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_1[3]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_1[4]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_1[5]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_1[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_1[7]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_1[8]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[3]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[4]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[5]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[6]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[7]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr_2[8]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[2]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[3]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[4]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[5]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[6]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[7]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mask[8]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[0]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[1]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUX_ctrl	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[3]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[5]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[6]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[7]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- origin[8]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stride[0]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stride[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stride[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stride[3]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stride[4]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stride[5]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stride[6]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stride[7]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \o_saved[0]~feeder_combout\ : std_logic;
SIGNAL \addr_1~0_combout\ : std_logic;
SIGNAL \mask[1]~input_o\ : std_logic;
SIGNAL \origin[1]~input_o\ : std_logic;
SIGNAL \o_saved[1]~8_combout\ : std_logic;
SIGNAL \MUX_ctrl~input_o\ : std_logic;
SIGNAL \addr_1~1_combout\ : std_logic;
SIGNAL \mask[2]~input_o\ : std_logic;
SIGNAL \stride[0]~input_o\ : std_logic;
SIGNAL \s_saved[1]~feeder_combout\ : std_logic;
SIGNAL \origin[2]~input_o\ : std_logic;
SIGNAL \o_saved[1]~9\ : std_logic;
SIGNAL \o_saved[2]~10_combout\ : std_logic;
SIGNAL \addr_1~2_combout\ : std_logic;
SIGNAL \mask[3]~input_o\ : std_logic;
SIGNAL \origin[3]~input_o\ : std_logic;
SIGNAL \stride[1]~input_o\ : std_logic;
SIGNAL \s_saved[2]~feeder_combout\ : std_logic;
SIGNAL \o_saved[2]~11\ : std_logic;
SIGNAL \o_saved[3]~12_combout\ : std_logic;
SIGNAL \addr_1~3_combout\ : std_logic;
SIGNAL \stride[2]~input_o\ : std_logic;
SIGNAL \s_saved[3]~feeder_combout\ : std_logic;
SIGNAL \origin[4]~input_o\ : std_logic;
SIGNAL \o_saved[3]~13\ : std_logic;
SIGNAL \o_saved[4]~14_combout\ : std_logic;
SIGNAL \mask[4]~input_o\ : std_logic;
SIGNAL \addr_1~4_combout\ : std_logic;
SIGNAL \origin[5]~input_o\ : std_logic;
SIGNAL \stride[3]~input_o\ : std_logic;
SIGNAL \s_saved[4]~feeder_combout\ : std_logic;
SIGNAL \o_saved[4]~15\ : std_logic;
SIGNAL \o_saved[5]~16_combout\ : std_logic;
SIGNAL \mask[5]~input_o\ : std_logic;
SIGNAL \addr_1~5_combout\ : std_logic;
SIGNAL \mask[6]~input_o\ : std_logic;
SIGNAL \stride[4]~input_o\ : std_logic;
SIGNAL \s_saved[5]~feeder_combout\ : std_logic;
SIGNAL \origin[6]~input_o\ : std_logic;
SIGNAL \o_saved[5]~17\ : std_logic;
SIGNAL \o_saved[6]~18_combout\ : std_logic;
SIGNAL \addr_1~6_combout\ : std_logic;
SIGNAL \mask[7]~input_o\ : std_logic;
SIGNAL \origin[7]~input_o\ : std_logic;
SIGNAL \stride[5]~input_o\ : std_logic;
SIGNAL \s_saved[6]~feeder_combout\ : std_logic;
SIGNAL \o_saved[6]~19\ : std_logic;
SIGNAL \o_saved[7]~20_combout\ : std_logic;
SIGNAL \addr_1~7_combout\ : std_logic;
SIGNAL \origin[8]~input_o\ : std_logic;
SIGNAL \stride[6]~input_o\ : std_logic;
SIGNAL \o_saved[7]~21\ : std_logic;
SIGNAL \o_saved[8]~22_combout\ : std_logic;
SIGNAL \mask[8]~input_o\ : std_logic;
SIGNAL \addr_1~8_combout\ : std_logic;
SIGNAL \addr_2~0_combout\ : std_logic;
SIGNAL \sPLUSo[0]~1_cout\ : std_logic;
SIGNAL \sPLUSo[1]~2_combout\ : std_logic;
SIGNAL \addr_2~1_combout\ : std_logic;
SIGNAL \sPLUSo[1]~3\ : std_logic;
SIGNAL \sPLUSo[2]~4_combout\ : std_logic;
SIGNAL \addr_2~2_combout\ : std_logic;
SIGNAL \sPLUSo[2]~5\ : std_logic;
SIGNAL \sPLUSo[3]~6_combout\ : std_logic;
SIGNAL \addr_2~3_combout\ : std_logic;
SIGNAL \sPLUSo[3]~7\ : std_logic;
SIGNAL \sPLUSo[4]~8_combout\ : std_logic;
SIGNAL \addr_2~4_combout\ : std_logic;
SIGNAL \sPLUSo[4]~9\ : std_logic;
SIGNAL \sPLUSo[5]~10_combout\ : std_logic;
SIGNAL \addr_2~5_combout\ : std_logic;
SIGNAL \sPLUSo[5]~11\ : std_logic;
SIGNAL \sPLUSo[6]~12_combout\ : std_logic;
SIGNAL \addr_2~6_combout\ : std_logic;
SIGNAL \sPLUSo[6]~13\ : std_logic;
SIGNAL \sPLUSo[7]~14_combout\ : std_logic;
SIGNAL \addr_2~7_combout\ : std_logic;
SIGNAL \stride[7]~input_o\ : std_logic;
SIGNAL \sPLUSo[7]~15\ : std_logic;
SIGNAL \sPLUSo[8]~16_combout\ : std_logic;
SIGNAL \addr_2~8_combout\ : std_logic;
SIGNAL o_saved : std_logic_vector(8 DOWNTO 0);
SIGNAL m_saved : std_logic_vector(8 DOWNTO 0);
SIGNAL s_saved : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_addr_2~0_combout\ : std_logic;
SIGNAL \ALT_INV_MUX_ctrl~input_o\ : std_logic;

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
\ALT_INV_addr_2~0_combout\ <= NOT \addr_2~0_combout\;
\ALT_INV_MUX_ctrl~input_o\ <= NOT \MUX_ctrl~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y35_N16
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

-- Location: IOOBUF_X0_Y34_N9
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

-- Location: IOOBUF_X0_Y30_N2
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

-- Location: IOOBUF_X0_Y28_N16
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

-- Location: IOOBUF_X0_Y27_N23
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

-- Location: IOOBUF_X0_Y15_N23
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

-- Location: IOOBUF_X0_Y31_N16
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

-- Location: IOOBUF_X0_Y24_N16
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

-- Location: IOOBUF_X0_Y28_N23
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

-- Location: IOOBUF_X0_Y34_N2
\addr_2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_addr_2~0_combout\,
	devoe => ww_devoe,
	o => \addr_2[0]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
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

-- Location: IOOBUF_X0_Y30_N9
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

-- Location: IOOBUF_X0_Y14_N2
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

-- Location: IOOBUF_X0_Y24_N2
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

-- Location: IOOBUF_X0_Y13_N9
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

-- Location: IOOBUF_X0_Y29_N16
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

-- Location: IOOBUF_X0_Y23_N16
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

-- Location: IOOBUF_X0_Y33_N23
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

-- Location: IOIBUF_X0_Y34_N22
\mask[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(0),
	o => \mask[0]~input_o\);

-- Location: FF_X1_Y34_N3
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

-- Location: IOIBUF_X0_Y34_N15
\origin[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(0),
	o => \origin[0]~input_o\);

-- Location: LCCOMB_X1_Y34_N28
\o_saved[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved[0]~feeder_combout\ = \origin[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \origin[0]~input_o\,
	combout => \o_saved[0]~feeder_combout\);

-- Location: FF_X1_Y34_N29
\o_saved[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(0));

-- Location: LCCOMB_X1_Y34_N2
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

-- Location: IOIBUF_X0_Y33_N15
\mask[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(1),
	o => \mask[1]~input_o\);

-- Location: FF_X1_Y34_N17
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

-- Location: IOIBUF_X0_Y22_N15
\origin[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(1),
	o => \origin[1]~input_o\);

-- Location: LCCOMB_X2_Y24_N4
\o_saved[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved[1]~8_combout\ = \origin[1]~input_o\ $ (VCC)
-- \o_saved[1]~9\ = CARRY(\origin[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \origin[1]~input_o\,
	datad => VCC,
	combout => \o_saved[1]~8_combout\,
	cout => \o_saved[1]~9\);

-- Location: IOIBUF_X0_Y14_N8
\MUX_ctrl~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MUX_ctrl,
	o => \MUX_ctrl~input_o\);

-- Location: FF_X2_Y24_N5
\o_saved[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved[1]~8_combout\,
	asdata => \origin[1]~input_o\,
	sload => \ALT_INV_MUX_ctrl~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(1));

-- Location: LCCOMB_X1_Y34_N16
\addr_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_1~1_combout\ = m_saved(1) $ (o_saved(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m_saved(1),
	datad => o_saved(1),
	combout => \addr_1~1_combout\);

-- Location: IOIBUF_X0_Y24_N22
\mask[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(2),
	o => \mask[2]~input_o\);

-- Location: FF_X1_Y24_N29
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

-- Location: IOIBUF_X0_Y22_N22
\stride[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stride(0),
	o => \stride[0]~input_o\);

-- Location: LCCOMB_X2_Y24_N22
\s_saved[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_saved[1]~feeder_combout\ = \stride[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stride[0]~input_o\,
	combout => \s_saved[1]~feeder_combout\);

-- Location: FF_X2_Y24_N23
\s_saved[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_saved[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_saved(1));

-- Location: IOIBUF_X0_Y25_N22
\origin[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(2),
	o => \origin[2]~input_o\);

-- Location: LCCOMB_X2_Y24_N6
\o_saved[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved[2]~10_combout\ = (s_saved(1) & ((\origin[2]~input_o\ & (\o_saved[1]~9\ & VCC)) # (!\origin[2]~input_o\ & (!\o_saved[1]~9\)))) # (!s_saved(1) & ((\origin[2]~input_o\ & (!\o_saved[1]~9\)) # (!\origin[2]~input_o\ & ((\o_saved[1]~9\) # (GND)))))
-- \o_saved[2]~11\ = CARRY((s_saved(1) & (!\origin[2]~input_o\ & !\o_saved[1]~9\)) # (!s_saved(1) & ((!\o_saved[1]~9\) # (!\origin[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_saved(1),
	datab => \origin[2]~input_o\,
	datad => VCC,
	cin => \o_saved[1]~9\,
	combout => \o_saved[2]~10_combout\,
	cout => \o_saved[2]~11\);

-- Location: FF_X2_Y24_N7
\o_saved[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved[2]~10_combout\,
	asdata => \origin[2]~input_o\,
	sload => \ALT_INV_MUX_ctrl~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(2));

-- Location: LCCOMB_X1_Y24_N30
\addr_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_1~2_combout\ = m_saved(2) $ (o_saved(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m_saved(2),
	datad => o_saved(2),
	combout => \addr_1~2_combout\);

-- Location: IOIBUF_X0_Y15_N15
\mask[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(3),
	o => \mask[3]~input_o\);

-- Location: FF_X1_Y24_N1
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

-- Location: IOIBUF_X0_Y21_N15
\origin[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(3),
	o => \origin[3]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\stride[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stride(1),
	o => \stride[1]~input_o\);

-- Location: LCCOMB_X2_Y24_N0
\s_saved[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_saved[2]~feeder_combout\ = \stride[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stride[1]~input_o\,
	combout => \s_saved[2]~feeder_combout\);

-- Location: FF_X2_Y24_N1
\s_saved[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_saved[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_saved(2));

-- Location: LCCOMB_X2_Y24_N8
\o_saved[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved[3]~12_combout\ = ((\origin[3]~input_o\ $ (s_saved(2) $ (!\o_saved[2]~11\)))) # (GND)
-- \o_saved[3]~13\ = CARRY((\origin[3]~input_o\ & ((s_saved(2)) # (!\o_saved[2]~11\))) # (!\origin[3]~input_o\ & (s_saved(2) & !\o_saved[2]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \origin[3]~input_o\,
	datab => s_saved(2),
	datad => VCC,
	cin => \o_saved[2]~11\,
	combout => \o_saved[3]~12_combout\,
	cout => \o_saved[3]~13\);

-- Location: FF_X2_Y24_N9
\o_saved[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved[3]~12_combout\,
	asdata => \origin[3]~input_o\,
	sload => \ALT_INV_MUX_ctrl~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(3));

-- Location: LCCOMB_X1_Y24_N0
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

-- Location: IOIBUF_X0_Y19_N8
\stride[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stride(2),
	o => \stride[2]~input_o\);

-- Location: LCCOMB_X2_Y24_N30
\s_saved[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_saved[3]~feeder_combout\ = \stride[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stride[2]~input_o\,
	combout => \s_saved[3]~feeder_combout\);

-- Location: FF_X2_Y24_N31
\s_saved[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_saved[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_saved(3));

-- Location: IOIBUF_X0_Y18_N22
\origin[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(4),
	o => \origin[4]~input_o\);

-- Location: LCCOMB_X2_Y24_N10
\o_saved[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved[4]~14_combout\ = (s_saved(3) & ((\origin[4]~input_o\ & (\o_saved[3]~13\ & VCC)) # (!\origin[4]~input_o\ & (!\o_saved[3]~13\)))) # (!s_saved(3) & ((\origin[4]~input_o\ & (!\o_saved[3]~13\)) # (!\origin[4]~input_o\ & ((\o_saved[3]~13\) # (GND)))))
-- \o_saved[4]~15\ = CARRY((s_saved(3) & (!\origin[4]~input_o\ & !\o_saved[3]~13\)) # (!s_saved(3) & ((!\o_saved[3]~13\) # (!\origin[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_saved(3),
	datab => \origin[4]~input_o\,
	datad => VCC,
	cin => \o_saved[3]~13\,
	combout => \o_saved[4]~14_combout\,
	cout => \o_saved[4]~15\);

-- Location: FF_X2_Y24_N11
\o_saved[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved[4]~14_combout\,
	asdata => \origin[4]~input_o\,
	sload => \ALT_INV_MUX_ctrl~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(4));

-- Location: IOIBUF_X0_Y21_N22
\mask[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(4),
	o => \mask[4]~input_o\);

-- Location: FF_X1_Y24_N25
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

-- Location: LCCOMB_X1_Y24_N6
\addr_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_1~4_combout\ = o_saved(4) $ (m_saved(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => o_saved(4),
	datad => m_saved(4),
	combout => \addr_1~4_combout\);

-- Location: IOIBUF_X0_Y18_N15
\origin[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(5),
	o => \origin[5]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\stride[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stride(3),
	o => \stride[3]~input_o\);

-- Location: LCCOMB_X2_Y24_N20
\s_saved[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_saved[4]~feeder_combout\ = \stride[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stride[3]~input_o\,
	combout => \s_saved[4]~feeder_combout\);

-- Location: FF_X2_Y24_N21
\s_saved[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_saved[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_saved(4));

-- Location: LCCOMB_X2_Y24_N12
\o_saved[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved[5]~16_combout\ = ((\origin[5]~input_o\ $ (s_saved(4) $ (!\o_saved[4]~15\)))) # (GND)
-- \o_saved[5]~17\ = CARRY((\origin[5]~input_o\ & ((s_saved(4)) # (!\o_saved[4]~15\))) # (!\origin[5]~input_o\ & (s_saved(4) & !\o_saved[4]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \origin[5]~input_o\,
	datab => s_saved(4),
	datad => VCC,
	cin => \o_saved[4]~15\,
	combout => \o_saved[5]~16_combout\,
	cout => \o_saved[5]~17\);

-- Location: FF_X2_Y24_N13
\o_saved[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved[5]~16_combout\,
	asdata => \origin[5]~input_o\,
	sload => \ALT_INV_MUX_ctrl~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(5));

-- Location: IOIBUF_X0_Y13_N1
\mask[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(5),
	o => \mask[5]~input_o\);

-- Location: FF_X1_Y20_N21
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

-- Location: LCCOMB_X1_Y20_N20
\addr_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_1~5_combout\ = o_saved(5) $ (m_saved(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => o_saved(5),
	datac => m_saved(5),
	combout => \addr_1~5_combout\);

-- Location: IOIBUF_X0_Y20_N15
\mask[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(6),
	o => \mask[6]~input_o\);

-- Location: FF_X1_Y24_N7
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

-- Location: IOIBUF_X0_Y16_N15
\stride[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stride(4),
	o => \stride[4]~input_o\);

-- Location: LCCOMB_X2_Y24_N26
\s_saved[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_saved[5]~feeder_combout\ = \stride[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stride[4]~input_o\,
	combout => \s_saved[5]~feeder_combout\);

-- Location: FF_X2_Y24_N27
\s_saved[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_saved[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_saved(5));

-- Location: IOIBUF_X0_Y26_N15
\origin[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(6),
	o => \origin[6]~input_o\);

-- Location: LCCOMB_X2_Y24_N14
\o_saved[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved[6]~18_combout\ = (s_saved(5) & ((\origin[6]~input_o\ & (\o_saved[5]~17\ & VCC)) # (!\origin[6]~input_o\ & (!\o_saved[5]~17\)))) # (!s_saved(5) & ((\origin[6]~input_o\ & (!\o_saved[5]~17\)) # (!\origin[6]~input_o\ & ((\o_saved[5]~17\) # (GND)))))
-- \o_saved[6]~19\ = CARRY((s_saved(5) & (!\origin[6]~input_o\ & !\o_saved[5]~17\)) # (!s_saved(5) & ((!\o_saved[5]~17\) # (!\origin[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_saved(5),
	datab => \origin[6]~input_o\,
	datad => VCC,
	cin => \o_saved[5]~17\,
	combout => \o_saved[6]~18_combout\,
	cout => \o_saved[6]~19\);

-- Location: FF_X2_Y24_N15
\o_saved[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved[6]~18_combout\,
	asdata => \origin[6]~input_o\,
	sload => \ALT_INV_MUX_ctrl~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(6));

-- Location: LCCOMB_X2_Y24_N24
\addr_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_1~6_combout\ = m_saved(6) $ (o_saved(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m_saved(6),
	datac => o_saved(6),
	combout => \addr_1~6_combout\);

-- Location: IOIBUF_X0_Y23_N22
\mask[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(7),
	o => \mask[7]~input_o\);

-- Location: FF_X1_Y24_N9
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

-- Location: IOIBUF_X0_Y19_N1
\origin[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(7),
	o => \origin[7]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\stride[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stride(5),
	o => \stride[5]~input_o\);

-- Location: LCCOMB_X2_Y24_N28
\s_saved[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_saved[6]~feeder_combout\ = \stride[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \stride[5]~input_o\,
	combout => \s_saved[6]~feeder_combout\);

-- Location: FF_X2_Y24_N29
\s_saved[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_saved[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_saved(6));

-- Location: LCCOMB_X2_Y24_N16
\o_saved[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved[7]~20_combout\ = ((\origin[7]~input_o\ $ (s_saved(6) $ (!\o_saved[6]~19\)))) # (GND)
-- \o_saved[7]~21\ = CARRY((\origin[7]~input_o\ & ((s_saved(6)) # (!\o_saved[6]~19\))) # (!\origin[7]~input_o\ & (s_saved(6) & !\o_saved[6]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \origin[7]~input_o\,
	datab => s_saved(6),
	datad => VCC,
	cin => \o_saved[6]~19\,
	combout => \o_saved[7]~20_combout\,
	cout => \o_saved[7]~21\);

-- Location: FF_X2_Y24_N17
\o_saved[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved[7]~20_combout\,
	asdata => \origin[7]~input_o\,
	sload => \ALT_INV_MUX_ctrl~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(7));

-- Location: LCCOMB_X1_Y24_N8
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

-- Location: IOIBUF_X0_Y16_N22
\origin[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_origin(8),
	o => \origin[8]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\stride[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stride(6),
	o => \stride[6]~input_o\);

-- Location: FF_X1_Y24_N31
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

-- Location: LCCOMB_X2_Y24_N18
\o_saved[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_saved[8]~22_combout\ = \origin[8]~input_o\ $ (\o_saved[7]~21\ $ (s_saved(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \origin[8]~input_o\,
	datad => s_saved(7),
	cin => \o_saved[7]~21\,
	combout => \o_saved[8]~22_combout\);

-- Location: FF_X2_Y24_N19
\o_saved[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \o_saved[8]~22_combout\,
	asdata => \origin[8]~input_o\,
	sload => \ALT_INV_MUX_ctrl~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => o_saved(8));

-- Location: IOIBUF_X0_Y32_N22
\mask[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mask(8),
	o => \mask[8]~input_o\);

-- Location: FF_X1_Y28_N17
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

-- Location: LCCOMB_X1_Y28_N16
\addr_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_1~8_combout\ = o_saved(8) $ (m_saved(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => o_saved(8),
	datac => m_saved(8),
	combout => \addr_1~8_combout\);

-- Location: LCCOMB_X1_Y34_N14
\addr_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~0_combout\ = \mask[0]~input_o\ $ (o_saved(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mask[0]~input_o\,
	datad => o_saved(0),
	combout => \addr_2~0_combout\);

-- Location: LCCOMB_X1_Y24_N10
\sPLUSo[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sPLUSo[0]~1_cout\ = CARRY(o_saved(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => o_saved(0),
	datad => VCC,
	cout => \sPLUSo[0]~1_cout\);

-- Location: LCCOMB_X1_Y24_N12
\sPLUSo[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sPLUSo[1]~2_combout\ = (o_saved(1) & ((s_saved(1) & (\sPLUSo[0]~1_cout\ & VCC)) # (!s_saved(1) & (!\sPLUSo[0]~1_cout\)))) # (!o_saved(1) & ((s_saved(1) & (!\sPLUSo[0]~1_cout\)) # (!s_saved(1) & ((\sPLUSo[0]~1_cout\) # (GND)))))
-- \sPLUSo[1]~3\ = CARRY((o_saved(1) & (!s_saved(1) & !\sPLUSo[0]~1_cout\)) # (!o_saved(1) & ((!\sPLUSo[0]~1_cout\) # (!s_saved(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => o_saved(1),
	datab => s_saved(1),
	datad => VCC,
	cin => \sPLUSo[0]~1_cout\,
	combout => \sPLUSo[1]~2_combout\,
	cout => \sPLUSo[1]~3\);

-- Location: LCCOMB_X1_Y32_N16
\addr_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~1_combout\ = \mask[1]~input_o\ $ (\sPLUSo[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mask[1]~input_o\,
	datad => \sPLUSo[1]~2_combout\,
	combout => \addr_2~1_combout\);

-- Location: LCCOMB_X1_Y24_N14
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

-- Location: LCCOMB_X1_Y24_N28
\addr_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~2_combout\ = \sPLUSo[2]~4_combout\ $ (\mask[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sPLUSo[2]~4_combout\,
	datac => \mask[2]~input_o\,
	combout => \addr_2~2_combout\);

-- Location: LCCOMB_X1_Y24_N16
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

-- Location: LCCOMB_X1_Y17_N16
\addr_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~3_combout\ = \mask[3]~input_o\ $ (\sPLUSo[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mask[3]~input_o\,
	datad => \sPLUSo[3]~6_combout\,
	combout => \addr_2~3_combout\);

-- Location: LCCOMB_X1_Y24_N18
\sPLUSo[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sPLUSo[4]~8_combout\ = ((s_saved(4) $ (o_saved(4) $ (!\sPLUSo[3]~7\)))) # (GND)
-- \sPLUSo[4]~9\ = CARRY((s_saved(4) & ((o_saved(4)) # (!\sPLUSo[3]~7\))) # (!s_saved(4) & (o_saved(4) & !\sPLUSo[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_saved(4),
	datab => o_saved(4),
	datad => VCC,
	cin => \sPLUSo[3]~7\,
	combout => \sPLUSo[4]~8_combout\,
	cout => \sPLUSo[4]~9\);

-- Location: LCCOMB_X1_Y24_N4
\addr_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~4_combout\ = \mask[4]~input_o\ $ (\sPLUSo[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mask[4]~input_o\,
	datad => \sPLUSo[4]~8_combout\,
	combout => \addr_2~4_combout\);

-- Location: LCCOMB_X1_Y24_N20
\sPLUSo[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sPLUSo[5]~10_combout\ = (o_saved(5) & ((s_saved(5) & (\sPLUSo[4]~9\ & VCC)) # (!s_saved(5) & (!\sPLUSo[4]~9\)))) # (!o_saved(5) & ((s_saved(5) & (!\sPLUSo[4]~9\)) # (!s_saved(5) & ((\sPLUSo[4]~9\) # (GND)))))
-- \sPLUSo[5]~11\ = CARRY((o_saved(5) & (!s_saved(5) & !\sPLUSo[4]~9\)) # (!o_saved(5) & ((!\sPLUSo[4]~9\) # (!s_saved(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => o_saved(5),
	datab => s_saved(5),
	datad => VCC,
	cin => \sPLUSo[4]~9\,
	combout => \sPLUSo[5]~10_combout\,
	cout => \sPLUSo[5]~11\);

-- Location: LCCOMB_X1_Y20_N26
\addr_2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~5_combout\ = \mask[5]~input_o\ $ (\sPLUSo[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mask[5]~input_o\,
	datad => \sPLUSo[5]~10_combout\,
	combout => \addr_2~5_combout\);

-- Location: LCCOMB_X1_Y24_N22
\sPLUSo[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sPLUSo[6]~12_combout\ = ((o_saved(6) $ (s_saved(6) $ (!\sPLUSo[5]~11\)))) # (GND)
-- \sPLUSo[6]~13\ = CARRY((o_saved(6) & ((s_saved(6)) # (!\sPLUSo[5]~11\))) # (!o_saved(6) & (s_saved(6) & !\sPLUSo[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => o_saved(6),
	datab => s_saved(6),
	datad => VCC,
	cin => \sPLUSo[5]~11\,
	combout => \sPLUSo[6]~12_combout\,
	cout => \sPLUSo[6]~13\);

-- Location: LCCOMB_X1_Y24_N2
\addr_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~6_combout\ = \mask[6]~input_o\ $ (\sPLUSo[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mask[6]~input_o\,
	datac => \sPLUSo[6]~12_combout\,
	combout => \addr_2~6_combout\);

-- Location: LCCOMB_X1_Y24_N24
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

-- Location: LCCOMB_X1_Y23_N16
\addr_2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~7_combout\ = \mask[7]~input_o\ $ (\sPLUSo[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mask[7]~input_o\,
	datad => \sPLUSo[7]~14_combout\,
	combout => \addr_2~7_combout\);

-- Location: IOIBUF_X0_Y24_N8
\stride[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stride(7),
	o => \stride[7]~input_o\);

-- Location: FF_X1_Y24_N27
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

-- Location: LCCOMB_X1_Y24_N26
\sPLUSo[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sPLUSo[8]~16_combout\ = s_saved(8) $ (\sPLUSo[7]~15\ $ (!o_saved(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_saved(8),
	datad => o_saved(8),
	cin => \sPLUSo[7]~15\,
	combout => \sPLUSo[8]~16_combout\);

-- Location: LCCOMB_X1_Y28_N26
\addr_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \addr_2~8_combout\ = \mask[8]~input_o\ $ (\sPLUSo[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mask[8]~input_o\,
	datad => \sPLUSo[8]~16_combout\,
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


