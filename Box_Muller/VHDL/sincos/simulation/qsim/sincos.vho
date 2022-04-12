-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "04/12/2022 16:53:04"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	sincos IS
    PORT (
	i_clock : IN std_logic;
	reset : IN std_logic;
	data : IN std_logic_vector(11 DOWNTO 0);
	sinOut : OUT std_logic_vector(15 DOWNTO 0);
	cosOut : OUT std_logic_vector(15 DOWNTO 0)
	);
END sincos;

-- Design Ports Information
-- reset	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[0]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[1]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[2]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[4]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[5]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[6]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[7]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[8]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[9]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[10]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[11]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[12]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[13]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[14]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[15]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[0]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[1]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[2]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[3]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[4]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[6]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[7]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[8]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[9]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[10]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[11]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[12]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[13]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[14]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[15]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[10]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[11]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[8]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[9]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sincos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_data : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_sinOut : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_cosOut : std_logic_vector(15 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \sinOut[0]~output_o\ : std_logic;
SIGNAL \sinOut[1]~output_o\ : std_logic;
SIGNAL \sinOut[2]~output_o\ : std_logic;
SIGNAL \sinOut[3]~output_o\ : std_logic;
SIGNAL \sinOut[4]~output_o\ : std_logic;
SIGNAL \sinOut[5]~output_o\ : std_logic;
SIGNAL \sinOut[6]~output_o\ : std_logic;
SIGNAL \sinOut[7]~output_o\ : std_logic;
SIGNAL \sinOut[8]~output_o\ : std_logic;
SIGNAL \sinOut[9]~output_o\ : std_logic;
SIGNAL \sinOut[10]~output_o\ : std_logic;
SIGNAL \sinOut[11]~output_o\ : std_logic;
SIGNAL \sinOut[12]~output_o\ : std_logic;
SIGNAL \sinOut[13]~output_o\ : std_logic;
SIGNAL \sinOut[14]~output_o\ : std_logic;
SIGNAL \sinOut[15]~output_o\ : std_logic;
SIGNAL \cosOut[0]~output_o\ : std_logic;
SIGNAL \cosOut[1]~output_o\ : std_logic;
SIGNAL \cosOut[2]~output_o\ : std_logic;
SIGNAL \cosOut[3]~output_o\ : std_logic;
SIGNAL \cosOut[4]~output_o\ : std_logic;
SIGNAL \cosOut[5]~output_o\ : std_logic;
SIGNAL \cosOut[6]~output_o\ : std_logic;
SIGNAL \cosOut[7]~output_o\ : std_logic;
SIGNAL \cosOut[8]~output_o\ : std_logic;
SIGNAL \cosOut[9]~output_o\ : std_logic;
SIGNAL \cosOut[10]~output_o\ : std_logic;
SIGNAL \cosOut[11]~output_o\ : std_logic;
SIGNAL \cosOut[12]~output_o\ : std_logic;
SIGNAL \cosOut[13]~output_o\ : std_logic;
SIGNAL \cosOut[14]~output_o\ : std_logic;
SIGNAL \cosOut[15]~output_o\ : std_logic;
SIGNAL \i_clock~input_o\ : std_logic;
SIGNAL \i_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \data[10]~input_o\ : std_logic;
SIGNAL \n~feeder_combout\ : std_logic;
SIGNAL \n~q\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \d[0]~feeder_combout\ : std_logic;
SIGNAL \dCos[0]~feeder_combout\ : std_logic;
SIGNAL \dSinpLUT[0]~0_combout\ : std_logic;
SIGNAL \data[11]~input_o\ : std_logic;
SIGNAL \m~feeder_combout\ : std_logic;
SIGNAL \m~q\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \d[1]~feeder_combout\ : std_logic;
SIGNAL \dCos[1]~feeder_combout\ : std_logic;
SIGNAL \dSinpLUT[1]~1_combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \d[2]~feeder_combout\ : std_logic;
SIGNAL \dCos[2]~feeder_combout\ : std_logic;
SIGNAL \dSinpLUT[2]~2_combout\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \dCos[3]~feeder_combout\ : std_logic;
SIGNAL \dSinpLUT[3]~3_combout\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \d[4]~feeder_combout\ : std_logic;
SIGNAL \dCos[4]~feeder_combout\ : std_logic;
SIGNAL \dSinpLUT[4]~4_combout\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \d[5]~feeder_combout\ : std_logic;
SIGNAL \dCos[5]~feeder_combout\ : std_logic;
SIGNAL \dSinpLUT[5]~5_combout\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \d[6]~feeder_combout\ : std_logic;
SIGNAL \dCos[6]~feeder_combout\ : std_logic;
SIGNAL \dSinpLUT[6]~6_combout\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \dCos[7]~feeder_combout\ : std_logic;
SIGNAL \dSinpLUT[7]~7_combout\ : std_logic;
SIGNAL \data[8]~input_o\ : std_logic;
SIGNAL \d[8]~feeder_combout\ : std_logic;
SIGNAL \dCos[8]~feeder_combout\ : std_logic;
SIGNAL \dSinpLUT[8]~8_combout\ : std_logic;
SIGNAL \data[9]~input_o\ : std_logic;
SIGNAL \d[9]~feeder_combout\ : std_logic;
SIGNAL \dCos[9]~feeder_combout\ : std_logic;
SIGNAL \dSinpLUT[9]~9_combout\ : std_logic;
SIGNAL \dCospLUT[0]~0_combout\ : std_logic;
SIGNAL \dCospLUT[1]~1_combout\ : std_logic;
SIGNAL \dCospLUT[2]~2_combout\ : std_logic;
SIGNAL \dCospLUT[3]~3_combout\ : std_logic;
SIGNAL \dCospLUT[4]~4_combout\ : std_logic;
SIGNAL \dCospLUT[5]~5_combout\ : std_logic;
SIGNAL \dCospLUT[6]~6_combout\ : std_logic;
SIGNAL \dCospLUT[7]~7_combout\ : std_logic;
SIGNAL \dCospLUT[8]~8_combout\ : std_logic;
SIGNAL \dCospLUT[9]~9_combout\ : std_logic;
SIGNAL \sinOut~0_combout\ : std_logic;
SIGNAL \sinOut[0]~reg0_q\ : std_logic;
SIGNAL \sinOut~1_combout\ : std_logic;
SIGNAL \sinOut[1]~reg0_q\ : std_logic;
SIGNAL \sinOut~2_combout\ : std_logic;
SIGNAL \sinOut[2]~reg0_q\ : std_logic;
SIGNAL \sinOut~3_combout\ : std_logic;
SIGNAL \sinOut[3]~reg0_q\ : std_logic;
SIGNAL \sinOut~4_combout\ : std_logic;
SIGNAL \sinOut[4]~reg0_q\ : std_logic;
SIGNAL \sinOut~5_combout\ : std_logic;
SIGNAL \sinOut[5]~reg0_q\ : std_logic;
SIGNAL \sinOut~6_combout\ : std_logic;
SIGNAL \sinOut[6]~reg0_q\ : std_logic;
SIGNAL \sinOut~7_combout\ : std_logic;
SIGNAL \sinOut[7]~reg0_q\ : std_logic;
SIGNAL \sinOut~8_combout\ : std_logic;
SIGNAL \sinOut[8]~reg0_q\ : std_logic;
SIGNAL \sinOut~9_combout\ : std_logic;
SIGNAL \sinOut[9]~reg0_q\ : std_logic;
SIGNAL \sinOut~10_combout\ : std_logic;
SIGNAL \sinOut[10]~reg0_q\ : std_logic;
SIGNAL \sinOut~11_combout\ : std_logic;
SIGNAL \sinOut[11]~reg0_q\ : std_logic;
SIGNAL \sinOut~12_combout\ : std_logic;
SIGNAL \sinOut[12]~reg0_q\ : std_logic;
SIGNAL \sinOut~13_combout\ : std_logic;
SIGNAL \sinOut[13]~reg0_q\ : std_logic;
SIGNAL \sinOut~14_combout\ : std_logic;
SIGNAL \sinOut[14]~reg0_q\ : std_logic;
SIGNAL \sinOut~15_combout\ : std_logic;
SIGNAL \sinOut[15]~reg0_q\ : std_logic;
SIGNAL \cosOut~0_combout\ : std_logic;
SIGNAL \cosOut[0]~reg0_q\ : std_logic;
SIGNAL \cosOut~1_combout\ : std_logic;
SIGNAL \cosOut[1]~reg0_q\ : std_logic;
SIGNAL \cosOut~2_combout\ : std_logic;
SIGNAL \cosOut[2]~reg0_q\ : std_logic;
SIGNAL \cosOut~3_combout\ : std_logic;
SIGNAL \cosOut[3]~reg0_q\ : std_logic;
SIGNAL \cosOut~4_combout\ : std_logic;
SIGNAL \cosOut[4]~reg0_q\ : std_logic;
SIGNAL \cosOut~5_combout\ : std_logic;
SIGNAL \cosOut[5]~reg0_q\ : std_logic;
SIGNAL \cosOut~6_combout\ : std_logic;
SIGNAL \cosOut[6]~reg0_q\ : std_logic;
SIGNAL \cosOut~7_combout\ : std_logic;
SIGNAL \cosOut[7]~reg0_q\ : std_logic;
SIGNAL \cosOut~8_combout\ : std_logic;
SIGNAL \cosOut[8]~reg0_q\ : std_logic;
SIGNAL \cosOut~9_combout\ : std_logic;
SIGNAL \cosOut[9]~reg0_q\ : std_logic;
SIGNAL \cosOut~10_combout\ : std_logic;
SIGNAL \cosOut[10]~reg0_q\ : std_logic;
SIGNAL \cosOut~11_combout\ : std_logic;
SIGNAL \cosOut[11]~reg0_q\ : std_logic;
SIGNAL \cosOut~12_combout\ : std_logic;
SIGNAL \cosOut[12]~reg0_q\ : std_logic;
SIGNAL \cosOut~13_combout\ : std_logic;
SIGNAL \cosOut[13]~reg0_q\ : std_logic;
SIGNAL \cosOut~14_combout\ : std_logic;
SIGNAL \cosOut[14]~reg0_q\ : std_logic;
SIGNAL \cosOut~15_combout\ : std_logic;
SIGNAL \cosOut[15]~reg0_q\ : std_logic;
SIGNAL \c1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL dSinpLUT : std_logic_vector(9 DOWNTO 0);
SIGNAL dCospLUT : std_logic_vector(9 DOWNTO 0);
SIGNAL dCos : std_logic_vector(9 DOWNTO 0);
SIGNAL d : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_m~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_clock <= i_clock;
ww_reset <= reset;
ww_data <= data;
sinOut <= ww_sinOut;
cosOut <= ww_cosOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\c1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (dSinpLUT(9) & dSinpLUT(8) & dSinpLUT(7) & dSinpLUT(6) & dSinpLUT(5) & dSinpLUT(4) & dSinpLUT(3) & dSinpLUT(2) & dSinpLUT(1) & dSinpLUT(0));

\c1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (dCospLUT(9) & dCospLUT(8) & dCospLUT(7) & dCospLUT(6) & dCospLUT(5) & dCospLUT(4) & dCospLUT(3) & dCospLUT(2) & dCospLUT(1) & dCospLUT(0));

\c1|altsyncram_component|auto_generated|q_a\(0) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\c1|altsyncram_component|auto_generated|q_a\(1) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\c1|altsyncram_component|auto_generated|q_a\(2) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\c1|altsyncram_component|auto_generated|q_a\(3) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\c1|altsyncram_component|auto_generated|q_a\(4) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\c1|altsyncram_component|auto_generated|q_a\(5) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\c1|altsyncram_component|auto_generated|q_a\(6) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\c1|altsyncram_component|auto_generated|q_a\(7) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\c1|altsyncram_component|auto_generated|q_a\(8) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);

