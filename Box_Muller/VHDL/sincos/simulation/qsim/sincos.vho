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

-- DATE "04/13/2022 14:39:23"

-- 
-- Device: Altera 5CEBA4F17C8 Package FBGA256
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
-- reset	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[4]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[5]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[6]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[8]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[9]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[10]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[11]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[12]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[13]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[14]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinOut[15]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[0]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[2]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[3]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[4]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[5]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[6]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[7]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[8]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[9]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[10]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[11]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[12]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[13]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[14]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cosOut[15]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clock	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[10]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[11]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[9]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \i_clock~input_o\ : std_logic;
SIGNAL \i_clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \data[10]~input_o\ : std_logic;
SIGNAL \n~feeder_combout\ : std_logic;
SIGNAL \n~q\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \d[0]~feeder_combout\ : std_logic;
SIGNAL \dCos[0]~_wirecell_combout\ : std_logic;
SIGNAL \dSinpLUT[0]~feeder_combout\ : std_logic;
SIGNAL \data[11]~input_o\ : std_logic;
SIGNAL \m~feeder_combout\ : std_logic;
SIGNAL \m~q\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \dCos[1]~feeder_combout\ : std_logic;
SIGNAL \dCos[1]~_wirecell_combout\ : std_logic;
SIGNAL \dSinpLUT[1]~feeder_combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \dCos[2]~_wirecell_combout\ : std_logic;
SIGNAL \dSinpLUT[2]~feeder_combout\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \dCos[3]~_wirecell_combout\ : std_logic;
SIGNAL \dSinpLUT[3]~feeder_combout\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \dCos[4]~_wirecell_combout\ : std_logic;
SIGNAL \dSinpLUT[4]~feeder_combout\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \d[5]~feeder_combout\ : std_logic;
SIGNAL \dCos[5]~_wirecell_combout\ : std_logic;
SIGNAL \dSinpLUT[5]~feeder_combout\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \dCos[6]~_wirecell_combout\ : std_logic;
SIGNAL \dSinpLUT[6]~feeder_combout\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \d[7]~feeder_combout\ : std_logic;
SIGNAL \dCos[7]~feeder_combout\ : std_logic;
SIGNAL \dCos[7]~_wirecell_combout\ : std_logic;
SIGNAL \dSinpLUT[7]~feeder_combout\ : std_logic;
SIGNAL \data[8]~input_o\ : std_logic;
SIGNAL \dCos[8]~feeder_combout\ : std_logic;
SIGNAL \dCos[8]~_wirecell_combout\ : std_logic;
SIGNAL \dSinpLUT[8]~feeder_combout\ : std_logic;
SIGNAL \data[9]~input_o\ : std_logic;
SIGNAL \dCos[9]~feeder_combout\ : std_logic;
SIGNAL \dCos[9]~_wirecell_combout\ : std_logic;
SIGNAL \dSinpLUT[9]~feeder_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \sinOut[0]~reg0_q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \sinOut[1]~reg0_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \sinOut[2]~reg0_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \sinOut[3]~reg0_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \sinOut[4]~reg0_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \sinOut[5]~reg0_q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \sinOut[6]~reg0_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \sinOut[7]~reg0_q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \sinOut[8]~reg0_q\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \sinOut[9]~reg0_q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \sinOut[10]~reg0_q\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \sinOut[11]~reg0_q\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \sinOut[12]~reg0_q\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \sinOut[13]~reg0_q\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \sinOut[14]~reg0_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \sinOut[15]~reg0_q\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \cosOut[0]~reg0_q\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \cosOut[1]~reg0_q\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \cosOut[2]~reg0_q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \cosOut[3]~reg0_q\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \cosOut[4]~reg0_q\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \cosOut[5]~reg0_q\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \cosOut[6]~reg0_q\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \cosOut[7]~reg0_q\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \cosOut[8]~reg0_q\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \cosOut[9]~reg0_q\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \cosOut[10]~reg0_q\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \cosOut[11]~reg0_q\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \cosOut[12]~reg0_q\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \cosOut[13]~reg0_q\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \cosOut[14]~reg0_q\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \cosOut[15]~reg0_q\ : std_logic;
SIGNAL \c1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL dSinpLUT : std_logic_vector(9 DOWNTO 0);
SIGNAL dCospLUT : std_logic_vector(9 DOWNTO 0);
SIGNAL dCos : std_logic_vector(9 DOWNTO 0);
SIGNAL d : std_logic_vector(9 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \c1|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_data[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_data[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_dCos[9]~_wirecell_combout\ : std_logic;
SIGNAL \ALT_INV_dCos[8]~_wirecell_combout\ : std_logic;
SIGNAL \ALT_INV_dCos[7]~_wirecell_combout\ : std_logic;
SIGNAL \ALT_INV_dCos[6]~_wirecell_combout\ : std_logic;
SIGNAL \ALT_INV_dCos[5]~_wirecell_combout\ : std_logic;
SIGNAL \ALT_INV_dCos[4]~_wirecell_combout\ : std_logic;
SIGNAL \ALT_INV_dCos[3]~_wirecell_combout\ : std_logic;
SIGNAL \ALT_INV_dCos[2]~_wirecell_combout\ : std_logic;
SIGNAL \ALT_INV_dCos[1]~_wirecell_combout\ : std_logic;
SIGNAL \ALT_INV_dCos[0]~_wirecell_combout\ : std_logic;
SIGNAL ALT_INV_d : std_logic_vector(9 DOWNTO 1);
SIGNAL ALT_INV_dCos : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_m~q\ : std_logic;
SIGNAL \ALT_INV_n~q\ : std_logic;

BEGIN

ww_i_clock <= i_clock;
ww_reset <= reset;
ww_data <= data;
sinOut <= ww_sinOut;
cosOut <= ww_cosOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

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
\c1|altsyncram_component|auto_generated|q_a\(9) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);

\c1|altsyncram_component|auto_generated|q_b\(0) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\c1|altsyncram_component|auto_generated|q_b\(1) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\c1|altsyncram_component|auto_generated|q_b\(2) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\c1|altsyncram_component|auto_generated|q_b\(3) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\c1|altsyncram_component|auto_generated|q_b\(4) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\c1|altsyncram_component|auto_generated|q_b\(5) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\c1|altsyncram_component|auto_generated|q_b\(6) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\c1|altsyncram_component|auto_generated|q_b\(7) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\c1|altsyncram_component|auto_generated|q_b\(8) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\c1|altsyncram_component|auto_generated|q_b\(9) <= \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);

\c1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\c1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\c1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (dSinpLUT(9) & dSinpLUT(8) & dSinpLUT(7) & dSinpLUT(6) & dSinpLUT(5) & dSinpLUT(4) & dSinpLUT(3) & dSinpLUT(2) & dSinpLUT(1) & dSinpLUT(0));

\c1|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (dCospLUT(9) & dCospLUT(8) & dCospLUT(7) & dCospLUT(6) & dCospLUT(5) & dCospLUT(4) & dCospLUT(3) & dCospLUT(2) & dCospLUT(1) & dCospLUT(0));

\c1|altsyncram_component|auto_generated|q_a\(10) <= \c1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\c1|altsyncram_component|auto_generated|q_a\(11) <= \c1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);
\c1|altsyncram_component|auto_generated|q_a\(12) <= \c1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(2);
\c1|altsyncram_component|auto_generated|q_a\(13) <= \c1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(3);
\c1|altsyncram_component|auto_generated|q_a\(14) <= \c1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(4);
\c1|altsyncram_component|auto_generated|q_a\(15) <= \c1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(5);

