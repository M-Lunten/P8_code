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

-- DATE "03/04/2022 14:18:05"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Fibonacci_number_generator IS
    PORT (
	clock : IN std_logic;
	fibo : OUT std_logic_vector(3 DOWNTO 0)
	);
END Fibonacci_number_generator;

-- Design Ports Information
-- fibo[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fibo[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fibo[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fibo[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Fibonacci_number_generator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_fibo : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \q_values[0]~DUPLICATE_q\ : std_logic;
SIGNAL \q_values[1]~0_combout\ : std_logic;
SIGNAL \q_values[2]~1_combout\ : std_logic;
SIGNAL \q_values[3]~2_combout\ : std_logic;
SIGNAL \q_values[3]~DUPLICATE_q\ : std_logic;
SIGNAL q_values : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_q_values[0]~DUPLICATE_q\ : std_logic;
SIGNAL ALT_INV_q_values : std_logic_vector(3 DOWNTO 1);

BEGIN

ww_clock <= clock;
fibo <= ww_fibo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_q_values[0]~DUPLICATE_q\ <= NOT \q_values[0]~DUPLICATE_q\;
ALT_INV_q_values(3) <= NOT q_values(3);
ALT_INV_q_values(2) <= NOT q_values(2);
ALT_INV_q_values(1) <= NOT q_values(1);

-- Location: IOOBUF_X89_Y38_N5
\fibo[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => q_values(0),
	devoe => ww_devoe,
	o => ww_fibo(0));

-- Location: IOOBUF_X89_Y38_N56
\fibo[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_q_values(1),
	devoe => ww_devoe,
	o => ww_fibo(1));

-- Location: IOOBUF_X89_Y38_N22
\fibo[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_q_values(2),
	devoe => ww_devoe,
	o => ww_fibo(2));

-- Location: IOOBUF_X89_Y38_N39
\fibo[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q_values[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_fibo(3));

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: FF_X88_Y38_N53
\q_values[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => q_values(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_values[0]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y38_N48
\q_values[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \q_values[1]~0_combout\ = ( !q_values(1) & ( \q_values[0]~DUPLICATE_q\ ) ) # ( q_values(1) & ( !\q_values[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_q_values(1),
	dataf => \ALT_INV_q_values[0]~DUPLICATE_q\,
	combout => \q_values[1]~0_combout\);

-- Location: FF_X88_Y38_N50
\q_values[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \q_values[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_values(1));

-- Location: LABCELL_X88_Y38_N54
\q_values[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \q_values[2]~1_combout\ = ( q_values(2) & ( q_values(1) ) ) # ( !q_values(2) & ( !q_values(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_q_values(2),
	dataf => ALT_INV_q_values(1),
	combout => \q_values[2]~1_combout\);

-- Location: FF_X88_Y38_N56
\q_values[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \q_values[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_values(2));

-- Location: LABCELL_X88_Y38_N21
\q_values[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \q_values[3]~2_combout\ = ( q_values(3) & ( q_values(2) ) ) # ( !q_values(3) & ( !q_values(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_q_values(3),
	dataf => ALT_INV_q_values(2),
	combout => \q_values[3]~2_combout\);

-- Location: FF_X88_Y38_N23
\q_values[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \q_values[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_values(3));

-- Location: FF_X88_Y38_N52
\q_values[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => q_values(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q_values(0));

-- Location: FF_X88_Y38_N22
\q_values[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \q_values[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q_values[3]~DUPLICATE_q\);

-- Location: LABCELL_X11_Y48_N3
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


