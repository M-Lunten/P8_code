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
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "05/21/2022 16:20:17"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cwControlPath IS
    PORT (
	clkIn : IN std_logic;
	startIn : IN std_logic;
	validNum : OUT std_logic;
	ramEnable : OUT std_logic;
	aluSub : OUT std_logic;
	lfsrEnable : OUT std_logic;
	muxControl : OUT std_logic_vector(15 DOWNTO 0);
	regControl : OUT std_logic_vector(17 DOWNTO 0)
	);
END cwControlPath;

-- Design Ports Information
-- startIn	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validNum	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ramEnable	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluSub	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lfsrEnable	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxControl[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxControl[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxControl[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxControl[3]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxControl[4]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxControl[5]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxControl[6]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxControl[7]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxControl[8]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxControl[9]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxControl[10]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxControl[11]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxControl[12]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxControl[13]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxControl[14]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxControl[15]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[1]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[4]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[7]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[8]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[9]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[10]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[11]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[12]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[13]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[14]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[15]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[16]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regControl[17]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkIn	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cwControlPath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkIn : std_logic;
SIGNAL ww_startIn : std_logic;
SIGNAL ww_validNum : std_logic;
SIGNAL ww_ramEnable : std_logic;
SIGNAL ww_aluSub : std_logic;
SIGNAL ww_lfsrEnable : std_logic;
SIGNAL ww_muxControl : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_regControl : std_logic_vector(17 DOWNTO 0);
SIGNAL \startIn~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clkIn~input_o\ : std_logic;
SIGNAL \clkIn~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \State[0]~DUPLICATE_q\ : std_logic;
SIGNAL \State[1]~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \State[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ramEnable~0_combout\ : std_logic;
SIGNAL \ramEnable~reg0_q\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \muxControl[15]~reg0_q\ : std_logic;
SIGNAL \State[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \muxControl[10]~reg0_q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \regControl[10]~reg0_q\ : std_logic;
SIGNAL \regControl[4]~0_combout\ : std_logic;
SIGNAL \regControl[4]~reg0_q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \regControl[11]~reg0_q\ : std_logic;
SIGNAL \regControl[13]~2_combout\ : std_logic;
SIGNAL \regControl[13]~reg0_q\ : std_logic;
SIGNAL \ramEnable~1_combout\ : std_logic;
SIGNAL \regControl[15]~reg0_q\ : std_logic;
SIGNAL State : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_State[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_State[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_State[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clkIn~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL ALT_INV_State : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clkIn <= clkIn;
ww_startIn <= startIn;
validNum <= ww_validNum;
ramEnable <= ww_ramEnable;
aluSub <= ww_aluSub;
lfsrEnable <= ww_lfsrEnable;
muxControl <= ww_muxControl;
regControl <= ww_regControl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_State[0]~DUPLICATE_q\ <= NOT \State[0]~DUPLICATE_q\;
\ALT_INV_State[1]~DUPLICATE_q\ <= NOT \State[1]~DUPLICATE_q\;
\ALT_INV_State[2]~DUPLICATE_q\ <= NOT \State[2]~DUPLICATE_q\;
\ALT_INV_clkIn~inputCLKENA0_outclk\ <= NOT \clkIn~inputCLKENA0_outclk\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
ALT_INV_State(0) <= NOT State(0);
ALT_INV_State(1) <= NOT State(1);
ALT_INV_State(2) <= NOT State(2);

-- Location: IOOBUF_X88_Y81_N3
\validNum~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_validNum);

-- Location: IOOBUF_X62_Y0_N53
\ramEnable~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ramEnable~reg0_q\,
	devoe => ww_devoe,
	o => ww_ramEnable);

-- Location: IOOBUF_X68_Y0_N19
\aluSub~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \State[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_aluSub);

-- Location: IOOBUF_X6_Y0_N19
\lfsrEnable~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_lfsrEnable);

-- Location: IOOBUF_X28_Y0_N53
\muxControl[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_muxControl(0));

-- Location: IOOBUF_X62_Y0_N2
\muxControl[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxControl[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_muxControl(1));

-- Location: IOOBUF_X70_Y0_N2
\muxControl[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \State[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_muxControl(2));

-- Location: IOOBUF_X56_Y0_N36
\muxControl[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxControl[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_muxControl(3));

-- Location: IOOBUF_X56_Y0_N2
\muxControl[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxControl[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_muxControl(4));

-- Location: IOOBUF_X60_Y0_N2
\muxControl[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxControl[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_muxControl(5));

-- Location: IOOBUF_X58_Y0_N93
\muxControl[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxControl[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_muxControl(6));

-- Location: IOOBUF_X56_Y81_N19
\muxControl[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_muxControl(7));

-- Location: IOOBUF_X72_Y0_N19
\muxControl[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \State[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_muxControl(8));

-- Location: IOOBUF_X54_Y0_N36
\muxControl[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxControl[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_muxControl(9));

-- Location: IOOBUF_X54_Y0_N2
\muxControl[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxControl[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_muxControl(10));

-- Location: IOOBUF_X70_Y0_N36
\muxControl[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \State[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_muxControl(11));

-- Location: IOOBUF_X72_Y0_N2
\muxControl[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \State[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_muxControl(12));

-- Location: IOOBUF_X60_Y0_N53
\muxControl[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxControl[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_muxControl(13));

-- Location: IOOBUF_X8_Y0_N19
\muxControl[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_muxControl(14));

-- Location: IOOBUF_X56_Y0_N53
\muxControl[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxControl[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_muxControl(15));

-- Location: IOOBUF_X72_Y0_N53
\regControl[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \State[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_regControl(0));

-- Location: IOOBUF_X70_Y0_N19
\regControl[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \State[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_regControl(1));

-- Location: IOOBUF_X60_Y0_N36
\regControl[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxControl[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_regControl(2));

-- Location: IOOBUF_X64_Y0_N19
\regControl[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regControl[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_regControl(3));

-- Location: IOOBUF_X64_Y0_N2
\regControl[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regControl[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_regControl(4));

-- Location: IOOBUF_X54_Y0_N19
\regControl[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxControl[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_regControl(5));

-- Location: IOOBUF_X58_Y0_N42
\regControl[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxControl[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_regControl(6));

-- Location: IOOBUF_X56_Y0_N19
\regControl[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \muxControl[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_regControl(7));

-- Location: IOOBUF_X72_Y0_N36
\regControl[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \State[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_regControl(8));

-- Location: IOOBUF_X64_Y0_N53
\regControl[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regControl[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_regControl(9));

-- Location: IOOBUF_X64_Y0_N36
\regControl[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regControl[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_regControl(10));

-- Location: IOOBUF_X66_Y0_N93
\regControl[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regControl[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_regControl(11));

-- Location: IOOBUF_X66_Y0_N59
\regControl[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regControl[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_regControl(12));

-- Location: IOOBUF_X66_Y0_N42
\regControl[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regControl[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_regControl(13));

-- Location: IOOBUF_X66_Y0_N76
\regControl[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regControl[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_regControl(14));

-- Location: IOOBUF_X62_Y0_N19
\regControl[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regControl[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_regControl(15));

-- Location: IOOBUF_X62_Y0_N36
\regControl[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \regControl[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_regControl(16));

-- Location: IOOBUF_X68_Y0_N2
\regControl[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \State[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_regControl(17));

-- Location: IOIBUF_X89_Y35_N61
\clkIn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkIn,
	o => \clkIn~input_o\);

-- Location: CLKCTRL_G10
\clkIn~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clkIn~input_o\,
	outclk => \clkIn~inputCLKENA0_outclk\);

-- Location: FF_X63_Y1_N43
\State[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkIn~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => State(0));

-- Location: LABCELL_X63_Y1_N42
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( State(0) & ( \State[2]~DUPLICATE_q\ & ( State(1) ) ) ) # ( !State(0) & ( \State[2]~DUPLICATE_q\ & ( !State(1) ) ) ) # ( State(0) & ( !\State[2]~DUPLICATE_q\ & ( !State(1) ) ) ) # ( !State(0) & ( !\State[2]~DUPLICATE_q\ & ( State(1) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_State(1),
	datae => ALT_INV_State(0),
	dataf => \ALT_INV_State[2]~DUPLICATE_q\,
	combout => \Mux2~0_combout\);

-- Location: FF_X63_Y1_N44
\State[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkIn~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State[0]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y1_N57
\State[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State[1]~0_combout\ = ( State(1) & ( \State[2]~DUPLICATE_q\ ) ) # ( State(1) & ( !\State[2]~DUPLICATE_q\ & ( !\State[0]~DUPLICATE_q\ ) ) ) # ( !State(1) & ( !\State[2]~DUPLICATE_q\ & ( \State[0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State[0]~DUPLICATE_q\,
	datae => ALT_INV_State(1),
	dataf => \ALT_INV_State[2]~DUPLICATE_q\,
	combout => \State[1]~0_combout\);

-- Location: FF_X63_Y1_N59
\State[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkIn~inputCLKENA0_outclk\,
	d => \State[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => State(1));

-- Location: FF_X63_Y1_N50
\State[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkIn~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => State(2));

-- Location: LABCELL_X63_Y1_N48
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( State(2) & ( \State[0]~DUPLICATE_q\ & ( State(1) ) ) ) # ( !State(2) & ( \State[0]~DUPLICATE_q\ & ( State(1) ) ) ) # ( State(2) & ( !\State[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_State(1),
	datae => ALT_INV_State(2),
	dataf => \ALT_INV_State[0]~DUPLICATE_q\,
	combout => \Mux0~0_combout\);

-- Location: FF_X63_Y1_N49
\State[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkIn~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State[2]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y1_N21
\ramEnable~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ramEnable~0_combout\ = ( State(2) & ( !State(1) ) ) # ( !State(2) & ( (State(1)) # (\State[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State[0]~DUPLICATE_q\,
	datad => ALT_INV_State(1),
	dataf => ALT_INV_State(2),
	combout => \ramEnable~0_combout\);

-- Location: FF_X63_Y1_N22
\ramEnable~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkIn~inputCLKENA0_outclk\,
	asdata => \State[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \ramEnable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ramEnable~reg0_q\);

-- Location: LABCELL_X63_Y1_N12
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \State[2]~DUPLICATE_q\ & ( \State[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State[0]~DUPLICATE_q\,
	dataf => \ALT_INV_State[2]~DUPLICATE_q\,
	combout => \Mux21~0_combout\);

-- Location: FF_X63_Y1_N13
\muxControl[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkIn~inputCLKENA0_outclk\,
	d => \Mux21~0_combout\,
	ena => \ramEnable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \muxControl[15]~reg0_q\);

-- Location: FF_X63_Y1_N58
\State[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkIn~inputCLKENA0_outclk\,
	d => \State[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State[1]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y1_N0
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \State[2]~DUPLICATE_q\ & ( State(0) ) ) # ( !\State[2]~DUPLICATE_q\ & ( (!\State[1]~DUPLICATE_q\) # (!State(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State[1]~DUPLICATE_q\,
	datad => ALT_INV_State(0),
	dataf => \ALT_INV_State[2]~DUPLICATE_q\,
	combout => \Mux26~0_combout\);

-- Location: FF_X63_Y1_N1
\muxControl[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkIn~inputCLKENA0_outclk\,
	d => \Mux26~0_combout\,
	ena => \ramEnable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \muxControl[10]~reg0_q\);

-- Location: LABCELL_X63_Y1_N33
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \State[1]~DUPLICATE_q\ & ( (!State(2) & \State[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_State(2),
	datab => \ALT_INV_State[0]~DUPLICATE_q\,
	dataf => \ALT_INV_State[1]~DUPLICATE_q\,
	combout => \Mux10~0_combout\);

-- Location: FF_X63_Y1_N35
\regControl[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkIn~inputCLKENA0_outclk\,
	d => \Mux10~0_combout\,
	ena => \ramEnable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regControl[10]~reg0_q\);

-- Location: LABCELL_X63_Y1_N3
\regControl[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \regControl[4]~0_combout\ = ( !\Mux10~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \regControl[4]~0_combout\);

-- Location: FF_X63_Y1_N4
\regControl[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkIn~inputCLKENA0_outclk\,
	d => \regControl[4]~0_combout\,
	ena => \ramEnable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regControl[4]~reg0_q\);

-- Location: LABCELL_X63_Y1_N30
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \State[2]~DUPLICATE_q\ & ( !\State[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State[0]~DUPLICATE_q\,
	dataf => \ALT_INV_State[2]~DUPLICATE_q\,
	combout => \Mux9~0_combout\);

-- Location: FF_X63_Y1_N31
\regControl[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkIn~inputCLKENA0_outclk\,
	d => \Mux9~0_combout\,
	ena => \ramEnable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regControl[11]~reg0_q\);

-- Location: LABCELL_X63_Y1_N15
\regControl[13]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \regControl[13]~2_combout\ = ( !\State[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_State[2]~DUPLICATE_q\,
	combout => \regControl[13]~2_combout\);

-- Location: FF_X63_Y1_N16
\regControl[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkIn~inputCLKENA0_outclk\,
	d => \regControl[13]~2_combout\,
	ena => \ramEnable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regControl[13]~reg0_q\);

-- Location: LABCELL_X63_Y1_N18
\ramEnable~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ramEnable~1_combout\ = ( !\State[2]~DUPLICATE_q\ & ( !State(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_State(1),
	dataf => \ALT_INV_State[2]~DUPLICATE_q\,
	combout => \ramEnable~1_combout\);

-- Location: FF_X63_Y1_N20
\regControl[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clkIn~inputCLKENA0_outclk\,
	d => \ramEnable~1_combout\,
	ena => \ramEnable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regControl[15]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N41
\startIn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_startIn,
	o => \startIn~input_o\);

-- Location: LABCELL_X83_Y79_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