\c1|altsyncram_component|auto_generated|q_b\(10) <= \c1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);
\c1|altsyncram_component|auto_generated|q_b\(11) <= \c1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(1);
\c1|altsyncram_component|auto_generated|q_b\(12) <= \c1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(2);
\c1|altsyncram_component|auto_generated|q_b\(13) <= \c1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(3);
\c1|altsyncram_component|auto_generated|q_b\(14) <= \c1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(4);
\c1|altsyncram_component|auto_generated|q_b\(15) <= \c1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(5);
\c1|altsyncram_component|auto_generated|ALT_INV_q_b\(11) <= NOT \c1|altsyncram_component|auto_generated|q_b\(11);
\c1|altsyncram_component|auto_generated|ALT_INV_q_b\(12) <= NOT \c1|altsyncram_component|auto_generated|q_b\(12);
\c1|altsyncram_component|auto_generated|ALT_INV_q_b\(13) <= NOT \c1|altsyncram_component|auto_generated|q_b\(13);
\c1|altsyncram_component|auto_generated|ALT_INV_q_b\(14) <= NOT \c1|altsyncram_component|auto_generated|q_b\(14);
\c1|altsyncram_component|auto_generated|ALT_INV_q_b\(15) <= NOT \c1|altsyncram_component|auto_generated|q_b\(15);
\c1|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \c1|altsyncram_component|auto_generated|q_a\(11);
\c1|altsyncram_component|auto_generated|ALT_INV_q_a\(12) <= NOT \c1|altsyncram_component|auto_generated|q_a\(12);
\c1|altsyncram_component|auto_generated|ALT_INV_q_a\(13) <= NOT \c1|altsyncram_component|auto_generated|q_a\(13);
\c1|altsyncram_component|auto_generated|ALT_INV_q_a\(14) <= NOT \c1|altsyncram_component|auto_generated|q_a\(14);
\c1|altsyncram_component|auto_generated|ALT_INV_q_a\(15) <= NOT \c1|altsyncram_component|auto_generated|q_a\(15);
\c1|altsyncram_component|auto_generated|ALT_INV_q_b\(10) <= NOT \c1|altsyncram_component|auto_generated|q_b\(10);
\c1|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \c1|altsyncram_component|auto_generated|q_a\(10);
\c1|altsyncram_component|auto_generated|ALT_INV_q_b\(1) <= NOT \c1|altsyncram_component|auto_generated|q_b\(1);
\c1|altsyncram_component|auto_generated|ALT_INV_q_b\(2) <= NOT \c1|altsyncram_component|auto_generated|q_b\(2);
\c1|altsyncram_component|auto_generated|ALT_INV_q_b\(3) <= NOT \c1|altsyncram_component|auto_generated|q_b\(3);
\c1|altsyncram_component|auto_generated|ALT_INV_q_b\(4) <= NOT \c1|altsyncram_component|auto_generated|q_b\(4);
\c1|altsyncram_component|auto_generated|ALT_INV_q_b\(5) <= NOT \c1|altsyncram_component|auto_generated|q_b\(5);
\c1|altsyncram_component|auto_generated|ALT_INV_q_b\(6) <= NOT \c1|altsyncram_component|auto_generated|q_b\(6);
\c1|altsyncram_component|auto_generated|ALT_INV_q_b\(7) <= NOT \c1|altsyncram_component|auto_generated|q_b\(7);
\c1|altsyncram_component|auto_generated|ALT_INV_q_b\(8) <= NOT \c1|altsyncram_component|auto_generated|q_b\(8);
\c1|altsyncram_component|auto_generated|ALT_INV_q_b\(9) <= NOT \c1|altsyncram_component|auto_generated|q_b\(9);
\c1|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \c1|altsyncram_component|auto_generated|q_a\(1);
\c1|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \c1|altsyncram_component|auto_generated|q_a\(2);
\c1|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \c1|altsyncram_component|auto_generated|q_a\(3);
\c1|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \c1|altsyncram_component|auto_generated|q_a\(4);
\c1|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \c1|altsyncram_component|auto_generated|q_a\(5);
\c1|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \c1|altsyncram_component|auto_generated|q_a\(6);
\c1|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \c1|altsyncram_component|auto_generated|q_a\(7);
\c1|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \c1|altsyncram_component|auto_generated|q_a\(8);
\c1|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \c1|altsyncram_component|auto_generated|q_a\(9);
\c1|altsyncram_component|auto_generated|ALT_INV_q_b\(0) <= NOT \c1|altsyncram_component|auto_generated|q_b\(0);
\c1|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \c1|altsyncram_component|auto_generated|q_a\(0);
\ALT_INV_data[7]~input_o\ <= NOT \data[7]~input_o\;
\ALT_INV_data[5]~input_o\ <= NOT \data[5]~input_o\;
\ALT_INV_data[0]~input_o\ <= NOT \data[0]~input_o\;
\ALT_INV_data[11]~input_o\ <= NOT \data[11]~input_o\;
\ALT_INV_data[10]~input_o\ <= NOT \data[10]~input_o\;
\ALT_INV_dCos[9]~_wirecell_combout\ <= NOT \dCos[9]~_wirecell_combout\;
\ALT_INV_dCos[8]~_wirecell_combout\ <= NOT \dCos[8]~_wirecell_combout\;
\ALT_INV_dCos[7]~_wirecell_combout\ <= NOT \dCos[7]~_wirecell_combout\;
\ALT_INV_dCos[6]~_wirecell_combout\ <= NOT \dCos[6]~_wirecell_combout\;
\ALT_INV_dCos[5]~_wirecell_combout\ <= NOT \dCos[5]~_wirecell_combout\;
\ALT_INV_dCos[4]~_wirecell_combout\ <= NOT \dCos[4]~_wirecell_combout\;
\ALT_INV_dCos[3]~_wirecell_combout\ <= NOT \dCos[3]~_wirecell_combout\;
\ALT_INV_dCos[2]~_wirecell_combout\ <= NOT \dCos[2]~_wirecell_combout\;
\ALT_INV_dCos[1]~_wirecell_combout\ <= NOT \dCos[1]~_wirecell_combout\;
\ALT_INV_dCos[0]~_wirecell_combout\ <= NOT \dCos[0]~_wirecell_combout\;
ALT_INV_d(9) <= NOT d(9);
ALT_INV_d(8) <= NOT d(8);
ALT_INV_d(7) <= NOT d(7);
ALT_INV_d(1) <= NOT d(1);
ALT_INV_dCos(9) <= NOT dCos(9);
ALT_INV_dCos(8) <= NOT dCos(8);
ALT_INV_dCos(7) <= NOT dCos(7);
ALT_INV_dCos(6) <= NOT dCos(6);
ALT_INV_dCos(5) <= NOT dCos(5);
ALT_INV_dCos(4) <= NOT dCos(4);
ALT_INV_dCos(3) <= NOT dCos(3);
ALT_INV_dCos(2) <= NOT dCos(2);
ALT_INV_dCos(1) <= NOT dCos(1);
ALT_INV_dCos(0) <= NOT dCos(0);
\ALT_INV_m~q\ <= NOT \m~q\;
\ALT_INV_n~q\ <= NOT \n~q\;