\c1|altsyncram_component|auto_generated|q_b\(0) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\c1|altsyncram_component|auto_generated|q_b\(1) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\c1|altsyncram_component|auto_generated|q_b\(2) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\c1|altsyncram_component|auto_generated|q_b\(3) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\c1|altsyncram_component|auto_generated|q_b\(4) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\c1|altsyncram_component|auto_generated|q_b\(5) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\c1|altsyncram_component|auto_generated|q_b\(6) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\c1|altsyncram_component|auto_generated|q_b\(7) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\c1|altsyncram_component|auto_generated|q_b\(8) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);

\c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ <= (gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\ <= (gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\c1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (dSinpLUT(9) & dSinpLUT(8) & dSinpLUT(7) & dSinpLUT(6) & dSinpLUT(5) & dSinpLUT(4) & dSinpLUT(3) & dSinpLUT(2) & dSinpLUT(1) & dSinpLUT(0));

\c1|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (dCospLUT(9) & dCospLUT(8) & dCospLUT(7) & dCospLUT(6) & dCospLUT(5) & dCospLUT(4) & dCospLUT(3) & dCospLUT(2) & dCospLUT(1) & dCospLUT(0));

\c1|altsyncram_component|auto_generated|q_a\(9) <= \c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);
\c1|altsyncram_component|auto_generated|q_a\(10) <= \c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(1);
\c1|altsyncram_component|auto_generated|q_a\(11) <= \c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(2);
\c1|altsyncram_component|auto_generated|q_a\(12) <= \c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(3);
\c1|altsyncram_component|auto_generated|q_a\(13) <= \c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(4);
\c1|altsyncram_component|auto_generated|q_a\(14) <= \c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(5);
\c1|altsyncram_component|auto_generated|q_a\(15) <= \c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(6);

\c1|altsyncram_component|auto_generated|q_b\(9) <= \c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);
\c1|altsyncram_component|auto_generated|q_b\(10) <= \c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(1);
\c1|altsyncram_component|auto_generated|q_b\(11) <= \c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(2);
\c1|altsyncram_component|auto_generated|q_b\(12) <= \c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(3);
\c1|altsyncram_component|auto_generated|q_b\(13) <= \c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(4);
\c1|altsyncram_component|auto_generated|q_b\(14) <= \c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(5);
\c1|altsyncram_component|auto_generated|q_b\(15) <= \c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(6);

