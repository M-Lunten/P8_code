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

-- DATE "06/14/2022 14:44:25"

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

ENTITY 	counter_32bits IS
    PORT (
	clk : IN std_logic;
	out_sum : OUT std_logic_vector(31 DOWNTO 0)
	);
END counter_32bits;

-- Design Ports Information
-- out_sum[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[2]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[4]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[5]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[6]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[7]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[8]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[9]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[10]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[11]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[12]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[13]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[14]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[15]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[16]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[17]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[18]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[19]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[20]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[21]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[22]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[23]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[24]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[25]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[26]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[27]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[28]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[29]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[30]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sum[31]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter_32bits IS
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
SIGNAL ww_out_sum : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out_sum[0]~output_o\ : std_logic;
SIGNAL \out_sum[1]~output_o\ : std_logic;
SIGNAL \out_sum[2]~output_o\ : std_logic;
SIGNAL \out_sum[3]~output_o\ : std_logic;
SIGNAL \out_sum[4]~output_o\ : std_logic;
SIGNAL \out_sum[5]~output_o\ : std_logic;
SIGNAL \out_sum[6]~output_o\ : std_logic;
SIGNAL \out_sum[7]~output_o\ : std_logic;
SIGNAL \out_sum[8]~output_o\ : std_logic;
SIGNAL \out_sum[9]~output_o\ : std_logic;
SIGNAL \out_sum[10]~output_o\ : std_logic;
SIGNAL \out_sum[11]~output_o\ : std_logic;
SIGNAL \out_sum[12]~output_o\ : std_logic;
SIGNAL \out_sum[13]~output_o\ : std_logic;
SIGNAL \out_sum[14]~output_o\ : std_logic;
SIGNAL \out_sum[15]~output_o\ : std_logic;
SIGNAL \out_sum[16]~output_o\ : std_logic;
SIGNAL \out_sum[17]~output_o\ : std_logic;
SIGNAL \out_sum[18]~output_o\ : std_logic;
SIGNAL \out_sum[19]~output_o\ : std_logic;
SIGNAL \out_sum[20]~output_o\ : std_logic;
SIGNAL \out_sum[21]~output_o\ : std_logic;
SIGNAL \out_sum[22]~output_o\ : std_logic;
SIGNAL \out_sum[23]~output_o\ : std_logic;
SIGNAL \out_sum[24]~output_o\ : std_logic;
SIGNAL \out_sum[25]~output_o\ : std_logic;
SIGNAL \out_sum[26]~output_o\ : std_logic;
SIGNAL \out_sum[27]~output_o\ : std_logic;
SIGNAL \out_sum[28]~output_o\ : std_logic;
SIGNAL \out_sum[29]~output_o\ : std_logic;
SIGNAL \out_sum[30]~output_o\ : std_logic;
SIGNAL \out_sum[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[0]~93_combout\ : std_logic;
SIGNAL \count[1]~31_combout\ : std_logic;
SIGNAL \count[1]~32\ : std_logic;
SIGNAL \count[2]~33_combout\ : std_logic;
SIGNAL \count[2]~34\ : std_logic;
SIGNAL \count[3]~35_combout\ : std_logic;
SIGNAL \count[3]~36\ : std_logic;
SIGNAL \count[4]~37_combout\ : std_logic;
SIGNAL \count[4]~38\ : std_logic;
SIGNAL \count[5]~39_combout\ : std_logic;
SIGNAL \count[5]~40\ : std_logic;
SIGNAL \count[6]~41_combout\ : std_logic;
SIGNAL \count[6]~42\ : std_logic;
SIGNAL \count[7]~43_combout\ : std_logic;
SIGNAL \count[7]~44\ : std_logic;
SIGNAL \count[8]~45_combout\ : std_logic;
SIGNAL \count[8]~46\ : std_logic;
SIGNAL \count[9]~47_combout\ : std_logic;
SIGNAL \count[9]~48\ : std_logic;
SIGNAL \count[10]~49_combout\ : std_logic;
SIGNAL \count[10]~50\ : std_logic;
SIGNAL \count[11]~51_combout\ : std_logic;
SIGNAL \count[11]~52\ : std_logic;
SIGNAL \count[12]~53_combout\ : std_logic;
SIGNAL \count[12]~54\ : std_logic;
SIGNAL \count[13]~55_combout\ : std_logic;
SIGNAL \count[13]~56\ : std_logic;
SIGNAL \count[14]~57_combout\ : std_logic;
SIGNAL \count[14]~58\ : std_logic;
SIGNAL \count[15]~59_combout\ : std_logic;
SIGNAL \count[15]~60\ : std_logic;
SIGNAL \count[16]~61_combout\ : std_logic;
SIGNAL \count[16]~62\ : std_logic;
SIGNAL \count[17]~63_combout\ : std_logic;
SIGNAL \count[17]~64\ : std_logic;
SIGNAL \count[18]~65_combout\ : std_logic;
SIGNAL \count[18]~66\ : std_logic;
SIGNAL \count[19]~67_combout\ : std_logic;
SIGNAL \count[19]~68\ : std_logic;
SIGNAL \count[20]~69_combout\ : std_logic;
SIGNAL \count[20]~70\ : std_logic;
SIGNAL \count[21]~71_combout\ : std_logic;
SIGNAL \count[21]~72\ : std_logic;
SIGNAL \count[22]~73_combout\ : std_logic;
SIGNAL \count[22]~74\ : std_logic;
SIGNAL \count[23]~75_combout\ : std_logic;
SIGNAL \count[23]~76\ : std_logic;
SIGNAL \count[24]~77_combout\ : std_logic;
SIGNAL \count[24]~78\ : std_logic;
SIGNAL \count[25]~79_combout\ : std_logic;
SIGNAL \count[25]~80\ : std_logic;
SIGNAL \count[26]~81_combout\ : std_logic;
SIGNAL \count[26]~82\ : std_logic;
SIGNAL \count[27]~83_combout\ : std_logic;
SIGNAL \count[27]~84\ : std_logic;
SIGNAL \count[28]~85_combout\ : std_logic;
SIGNAL \count[28]~86\ : std_logic;
SIGNAL \count[29]~87_combout\ : std_logic;
SIGNAL \count[29]~88\ : std_logic;
SIGNAL \count[30]~89_combout\ : std_logic;
SIGNAL \count[30]~90\ : std_logic;
SIGNAL \count[31]~91_combout\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
out_sum <= ww_out_sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y29_N16
\out_sum[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(0),
	devoe => ww_devoe,
	o => \out_sum[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\out_sum[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(1),
	devoe => ww_devoe,
	o => \out_sum[1]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\out_sum[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(2),
	devoe => ww_devoe,
	o => \out_sum[2]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\out_sum[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(3),
	devoe => ww_devoe,
	o => \out_sum[3]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\out_sum[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(4),
	devoe => ww_devoe,
	o => \out_sum[4]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\out_sum[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(5),
	devoe => ww_devoe,
	o => \out_sum[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\out_sum[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(6),
	devoe => ww_devoe,
	o => \out_sum[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\out_sum[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(7),
	devoe => ww_devoe,
	o => \out_sum[7]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\out_sum[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(8),
	devoe => ww_devoe,
	o => \out_sum[8]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\out_sum[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(9),
	devoe => ww_devoe,
	o => \out_sum[9]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\out_sum[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(10),
	devoe => ww_devoe,
	o => \out_sum[10]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\out_sum[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(11),
	devoe => ww_devoe,
	o => \out_sum[11]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\out_sum[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(12),
	devoe => ww_devoe,
	o => \out_sum[12]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\out_sum[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(13),
	devoe => ww_devoe,
	o => \out_sum[13]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\out_sum[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(14),
	devoe => ww_devoe,
	o => \out_sum[14]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\out_sum[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(15),
	devoe => ww_devoe,
	o => \out_sum[15]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\out_sum[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(16),
	devoe => ww_devoe,
	o => \out_sum[16]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\out_sum[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(17),
	devoe => ww_devoe,
	o => \out_sum[17]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\out_sum[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(18),
	devoe => ww_devoe,
	o => \out_sum[18]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\out_sum[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(19),
	devoe => ww_devoe,
	o => \out_sum[19]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\out_sum[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(20),
	devoe => ww_devoe,
	o => \out_sum[20]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\out_sum[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(21),
	devoe => ww_devoe,
	o => \out_sum[21]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\out_sum[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(22),
	devoe => ww_devoe,
	o => \out_sum[22]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\out_sum[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(23),
	devoe => ww_devoe,
	o => \out_sum[23]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\out_sum[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(24),
	devoe => ww_devoe,
	o => \out_sum[24]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\out_sum[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(25),
	devoe => ww_devoe,
	o => \out_sum[25]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\out_sum[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(26),
	devoe => ww_devoe,
	o => \out_sum[26]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\out_sum[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(27),
	devoe => ww_devoe,
	o => \out_sum[27]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\out_sum[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(28),
	devoe => ww_devoe,
	o => \out_sum[28]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\out_sum[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(29),
	devoe => ww_devoe,
	o => \out_sum[29]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\out_sum[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(30),
	devoe => ww_devoe,
	o => \out_sum[30]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\out_sum[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(31),
	devoe => ww_devoe,
	o => \out_sum[31]~output_o\);

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

-- Location: LCCOMB_X1_Y28_N0
\count[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~93_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	combout => \count[0]~93_combout\);

-- Location: FF_X1_Y28_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X1_Y28_N2
\count[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~31_combout\ = (count(0) & (count(1) $ (VCC))) # (!count(0) & (count(1) & VCC))
-- \count[1]~32\ = CARRY((count(0) & count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datad => VCC,
	combout => \count[1]~31_combout\,
	cout => \count[1]~32\);

-- Location: FF_X1_Y28_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X1_Y28_N4
\count[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~33_combout\ = (count(2) & (!\count[1]~32\)) # (!count(2) & ((\count[1]~32\) # (GND)))
-- \count[2]~34\ = CARRY((!\count[1]~32\) # (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~32\,
	combout => \count[2]~33_combout\,
	cout => \count[2]~34\);

-- Location: FF_X1_Y28_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X1_Y28_N6
\count[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[3]~35_combout\ = (count(3) & (\count[2]~34\ $ (GND))) # (!count(3) & (!\count[2]~34\ & VCC))
-- \count[3]~36\ = CARRY((count(3) & !\count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~34\,
	combout => \count[3]~35_combout\,
	cout => \count[3]~36\);

-- Location: FF_X1_Y28_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X1_Y28_N8
\count[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~37_combout\ = (count(4) & (!\count[3]~36\)) # (!count(4) & ((\count[3]~36\) # (GND)))
-- \count[4]~38\ = CARRY((!\count[3]~36\) # (!count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~36\,
	combout => \count[4]~37_combout\,
	cout => \count[4]~38\);

-- Location: FF_X1_Y28_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X1_Y28_N10
\count[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[5]~39_combout\ = (count(5) & (\count[4]~38\ $ (GND))) # (!count(5) & (!\count[4]~38\ & VCC))
-- \count[5]~40\ = CARRY((count(5) & !\count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~38\,
	combout => \count[5]~39_combout\,
	cout => \count[5]~40\);

-- Location: FF_X1_Y28_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X1_Y28_N12
\count[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[6]~41_combout\ = (count(6) & (!\count[5]~40\)) # (!count(6) & ((\count[5]~40\) # (GND)))
-- \count[6]~42\ = CARRY((!\count[5]~40\) # (!count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \count[5]~40\,
	combout => \count[6]~41_combout\,
	cout => \count[6]~42\);

-- Location: FF_X1_Y28_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[6]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X1_Y28_N14
\count[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~43_combout\ = (count(7) & (\count[6]~42\ $ (GND))) # (!count(7) & (!\count[6]~42\ & VCC))
-- \count[7]~44\ = CARRY((count(7) & !\count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~42\,
	combout => \count[7]~43_combout\,
	cout => \count[7]~44\);

-- Location: FF_X1_Y28_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X1_Y28_N16
\count[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[8]~45_combout\ = (count(8) & (!\count[7]~44\)) # (!count(8) & ((\count[7]~44\) # (GND)))
-- \count[8]~46\ = CARRY((!\count[7]~44\) # (!count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~44\,
	combout => \count[8]~45_combout\,
	cout => \count[8]~46\);

-- Location: FF_X1_Y28_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[8]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X1_Y28_N18
\count[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[9]~47_combout\ = (count(9) & (\count[8]~46\ $ (GND))) # (!count(9) & (!\count[8]~46\ & VCC))
-- \count[9]~48\ = CARRY((count(9) & !\count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~46\,
	combout => \count[9]~47_combout\,
	cout => \count[9]~48\);

-- Location: FF_X1_Y28_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X1_Y28_N20
\count[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[10]~49_combout\ = (count(10) & (!\count[9]~48\)) # (!count(10) & ((\count[9]~48\) # (GND)))
-- \count[10]~50\ = CARRY((!\count[9]~48\) # (!count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~48\,
	combout => \count[10]~49_combout\,
	cout => \count[10]~50\);

-- Location: FF_X1_Y28_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[10]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X1_Y28_N22
\count[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[11]~51_combout\ = (count(11) & (\count[10]~50\ $ (GND))) # (!count(11) & (!\count[10]~50\ & VCC))
-- \count[11]~52\ = CARRY((count(11) & !\count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \count[10]~50\,
	combout => \count[11]~51_combout\,
	cout => \count[11]~52\);

-- Location: FF_X1_Y28_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[11]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X1_Y28_N24
\count[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[12]~53_combout\ = (count(12) & (!\count[11]~52\)) # (!count(12) & ((\count[11]~52\) # (GND)))
-- \count[12]~54\ = CARRY((!\count[11]~52\) # (!count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~52\,
	combout => \count[12]~53_combout\,
	cout => \count[12]~54\);

-- Location: FF_X1_Y28_N25
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[12]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X1_Y28_N26
\count[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[13]~55_combout\ = (count(13) & (\count[12]~54\ $ (GND))) # (!count(13) & (!\count[12]~54\ & VCC))
-- \count[13]~56\ = CARRY((count(13) & !\count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \count[12]~54\,
	combout => \count[13]~55_combout\,
	cout => \count[13]~56\);

-- Location: FF_X1_Y28_N27
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X1_Y28_N28
\count[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[14]~57_combout\ = (count(14) & (!\count[13]~56\)) # (!count(14) & ((\count[13]~56\) # (GND)))
-- \count[14]~58\ = CARRY((!\count[13]~56\) # (!count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~56\,
	combout => \count[14]~57_combout\,
	cout => \count[14]~58\);

-- Location: FF_X1_Y28_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X1_Y28_N30
\count[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[15]~59_combout\ = (count(15) & (\count[14]~58\ $ (GND))) # (!count(15) & (!\count[14]~58\ & VCC))
-- \count[15]~60\ = CARRY((count(15) & !\count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \count[14]~58\,
	combout => \count[15]~59_combout\,
	cout => \count[15]~60\);

-- Location: FF_X1_Y28_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[15]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X1_Y27_N0
\count[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[16]~61_combout\ = (count(16) & (!\count[15]~60\)) # (!count(16) & ((\count[15]~60\) # (GND)))
-- \count[16]~62\ = CARRY((!\count[15]~60\) # (!count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \count[15]~60\,
	combout => \count[16]~61_combout\,
	cout => \count[16]~62\);

-- Location: FF_X1_Y27_N1
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[16]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X1_Y27_N2
\count[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[17]~63_combout\ = (count(17) & (\count[16]~62\ $ (GND))) # (!count(17) & (!\count[16]~62\ & VCC))
-- \count[17]~64\ = CARRY((count(17) & !\count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~62\,
	combout => \count[17]~63_combout\,
	cout => \count[17]~64\);

-- Location: FF_X1_Y27_N3
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[17]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X1_Y27_N4
\count[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[18]~65_combout\ = (count(18) & (!\count[17]~64\)) # (!count(18) & ((\count[17]~64\) # (GND)))
-- \count[18]~66\ = CARRY((!\count[17]~64\) # (!count(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \count[17]~64\,
	combout => \count[18]~65_combout\,
	cout => \count[18]~66\);

-- Location: FF_X1_Y27_N5
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X1_Y27_N6
\count[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[19]~67_combout\ = (count(19) & (\count[18]~66\ $ (GND))) # (!count(19) & (!\count[18]~66\ & VCC))
-- \count[19]~68\ = CARRY((count(19) & !\count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \count[18]~66\,
	combout => \count[19]~67_combout\,
	cout => \count[19]~68\);

-- Location: FF_X1_Y27_N7
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[19]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X1_Y27_N8
\count[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[20]~69_combout\ = (count(20) & (!\count[19]~68\)) # (!count(20) & ((\count[19]~68\) # (GND)))
-- \count[20]~70\ = CARRY((!\count[19]~68\) # (!count(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \count[19]~68\,
	combout => \count[20]~69_combout\,
	cout => \count[20]~70\);

-- Location: FF_X1_Y27_N9
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[20]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X1_Y27_N10
\count[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[21]~71_combout\ = (count(21) & (\count[20]~70\ $ (GND))) # (!count(21) & (!\count[20]~70\ & VCC))
-- \count[21]~72\ = CARRY((count(21) & !\count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \count[20]~70\,
	combout => \count[21]~71_combout\,
	cout => \count[21]~72\);

-- Location: FF_X1_Y27_N11
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[21]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X1_Y27_N12
\count[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[22]~73_combout\ = (count(22) & (!\count[21]~72\)) # (!count(22) & ((\count[21]~72\) # (GND)))
-- \count[22]~74\ = CARRY((!\count[21]~72\) # (!count(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \count[21]~72\,
	combout => \count[22]~73_combout\,
	cout => \count[22]~74\);

-- Location: FF_X1_Y27_N13
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[22]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X1_Y27_N14
\count[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[23]~75_combout\ = (count(23) & (\count[22]~74\ $ (GND))) # (!count(23) & (!\count[22]~74\ & VCC))
-- \count[23]~76\ = CARRY((count(23) & !\count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~74\,
	combout => \count[23]~75_combout\,
	cout => \count[23]~76\);

-- Location: FF_X1_Y27_N15
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[23]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X1_Y27_N16
\count[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[24]~77_combout\ = (count(24) & (!\count[23]~76\)) # (!count(24) & ((\count[23]~76\) # (GND)))
-- \count[24]~78\ = CARRY((!\count[23]~76\) # (!count(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \count[23]~76\,
	combout => \count[24]~77_combout\,
	cout => \count[24]~78\);

-- Location: FF_X1_Y27_N17
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[24]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X1_Y27_N18
\count[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[25]~79_combout\ = (count(25) & (\count[24]~78\ $ (GND))) # (!count(25) & (!\count[24]~78\ & VCC))
-- \count[25]~80\ = CARRY((count(25) & !\count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \count[24]~78\,
	combout => \count[25]~79_combout\,
	cout => \count[25]~80\);

-- Location: FF_X1_Y27_N19
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[25]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X1_Y27_N20
\count[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[26]~81_combout\ = (count(26) & (!\count[25]~80\)) # (!count(26) & ((\count[25]~80\) # (GND)))
-- \count[26]~82\ = CARRY((!\count[25]~80\) # (!count(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \count[25]~80\,
	combout => \count[26]~81_combout\,
	cout => \count[26]~82\);

-- Location: FF_X1_Y27_N21
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[26]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X1_Y27_N22
\count[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[27]~83_combout\ = (count(27) & (\count[26]~82\ $ (GND))) # (!count(27) & (!\count[26]~82\ & VCC))
-- \count[27]~84\ = CARRY((count(27) & !\count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \count[26]~82\,
	combout => \count[27]~83_combout\,
	cout => \count[27]~84\);

-- Location: FF_X1_Y27_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[27]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X1_Y27_N24
\count[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[28]~85_combout\ = (count(28) & (!\count[27]~84\)) # (!count(28) & ((\count[27]~84\) # (GND)))
-- \count[28]~86\ = CARRY((!\count[27]~84\) # (!count(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \count[27]~84\,
	combout => \count[28]~85_combout\,
	cout => \count[28]~86\);

-- Location: FF_X1_Y27_N25
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[28]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X1_Y27_N26
\count[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[29]~87_combout\ = (count(29) & (\count[28]~86\ $ (GND))) # (!count(29) & (!\count[28]~86\ & VCC))
-- \count[29]~88\ = CARRY((count(29) & !\count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \count[28]~86\,
	combout => \count[29]~87_combout\,
	cout => \count[29]~88\);

-- Location: FF_X1_Y27_N27
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[29]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X1_Y27_N28
\count[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[30]~89_combout\ = (count(30) & (!\count[29]~88\)) # (!count(30) & ((\count[29]~88\) # (GND)))
-- \count[30]~90\ = CARRY((!\count[29]~88\) # (!count(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \count[29]~88\,
	combout => \count[30]~89_combout\,
	cout => \count[30]~90\);

-- Location: FF_X1_Y27_N29
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[30]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X1_Y27_N30
\count[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[31]~91_combout\ = count(31) $ (!\count[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	cin => \count[30]~90\,
	combout => \count[31]~91_combout\);

-- Location: FF_X1_Y27_N31
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[31]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

ww_out_sum(0) <= \out_sum[0]~output_o\;

ww_out_sum(1) <= \out_sum[1]~output_o\;

ww_out_sum(2) <= \out_sum[2]~output_o\;

ww_out_sum(3) <= \out_sum[3]~output_o\;

ww_out_sum(4) <= \out_sum[4]~output_o\;

ww_out_sum(5) <= \out_sum[5]~output_o\;

ww_out_sum(6) <= \out_sum[6]~output_o\;

ww_out_sum(7) <= \out_sum[7]~output_o\;

ww_out_sum(8) <= \out_sum[8]~output_o\;

ww_out_sum(9) <= \out_sum[9]~output_o\;

ww_out_sum(10) <= \out_sum[10]~output_o\;

ww_out_sum(11) <= \out_sum[11]~output_o\;

ww_out_sum(12) <= \out_sum[12]~output_o\;

ww_out_sum(13) <= \out_sum[13]~output_o\;

ww_out_sum(14) <= \out_sum[14]~output_o\;

ww_out_sum(15) <= \out_sum[15]~output_o\;

ww_out_sum(16) <= \out_sum[16]~output_o\;

ww_out_sum(17) <= \out_sum[17]~output_o\;

ww_out_sum(18) <= \out_sum[18]~output_o\;

ww_out_sum(19) <= \out_sum[19]~output_o\;

ww_out_sum(20) <= \out_sum[20]~output_o\;

ww_out_sum(21) <= \out_sum[21]~output_o\;

ww_out_sum(22) <= \out_sum[22]~output_o\;

ww_out_sum(23) <= \out_sum[23]~output_o\;

ww_out_sum(24) <= \out_sum[24]~output_o\;

ww_out_sum(25) <= \out_sum[25]~output_o\;

ww_out_sum(26) <= \out_sum[26]~output_o\;

ww_out_sum(27) <= \out_sum[27]~output_o\;

ww_out_sum(28) <= \out_sum[28]~output_o\;

ww_out_sum(29) <= \out_sum[29]~output_o\;

ww_out_sum(30) <= \out_sum[30]~output_o\;

ww_out_sum(31) <= \out_sum[31]~output_o\;
END structure;