-- Location: IOOBUF_X25_Y0_N36
\sinOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sinOut(0));

-- Location: IOOBUF_X24_Y0_N53
\sinOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sinOut(1));

-- Location: IOOBUF_X0_Y19_N5
\sinOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sinOut(2));

-- Location: IOOBUF_X11_Y0_N19
\sinOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sinOut(3));

-- Location: IOOBUF_X0_Y18_N45
\sinOut[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sinOut(4));

-- Location: IOOBUF_X29_Y0_N2
\sinOut[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sinOut(5));

-- Location: IOOBUF_X10_Y0_N93
\sinOut[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sinOut(6));

-- Location: IOOBUF_X11_Y0_N2
\sinOut[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sinOut(7));

-- Location: IOOBUF_X29_Y0_N36
\sinOut[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sinOut(8));

-- Location: IOOBUF_X10_Y0_N59
\sinOut[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sinOut(9));

-- Location: IOOBUF_X25_Y0_N19
\sinOut[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sinOut(10));

-- Location: IOOBUF_X34_Y0_N19
\sinOut[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sinOut(11));

-- Location: IOOBUF_X10_Y0_N42
\sinOut[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sinOut(12));

-- Location: IOOBUF_X54_Y14_N96
\sinOut[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sinOut(13));

-- Location: IOOBUF_X11_Y0_N53
\sinOut[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sinOut(14));

-- Location: IOOBUF_X11_Y0_N36
\sinOut[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \sinOut[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sinOut(15));

-- Location: IOOBUF_X0_Y20_N5
\cosOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_cosOut(0));

-- Location: IOOBUF_X14_Y0_N2
\cosOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_cosOut(1));

-- Location: IOOBUF_X54_Y14_N62
\cosOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_cosOut(2));

-- Location: IOOBUF_X14_Y0_N19
\cosOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_cosOut(3));

-- Location: IOOBUF_X0_Y18_N79
\cosOut[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_cosOut(4));

-- Location: IOOBUF_X14_Y0_N53
\cosOut[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_cosOut(5));

-- Location: IOOBUF_X12_Y0_N19
\cosOut[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_cosOut(6));

-- Location: IOOBUF_X14_Y0_N36
\cosOut[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_cosOut(7));

-- Location: IOOBUF_X0_Y18_N62
\cosOut[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_cosOut(8));