\i_clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clock~input_o\);
\ALT_INV_m~q\ <= NOT \m~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X62_Y0_N16
\sinOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[0]~reg0_q\,
	devoe => ww_devoe,
	o => \sinOut[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\sinOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[1]~reg0_q\,
	devoe => ww_devoe,
	o => \sinOut[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\sinOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[2]~reg0_q\,
	devoe => ww_devoe,
	o => \sinOut[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\sinOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[3]~reg0_q\,
	devoe => ww_devoe,
	o => \sinOut[3]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\sinOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[4]~reg0_q\,
	devoe => ww_devoe,
	o => \sinOut[4]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\sinOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[5]~reg0_q\,
	devoe => ww_devoe,
	o => \sinOut[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\sinOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[6]~reg0_q\,
	devoe => ww_devoe,
	o => \sinOut[6]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\sinOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[7]~reg0_q\,
	devoe => ww_devoe,
	o => \sinOut[7]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\sinOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[8]~reg0_q\,
	devoe => ww_devoe,
	o => \sinOut[8]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\sinOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[9]~reg0_q\,
	devoe => ww_devoe,
	o => \sinOut[9]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\sinOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[10]~reg0_q\,
	devoe => ww_devoe,
	o => \sinOut[10]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\sinOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[11]~reg0_q\,
	devoe => ww_devoe,
	o => \sinOut[11]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\sinOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[12]~reg0_q\,
	devoe => ww_devoe,
	o => \sinOut[12]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\sinOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[13]~reg0_q\,
	devoe => ww_devoe,
	o => \sinOut[13]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\sinOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[14]~reg0_q\,
	devoe => ww_devoe,
	o => \sinOut[14]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\sinOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[15]~reg0_q\,
	devoe => ww_devoe,
	o => \sinOut[15]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\cosOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[0]~reg0_q\,
	devoe => ww_devoe,
	o => \cosOut[0]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\cosOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[1]~reg0_q\,
	devoe => ww_devoe,
	o => \cosOut[1]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\cosOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[2]~reg0_q\,
	devoe => ww_devoe,
	o => \cosOut[2]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\cosOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[3]~reg0_q\,
	devoe => ww_devoe,
	o => \cosOut[3]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\cosOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[4]~reg0_q\,
	devoe => ww_devoe,
	o => \cosOut[4]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\cosOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[5]~reg0_q\,
	devoe => ww_devoe,
	o => \cosOut[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\cosOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[6]~reg0_q\,
	devoe => ww_devoe,
	o => \cosOut[6]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\cosOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[7]~reg0_q\,
	devoe => ww_devoe,
	o => \cosOut[7]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\cosOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[8]~reg0_q\,
	devoe => ww_devoe,
	o => \cosOut[8]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\cosOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[9]~reg0_q\,
	devoe => ww_devoe,
	o => \cosOut[9]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\cosOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[10]~reg0_q\,
	devoe => ww_devoe,
	o => \cosOut[10]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\cosOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[11]~reg0_q\,
	devoe => ww_devoe,
	o => \cosOut[11]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\cosOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[12]~reg0_q\,
	devoe => ww_devoe,
	o => \cosOut[12]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\cosOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[13]~reg0_q\,
	devoe => ww_devoe,
	o => \cosOut[13]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\cosOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[14]~reg0_q\,
	devoe => ww_devoe,
	o => \cosOut[14]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\cosOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[15]~reg0_q\,
	devoe => ww_devoe,
	o => \cosOut[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\i_clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clock,
	o => \i_clock~input_o\);

-- Location: CLKCTRL_G2
\i_clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X60_Y0_N8
\data[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(10),
	o => \data[10]~input_o\);

-- Location: LCCOMB_X52_Y3_N6
\n~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \n~feeder_combout\ = \data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[10]~input_o\,
	combout => \n~feeder_combout\);

-- Location: FF_X52_Y3_N7
n : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \n~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n~q\);

-- Location: LCCOMB_X52_Y2_N22
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X49_Y0_N15
\data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: LCCOMB_X50_Y2_N10
\d[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[0]~feeder_combout\ = \data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~input_o\,
	combout => \d[0]~feeder_combout\);

-- Location: FF_X50_Y2_N11
\d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \d[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(0));

-- Location: LCCOMB_X50_Y2_N8
\dCos[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCos[0]~feeder_combout\ = d(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d(0),
	combout => \dCos[0]~feeder_combout\);

-- Location: FF_X50_Y2_N9
\dCos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCos[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(0));

-- Location: LCCOMB_X50_Y2_N16
\dSinpLUT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dSinpLUT[0]~0_combout\ = !dCos(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dCos(0),
	combout => \dSinpLUT[0]~0_combout\);

-- Location: IOIBUF_X45_Y0_N22
\data[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(11),
	o => \data[11]~input_o\);

-- Location: LCCOMB_X49_Y2_N28
\m~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~feeder_combout\ = \data[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[11]~input_o\,
	combout => \m~feeder_combout\);

-- Location: FF_X49_Y2_N29
m : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \m~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m~q\);

-- Location: FF_X50_Y2_N17
\dSinpLUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dSinpLUT[0]~0_combout\,
	ena => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(0));

-- Location: IOIBUF_X45_Y0_N15
\data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: LCCOMB_X48_Y2_N28
\d[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[1]~feeder_combout\ = \data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[1]~input_o\,
	combout => \d[1]~feeder_combout\);

-- Location: FF_X48_Y2_N29
\d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \d[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(1));

-- Location: LCCOMB_X48_Y2_N8
\dCos[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCos[1]~feeder_combout\ = d(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d(1),
	combout => \dCos[1]~feeder_combout\);

-- Location: FF_X48_Y2_N9
\dCos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCos[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(1));

-- Location: LCCOMB_X48_Y2_N0
\dSinpLUT[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dSinpLUT[1]~1_combout\ = !dCos(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dCos(1),
	combout => \dSinpLUT[1]~1_combout\);

-- Location: FF_X48_Y2_N1
\dSinpLUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dSinpLUT[1]~1_combout\,
	ena => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(1));

-- Location: IOIBUF_X40_Y0_N22
\data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: LCCOMB_X48_Y2_N22
\d[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[2]~feeder_combout\ = \data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[2]~input_o\,
	combout => \d[2]~feeder_combout\);

-- Location: FF_X48_Y2_N23
\d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \d[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(2));

-- Location: LCCOMB_X48_Y2_N14
\dCos[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCos[2]~feeder_combout\ = d(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => d(2),
	combout => \dCos[2]~feeder_combout\);

-- Location: FF_X48_Y2_N15
\dCos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCos[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(2));

-- Location: LCCOMB_X48_Y2_N18
\dSinpLUT[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dSinpLUT[2]~2_combout\ = !dCos(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dCos(2),
	combout => \dSinpLUT[2]~2_combout\);

-- Location: FF_X48_Y2_N19
\dSinpLUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dSinpLUT[2]~2_combout\,
	ena => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(2));

-- Location: IOIBUF_X40_Y0_N15
\data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: FF_X48_Y2_N21
\d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(3));

-- Location: LCCOMB_X49_Y2_N14
\dCos[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCos[3]~feeder_combout\ = d(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d(3),
	combout => \dCos[3]~feeder_combout\);

-- Location: FF_X49_Y2_N15
\dCos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCos[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(3));

-- Location: LCCOMB_X50_Y2_N30
\dSinpLUT[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dSinpLUT[3]~3_combout\ = !dCos(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dCos(3),
	combout => \dSinpLUT[3]~3_combout\);

-- Location: FF_X50_Y2_N31
\dSinpLUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dSinpLUT[3]~3_combout\,
	ena => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(3));

-- Location: IOIBUF_X29_Y0_N15
\data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: LCCOMB_X48_Y2_N30
\d[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[4]~feeder_combout\ = \data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[4]~input_o\,
	combout => \d[4]~feeder_combout\);

-- Location: FF_X48_Y2_N31
\d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \d[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(4));

-- Location: LCCOMB_X49_Y2_N8
\dCos[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCos[4]~feeder_combout\ = d(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d(4),
	combout => \dCos[4]~feeder_combout\);

-- Location: FF_X49_Y2_N9
\dCos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCos[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(4));

-- Location: LCCOMB_X50_Y2_N0
\dSinpLUT[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dSinpLUT[4]~4_combout\ = !dCos(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dCos(4),
	combout => \dSinpLUT[4]~4_combout\);

-- Location: FF_X50_Y2_N1
\dSinpLUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dSinpLUT[4]~4_combout\,
	ena => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(4));

-- Location: IOIBUF_X29_Y0_N22
\data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: LCCOMB_X48_Y2_N24
\d[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[5]~feeder_combout\ = \data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[5]~input_o\,
	combout => \d[5]~feeder_combout\);

-- Location: FF_X48_Y2_N25
\d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \d[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(5));

-- Location: LCCOMB_X49_Y2_N18
\dCos[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCos[5]~feeder_combout\ = d(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d(5),
	combout => \dCos[5]~feeder_combout\);

-- Location: FF_X49_Y2_N19
\dCos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCos[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(5));

-- Location: LCCOMB_X50_Y2_N18
\dSinpLUT[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dSinpLUT[5]~5_combout\ = !dCos(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dCos(5),
	combout => \dSinpLUT[5]~5_combout\);

-- Location: FF_X50_Y2_N19
\dSinpLUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dSinpLUT[5]~5_combout\,
	ena => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(5));

-- Location: IOIBUF_X47_Y0_N8
\data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: LCCOMB_X48_Y2_N26
\d[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[6]~feeder_combout\ = \data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[6]~input_o\,
	combout => \d[6]~feeder_combout\);

-- Location: FF_X48_Y2_N27
\d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \d[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(6));

-- Location: LCCOMB_X49_Y2_N12
\dCos[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCos[6]~feeder_combout\ = d(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => d(6),
	combout => \dCos[6]~feeder_combout\);

-- Location: FF_X49_Y2_N13
\dCos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCos[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(6));

-- Location: LCCOMB_X50_Y2_N24
\dSinpLUT[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dSinpLUT[6]~6_combout\ = !dCos(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dCos(6),
	combout => \dSinpLUT[6]~6_combout\);

-- Location: FF_X50_Y2_N25
\dSinpLUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dSinpLUT[6]~6_combout\,
	ena => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(6));

-- Location: IOIBUF_X35_Y0_N22
\data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: FF_X45_Y2_N21
\d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \data[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(7));

-- Location: LCCOMB_X49_Y2_N30
\dCos[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCos[7]~feeder_combout\ = d(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d(7),
	combout => \dCos[7]~feeder_combout\);

-- Location: FF_X49_Y2_N31
\dCos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCos[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(7));

-- Location: LCCOMB_X50_Y2_N22
\dSinpLUT[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dSinpLUT[7]~7_combout\ = !dCos(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dCos(7),
	combout => \dSinpLUT[7]~7_combout\);

-- Location: FF_X50_Y2_N23
\dSinpLUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dSinpLUT[7]~7_combout\,
	ena => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(7));

-- Location: IOIBUF_X23_Y0_N15
\data[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(8),
	o => \data[8]~input_o\);

-- Location: LCCOMB_X50_Y2_N28
\d[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[8]~feeder_combout\ = \data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[8]~input_o\,
	combout => \d[8]~feeder_combout\);

-- Location: FF_X50_Y2_N29
\d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \d[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(8));

-- Location: LCCOMB_X50_Y2_N26
\dCos[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCos[8]~feeder_combout\ = d(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d(8),
	combout => \dCos[8]~feeder_combout\);

-- Location: FF_X50_Y2_N27
\dCos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCos[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(8));

-- Location: LCCOMB_X50_Y2_N20
\dSinpLUT[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dSinpLUT[8]~8_combout\ = !dCos(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dCos(8),
	combout => \dSinpLUT[8]~8_combout\);

-- Location: FF_X50_Y2_N21
\dSinpLUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dSinpLUT[8]~8_combout\,
	ena => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(8));

-- Location: IOIBUF_X49_Y0_N22
\data[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(9),
	o => \data[9]~input_o\);

-- Location: LCCOMB_X50_Y2_N2
\d[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \d[9]~feeder_combout\ = \data[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[9]~input_o\,
	combout => \d[9]~feeder_combout\);

-- Location: FF_X50_Y2_N3
\d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \d[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(9));

-- Location: LCCOMB_X50_Y2_N4
\dCos[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCos[9]~feeder_combout\ = d(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d(9),
	combout => \dCos[9]~feeder_combout\);

-- Location: FF_X50_Y2_N5
\dCos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCos[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(9));

-- Location: LCCOMB_X50_Y2_N14
\dSinpLUT[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dSinpLUT[9]~9_combout\ = !dCos(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dCos(9),
	combout => \dSinpLUT[9]~9_combout\);

-- Location: FF_X50_Y2_N15
\dSinpLUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dSinpLUT[9]~9_combout\,
	ena => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(9));

-- Location: LCCOMB_X49_Y2_N10
\dCospLUT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCospLUT[0]~0_combout\ = !dCos(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dCos(0),
	combout => \dCospLUT[0]~0_combout\);

-- Location: FF_X49_Y2_N11
\dCospLUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCospLUT[0]~0_combout\,
	ena => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(0));

-- Location: LCCOMB_X49_Y2_N16
\dCospLUT[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCospLUT[1]~1_combout\ = !dCos(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dCos(1),
	combout => \dCospLUT[1]~1_combout\);

-- Location: FF_X49_Y2_N17
\dCospLUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCospLUT[1]~1_combout\,
	ena => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(1));

-- Location: LCCOMB_X49_Y2_N22
\dCospLUT[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCospLUT[2]~2_combout\ = !dCos(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dCos(2),
	combout => \dCospLUT[2]~2_combout\);

-- Location: FF_X49_Y2_N23
\dCospLUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCospLUT[2]~2_combout\,
	ena => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(2));

-- Location: LCCOMB_X49_Y2_N20
\dCospLUT[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCospLUT[3]~3_combout\ = !dCos(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dCos(3),
	combout => \dCospLUT[3]~3_combout\);

-- Location: FF_X49_Y2_N21
\dCospLUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCospLUT[3]~3_combout\,
	ena => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(3));

-- Location: LCCOMB_X49_Y2_N2
\dCospLUT[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCospLUT[4]~4_combout\ = !dCos(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dCos(4),
	combout => \dCospLUT[4]~4_combout\);

-- Location: FF_X49_Y2_N3
\dCospLUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCospLUT[4]~4_combout\,
	ena => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(4));

-- Location: LCCOMB_X49_Y2_N24
\dCospLUT[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCospLUT[5]~5_combout\ = !dCos(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dCos(5),
	combout => \dCospLUT[5]~5_combout\);

-- Location: FF_X49_Y2_N25
\dCospLUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCospLUT[5]~5_combout\,
	ena => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(5));

-- Location: LCCOMB_X49_Y2_N6
\dCospLUT[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCospLUT[6]~6_combout\ = !dCos(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dCos(6),
	combout => \dCospLUT[6]~6_combout\);

-- Location: FF_X49_Y2_N7
\dCospLUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCospLUT[6]~6_combout\,
	ena => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(6));

-- Location: LCCOMB_X49_Y2_N4
\dCospLUT[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCospLUT[7]~7_combout\ = !dCos(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dCos(7),
	combout => \dCospLUT[7]~7_combout\);

-- Location: FF_X49_Y2_N5
\dCospLUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCospLUT[7]~7_combout\,
	ena => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(7));

-- Location: LCCOMB_X49_Y2_N26
\dCospLUT[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCospLUT[8]~8_combout\ = !dCos(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dCos(8),
	combout => \dCospLUT[8]~8_combout\);

-- Location: FF_X49_Y2_N27
\dCospLUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCospLUT[8]~8_combout\,
	ena => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(8));

-- Location: LCCOMB_X49_Y2_N0
\dCospLUT[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dCospLUT[9]~9_combout\ = !dCos(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dCos(9),
	combout => \dCospLUT[9]~9_combout\);

-- Location: FF_X49_Y2_N1
\dCospLUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \dCospLUT[9]~9_combout\,
	ena => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(9));

-- Location: M9K_X51_Y3_N0
\c1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"FFFFFFFFFFFFFFFFFEFF7F7F9FBFD7E7F1F7FB7D7E7F2F8FBFDBECF57A3CDE4F1783BBDBEC75BA7D1E772F91C5E16FF79B9DAECB5DABD3E8F3F9CCC6531F8BC3E0EFD7ABADC2D967B1576B153A7522873D9C4CA5B2790C6E2B0F84C0DFAF6783A5C6DC6AB3990C15D2C956A44EA551C863F1DCDE672F95C9E471F0D85C250E85",
	mem_init3 => X"01602FD7C7D1DFEAF3387B9D869B3B93C4DFEEB6BB0D5E9B439C4BA47188740DF0ED7135D98C15B2A93E93441F0E0642C1308034140701E03FBFABBBD1E26DF559DC860EEB68ADD3681329245E12FB76B7DA2C25A2992E893D1B0BA4E1F8C0421201FD3C9D5E36DB4D97C3DDECF57A3CDE4F17833D9CAD5622CD4692409C0BE4E1E0AC3408FBF97A9C2D867B197AB455A89318FC35F4E76AB095E9C449D8C6501E8A82C03F7F7391B4D0636F365A84F251147FBADACC256A61086F2D114601B02FC3B7C5D866B0B6FACD0E5B1780BADAABF54248F865270E0420AF9F738BAECBE02D3519D48A16F36DB1158943E19098340D80FD7D2DD6871170ABCFA4B0C79B",
	mem_init2 => X"6982A7471D4B6421403FEBDBE0E9F1B73ACCFE4B0A7835576A0431ACA0350D003C9C9D764EF15CA0C9614EE69ADD367F3191C560FF9F5B759EC0D96912B87BC9AAB84D9F8C2441382BD9CFD8E52ED599DC75FEE161A950E69258B41DF0E8ECF2976ABCE232FA6DAF13A7E2F9004001F170B4783B1D124904723114884321104603F1F0B4581B05023EFE6EAF1367A2C8E02FF6EA6CF2570A74B616E96429908622007BF9DADBE56E7509742DD2C651A04BC3B0C7D7A5AFC65A68B227FB6D7094389345206F16FB3576A94BA14E661274F25518033CFC2CF5E6A92F85B99829C3B9485807F16F32F72A649E02DB5B240D4440F7E3A5ACC3582751476B1D427A2A",
	mem_init1 => X"0B40FE0DCE4AD9458F3DDA0A94116C680CF2EFB2D6FA3C81F0D154A04B2320578B7592B550A34F164A84F250147FFAFAEC3576690C71AE922681F85BDBC4CDDCA931F7B335467A2809FFBD4D5602AD2D81B655E852D8C40FDDD9E22BD3484B7D6A8A300D415E0DAE2AC1358537D68892F0CC11DDD961EB73082B655C832B8B001D4D4DF6A3267D33944762507BE5C6CD5BA8516752F522651C033BFB3C356A5B016A29CF44E10FD38F9AB6D0226E65CA30BE320275F557DA7C89E8C74C9B07C11F1ED7115A963FDA2A33A91C33EBDEE3EC33382B5D507A2607BDFC1C9D926D076CAA8F84D0FFC38393B24D60CD8549E8961CF6EFB1F6098C09A6A43A1142DE7D",
	mem_init0 => X"C622B32A7D32D366C1E037BBAEBF53E3EEF60240C03000F474371A0C45C2B14114845F1E0E46C33180B45427020043C1AFBFD3E3CEE5EA34B82CFDF2F356A9CC25B0A73B9182BE5DA60EA52278B011E5E16FF3999BB54E610D7531D48612F0EC2FF4E8EBB174892C09FEBC4C9D8A60FF67270D6390475F4B74A1445BEAE3E12C33E8DB612A72177AF9185B14FDF8B94B14C1FCCD4D9A46E06EA68AE13E8636952772284FC3AFBED2E32E75AA0CA21FF6EEF135792BCD828F2E8AFF3C7CAD8A60FE66268D03601F473F6D9DC25ACA4391001DDBD4DDE8B12702B8F8490BF976780A7471D4B74294C41EEDE62AAF2579B011C5C14FDF8B93B04B9F8C94B9946400",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sin_cos.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sincosLUT:c1|altsyncram:altsyncram_component|altsyncram_egq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \i_clock~inputclkctrl_outclk\,
	portadatain => \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \c1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y3_N8
\sinOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinOut~0_combout\ = \n~q\ $ (\c1|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~q\,
	datad => \c1|altsyncram_component|auto_generated|q_a\(0),
	combout => \sinOut~0_combout\);

-- Location: FF_X52_Y3_N9
\sinOut[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \sinOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[0]~reg0_q\);

-- Location: LCCOMB_X52_Y3_N14
\sinOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinOut~1_combout\ = \c1|altsyncram_component|auto_generated|q_a\(1) $ (\n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c1|altsyncram_component|auto_generated|q_a\(1),
	datad => \n~q\,
	combout => \sinOut~1_combout\);

-- Location: FF_X52_Y3_N15
\sinOut[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \sinOut~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[1]~reg0_q\);

-- Location: LCCOMB_X52_Y3_N16
\sinOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinOut~2_combout\ = \n~q\ $ (\c1|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~q\,
	datad => \c1|altsyncram_component|auto_generated|q_a\(2),
	combout => \sinOut~2_combout\);

-- Location: FF_X52_Y3_N17
\sinOut[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \sinOut~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[2]~reg0_q\);

-- Location: LCCOMB_X52_Y3_N22
\sinOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinOut~3_combout\ = \n~q\ $ (\c1|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~q\,
	datad => \c1|altsyncram_component|auto_generated|q_a\(3),
	combout => \sinOut~3_combout\);

-- Location: FF_X52_Y3_N23
\sinOut[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \sinOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[3]~reg0_q\);

-- Location: LCCOMB_X50_Y3_N20
\sinOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinOut~4_combout\ = \c1|altsyncram_component|auto_generated|q_a\(4) $ (\n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|altsyncram_component|auto_generated|q_a\(4),
	datad => \n~q\,
	combout => \sinOut~4_combout\);

-- Location: FF_X50_Y3_N21
\sinOut[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \sinOut~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[4]~reg0_q\);

-- Location: LCCOMB_X52_Y3_N20
\sinOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinOut~5_combout\ = \c1|altsyncram_component|auto_generated|q_a\(5) $ (\n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c1|altsyncram_component|auto_generated|q_a\(5),
	datad => \n~q\,
	combout => \sinOut~5_combout\);

-- Location: FF_X52_Y3_N21
\sinOut[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \sinOut~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[5]~reg0_q\);

-- Location: LCCOMB_X52_Y3_N26
\sinOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinOut~6_combout\ = \c1|altsyncram_component|auto_generated|q_a\(6) $ (\n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c1|altsyncram_component|auto_generated|q_a\(6),
	datad => \n~q\,
	combout => \sinOut~6_combout\);

-- Location: FF_X52_Y3_N27
\sinOut[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \sinOut~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[6]~reg0_q\);

-- Location: LCCOMB_X52_Y3_N4
\sinOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinOut~7_combout\ = \n~q\ $ (\c1|altsyncram_component|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~q\,
	datad => \c1|altsyncram_component|auto_generated|q_a\(7),
	combout => \sinOut~7_combout\);

-- Location: FF_X52_Y3_N5
\sinOut[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \sinOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[7]~reg0_q\);

-- Location: LCCOMB_X52_Y3_N10
\sinOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinOut~8_combout\ = \n~q\ $ (\c1|altsyncram_component|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~q\,
	datad => \c1|altsyncram_component|auto_generated|q_a\(8),
	combout => \sinOut~8_combout\);

-- Location: FF_X52_Y3_N11
\sinOut[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \sinOut~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[8]~reg0_q\);

-- Location: M9K_X51_Y2_N0
\c1|altsyncram_component|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8F",
	mem_init3 => X"C7E3F1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1F0F87C3E1E8F47A3D1E8F47A3D1E8F47A3D1E8F47A3D1E8F47A3D1E8F47A3D1E8F47A3D1E8F47A3D1E8F47A3D1E8F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1E0F0783C1D8EC763B1D8EC763B1D8EC763B1D8EC763B1D8EC763B1D8EC763B1D8EC763B1D0E8743A1D0E8743A1D0E8743A1D0E8743A1D0E8743A1D0E8743A1D0E472391C8E472391C8E472391C8E472391C8E472391C8E472391C0E070381C0E070381C0E070381C0E070381C0E070381C0E06E371B8DC6E371B8DC6E371B8",
	mem_init2 => X"DC6E371B8DC6E371B8DC6C361B0D86C361B0D86C361B0D86C361B0D86C361B0D86A351A8D46A351A8D46A351A8D46A351A8D46A351A0D068341A0D068341A0D068341A0D068341A0D06633198CC6633198CC6633198CC6633198CC6632190C86432190C86432190C86432190C86432188C46231188C46231188C46231188C46231180C06030180C06030180C06030180C0602F178BC5E2F178BC5E2F178BC5E2F178BC5C2E170B85C2E170B85C2E170B85C2E170B45A2D168B45A2D168B45A2D168B45A2D160B0582C160B0582C160B0582C160B0562B158AC562B158AC562B158AC562B150A8542A150A8542A150A8542A150A45229148A45229148A4522914",
	mem_init1 => X"8A45228140A05028140A05028140A050281389C4E271389C4E271389C4E27138984C26130984C26130984C26130944A25128944A25128944A251289448241209048241209048241209046231188C46231188C46231188C462211088442211088442211088442110884422110884422110884422010080402010080402010080401F0F87C3E1F0F87C3E1F0F87C3C1E0F0783C1E0F0783C1E0F0783A1D0E8743A1D0E8743A1D0E870381C0E070381C0E070381C0E06C361B0D86C361B0D86C361B0D068341A0D068341A0D06834190C86432190C86432190C86430180C06030180C06030180C05C2E170B85C2E170B85C2E170B0582C160B0582C160B0582C150",
	mem_init0 => X"A8542A150A8542A150A85428140A05028140A05028140A04C26130984C26130984C261209048241209048241209048221108844221108844221108040201008040201008040200F0783C1E0F0783C1E0F078381C0E070381C0E070381C0E068341A0D068341A0D06834180C06030180C06030180C0602C160B0582C160B0582C160A05028140A05028140A050241209048241209048241209040201008040201008040200E070381C0E070381C0E07030180C06030180C06030180A05028140A05028140A050281008040201008040201008030180C06030180C0603018080402010080402010080401008040201008040201008000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sin_cos.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sincosLUT:c1|altsyncram:altsyncram_component|altsyncram_egq3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \i_clock~inputclkctrl_outclk\,
	portadatain => \c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portbdatain => \c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\,
	portaaddr => \c1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \c1|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\,
	portbdataout => \c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X52_Y3_N28
\sinOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinOut~9_combout\ = \n~q\ $ (\c1|altsyncram_component|auto_generated|q_a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~q\,
	datad => \c1|altsyncram_component|auto_generated|q_a\(9),
	combout => \sinOut~9_combout\);

-- Location: FF_X52_Y3_N29
\sinOut[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \sinOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[9]~reg0_q\);

-- Location: LCCOMB_X52_Y3_N18
\sinOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinOut~10_combout\ = \n~q\ $ (\c1|altsyncram_component|auto_generated|q_a\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~q\,
	datad => \c1|altsyncram_component|auto_generated|q_a\(10),
	combout => \sinOut~10_combout\);

-- Location: FF_X52_Y3_N19
\sinOut[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \sinOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[10]~reg0_q\);

-- Location: LCCOMB_X52_Y3_N24
\sinOut~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinOut~11_combout\ = \c1|altsyncram_component|auto_generated|q_a\(11) $ (\n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c1|altsyncram_component|auto_generated|q_a\(11),
	datad => \n~q\,
	combout => \sinOut~11_combout\);

-- Location: FF_X52_Y3_N25
\sinOut[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \sinOut~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[11]~reg0_q\);

-- Location: LCCOMB_X52_Y3_N30
\sinOut~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinOut~12_combout\ = \n~q\ $ (\c1|altsyncram_component|auto_generated|q_a\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~q\,
	datad => \c1|altsyncram_component|auto_generated|q_a\(12),
	combout => \sinOut~12_combout\);

-- Location: FF_X52_Y3_N31
\sinOut[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \sinOut~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[12]~reg0_q\);

-- Location: LCCOMB_X52_Y3_N12
\sinOut~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinOut~13_combout\ = \n~q\ $ (\c1|altsyncram_component|auto_generated|q_a\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~q\,
	datad => \c1|altsyncram_component|auto_generated|q_a\(13),
	combout => \sinOut~13_combout\);

-- Location: FF_X52_Y3_N13
\sinOut[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \sinOut~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[13]~reg0_q\);

-- Location: LCCOMB_X52_Y3_N2
\sinOut~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinOut~14_combout\ = \n~q\ $ (\c1|altsyncram_component|auto_generated|q_a\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~q\,
	datad => \c1|altsyncram_component|auto_generated|q_a\(14),
	combout => \sinOut~14_combout\);

-- Location: FF_X52_Y3_N3
\sinOut[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \sinOut~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[14]~reg0_q\);

-- Location: LCCOMB_X52_Y3_N0
\sinOut~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sinOut~15_combout\ = \n~q\ $ (\c1|altsyncram_component|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~q\,
	datad => \c1|altsyncram_component|auto_generated|q_a\(15),
	combout => \sinOut~15_combout\);

-- Location: FF_X52_Y3_N1
\sinOut[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \sinOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[15]~reg0_q\);

-- Location: LCCOMB_X50_Y3_N18
\cosOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cosOut~0_combout\ = \c1|altsyncram_component|auto_generated|q_b\(0) $ (\m~q\ $ (\n~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|altsyncram_component|auto_generated|q_b\(0),
	datac => \m~q\,
	datad => \n~q\,
	combout => \cosOut~0_combout\);

-- Location: FF_X50_Y3_N19
\cosOut[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \cosOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[0]~reg0_q\);

-- Location: LCCOMB_X50_Y3_N4
\cosOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cosOut~1_combout\ = \m~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(1) $ (\n~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m~q\,
	datac => \c1|altsyncram_component|auto_generated|q_b\(1),
	datad => \n~q\,
	combout => \cosOut~1_combout\);

-- Location: FF_X50_Y3_N5
\cosOut[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \cosOut~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[1]~reg0_q\);

-- Location: LCCOMB_X50_Y3_N26
\cosOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cosOut~2_combout\ = \m~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(2) $ (\n~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m~q\,
	datac => \c1|altsyncram_component|auto_generated|q_b\(2),
	datad => \n~q\,
	combout => \cosOut~2_combout\);

-- Location: FF_X50_Y3_N27
\cosOut[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \cosOut~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[2]~reg0_q\);

-- Location: LCCOMB_X50_Y3_N24
\cosOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cosOut~3_combout\ = \m~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(3) $ (\n~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m~q\,
	datac => \c1|altsyncram_component|auto_generated|q_b\(3),
	datad => \n~q\,
	combout => \cosOut~3_combout\);

-- Location: FF_X50_Y3_N25
\cosOut[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \cosOut~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[3]~reg0_q\);

-- Location: LCCOMB_X50_Y3_N10
\cosOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cosOut~4_combout\ = \c1|altsyncram_component|auto_generated|q_b\(4) $ (\m~q\ $ (\n~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c1|altsyncram_component|auto_generated|q_b\(4),
	datac => \m~q\,
	datad => \n~q\,
	combout => \cosOut~4_combout\);

-- Location: FF_X50_Y3_N11
\cosOut[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \cosOut~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[4]~reg0_q\);

-- Location: LCCOMB_X50_Y3_N28
\cosOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cosOut~5_combout\ = \m~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(5) $ (\n~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m~q\,
	datac => \c1|altsyncram_component|auto_generated|q_b\(5),
	datad => \n~q\,
	combout => \cosOut~5_combout\);

-- Location: FF_X50_Y3_N29
\cosOut[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \cosOut~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[5]~reg0_q\);

-- Location: LCCOMB_X50_Y3_N30
\cosOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cosOut~6_combout\ = \c1|altsyncram_component|auto_generated|q_b\(6) $ (\m~q\ $ (\n~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c1|altsyncram_component|auto_generated|q_b\(6),
	datac => \m~q\,
	datad => \n~q\,
	combout => \cosOut~6_combout\);

-- Location: FF_X50_Y3_N31
\cosOut[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \cosOut~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[6]~reg0_q\);

-- Location: LCCOMB_X50_Y3_N12
\cosOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cosOut~7_combout\ = \c1|altsyncram_component|auto_generated|q_b\(7) $ (\m~q\ $ (\n~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|altsyncram_component|auto_generated|q_b\(7),
	datac => \m~q\,
	datad => \n~q\,
	combout => \cosOut~7_combout\);

-- Location: FF_X50_Y3_N13
\cosOut[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \cosOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[7]~reg0_q\);

-- Location: LCCOMB_X50_Y3_N22
\cosOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cosOut~8_combout\ = \c1|altsyncram_component|auto_generated|q_b\(8) $ (\m~q\ $ (\n~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c1|altsyncram_component|auto_generated|q_b\(8),
	datac => \m~q\,
	datad => \n~q\,
	combout => \cosOut~8_combout\);

-- Location: FF_X50_Y3_N23
\cosOut[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \cosOut~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[8]~reg0_q\);

-- Location: LCCOMB_X52_Y2_N28
\cosOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cosOut~9_combout\ = \m~q\ $ (\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m~q\,
	datac => \n~q\,
	datad => \c1|altsyncram_component|auto_generated|q_b\(9),
	combout => \cosOut~9_combout\);

-- Location: FF_X52_Y2_N29
\cosOut[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \cosOut~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[9]~reg0_q\);

-- Location: LCCOMB_X52_Y2_N26
\cosOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cosOut~10_combout\ = \c1|altsyncram_component|auto_generated|q_b\(10) $ (\n~q\ $ (\m~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c1|altsyncram_component|auto_generated|q_b\(10),
	datac => \n~q\,
	datad => \m~q\,
	combout => \cosOut~10_combout\);

-- Location: FF_X52_Y2_N27
\cosOut[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \cosOut~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[10]~reg0_q\);

-- Location: LCCOMB_X52_Y2_N24
\cosOut~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cosOut~11_combout\ = \c1|altsyncram_component|auto_generated|q_b\(11) $ (\n~q\ $ (\m~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|altsyncram_component|auto_generated|q_b\(11),
	datac => \n~q\,
	datad => \m~q\,
	combout => \cosOut~11_combout\);

-- Location: FF_X52_Y2_N25
\cosOut[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \cosOut~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[11]~reg0_q\);

-- Location: LCCOMB_X52_Y2_N2
\cosOut~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cosOut~12_combout\ = \m~q\ $ (\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m~q\,
	datac => \n~q\,
	datad => \c1|altsyncram_component|auto_generated|q_b\(12),
	combout => \cosOut~12_combout\);

-- Location: FF_X52_Y2_N3
\cosOut[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \cosOut~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[12]~reg0_q\);

-- Location: LCCOMB_X52_Y2_N12
\cosOut~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \cosOut~13_combout\ = \m~q\ $ (\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m~q\,
	datac => \n~q\,
	datad => \c1|altsyncram_component|auto_generated|q_b\(13),
	combout => \cosOut~13_combout\);

-- Location: FF_X52_Y2_N13
\cosOut[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \cosOut~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[13]~reg0_q\);

-- Location: LCCOMB_X52_Y2_N10
\cosOut~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cosOut~14_combout\ = \m~q\ $ (\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m~q\,
	datac => \n~q\,
	datad => \c1|altsyncram_component|auto_generated|q_b\(14),
	combout => \cosOut~14_combout\);

-- Location: FF_X52_Y2_N11
\cosOut[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \cosOut~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[14]~reg0_q\);

-- Location: LCCOMB_X52_Y2_N4
\cosOut~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \cosOut~15_combout\ = \m~q\ $ (\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m~q\,
	datac => \n~q\,
	datad => \c1|altsyncram_component|auto_generated|q_b\(15),
	combout => \cosOut~15_combout\);

-- Location: FF_X52_Y2_N5
\cosOut[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \cosOut~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[15]~reg0_q\);

-- Location: IOIBUF_X20_Y0_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

ww_sinOut(0) <= \sinOut[0]~output_o\;

ww_sinOut(1) <= \sinOut[1]~output_o\;

ww_sinOut(2) <= \sinOut[2]~output_o\;

ww_sinOut(3) <= \sinOut[3]~output_o\;

ww_sinOut(4) <= \sinOut[4]~output_o\;

ww_sinOut(5) <= \sinOut[5]~output_o\;

ww_sinOut(6) <= \sinOut[6]~output_o\;

ww_sinOut(7) <= \sinOut[7]~output_o\;

ww_sinOut(8) <= \sinOut[8]~output_o\;

ww_sinOut(9) <= \sinOut[9]~output_o\;

ww_sinOut(10) <= \sinOut[10]~output_o\;

ww_sinOut(11) <= \sinOut[11]~output_o\;

ww_sinOut(12) <= \sinOut[12]~output_o\;

ww_sinOut(13) <= \sinOut[13]~output_o\;

ww_sinOut(14) <= \sinOut[14]~output_o\;

ww_sinOut(15) <= \sinOut[15]~output_o\;

ww_cosOut(0) <= \cosOut[0]~output_o\;

ww_cosOut(1) <= \cosOut[1]~output_o\;

ww_cosOut(2) <= \cosOut[2]~output_o\;

ww_cosOut(3) <= \cosOut[3]~output_o\;

ww_cosOut(4) <= \cosOut[4]~output_o\;

ww_cosOut(5) <= \cosOut[5]~output_o\;

ww_cosOut(6) <= \cosOut[6]~output_o\;

ww_cosOut(7) <= \cosOut[7]~output_o\;

ww_cosOut(8) <= \cosOut[8]~output_o\;

ww_cosOut(9) <= \cosOut[9]~output_o\;

ww_cosOut(10) <= \cosOut[10]~output_o\;

ww_cosOut(11) <= \cosOut[11]~output_o\;

ww_cosOut(12) <= \cosOut[12]~output_o\;

ww_cosOut(13) <= \cosOut[13]~output_o\;

ww_cosOut(14) <= \cosOut[14]~output_o\;

ww_cosOut(15) <= \cosOut[15]~output_o\;
END structure;