-- Location: IOOBUF_X0_Y18_N96
\cosOut[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_cosOut(9));

-- Location: IOOBUF_X29_Y0_N53
\cosOut[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_cosOut(10));

-- Location: IOOBUF_X10_Y0_N76
\cosOut[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_cosOut(11));

-- Location: IOOBUF_X24_Y0_N36
\cosOut[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_cosOut(12));

-- Location: IOOBUF_X12_Y0_N2
\cosOut[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_cosOut(13));

-- Location: IOOBUF_X36_Y0_N36
\cosOut[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_cosOut(14));

-- Location: IOOBUF_X12_Y0_N36
\cosOut[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cosOut[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_cosOut(15));

-- Location: IOIBUF_X54_Y18_N61
\i_clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clock,
	o => \i_clock~input_o\);

-- Location: CLKCTRL_G9
\i_clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \i_clock~input_o\,
	outclk => \i_clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X0_Y19_N21
\data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(10),
	o => \data[10]~input_o\);

-- Location: MLABCELL_X9_Y4_N57
\n~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \n~feeder_combout\ = ( \data[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[10]~input_o\,
	combout => \n~feeder_combout\);

-- Location: FF_X9_Y4_N59
n : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \n~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \n~q\);

-- Location: LABCELL_X10_Y5_N39
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X24_Y0_N1
\data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: LABCELL_X19_Y4_N0
\d[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \d[0]~feeder_combout\ = ( \data[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[0]~input_o\,
	combout => \d[0]~feeder_combout\);

-- Location: FF_X19_Y4_N1
\d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \d[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(0));

-- Location: FF_X13_Y4_N47
\dCos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	asdata => d(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(0));

-- Location: LABCELL_X12_Y4_N39
\dCos[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \dCos[0]~_wirecell_combout\ = ( !dCos(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_dCos(0),
	combout => \dCos[0]~_wirecell_combout\);

-- Location: MLABCELL_X13_Y4_N36
\dSinpLUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dSinpLUT[0]~feeder_combout\ = \dCos[0]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dCos[0]~_wirecell_combout\,
	combout => \dSinpLUT[0]~feeder_combout\);

-- Location: IOIBUF_X12_Y0_N52
\data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(11),
	o => \data[11]~input_o\);

-- Location: MLABCELL_X9_Y4_N48
\m~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \m~feeder_combout\ = \data[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_data[11]~input_o\,
	combout => \m~feeder_combout\);

-- Location: FF_X9_Y4_N50
m : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \m~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m~q\);

-- Location: FF_X13_Y4_N37
\dSinpLUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dSinpLUT[0]~feeder_combout\,
	asdata => dCos(0),
	sload => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(0));

-- Location: IOIBUF_X24_Y0_N18
\data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: FF_X12_Y4_N22
\d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	asdata => \data[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(1));

-- Location: LABCELL_X12_Y4_N18
\dCos[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dCos[1]~feeder_combout\ = ( d(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_d(1),
	combout => \dCos[1]~feeder_combout\);

-- Location: FF_X12_Y4_N20
\dCos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dCos[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(1));

-- Location: LABCELL_X10_Y4_N51
\dCos[1]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \dCos[1]~_wirecell_combout\ = ( !dCos(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_dCos(1),
	combout => \dCos[1]~_wirecell_combout\);

-- Location: MLABCELL_X9_Y4_N51
\dSinpLUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dSinpLUT[1]~feeder_combout\ = \dCos[1]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_dCos[1]~_wirecell_combout\,
	combout => \dSinpLUT[1]~feeder_combout\);

-- Location: FF_X9_Y4_N53
\dSinpLUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dSinpLUT[1]~feeder_combout\,
	asdata => dCos(1),
	sload => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(1));

-- Location: IOIBUF_X23_Y0_N92
\data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: FF_X18_Y4_N4
\d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	asdata => \data[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(2));

-- Location: FF_X13_Y4_N2
\dCos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	asdata => d(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(2));

-- Location: LABCELL_X12_Y4_N6
\dCos[2]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \dCos[2]~_wirecell_combout\ = ( !dCos(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_dCos(2),
	combout => \dCos[2]~_wirecell_combout\);

-- Location: MLABCELL_X13_Y4_N54
\dSinpLUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dSinpLUT[2]~feeder_combout\ = \dCos[2]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dCos[2]~_wirecell_combout\,
	combout => \dSinpLUT[2]~feeder_combout\);

-- Location: FF_X13_Y4_N55
\dSinpLUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dSinpLUT[2]~feeder_combout\,
	asdata => dCos(2),
	sload => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(2));

-- Location: IOIBUF_X23_Y0_N58
\data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: FF_X12_Y4_N17
\d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	asdata => \data[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(3));

-- Location: FF_X12_Y4_N14
\dCos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	asdata => d(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(3));

-- Location: LABCELL_X12_Y4_N51
\dCos[3]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \dCos[3]~_wirecell_combout\ = ( !dCos(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_dCos(3),
	combout => \dCos[3]~_wirecell_combout\);

-- Location: MLABCELL_X13_Y4_N48
\dSinpLUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dSinpLUT[3]~feeder_combout\ = ( \dCos[3]~_wirecell_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dCos[3]~_wirecell_combout\,
	combout => \dSinpLUT[3]~feeder_combout\);

-- Location: FF_X13_Y4_N49
\dSinpLUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dSinpLUT[3]~feeder_combout\,
	asdata => dCos(3),
	sload => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(3));

-- Location: IOIBUF_X33_Y0_N41
\data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: FF_X13_Y4_N35
\d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	asdata => \data[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(4));

-- Location: FF_X13_Y4_N32
\dCos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	asdata => d(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(4));

-- Location: LABCELL_X12_Y4_N9
\dCos[4]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \dCos[4]~_wirecell_combout\ = ( !dCos(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_dCos(4),
	combout => \dCos[4]~_wirecell_combout\);

-- Location: MLABCELL_X13_Y4_N21
\dSinpLUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dSinpLUT[4]~feeder_combout\ = ( \dCos[4]~_wirecell_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dCos[4]~_wirecell_combout\,
	combout => \dSinpLUT[4]~feeder_combout\);

-- Location: FF_X13_Y4_N22
\dSinpLUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dSinpLUT[4]~feeder_combout\,
	asdata => dCos(4),
	sload => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(4));

-- Location: IOIBUF_X23_Y0_N75
\data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: LABCELL_X14_Y4_N0
\d[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \d[5]~feeder_combout\ = ( \data[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[5]~input_o\,
	combout => \d[5]~feeder_combout\);

-- Location: FF_X14_Y4_N2
\d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \d[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(5));

-- Location: FF_X13_Y4_N17
\dCos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	asdata => d(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(5));

-- Location: LABCELL_X12_Y4_N42
\dCos[5]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \dCos[5]~_wirecell_combout\ = ( !dCos(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_dCos(5),
	combout => \dCos[5]~_wirecell_combout\);

-- Location: MLABCELL_X13_Y4_N51
\dSinpLUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dSinpLUT[5]~feeder_combout\ = \dCos[5]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dCos[5]~_wirecell_combout\,
	combout => \dSinpLUT[5]~feeder_combout\);

-- Location: FF_X13_Y4_N52
\dSinpLUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dSinpLUT[5]~feeder_combout\,
	asdata => dCos(5),
	sload => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(5));

-- Location: IOIBUF_X29_Y0_N18
\data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: FF_X12_Y4_N59
\d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	asdata => \data[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(6));

-- Location: FF_X12_Y4_N56
\dCos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	asdata => d(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(6));

-- Location: LABCELL_X12_Y4_N24
\dCos[6]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \dCos[6]~_wirecell_combout\ = ( !dCos(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_dCos(6),
	combout => \dCos[6]~_wirecell_combout\);

-- Location: MLABCELL_X13_Y4_N24
\dSinpLUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dSinpLUT[6]~feeder_combout\ = ( \dCos[6]~_wirecell_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dCos[6]~_wirecell_combout\,
	combout => \dSinpLUT[6]~feeder_combout\);

-- Location: FF_X13_Y4_N25
\dSinpLUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dSinpLUT[6]~feeder_combout\,
	asdata => dCos(6),
	sload => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(6));

-- Location: IOIBUF_X23_Y0_N41
\data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: LABCELL_X14_Y4_N30
\d[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \d[7]~feeder_combout\ = ( \data[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_data[7]~input_o\,
	combout => \d[7]~feeder_combout\);

-- Location: FF_X14_Y4_N32
\d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \d[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(7));

-- Location: MLABCELL_X13_Y4_N42
\dCos[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dCos[7]~feeder_combout\ = ( d(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_d(7),
	combout => \dCos[7]~feeder_combout\);

-- Location: FF_X13_Y4_N44
\dCos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dCos[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(7));

-- Location: LABCELL_X12_Y4_N30
\dCos[7]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \dCos[7]~_wirecell_combout\ = ( !dCos(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_dCos(7),
	combout => \dCos[7]~_wirecell_combout\);

-- Location: MLABCELL_X13_Y4_N27
\dSinpLUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dSinpLUT[7]~feeder_combout\ = ( \dCos[7]~_wirecell_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dCos[7]~_wirecell_combout\,
	combout => \dSinpLUT[7]~feeder_combout\);

-- Location: FF_X13_Y4_N29
\dSinpLUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dSinpLUT[7]~feeder_combout\,
	asdata => dCos(7),
	sload => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(7));

-- Location: IOIBUF_X25_Y0_N52
\data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(8),
	o => \data[8]~input_o\);

-- Location: FF_X19_Y4_N22
\d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	asdata => \data[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(8));

-- Location: MLABCELL_X13_Y4_N3
\dCos[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dCos[8]~feeder_combout\ = ( d(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_d(8),
	combout => \dCos[8]~feeder_combout\);

-- Location: FF_X13_Y4_N5
\dCos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dCos[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(8));

-- Location: LABCELL_X12_Y4_N33
\dCos[8]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \dCos[8]~_wirecell_combout\ = !dCos(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_dCos(8),
	combout => \dCos[8]~_wirecell_combout\);

-- Location: MLABCELL_X13_Y4_N39
\dSinpLUT[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dSinpLUT[8]~feeder_combout\ = \dCos[8]~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_dCos[8]~_wirecell_combout\,
	combout => \dSinpLUT[8]~feeder_combout\);

-- Location: FF_X13_Y4_N40
\dSinpLUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dSinpLUT[8]~feeder_combout\,
	asdata => dCos(8),
	sload => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(8));

-- Location: IOIBUF_X25_Y0_N1
\data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(9),
	o => \data[9]~input_o\);

-- Location: FF_X14_Y4_N14
\d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	asdata => \data[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d(9));

-- Location: MLABCELL_X13_Y4_N6
\dCos[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dCos[9]~feeder_combout\ = ( d(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_d(9),
	combout => \dCos[9]~feeder_combout\);

-- Location: FF_X13_Y4_N8
\dCos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dCos[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCos(9));

-- Location: LABCELL_X12_Y4_N0
\dCos[9]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \dCos[9]~_wirecell_combout\ = ( !dCos(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_dCos(9),
	combout => \dCos[9]~_wirecell_combout\);

-- Location: MLABCELL_X13_Y4_N18
\dSinpLUT[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dSinpLUT[9]~feeder_combout\ = ( \dCos[9]~_wirecell_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_dCos[9]~_wirecell_combout\,
	combout => \dSinpLUT[9]~feeder_combout\);

-- Location: FF_X13_Y4_N19
\dSinpLUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dSinpLUT[9]~feeder_combout\,
	asdata => dCos(9),
	sload => \ALT_INV_m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dSinpLUT(9));

-- Location: FF_X12_Y4_N41
\dCospLUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dCos[0]~_wirecell_combout\,
	asdata => dCos(0),
	sload => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(0));

-- Location: FF_X10_Y4_N53
\dCospLUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dCos[1]~_wirecell_combout\,
	asdata => dCos(1),
	sload => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(1));

-- Location: FF_X12_Y4_N8
\dCospLUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dCos[2]~_wirecell_combout\,
	asdata => dCos(2),
	sload => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(2));

-- Location: FF_X12_Y4_N53
\dCospLUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dCos[3]~_wirecell_combout\,
	asdata => dCos(3),
	sload => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(3));

-- Location: FF_X12_Y4_N11
\dCospLUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dCos[4]~_wirecell_combout\,
	asdata => dCos(4),
	sload => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(4));

-- Location: FF_X12_Y4_N44
\dCospLUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dCos[5]~_wirecell_combout\,
	asdata => dCos(5),
	sload => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(5));

-- Location: FF_X12_Y4_N26
\dCospLUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dCos[6]~_wirecell_combout\,
	asdata => dCos(6),
	sload => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(6));

-- Location: FF_X12_Y4_N32
\dCospLUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dCos[7]~_wirecell_combout\,
	asdata => dCos(7),
	sload => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(7));

-- Location: FF_X12_Y4_N35
\dCospLUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dCos[8]~_wirecell_combout\,
	asdata => dCos(8),
	sload => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(8));

-- Location: FF_X12_Y4_N2
\dCospLUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \dCos[9]~_wirecell_combout\,
	asdata => dCos(9),
	sload => \m~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dCospLUT(9));

-- Location: M10K_X11_Y4_N0
\c1|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "FFFFFFFFFFFFFFFFFFFEFFBFDFF3FBFEBF9FE3F7FDBF5FCFF2FC7EFFB7ECFABE8F9BE4F8BE0F77DBF63D6F4FD1F3BCBF23C5F0BBFEF3B9ED7B2EBBABE9FA3E7F9CE6394E3F8BE1F83DFB7ADD770DB367D8B5DD6353D3B48D0F3DCE332CB727C871BC570FC2703BF6F6BC2E9B8EDCB56CEB22C1AEAB2AAEA4A7695A3A869FA779BE6797E5793E478FA368BA258761482E027E9F17A1DF755CC70DB96C1A6675936257F5D56B58557535434E12E48D18439033E0ED388D7330C12D8AA27C932207C1C0641604C100340A01C03C03FDFEAF77D1F13B7EAB9DE4383DD768D6F4DD0332C9317C26FBBB6DFB46C2AD2A6A5E899EA6C9764E8FE308861280DF4791D571",
	mem_init3 => "9B66999761D7759D5751D3749D17418F6394D5310B328C922047017C4E0F02B06808FDFE5F53C2EC39EE337ADA356D1331C7F0DBEAE7B56C2ABE9CA267698E508F62A85A037BDDC721B46818D5E5655413C4A1143FCEB358C22B4982106F168450C01B017F0F6FC5EC39AE176FD6743CB717C06EBB56BFAA2929F26593A388860A7CDDC715AE65D805A5514E92242CF336CC42B0941F0641303406C03FAFD2EEBA1E2370D5F3EC970CBCEDAB06A7A3A7596E428A20F7D5DB705A7635735653F4950A3C0D52ECA02186B1403506800F93C9EBB93DE35CD0725C2AEEB4EB7A6E7F98E478AE0F7CDD66E99E605655212B43CF2354B826C7E1844409C0AFB3CFEC79",
	mem_init2 => "4DDB59CEF1DBFEE1B0EA5A1E6992E2D839F0745B36517655D38464FA36CBC2747E17C4008001F8BC2E8F83D8F44C9304B92C4A92849924488E0378DC2689815814047CFE374BC26C7A1643805FF6F53B3E4B70D3B2DC2EE9B22A6A12629021E7F1DA6DD955CD504B90B3A4C628C811783B063F5F4BAFE3369D1722BFEDBAE2949C64D8A606789BE669765492E428E63089D1E4550C00CF9FC2E7B79D532FC2EE6B069C9DE528B207789BC65D7253127404DB2D8901A84407BF8F4BACE1B60CEB14BB6C7A867A9522D81DE06E5925B145478F7340A92085B0D00CF97BEE5B6FD1F20BE2D1AA68196632829E26E9925A942468F1324A11E4500A3FFF5FAEE1B5DC",
	mem_init1 => "D30CB8EBAA46688FE167B5C466D725251F3D8CD28C7A14027FF7D4EAB80D5B2DC0ED9ABE8596E3181DDD6CD8857934424DF2D48A1803502BE0ED78AD8335C2ADFAD28997A33821DD6C98756D30414D92B88315C2C003D4EA77DD4726BEACEA8A7692A1E7C9C66696E509163A8BD244650E00CF7FB3E1B5ACB701B52A79EA4E885F471D9A5B54044CE62E48C17C32013D7EAB7DD3F22BD2C7A666C8FA1178DB56215A4B0FF344A31D447067EBEF78FD8733C16D7AA27A9321E7BDC164D644D907364AA1F04D07FF0F0793D9335C1AD8AA67A92E1C7B5BE63D604C50234CA41D04505BE7EE388D672ABEACBA6E6C8F20D775AE5F94F47CEF3009018030007D1E87",
	mem_init0 => "71D0711B86B1A0A52889F17059158531404D12847010010F83AFDFF4FC7AEEAF68D9722C7EDCB6696A4E509360A71DC46057E5ED383D4B22BC6C0A3E5E8B5FC7319B5A939420D72987510C12F87B0DFF4EC76ECAEA89962277D5C464D624C0FF3389C1AC39023D7E9774D0B11B7EAE9F24B865E86D98454D213BCBE2305B0A7F7F1794D8B30BFACDA6E698DE06751A25C13E430DA2A47711413F87AFDF74BC66E7AD6839461F7B5BB62557494F33048F1742BFE7C7E5762CC2FEB329A9A23680DD167D6D4ED09358A41C84003BDBEA777D1712B82AE9F24985DE56CD805391C3A8B721453083EEEF38AD5F25BCEC0A3A5C8A5F7715935812E3F0C925C650C800",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sin_cos.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sincosLUT:c1|altsyncram:altsyncram_component|altsyncram_um04:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 10,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \i_clock~inputCLKENA0_outclk\,
	portadatain => \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \c1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X10_Y4_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(0)) ) + ( \n~q\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(0)) ) + ( \n~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X10_Y4_N1
\sinOut[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[0]~reg0_q\);

-- Location: LABCELL_X10_Y4_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\c1|altsyncram_component|auto_generated|q_a\(1) $ (!\n~q\) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !\c1|altsyncram_component|auto_generated|q_a\(1) $ (!\n~q\) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datac => \ALT_INV_n~q\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X10_Y4_N4
\sinOut[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[1]~reg0_q\);

-- Location: LABCELL_X10_Y4_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(2)) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(2)) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X10_Y4_N7
\sinOut[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[2]~reg0_q\);

-- Location: LABCELL_X10_Y4_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(3)) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(3)) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X10_Y4_N10
\sinOut[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[3]~reg0_q\);

-- Location: LABCELL_X10_Y4_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(4)) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(4)) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X10_Y4_N13
\sinOut[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[4]~reg0_q\);

-- Location: LABCELL_X10_Y4_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(5)) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(5)) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X10_Y4_N16
\sinOut[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[5]~reg0_q\);

-- Location: LABCELL_X10_Y4_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(6)) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(6)) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X10_Y4_N20
\sinOut[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[6]~reg0_q\);

-- Location: LABCELL_X10_Y4_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(7)) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(7)) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X10_Y4_N22
\sinOut[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[7]~reg0_q\);

-- Location: LABCELL_X10_Y4_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(8)) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(8)) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X10_Y4_N25
\sinOut[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[8]~reg0_q\);

-- Location: LABCELL_X10_Y4_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(9)) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(9)) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X10_Y4_N28
\sinOut[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[9]~reg0_q\);

-- Location: M10K_X11_Y5_N0
\c1|altsyncram_component|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F07C1F0781E0781E0781E0781E0781E0781E0781E0781E0781E0781E0781E0781E0781E0781E0781E0781E0781E0781E0781E0781E07",
	mem_init3 => "81E0781E0781E0781E0781E0781E0781E0781E0781E0781E0781E0781E0781E0781E0741D0741D0741D0741D0741D0741D0741D0741D0741D0741D0741D0741D0741D0741D0741D0741D0741D0741D0741D0741D0741D0741D0741D0741D0741D0741D0741C0701C0701C0701C0701C0701C0701C0701C0701C0701C0701C0701C0701C0701C0701C0701C0701C0701C0701C0701C0701C0701C0701C06C1B06C1B06C1B06C1B06C1B06C1B06C1B06C1B06C1B06C1B06C1B06C1B06C1B06C1B06C1B06C1B06C1B06C1B06C1B06C1B0681A0681A0681A0681A0681A0681A0681A0681A0681A0681A0681A0681A0681A0681A0681A0681A0681A0681A064190641",
	mem_init2 => "90641906419064190641906419064190641906419064190641906419064190641906419064190601806018060180601806018060180601806018060180601806018060180601806018060180601705C1705C1705C1705C1705C1705C1705C1705C1705C1705C1705C1705C1705C1705C1705C16058160581605816058160581605816058160581605816058160581605816058160581605415054150541505415054150541505415054150541505415054150541505415054140501405014050140501405014050140501405014050140501405014050140501404C1304C1304C1304C1304C1304C1304C1304C1304C1304C1304C1304C1304C1204812048120",
	mem_init1 => "48120481204812048120481204812048120481204812048120441104411044110441104411044110441104411044110441104411044110441004010040100401004010040100401004010040100401004010040100400F03C0F03C0F03C0F03C0F03C0F03C0F03C0F03C0F03C0F03C0F03C0F0380E0380E0380E0380E0380E0380E0380E0380E0380E0380E0380E0380D0340D0340D0340D0340D0340D0340D0340D0340D0340D0340D0340C0300C0300C0300C0300C0300C0300C0300C0300C0300C0300C0300B02C0B02C0B02C0B02C0B02C0B02C0B02C0B02C0B02C0B02C0B02C0A0280A0280A0280A0280A0280A0280A0280A0280A0280A0280A02809024",
	mem_init0 => "09024090240902409024090240902409024090240902409020080200802008020080200802008020080200802008020080200701C0701C0701C0701C0701C0701C0701C0701C0701C0701C070180601806018060180601806018060180601806018060180601805014050140501405014050140501405014050140501405014040100401004010040100401004010040100401004010040100400C0300C0300C0300C0300C0300C0300C0300C0300C0300C0300802008020080200802008020080200802008020080200802008010040100401004010040100401004010040100401004010040000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sin_cos.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sincosLUT:c1|altsyncram:altsyncram_component|altsyncram_um04:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 10,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \i_clock~inputCLKENA0_outclk\,
	portadatain => \c1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portbdatain => \c1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\,
	portaaddr => \c1|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \c1|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c1|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\,
	portbdataout => \c1|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: LABCELL_X10_Y4_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(10)) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(10)) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X10_Y4_N31
\sinOut[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[10]~reg0_q\);

-- Location: LABCELL_X10_Y4_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(11)) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(11)) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n~q\,
	datac => \c1|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X10_Y4_N34
\sinOut[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[11]~reg0_q\);

-- Location: LABCELL_X10_Y4_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(12)) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(12)) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n~q\,
	datac => \c1|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X10_Y4_N38
\sinOut[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[12]~reg0_q\);

-- Location: LABCELL_X10_Y4_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(13)) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(13)) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X10_Y4_N40
\sinOut[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[13]~reg0_q\);

-- Location: LABCELL_X10_Y4_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(14)) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(14)) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X10_Y4_N43
\sinOut[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[14]~reg0_q\);

-- Location: LABCELL_X10_Y4_N45
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( !\n~q\ $ (!\c1|altsyncram_component|auto_generated|q_a\(15)) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\);

-- Location: FF_X10_Y4_N46
\sinOut[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sinOut[15]~reg0_q\);

-- Location: MLABCELL_X9_Y4_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( !\n~q\ $ (!\m~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(0))) ) + ( !\n~q\ $ (!\m~q\) ) + ( !VCC ))
-- \Add1~2\ = CARRY(( !\n~q\ $ (!\m~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(0))) ) + ( !\n~q\ $ (!\m~q\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000111100001100000000000000000011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n~q\,
	datac => \ALT_INV_m~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X9_Y4_N2
\cosOut[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[0]~reg0_q\);

-- Location: MLABCELL_X9_Y4_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(1))) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(1))) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m~q\,
	datac => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X9_Y4_N4
\cosOut[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[1]~reg0_q\);

-- Location: MLABCELL_X9_Y4_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( !\n~q\ $ (!\m~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(2))) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( !\n~q\ $ (!\m~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(2))) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n~q\,
	datac => \ALT_INV_m~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X9_Y4_N7
\cosOut[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[2]~reg0_q\);

-- Location: MLABCELL_X9_Y4_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(3))) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(3))) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m~q\,
	datac => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X9_Y4_N10
\cosOut[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[3]~reg0_q\);

-- Location: MLABCELL_X9_Y4_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( !\n~q\ $ (!\m~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(4))) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( !\n~q\ $ (!\m~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(4))) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n~q\,
	datac => \ALT_INV_m~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X9_Y4_N13
\cosOut[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[4]~reg0_q\);

-- Location: MLABCELL_X9_Y4_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(5))) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(5))) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m~q\,
	datac => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X9_Y4_N16
\cosOut[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[5]~reg0_q\);

-- Location: MLABCELL_X9_Y4_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( !\n~q\ $ (!\m~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(6))) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( !\n~q\ $ (!\m~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(6))) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n~q\,
	datac => \ALT_INV_m~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X9_Y4_N19
\cosOut[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[6]~reg0_q\);

-- Location: MLABCELL_X9_Y4_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(7))) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(7))) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m~q\,
	datab => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X9_Y4_N22
\cosOut[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[7]~reg0_q\);

-- Location: MLABCELL_X9_Y4_N24
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(8))) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(8))) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m~q\,
	datab => \ALT_INV_n~q\,
	datac => \c1|altsyncram_component|auto_generated|ALT_INV_q_b\(8),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X9_Y4_N25
\cosOut[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[8]~reg0_q\);

-- Location: MLABCELL_X9_Y4_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(9))) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(9))) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m~q\,
	datab => \ALT_INV_n~q\,
	datac => \c1|altsyncram_component|auto_generated|ALT_INV_q_b\(9),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X9_Y4_N28
\cosOut[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[9]~reg0_q\);

-- Location: MLABCELL_X9_Y4_N30
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(10))) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(10))) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m~q\,
	datab => \ALT_INV_n~q\,
	datac => \c1|altsyncram_component|auto_generated|ALT_INV_q_b\(10),
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X9_Y4_N31
\cosOut[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[10]~reg0_q\);

-- Location: MLABCELL_X9_Y4_N33
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(11))) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(11))) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m~q\,
	datab => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_b\(11),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X9_Y4_N34
\cosOut[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[11]~reg0_q\);

-- Location: MLABCELL_X9_Y4_N36
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( !\n~q\ $ (!\m~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(12))) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( !\n~q\ $ (!\m~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(12))) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n~q\,
	datac => \ALT_INV_m~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_b\(12),
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X9_Y4_N37
\cosOut[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[12]~reg0_q\);

-- Location: MLABCELL_X9_Y4_N39
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(13))) ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(13))) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m~q\,
	datab => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_b\(13),
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X9_Y4_N40
\cosOut[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[13]~reg0_q\);

-- Location: MLABCELL_X9_Y4_N42
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( !\n~q\ $ (!\m~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(14))) ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( !\n~q\ $ (!\m~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(14))) ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n~q\,
	datac => \ALT_INV_m~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_b\(14),
	cin => \Add1~54\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X9_Y4_N43
\cosOut[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[14]~reg0_q\);

-- Location: MLABCELL_X9_Y4_N45
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( !\m~q\ $ (!\n~q\ $ (\c1|altsyncram_component|auto_generated|q_b\(15))) ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m~q\,
	datab => \ALT_INV_n~q\,
	datad => \c1|altsyncram_component|auto_generated|ALT_INV_q_b\(15),
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\);

-- Location: FF_X9_Y4_N46
\cosOut[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cosOut[15]~reg0_q\);

-- Location: IOIBUF_X0_Y21_N38
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);
END structure;


