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

-- DATE "05/06/2022 10:11:34"

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

ENTITY 	ZigVHDL IS
    PORT (
	i_clock : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	zigout : OUT std_logic_vector(15 DOWNTO 0);
	xuout : OUT std_logic_vector(32 DOWNTO 0)
	);
END ZigVHDL;

-- Design Ports Information
-- reset	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zigout[0]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zigout[1]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zigout[2]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zigout[3]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zigout[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zigout[5]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zigout[6]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zigout[7]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zigout[8]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zigout[9]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zigout[10]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zigout[11]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zigout[12]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zigout[13]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zigout[14]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zigout[15]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[2]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[3]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[4]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[5]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[6]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[7]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[8]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[9]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[10]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[11]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[12]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[13]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[14]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[15]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[16]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[17]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[18]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[19]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[20]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[21]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[22]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[23]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[24]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[25]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[26]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[27]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[28]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[29]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[30]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[31]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xuout[32]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ZigVHDL IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_zigout : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_xuout : std_logic_vector(32 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \c3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \i_clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \zigout[0]~output_o\ : std_logic;
SIGNAL \zigout[1]~output_o\ : std_logic;
SIGNAL \zigout[2]~output_o\ : std_logic;
SIGNAL \zigout[3]~output_o\ : std_logic;
SIGNAL \zigout[4]~output_o\ : std_logic;
SIGNAL \zigout[5]~output_o\ : std_logic;
SIGNAL \zigout[6]~output_o\ : std_logic;
SIGNAL \zigout[7]~output_o\ : std_logic;
SIGNAL \zigout[8]~output_o\ : std_logic;
SIGNAL \zigout[9]~output_o\ : std_logic;
SIGNAL \zigout[10]~output_o\ : std_logic;
SIGNAL \zigout[11]~output_o\ : std_logic;
SIGNAL \zigout[12]~output_o\ : std_logic;
SIGNAL \zigout[13]~output_o\ : std_logic;
SIGNAL \zigout[14]~output_o\ : std_logic;
SIGNAL \zigout[15]~output_o\ : std_logic;
SIGNAL \xuout[0]~output_o\ : std_logic;
SIGNAL \xuout[1]~output_o\ : std_logic;
SIGNAL \xuout[2]~output_o\ : std_logic;
SIGNAL \xuout[3]~output_o\ : std_logic;
SIGNAL \xuout[4]~output_o\ : std_logic;
SIGNAL \xuout[5]~output_o\ : std_logic;
SIGNAL \xuout[6]~output_o\ : std_logic;
SIGNAL \xuout[7]~output_o\ : std_logic;
SIGNAL \xuout[8]~output_o\ : std_logic;
SIGNAL \xuout[9]~output_o\ : std_logic;
SIGNAL \xuout[10]~output_o\ : std_logic;
SIGNAL \xuout[11]~output_o\ : std_logic;
SIGNAL \xuout[12]~output_o\ : std_logic;
SIGNAL \xuout[13]~output_o\ : std_logic;
SIGNAL \xuout[14]~output_o\ : std_logic;
SIGNAL \xuout[15]~output_o\ : std_logic;
SIGNAL \xuout[16]~output_o\ : std_logic;
SIGNAL \xuout[17]~output_o\ : std_logic;
SIGNAL \xuout[18]~output_o\ : std_logic;
SIGNAL \xuout[19]~output_o\ : std_logic;
SIGNAL \xuout[20]~output_o\ : std_logic;
SIGNAL \xuout[21]~output_o\ : std_logic;
SIGNAL \xuout[22]~output_o\ : std_logic;
SIGNAL \xuout[23]~output_o\ : std_logic;
SIGNAL \xuout[24]~output_o\ : std_logic;
SIGNAL \xuout[25]~output_o\ : std_logic;
SIGNAL \xuout[26]~output_o\ : std_logic;
SIGNAL \xuout[27]~output_o\ : std_logic;
SIGNAL \xuout[28]~output_o\ : std_logic;
SIGNAL \xuout[29]~output_o\ : std_logic;
SIGNAL \xuout[30]~output_o\ : std_logic;
SIGNAL \xuout[31]~output_o\ : std_logic;
SIGNAL \xuout[32]~output_o\ : std_logic;
SIGNAL \i_clock~input_o\ : std_logic;
SIGNAL \i_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \c1|shift_register~11_combout\ : std_logic;
SIGNAL \c1|shift_register[24]~feeder_combout\ : std_logic;
SIGNAL \c1|shift_register~4_combout\ : std_logic;
SIGNAL \c1|shift_register[17]~feeder_combout\ : std_logic;
SIGNAL \c1|shift_register~10_combout\ : std_logic;
SIGNAL \c1|shift_register[23]~feeder_combout\ : std_logic;
SIGNAL \c1|shift_register~3_combout\ : std_logic;
SIGNAL \c1|shift_register[16]~25_combout\ : std_logic;
SIGNAL \c1|shift_register~9_combout\ : std_logic;
SIGNAL \c1|shift_register[22]~feeder_combout\ : std_logic;
SIGNAL \c1|shift_register~2_combout\ : std_logic;
SIGNAL \c1|shift_register[15]~24_combout\ : std_logic;
SIGNAL \c1|shift_register~8_combout\ : std_logic;
SIGNAL \c1|shift_register[21]~feeder_combout\ : std_logic;
SIGNAL \c1|shift_register~1_combout\ : std_logic;
SIGNAL \c1|shift_register[14]~feeder_combout\ : std_logic;
SIGNAL \c1|shift_register[27]~feeder_combout\ : std_logic;
SIGNAL \c1|shift_register~7_combout\ : std_logic;
SIGNAL \c1|shift_register[20]~feeder_combout\ : std_logic;
SIGNAL \c1|shift_register~0_combout\ : std_logic;
SIGNAL \c1|shift_register[13]~feeder_combout\ : std_logic;
SIGNAL \c1|shift_register[26]~feeder_combout\ : std_logic;
SIGNAL \c1|shift_register~6_combout\ : std_logic;
SIGNAL \c1|shift_register[19]~feeder_combout\ : std_logic;
SIGNAL \c1|shift_register[32]~feeder_combout\ : std_logic;
SIGNAL \c1|shift_register~12_combout\ : std_logic;
SIGNAL \c1|shift_register[25]~feeder_combout\ : std_logic;
SIGNAL \c1|shift_register~5_combout\ : std_logic;
SIGNAL \c1|shift_register[18]~feeder_combout\ : std_logic;
SIGNAL \c1|shift_register[31]~feeder_combout\ : std_logic;
SIGNAL \U1[15]~feeder_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \U1_1[15]~feeder_combout\ : std_logic;
SIGNAL \U1_2[15]~feeder_combout\ : std_logic;
SIGNAL \U1_3[15]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \U1[0]~feeder_combout\ : std_logic;
SIGNAL \U1[1]~feeder_combout\ : std_logic;
SIGNAL \U1[2]~feeder_combout\ : std_logic;
SIGNAL \U1[5]~feeder_combout\ : std_logic;
SIGNAL \U1[6]~feeder_combout\ : std_logic;
SIGNAL \U1[7]~feeder_combout\ : std_logic;
SIGNAL \iplus[0]~21_combout\ : std_logic;
SIGNAL \iplus[1]~7_combout\ : std_logic;
SIGNAL \iplus[1]~8\ : std_logic;
SIGNAL \iplus[2]~9_combout\ : std_logic;
SIGNAL \iplus[2]~10\ : std_logic;
SIGNAL \iplus[3]~11_combout\ : std_logic;
SIGNAL \iplus[3]~12\ : std_logic;
SIGNAL \iplus[4]~13_combout\ : std_logic;
SIGNAL \iplus[4]~14\ : std_logic;
SIGNAL \iplus[5]~15_combout\ : std_logic;
SIGNAL \iplus[5]~16\ : std_logic;
SIGNAL \iplus[6]~17_combout\ : std_logic;
SIGNAL \iplus[6]~18\ : std_logic;
SIGNAL \iplus[7]~19_combout\ : std_logic;
SIGNAL \U0[0]~feeder_combout\ : std_logic;
SIGNAL \U0[1]~feeder_combout\ : std_logic;
SIGNAL \U0[2]~0_combout\ : std_logic;
SIGNAL \U0[3]~1_combout\ : std_logic;
SIGNAL \U0[4]~feeder_combout\ : std_logic;
SIGNAL \U0[6]~feeder_combout\ : std_logic;
SIGNAL \U0[7]~feeder_combout\ : std_logic;
SIGNAL \U0[8]~feeder_combout\ : std_logic;
SIGNAL \U0[9]~feeder_combout\ : std_logic;
SIGNAL \U0[10]~feeder_combout\ : std_logic;
SIGNAL \U0[11]~feeder_combout\ : std_logic;
SIGNAL \U0[12]~feeder_combout\ : std_logic;
SIGNAL \U0[13]~feeder_combout\ : std_logic;
SIGNAL \U0[14]~feeder_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \zigout[0]~16_combout\ : std_logic;
SIGNAL \c6|LessThan0~1_cout\ : std_logic;
SIGNAL \c6|LessThan0~3_cout\ : std_logic;
SIGNAL \c6|LessThan0~5_cout\ : std_logic;
SIGNAL \c6|LessThan0~7_cout\ : std_logic;
SIGNAL \c6|LessThan0~9_cout\ : std_logic;
SIGNAL \c6|LessThan0~11_cout\ : std_logic;
SIGNAL \c6|LessThan0~13_cout\ : std_logic;
SIGNAL \c6|LessThan0~15_cout\ : std_logic;
SIGNAL \c6|LessThan0~17_cout\ : std_logic;
SIGNAL \c6|LessThan0~19_cout\ : std_logic;
SIGNAL \c6|LessThan0~21_cout\ : std_logic;
SIGNAL \c6|LessThan0~23_cout\ : std_logic;
SIGNAL \c6|LessThan0~25_cout\ : std_logic;
SIGNAL \c6|LessThan0~27_cout\ : std_logic;
SIGNAL \c6|LessThan0~29_cout\ : std_logic;
SIGNAL \c6|LessThan0~30_combout\ : std_logic;
SIGNAL \D2_1~q\ : std_logic;
SIGNAL \U1_1[3]~feeder_combout\ : std_logic;
SIGNAL \U1_2[3]~feeder_combout\ : std_logic;
SIGNAL \U1_2[2]~feeder_combout\ : std_logic;
SIGNAL \U1_1[7]~feeder_combout\ : std_logic;
SIGNAL \c2|D1out~0_combout\ : std_logic;
SIGNAL \U1_1[4]~feeder_combout\ : std_logic;
SIGNAL \U1_1[1]~feeder_combout\ : std_logic;
SIGNAL \c2|D1out~1_combout\ : std_logic;
SIGNAL \U1_1[6]~feeder_combout\ : std_logic;
SIGNAL \U1_2[6]~feeder_combout\ : std_logic;
SIGNAL \c2|D1out~2_combout\ : std_logic;
SIGNAL \D1_1~q\ : std_logic;
SIGNAL \zigout[0]~18_combout\ : std_logic;
SIGNAL \zigout[0]~reg0_q\ : std_logic;
SIGNAL \xu_1[1]~feeder_combout\ : std_logic;
SIGNAL \zigout[0]~17\ : std_logic;
SIGNAL \zigout[1]~19_combout\ : std_logic;
SIGNAL \zigout[1]~reg0_q\ : std_logic;
SIGNAL \xu_1[2]~feeder_combout\ : std_logic;
SIGNAL \zigout[1]~20\ : std_logic;
SIGNAL \zigout[2]~21_combout\ : std_logic;
SIGNAL \zigout[2]~reg0_q\ : std_logic;
SIGNAL \xu_1[3]~feeder_combout\ : std_logic;
SIGNAL \zigout[2]~22\ : std_logic;
SIGNAL \zigout[3]~23_combout\ : std_logic;
SIGNAL \zigout[3]~reg0_q\ : std_logic;
SIGNAL \xu_1[4]~feeder_combout\ : std_logic;
SIGNAL \zigout[3]~24\ : std_logic;
SIGNAL \zigout[4]~25_combout\ : std_logic;
SIGNAL \zigout[4]~reg0_q\ : std_logic;
SIGNAL \zigout[4]~26\ : std_logic;
SIGNAL \zigout[5]~27_combout\ : std_logic;
SIGNAL \zigout[5]~reg0_q\ : std_logic;
SIGNAL \zigout[5]~28\ : std_logic;
SIGNAL \zigout[6]~29_combout\ : std_logic;
SIGNAL \zigout[6]~reg0_q\ : std_logic;
SIGNAL \zigout[6]~30\ : std_logic;
SIGNAL \zigout[7]~31_combout\ : std_logic;
SIGNAL \zigout[7]~reg0_q\ : std_logic;
SIGNAL \xu_1[8]~feeder_combout\ : std_logic;
SIGNAL \zigout[7]~32\ : std_logic;
SIGNAL \zigout[8]~33_combout\ : std_logic;
SIGNAL \zigout[8]~reg0_q\ : std_logic;
SIGNAL \xu_1[9]~feeder_combout\ : std_logic;
SIGNAL \zigout[8]~34\ : std_logic;
SIGNAL \zigout[9]~35_combout\ : std_logic;
SIGNAL \zigout[9]~reg0_q\ : std_logic;
SIGNAL \xu_1[10]~feeder_combout\ : std_logic;
SIGNAL \zigout[9]~36\ : std_logic;
SIGNAL \zigout[10]~37_combout\ : std_logic;
SIGNAL \zigout[10]~reg0_q\ : std_logic;
SIGNAL \xu_1[11]~feeder_combout\ : std_logic;
SIGNAL \zigout[10]~38\ : std_logic;
SIGNAL \zigout[11]~39_combout\ : std_logic;
SIGNAL \zigout[11]~reg0_q\ : std_logic;
SIGNAL \zigout[11]~40\ : std_logic;
SIGNAL \zigout[12]~41_combout\ : std_logic;
SIGNAL \zigout[12]~reg0_q\ : std_logic;
SIGNAL \xu_1[13]~feeder_combout\ : std_logic;
SIGNAL \zigout[12]~42\ : std_logic;
SIGNAL \zigout[13]~43_combout\ : std_logic;
SIGNAL \zigout[13]~reg0_q\ : std_logic;
SIGNAL \zigout[13]~44\ : std_logic;
SIGNAL \zigout[14]~45_combout\ : std_logic;
SIGNAL \zigout[14]~reg0_q\ : std_logic;
SIGNAL \zigout[14]~46\ : std_logic;
SIGNAL \zigout[15]~47_combout\ : std_logic;
SIGNAL \zigout[15]~reg0_q\ : std_logic;
SIGNAL \xuout[0]~reg0_q\ : std_logic;
SIGNAL \xuout[1]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[1]~reg0_q\ : std_logic;
SIGNAL \xuout[2]~0_combout\ : std_logic;
SIGNAL \xuout[2]~reg0_q\ : std_logic;
SIGNAL \xuout[3]~1_combout\ : std_logic;
SIGNAL \xuout[3]~reg0_q\ : std_logic;
SIGNAL \xuout[4]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[4]~reg0_q\ : std_logic;
SIGNAL \xuout[5]~reg0_q\ : std_logic;
SIGNAL \xuout[6]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[6]~reg0_q\ : std_logic;
SIGNAL \xuout[7]~reg0_q\ : std_logic;
SIGNAL \xuout[8]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[8]~reg0_q\ : std_logic;
SIGNAL \xuout[9]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[9]~reg0_q\ : std_logic;
SIGNAL \xuout[10]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[10]~reg0_q\ : std_logic;
SIGNAL \xuout[11]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[11]~reg0_q\ : std_logic;
SIGNAL \xuout[12]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[12]~reg0_q\ : std_logic;
SIGNAL \xuout[13]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[13]~reg0_q\ : std_logic;
SIGNAL \xuout[14]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[14]~reg0_q\ : std_logic;
SIGNAL \xuout[15]~reg0_q\ : std_logic;
SIGNAL \xuout[16]~reg0_q\ : std_logic;
SIGNAL \xuout[17]~reg0_q\ : std_logic;
SIGNAL \xuout[18]~reg0_q\ : std_logic;
SIGNAL \xuout[19]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[19]~reg0_q\ : std_logic;
SIGNAL \xuout[20]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[20]~reg0_q\ : std_logic;
SIGNAL \xuout[21]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[21]~reg0_q\ : std_logic;
SIGNAL \xuout[22]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[22]~reg0_q\ : std_logic;
SIGNAL \xuout[23]~reg0_q\ : std_logic;
SIGNAL \xuout[24]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[24]~reg0_q\ : std_logic;
SIGNAL \xuout[25]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[25]~reg0_q\ : std_logic;
SIGNAL \xuout[26]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[26]~reg0_q\ : std_logic;
SIGNAL \xuout[27]~reg0_q\ : std_logic;
SIGNAL \xuout[28]~reg0_q\ : std_logic;
SIGNAL \xuout[29]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[29]~reg0_q\ : std_logic;
SIGNAL \xuout[30]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[30]~reg0_q\ : std_logic;
SIGNAL \xuout[31]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[31]~reg0_q\ : std_logic;
SIGNAL \xuout[32]~reg0feeder_combout\ : std_logic;
SIGNAL \xuout[32]~reg0_q\ : std_logic;
SIGNAL xu : std_logic_vector(15 DOWNTO 0);
SIGNAL \c3|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL xiplus_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL \c1|shift_register\ : std_logic_vector(32 DOWNTO 0);
SIGNAL iplus : std_logic_vector(7 DOWNTO 0);
SIGNAL U1_3 : std_logic_vector(15 DOWNTO 0);
SIGNAL xu_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL U1_2 : std_logic_vector(15 DOWNTO 0);
SIGNAL U1_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL U1 : std_logic_vector(15 DOWNTO 0);
SIGNAL U0 : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_clock <= i_clock;
ww_reset <= reset;
ww_start <= start;
zigout <= ww_zigout;
xuout <= ww_xuout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT31\ & \Mult0|auto_generated|mac_mult1~DATAOUT30\ & \Mult0|auto_generated|mac_mult1~DATAOUT29\ & \Mult0|auto_generated|mac_mult1~DATAOUT28\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT27\ & \Mult0|auto_generated|mac_mult1~DATAOUT26\ & \Mult0|auto_generated|mac_mult1~DATAOUT25\ & \Mult0|auto_generated|mac_mult1~DATAOUT24\ & \Mult0|auto_generated|mac_mult1~DATAOUT23\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT22\ & \Mult0|auto_generated|mac_mult1~DATAOUT21\ & \Mult0|auto_generated|mac_mult1~DATAOUT20\ & \Mult0|auto_generated|mac_mult1~DATAOUT19\ & \Mult0|auto_generated|mac_mult1~DATAOUT18\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT17\ & \Mult0|auto_generated|mac_mult1~DATAOUT16\ & \Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT12\ & \Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT7\ & \Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT2\ & \Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~3\ & \Mult0|auto_generated|mac_mult1~2\ & \Mult0|auto_generated|mac_mult1~1\ & 
\Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
xu(0) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
xu(1) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
xu(2) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
xu(3) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
xu(4) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
xu(5) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
xu(6) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
xu(7) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
xu(8) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
xu(9) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
xu(10) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
xu(11) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
xu(12) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
xu(13) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
xu(14) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
xu(15) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\c3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (U1(7) & U1(6) & U1(5) & U1(4) & U1(3) & U1(2) & U1(1) & U1(0));

\c3|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (iplus(7) & iplus(6) & iplus(5) & iplus(4) & iplus(3) & iplus(2) & iplus(1) & iplus(0));

\c3|altsyncram_component|auto_generated|q_a\(0) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\c3|altsyncram_component|auto_generated|q_a\(1) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\c3|altsyncram_component|auto_generated|q_a\(2) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\c3|altsyncram_component|auto_generated|q_a\(3) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\c3|altsyncram_component|auto_generated|q_a\(4) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\c3|altsyncram_component|auto_generated|q_a\(5) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\c3|altsyncram_component|auto_generated|q_a\(6) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\c3|altsyncram_component|auto_generated|q_a\(7) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\c3|altsyncram_component|auto_generated|q_a\(8) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\c3|altsyncram_component|auto_generated|q_a\(9) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\c3|altsyncram_component|auto_generated|q_a\(10) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\c3|altsyncram_component|auto_generated|q_a\(11) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\c3|altsyncram_component|auto_generated|q_a\(12) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\c3|altsyncram_component|auto_generated|q_a\(13) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\c3|altsyncram_component|auto_generated|q_a\(14) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\c3|altsyncram_component|auto_generated|q_a\(15) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

xiplus_1(0) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
xiplus_1(1) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
xiplus_1(2) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
xiplus_1(3) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
xiplus_1(4) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
xiplus_1(5) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
xiplus_1(6) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
xiplus_1(7) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
xiplus_1(8) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
xiplus_1(9) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
xiplus_1(10) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
xiplus_1(11) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
xiplus_1(12) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
xiplus_1(13) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
xiplus_1(14) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
xiplus_1(15) <= \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\c3|altsyncram_component|auto_generated|q_a\(15) & \c3|altsyncram_component|auto_generated|q_a\(14) & \c3|altsyncram_component|auto_generated|q_a\(13) & \c3|altsyncram_component|auto_generated|q_a\(12) & 
\c3|altsyncram_component|auto_generated|q_a\(11) & \c3|altsyncram_component|auto_generated|q_a\(10) & \c3|altsyncram_component|auto_generated|q_a\(9) & \c3|altsyncram_component|auto_generated|q_a\(8) & 
\c3|altsyncram_component|auto_generated|q_a\(7) & \c3|altsyncram_component|auto_generated|q_a\(6) & \c3|altsyncram_component|auto_generated|q_a\(5) & \c3|altsyncram_component|auto_generated|q_a\(4) & 
\c3|altsyncram_component|auto_generated|q_a\(3) & \c3|altsyncram_component|auto_generated|q_a\(2) & \c3|altsyncram_component|auto_generated|q_a\(1) & \c3|altsyncram_component|auto_generated|q_a\(0) & gnd & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (U0(15) & U0(14) & U0(13) & U0(12) & U0(11) & U0(10) & U0(9) & U0(8) & U0(7) & U0(6) & U0(5) & U0(4) & U0(3) & U0(2) & U0(1) & U0(0) & gnd & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\i_clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X79_Y0_N2
\zigout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zigout[0]~reg0_q\,
	devoe => ww_devoe,
	o => \zigout[0]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\zigout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zigout[1]~reg0_q\,
	devoe => ww_devoe,
	o => \zigout[1]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\zigout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zigout[2]~reg0_q\,
	devoe => ww_devoe,
	o => \zigout[2]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\zigout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zigout[3]~reg0_q\,
	devoe => ww_devoe,
	o => \zigout[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\zigout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zigout[4]~reg0_q\,
	devoe => ww_devoe,
	o => \zigout[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\zigout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zigout[5]~reg0_q\,
	devoe => ww_devoe,
	o => \zigout[5]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\zigout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zigout[6]~reg0_q\,
	devoe => ww_devoe,
	o => \zigout[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\zigout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zigout[7]~reg0_q\,
	devoe => ww_devoe,
	o => \zigout[7]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\zigout[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zigout[8]~reg0_q\,
	devoe => ww_devoe,
	o => \zigout[8]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\zigout[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zigout[9]~reg0_q\,
	devoe => ww_devoe,
	o => \zigout[9]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\zigout[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zigout[10]~reg0_q\,
	devoe => ww_devoe,
	o => \zigout[10]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\zigout[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zigout[11]~reg0_q\,
	devoe => ww_devoe,
	o => \zigout[11]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\zigout[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zigout[12]~reg0_q\,
	devoe => ww_devoe,
	o => \zigout[12]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\zigout[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zigout[13]~reg0_q\,
	devoe => ww_devoe,
	o => \zigout[13]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\zigout[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zigout[14]~reg0_q\,
	devoe => ww_devoe,
	o => \zigout[14]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\zigout[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \zigout[15]~reg0_q\,
	devoe => ww_devoe,
	o => \zigout[15]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\xuout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[0]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\xuout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[1]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[1]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\xuout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[2]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\xuout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[3]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\xuout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[4]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\xuout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[5]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[5]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\xuout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[6]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\xuout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[7]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[7]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\xuout[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[8]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[8]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\xuout[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[9]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[9]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\xuout[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[10]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[10]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\xuout[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[11]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[11]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\xuout[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[12]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[12]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\xuout[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[13]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[13]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\xuout[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[14]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[14]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\xuout[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[15]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[15]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\xuout[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[16]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[16]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\xuout[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[17]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[17]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\xuout[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[18]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[18]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\xuout[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[19]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[19]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\xuout[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[20]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[20]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\xuout[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[21]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[21]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\xuout[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[22]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[22]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\xuout[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[23]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[23]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\xuout[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[24]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[24]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\xuout[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[25]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[25]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\xuout[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[26]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[26]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\xuout[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[27]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[27]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\xuout[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[28]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[28]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\xuout[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[29]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[29]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\xuout[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[30]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[30]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\xuout[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[31]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[31]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\xuout[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \xuout[32]~reg0_q\,
	devoe => ww_devoe,
	o => \xuout[32]~output_o\);

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

-- Location: LCCOMB_X74_Y1_N0
\c1|shift_register~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register~11_combout\ = \c1|shift_register\(18) $ (!\c1|shift_register\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c1|shift_register\(18),
	datad => \c1|shift_register\(31),
	combout => \c1|shift_register~11_combout\);

-- Location: FF_X74_Y1_N1
\c1|shift_register[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(11));

-- Location: LCCOMB_X74_Y1_N18
\c1|shift_register[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register[24]~feeder_combout\ = \c1|shift_register\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(11),
	combout => \c1|shift_register[24]~feeder_combout\);

-- Location: FF_X74_Y1_N19
\c1|shift_register[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(24));

-- Location: LCCOMB_X74_Y1_N2
\c1|shift_register~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register~4_combout\ = \c1|shift_register\(24) $ (!\c1|shift_register\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c1|shift_register\(24),
	datad => \c1|shift_register\(11),
	combout => \c1|shift_register~4_combout\);

-- Location: FF_X74_Y1_N3
\c1|shift_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(4));

-- Location: LCCOMB_X74_Y1_N6
\c1|shift_register[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register[17]~feeder_combout\ = \c1|shift_register\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(4),
	combout => \c1|shift_register[17]~feeder_combout\);

-- Location: FF_X74_Y1_N7
\c1|shift_register[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(17));

-- Location: FF_X82_Y1_N19
\c1|shift_register[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \c1|shift_register\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(30));

-- Location: LCCOMB_X82_Y1_N2
\c1|shift_register~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register~10_combout\ = \c1|shift_register\(17) $ (!\c1|shift_register\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c1|shift_register\(17),
	datad => \c1|shift_register\(30),
	combout => \c1|shift_register~10_combout\);

-- Location: FF_X82_Y1_N3
\c1|shift_register[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(10));

-- Location: LCCOMB_X82_Y1_N10
\c1|shift_register[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register[23]~feeder_combout\ = \c1|shift_register\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(10),
	combout => \c1|shift_register[23]~feeder_combout\);

-- Location: FF_X82_Y1_N11
\c1|shift_register[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(23));

-- Location: LCCOMB_X82_Y1_N22
\c1|shift_register~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register~3_combout\ = \c1|shift_register\(10) $ (\c1|shift_register\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c1|shift_register\(10),
	datad => \c1|shift_register\(23),
	combout => \c1|shift_register~3_combout\);

-- Location: FF_X82_Y1_N23
\c1|shift_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(3));

-- Location: LCCOMB_X82_Y1_N4
\c1|shift_register[16]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register[16]~25_combout\ = !\c1|shift_register\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c1|shift_register\(3),
	combout => \c1|shift_register[16]~25_combout\);

-- Location: FF_X82_Y1_N5
\c1|shift_register[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register[16]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(16));

-- Location: FF_X82_Y1_N1
\c1|shift_register[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \c1|shift_register\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(29));

-- Location: LCCOMB_X82_Y1_N20
\c1|shift_register~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register~9_combout\ = \c1|shift_register\(29) $ (!\c1|shift_register\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c1|shift_register\(29),
	datac => \c1|shift_register\(16),
	combout => \c1|shift_register~9_combout\);

-- Location: FF_X82_Y1_N21
\c1|shift_register[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(9));

-- Location: LCCOMB_X70_Y1_N12
\c1|shift_register[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register[22]~feeder_combout\ = \c1|shift_register\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(9),
	combout => \c1|shift_register[22]~feeder_combout\);

-- Location: FF_X70_Y1_N13
\c1|shift_register[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(22));

-- Location: LCCOMB_X70_Y1_N14
\c1|shift_register~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register~2_combout\ = \c1|shift_register\(22) $ (\c1|shift_register\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|shift_register\(22),
	datad => \c1|shift_register\(9),
	combout => \c1|shift_register~2_combout\);

-- Location: FF_X70_Y1_N15
\c1|shift_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(2));

-- Location: LCCOMB_X70_Y1_N30
\c1|shift_register[15]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register[15]~24_combout\ = !\c1|shift_register\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c1|shift_register\(2),
	combout => \c1|shift_register[15]~24_combout\);

-- Location: FF_X70_Y1_N31
\c1|shift_register[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register[15]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(15));

-- Location: FF_X70_Y1_N23
\c1|shift_register[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \c1|shift_register\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(28));

-- Location: LCCOMB_X70_Y1_N28
\c1|shift_register~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register~8_combout\ = \c1|shift_register\(15) $ (!\c1|shift_register\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|shift_register\(15),
	datac => \c1|shift_register\(28),
	combout => \c1|shift_register~8_combout\);

-- Location: FF_X70_Y1_N29
\c1|shift_register[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(8));

-- Location: LCCOMB_X67_Y1_N10
\c1|shift_register[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register[21]~feeder_combout\ = \c1|shift_register\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(8),
	combout => \c1|shift_register[21]~feeder_combout\);

-- Location: FF_X67_Y1_N11
\c1|shift_register[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(21));

-- Location: LCCOMB_X67_Y1_N0
\c1|shift_register~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register~1_combout\ = \c1|shift_register\(21) $ (!\c1|shift_register\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|shift_register\(21),
	datad => \c1|shift_register\(8),
	combout => \c1|shift_register~1_combout\);

-- Location: FF_X67_Y1_N1
\c1|shift_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(1));

-- Location: LCCOMB_X67_Y1_N20
\c1|shift_register[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register[14]~feeder_combout\ = \c1|shift_register\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(1),
	combout => \c1|shift_register[14]~feeder_combout\);

-- Location: FF_X67_Y1_N21
\c1|shift_register[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(14));

-- Location: LCCOMB_X67_Y1_N8
\c1|shift_register[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register[27]~feeder_combout\ = \c1|shift_register\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(14),
	combout => \c1|shift_register[27]~feeder_combout\);

-- Location: FF_X67_Y1_N9
\c1|shift_register[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(27));

-- Location: LCCOMB_X67_Y1_N14
\c1|shift_register~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register~7_combout\ = \c1|shift_register\(27) $ (!\c1|shift_register\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c1|shift_register\(27),
	datad => \c1|shift_register\(14),
	combout => \c1|shift_register~7_combout\);

-- Location: FF_X67_Y1_N15
\c1|shift_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(7));

-- Location: LCCOMB_X68_Y1_N18
\c1|shift_register[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register[20]~feeder_combout\ = \c1|shift_register\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(7),
	combout => \c1|shift_register[20]~feeder_combout\);

-- Location: FF_X68_Y1_N19
\c1|shift_register[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(20));

-- Location: LCCOMB_X68_Y1_N12
\c1|shift_register~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register~0_combout\ = \c1|shift_register\(7) $ (!\c1|shift_register\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|shift_register\(7),
	datad => \c1|shift_register\(20),
	combout => \c1|shift_register~0_combout\);

-- Location: FF_X68_Y1_N13
\c1|shift_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(0));

-- Location: LCCOMB_X68_Y1_N20
\c1|shift_register[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register[13]~feeder_combout\ = \c1|shift_register\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(0),
	combout => \c1|shift_register[13]~feeder_combout\);

-- Location: FF_X68_Y1_N21
\c1|shift_register[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(13));

-- Location: LCCOMB_X68_Y1_N24
\c1|shift_register[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register[26]~feeder_combout\ = \c1|shift_register\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(13),
	combout => \c1|shift_register[26]~feeder_combout\);

-- Location: FF_X68_Y1_N25
\c1|shift_register[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(26));

-- Location: LCCOMB_X68_Y1_N6
\c1|shift_register~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register~6_combout\ = \c1|shift_register\(13) $ (!\c1|shift_register\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c1|shift_register\(13),
	datad => \c1|shift_register\(26),
	combout => \c1|shift_register~6_combout\);

-- Location: FF_X68_Y1_N7
\c1|shift_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(6));

-- Location: LCCOMB_X72_Y1_N24
\c1|shift_register[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register[19]~feeder_combout\ = \c1|shift_register\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(6),
	combout => \c1|shift_register[19]~feeder_combout\);

-- Location: FF_X72_Y1_N25
\c1|shift_register[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(19));

-- Location: LCCOMB_X72_Y1_N12
\c1|shift_register[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register[32]~feeder_combout\ = \c1|shift_register\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(19),
	combout => \c1|shift_register[32]~feeder_combout\);

-- Location: FF_X72_Y1_N13
\c1|shift_register[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(32));

-- Location: LCCOMB_X72_Y1_N6
\c1|shift_register~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register~12_combout\ = \c1|shift_register\(32) $ (!\c1|shift_register\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|shift_register\(32),
	datad => \c1|shift_register\(19),
	combout => \c1|shift_register~12_combout\);

-- Location: FF_X72_Y1_N7
\c1|shift_register[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(12));

-- Location: LCCOMB_X72_Y1_N10
\c1|shift_register[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register[25]~feeder_combout\ = \c1|shift_register\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(12),
	combout => \c1|shift_register[25]~feeder_combout\);

-- Location: FF_X72_Y1_N11
\c1|shift_register[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(25));

-- Location: LCCOMB_X72_Y1_N8
\c1|shift_register~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register~5_combout\ = \c1|shift_register\(25) $ (!\c1|shift_register\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|shift_register\(25),
	datad => \c1|shift_register\(12),
	combout => \c1|shift_register~5_combout\);

-- Location: FF_X72_Y1_N9
\c1|shift_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(5));

-- Location: LCCOMB_X74_Y1_N16
\c1|shift_register[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register[18]~feeder_combout\ = \c1|shift_register\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(5),
	combout => \c1|shift_register[18]~feeder_combout\);

-- Location: FF_X74_Y1_N17
\c1|shift_register[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(18));

-- Location: LCCOMB_X74_Y1_N20
\c1|shift_register[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c1|shift_register[31]~feeder_combout\ = \c1|shift_register\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(18),
	combout => \c1|shift_register[31]~feeder_combout\);

-- Location: FF_X74_Y1_N21
\c1|shift_register[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c1|shift_register[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|shift_register\(31));

-- Location: LCCOMB_X74_Y1_N12
\U1[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[15]~feeder_combout\ = \c1|shift_register\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(31),
	combout => \U1[15]~feeder_combout\);

-- Location: IOIBUF_X115_Y37_N1
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: FF_X74_Y1_N13
\U1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1[15]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1(15));

-- Location: LCCOMB_X74_Y1_N22
\U1_1[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_1[15]~feeder_combout\ = U1(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => U1(15),
	combout => \U1_1[15]~feeder_combout\);

-- Location: FF_X74_Y1_N23
\U1_1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1_1[15]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_1(15));

-- Location: LCCOMB_X75_Y1_N6
\U1_2[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_2[15]~feeder_combout\ = U1_1(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => U1_1(15),
	combout => \U1_2[15]~feeder_combout\);

-- Location: FF_X75_Y1_N7
\U1_2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1_2[15]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_2(15));

-- Location: LCCOMB_X79_Y1_N10
\U1_3[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_3[15]~feeder_combout\ = U1_2(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => U1_2(15),
	combout => \U1_3[15]~feeder_combout\);

-- Location: FF_X79_Y1_N11
\U1_3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1_3[15]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_3(15));

-- Location: LCCOMB_X79_Y1_N2
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

-- Location: LCCOMB_X76_Y1_N22
\U1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[0]~feeder_combout\ = \c1|shift_register\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(16),
	combout => \U1[0]~feeder_combout\);

-- Location: FF_X76_Y1_N23
\U1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1[0]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1(0));

-- Location: LCCOMB_X74_Y1_N8
\U1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[1]~feeder_combout\ = \c1|shift_register\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(17),
	combout => \U1[1]~feeder_combout\);

-- Location: FF_X74_Y1_N9
\U1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1[1]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1(1));

-- Location: LCCOMB_X74_Y1_N14
\U1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[2]~feeder_combout\ = \c1|shift_register\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(18),
	combout => \U1[2]~feeder_combout\);

-- Location: FF_X74_Y1_N15
\U1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1[2]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1(2));

-- Location: FF_X75_Y1_N1
\U1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \c1|shift_register\(19),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1(3));

-- Location: FF_X75_Y1_N3
\U1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \c1|shift_register\(20),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1(4));

-- Location: LCCOMB_X75_Y1_N30
\U1[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[5]~feeder_combout\ = \c1|shift_register\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(21),
	combout => \U1[5]~feeder_combout\);

-- Location: FF_X75_Y1_N31
\U1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1[5]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1(5));

-- Location: LCCOMB_X75_Y1_N24
\U1[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[6]~feeder_combout\ = \c1|shift_register\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(22),
	combout => \U1[6]~feeder_combout\);

-- Location: FF_X75_Y1_N25
\U1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1[6]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1(6));

-- Location: LCCOMB_X76_Y1_N6
\U1[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[7]~feeder_combout\ = \c1|shift_register\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(23),
	combout => \U1[7]~feeder_combout\);

-- Location: FF_X76_Y1_N7
\U1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1[7]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1(7));

-- Location: LCCOMB_X79_Y1_N6
\iplus[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \iplus[0]~21_combout\ = !\c1|shift_register\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(16),
	combout => \iplus[0]~21_combout\);

-- Location: FF_X79_Y1_N7
\iplus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \iplus[0]~21_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iplus(0));

-- Location: LCCOMB_X75_Y1_N8
\iplus[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \iplus[1]~7_combout\ = (\c1|shift_register\(16) & (\c1|shift_register\(17) $ (VCC))) # (!\c1|shift_register\(16) & (\c1|shift_register\(17) & VCC))
-- \iplus[1]~8\ = CARRY((\c1|shift_register\(16) & \c1|shift_register\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c1|shift_register\(16),
	datab => \c1|shift_register\(17),
	datad => VCC,
	combout => \iplus[1]~7_combout\,
	cout => \iplus[1]~8\);

-- Location: FF_X75_Y1_N9
\iplus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \iplus[1]~7_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iplus(1));

-- Location: LCCOMB_X75_Y1_N10
\iplus[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \iplus[2]~9_combout\ = (\c1|shift_register\(18) & (!\iplus[1]~8\)) # (!\c1|shift_register\(18) & ((\iplus[1]~8\) # (GND)))
-- \iplus[2]~10\ = CARRY((!\iplus[1]~8\) # (!\c1|shift_register\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c1|shift_register\(18),
	datad => VCC,
	cin => \iplus[1]~8\,
	combout => \iplus[2]~9_combout\,
	cout => \iplus[2]~10\);

-- Location: FF_X75_Y1_N11
\iplus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \iplus[2]~9_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iplus(2));

-- Location: LCCOMB_X75_Y1_N12
\iplus[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \iplus[3]~11_combout\ = (\c1|shift_register\(19) & (\iplus[2]~10\ $ (GND))) # (!\c1|shift_register\(19) & (!\iplus[2]~10\ & VCC))
-- \iplus[3]~12\ = CARRY((\c1|shift_register\(19) & !\iplus[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c1|shift_register\(19),
	datad => VCC,
	cin => \iplus[2]~10\,
	combout => \iplus[3]~11_combout\,
	cout => \iplus[3]~12\);

-- Location: FF_X75_Y1_N13
\iplus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \iplus[3]~11_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iplus(3));

-- Location: LCCOMB_X75_Y1_N14
\iplus[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \iplus[4]~13_combout\ = (\c1|shift_register\(20) & (!\iplus[3]~12\)) # (!\c1|shift_register\(20) & ((\iplus[3]~12\) # (GND)))
-- \iplus[4]~14\ = CARRY((!\iplus[3]~12\) # (!\c1|shift_register\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c1|shift_register\(20),
	datad => VCC,
	cin => \iplus[3]~12\,
	combout => \iplus[4]~13_combout\,
	cout => \iplus[4]~14\);

-- Location: FF_X75_Y1_N15
\iplus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \iplus[4]~13_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iplus(4));

-- Location: LCCOMB_X75_Y1_N16
\iplus[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \iplus[5]~15_combout\ = (\c1|shift_register\(21) & (\iplus[4]~14\ $ (GND))) # (!\c1|shift_register\(21) & (!\iplus[4]~14\ & VCC))
-- \iplus[5]~16\ = CARRY((\c1|shift_register\(21) & !\iplus[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c1|shift_register\(21),
	datad => VCC,
	cin => \iplus[4]~14\,
	combout => \iplus[5]~15_combout\,
	cout => \iplus[5]~16\);

-- Location: FF_X75_Y1_N17
\iplus[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \iplus[5]~15_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iplus(5));

-- Location: LCCOMB_X75_Y1_N18
\iplus[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \iplus[6]~17_combout\ = (\c1|shift_register\(22) & (!\iplus[5]~16\)) # (!\c1|shift_register\(22) & ((\iplus[5]~16\) # (GND)))
-- \iplus[6]~18\ = CARRY((!\iplus[5]~16\) # (!\c1|shift_register\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \c1|shift_register\(22),
	datad => VCC,
	cin => \iplus[5]~16\,
	combout => \iplus[6]~17_combout\,
	cout => \iplus[6]~18\);

-- Location: FF_X75_Y1_N19
\iplus[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \iplus[6]~17_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iplus(6));

-- Location: LCCOMB_X75_Y1_N20
\iplus[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \iplus[7]~19_combout\ = \iplus[6]~18\ $ (!\c1|shift_register\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(23),
	cin => \iplus[6]~18\,
	combout => \iplus[7]~19_combout\);

-- Location: FF_X75_Y1_N21
\iplus[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \iplus[7]~19_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => iplus(7));

-- Location: M9K_X78_Y1_N0
\c3|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0371C1251055F418020688C1C00076B01F320826821EA08C94244F095A8267809DEC28740A58C2A4B0ACAC2C040B3602DA50B9B82F310BFC430AC0C58C32160C",
	mem_init1 => X"B1C33740D07834C50D5A4360B0DAAC37480DF90387D0E45039AA0E8F43ACF0ED803BEE0F1F03D080F6483E1C0FA903F2B0FEC44035102E4413C106F4423E10AF8433D10EEC4439112D44531116B0462711A80471A11E48480A1220848F8125BC49E5129684ACF12D0C4BB7130AC4C9E134444D84137D84E6713B644F4A13EEC502C14270510C145F051EB1496C52CA14CE453A81505C5485153D0556215740563E15AB0571A15E2057F51618C58D0164F859AC168645A8716BD05B6216F3C5C3D172A85D18176185DF3179845ECF17CF45FAB180686088183DC616518750624318AC8632218E446401191C464E11954865C2198CC66A419C58678819FE8686C1",
	mem_init0 => X"A37C69521A7146A391AAB46B221AE5C6C0C1B2086CF81B5BC6DE61B9786ED61BD386FC71C10470BB1C4D871B21C8B872AA1CCA073A51D09074A31D48C75A41D89876A81DCAC77AF1E0D078BA1E50079C81E9447ADA1ED947BF01F1F47D0B1F6647E2A1FAEC7F4E1FF8480772043481A5208FC82DA20DDC8415212D48556217E8869F21D1C87F02226C8949227E48AAB22D808C17233448D8D239348F0F23F54909E245A8923A24C3893E62530495A225A1C97702617C9954269389B4F271589D64279E49F97282F4A1ED28C98A46B296F0A7192A214AA012AE38AD2E2BB90B0B32CA78B4AA2DB6CB9392EF34BEA130720C558325DCCE5F351FCDCC13A778E9DE",
	clk0_output_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Ziggurat_LUT.mif",
	init_file_layout => "port_a",
	logical_ram_name => "zigLUT:c3|altsyncram:altsyncram_component|altsyncram_ujt3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
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
	ena0 => \start~input_o\,
	portadatain => \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \c3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \c3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \c3|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X68_Y1_N22
\U0[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0[0]~feeder_combout\ = \c1|shift_register\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(0),
	combout => \U0[0]~feeder_combout\);

-- Location: FF_X68_Y1_N23
\U0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U0[0]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U0(0));

-- Location: LCCOMB_X67_Y1_N18
\U0[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0[1]~feeder_combout\ = \c1|shift_register\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(1),
	combout => \U0[1]~feeder_combout\);

-- Location: FF_X67_Y1_N19
\U0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U0[1]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U0(1));

-- Location: LCCOMB_X70_Y1_N8
\U0[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0[2]~0_combout\ = !\c1|shift_register\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c1|shift_register\(2),
	combout => \U0[2]~0_combout\);

-- Location: FF_X70_Y1_N9
\U0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U0[2]~0_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U0(2));

-- Location: LCCOMB_X82_Y1_N24
\U0[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0[3]~1_combout\ = !\c1|shift_register\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c1|shift_register\(3),
	combout => \U0[3]~1_combout\);

-- Location: FF_X82_Y1_N25
\U0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U0[3]~1_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U0(3));

-- Location: LCCOMB_X74_Y1_N10
\U0[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0[4]~feeder_combout\ = \c1|shift_register\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(4),
	combout => \U0[4]~feeder_combout\);

-- Location: FF_X74_Y1_N11
\U0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U0[4]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U0(4));

-- Location: FF_X72_Y1_N3
\U0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \c1|shift_register\(5),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U0(5));

-- Location: LCCOMB_X72_Y1_N16
\U0[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0[6]~feeder_combout\ = \c1|shift_register\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(6),
	combout => \U0[6]~feeder_combout\);

-- Location: FF_X72_Y1_N17
\U0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U0[6]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U0(6));

-- Location: LCCOMB_X68_Y1_N4
\U0[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0[7]~feeder_combout\ = \c1|shift_register\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(7),
	combout => \U0[7]~feeder_combout\);

-- Location: FF_X68_Y1_N5
\U0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U0[7]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U0(7));

-- Location: LCCOMB_X70_Y1_N10
\U0[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0[8]~feeder_combout\ = \c1|shift_register\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(8),
	combout => \U0[8]~feeder_combout\);

-- Location: FF_X70_Y1_N11
\U0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U0[8]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U0(8));

-- Location: LCCOMB_X70_Y1_N4
\U0[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0[9]~feeder_combout\ = \c1|shift_register\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(9),
	combout => \U0[9]~feeder_combout\);

-- Location: FF_X70_Y1_N5
\U0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U0[9]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U0(9));

-- Location: LCCOMB_X82_Y1_N26
\U0[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0[10]~feeder_combout\ = \c1|shift_register\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(10),
	combout => \U0[10]~feeder_combout\);

-- Location: FF_X82_Y1_N27
\U0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U0[10]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U0(10));

-- Location: LCCOMB_X74_Y1_N4
\U0[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0[11]~feeder_combout\ = \c1|shift_register\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(11),
	combout => \U0[11]~feeder_combout\);

-- Location: FF_X74_Y1_N5
\U0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U0[11]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U0(11));

-- Location: LCCOMB_X72_Y1_N14
\U0[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0[12]~feeder_combout\ = \c1|shift_register\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(12),
	combout => \U0[12]~feeder_combout\);

-- Location: FF_X72_Y1_N15
\U0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U0[12]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U0(12));

-- Location: LCCOMB_X68_Y1_N10
\U0[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0[13]~feeder_combout\ = \c1|shift_register\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(13),
	combout => \U0[13]~feeder_combout\);

-- Location: FF_X68_Y1_N11
\U0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U0[13]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U0(13));

-- Location: LCCOMB_X67_Y1_N16
\U0[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0[14]~feeder_combout\ = \c1|shift_register\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(14),
	combout => \U0[14]~feeder_combout\);

-- Location: FF_X67_Y1_N17
\U0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U0[14]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U0(14));

-- Location: FF_X70_Y1_N19
\U0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \c1|shift_register\(15),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U0(15));

-- Location: DSPMULT_X71_Y1_N0
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \i_clock~inputclkctrl_outclk\,
	aclr => GND,
	ena => \start~input_o\,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X71_Y1_N2
\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	aclr => GND,
	ena => \start~input_o\,
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: FF_X79_Y1_N5
\xu_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => xu(0),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xu_1(0));

-- Location: LCCOMB_X79_Y1_N4
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = xu_1(0) $ (U1_3(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => xu_1(0),
	datad => U1_3(15),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X80_Y1_N0
\zigout[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \zigout[0]~16_combout\ = (U1_3(15) & (\Add1~0_combout\ $ (VCC))) # (!U1_3(15) & (\Add1~0_combout\ & VCC))
-- \zigout[0]~17\ = CARRY((U1_3(15) & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_3(15),
	datab => \Add1~0_combout\,
	datad => VCC,
	combout => \zigout[0]~16_combout\,
	cout => \zigout[0]~17\);

-- Location: LCCOMB_X77_Y1_N0
\c6|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6|LessThan0~1_cout\ = CARRY((!xu(0) & xiplus_1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu(0),
	datab => xiplus_1(0),
	datad => VCC,
	cout => \c6|LessThan0~1_cout\);

-- Location: LCCOMB_X77_Y1_N2
\c6|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6|LessThan0~3_cout\ = CARRY((xiplus_1(1) & (xu(1) & !\c6|LessThan0~1_cout\)) # (!xiplus_1(1) & ((xu(1)) # (!\c6|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xiplus_1(1),
	datab => xu(1),
	datad => VCC,
	cin => \c6|LessThan0~1_cout\,
	cout => \c6|LessThan0~3_cout\);

-- Location: LCCOMB_X77_Y1_N4
\c6|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6|LessThan0~5_cout\ = CARRY((xu(2) & (xiplus_1(2) & !\c6|LessThan0~3_cout\)) # (!xu(2) & ((xiplus_1(2)) # (!\c6|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu(2),
	datab => xiplus_1(2),
	datad => VCC,
	cin => \c6|LessThan0~3_cout\,
	cout => \c6|LessThan0~5_cout\);

-- Location: LCCOMB_X77_Y1_N6
\c6|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6|LessThan0~7_cout\ = CARRY((xu(3) & ((!\c6|LessThan0~5_cout\) # (!xiplus_1(3)))) # (!xu(3) & (!xiplus_1(3) & !\c6|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu(3),
	datab => xiplus_1(3),
	datad => VCC,
	cin => \c6|LessThan0~5_cout\,
	cout => \c6|LessThan0~7_cout\);

-- Location: LCCOMB_X77_Y1_N8
\c6|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6|LessThan0~9_cout\ = CARRY((xu(4) & (xiplus_1(4) & !\c6|LessThan0~7_cout\)) # (!xu(4) & ((xiplus_1(4)) # (!\c6|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu(4),
	datab => xiplus_1(4),
	datad => VCC,
	cin => \c6|LessThan0~7_cout\,
	cout => \c6|LessThan0~9_cout\);

-- Location: LCCOMB_X77_Y1_N10
\c6|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6|LessThan0~11_cout\ = CARRY((xu(5) & ((!\c6|LessThan0~9_cout\) # (!xiplus_1(5)))) # (!xu(5) & (!xiplus_1(5) & !\c6|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu(5),
	datab => xiplus_1(5),
	datad => VCC,
	cin => \c6|LessThan0~9_cout\,
	cout => \c6|LessThan0~11_cout\);

-- Location: LCCOMB_X77_Y1_N12
\c6|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6|LessThan0~13_cout\ = CARRY((xu(6) & (xiplus_1(6) & !\c6|LessThan0~11_cout\)) # (!xu(6) & ((xiplus_1(6)) # (!\c6|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu(6),
	datab => xiplus_1(6),
	datad => VCC,
	cin => \c6|LessThan0~11_cout\,
	cout => \c6|LessThan0~13_cout\);

-- Location: LCCOMB_X77_Y1_N14
\c6|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6|LessThan0~15_cout\ = CARRY((xiplus_1(7) & (xu(7) & !\c6|LessThan0~13_cout\)) # (!xiplus_1(7) & ((xu(7)) # (!\c6|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xiplus_1(7),
	datab => xu(7),
	datad => VCC,
	cin => \c6|LessThan0~13_cout\,
	cout => \c6|LessThan0~15_cout\);

-- Location: LCCOMB_X77_Y1_N16
\c6|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6|LessThan0~17_cout\ = CARRY((xu(8) & (xiplus_1(8) & !\c6|LessThan0~15_cout\)) # (!xu(8) & ((xiplus_1(8)) # (!\c6|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu(8),
	datab => xiplus_1(8),
	datad => VCC,
	cin => \c6|LessThan0~15_cout\,
	cout => \c6|LessThan0~17_cout\);

-- Location: LCCOMB_X77_Y1_N18
\c6|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6|LessThan0~19_cout\ = CARRY((xu(9) & ((!\c6|LessThan0~17_cout\) # (!xiplus_1(9)))) # (!xu(9) & (!xiplus_1(9) & !\c6|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu(9),
	datab => xiplus_1(9),
	datad => VCC,
	cin => \c6|LessThan0~17_cout\,
	cout => \c6|LessThan0~19_cout\);

-- Location: LCCOMB_X77_Y1_N20
\c6|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6|LessThan0~21_cout\ = CARRY((xiplus_1(10) & ((!\c6|LessThan0~19_cout\) # (!xu(10)))) # (!xiplus_1(10) & (!xu(10) & !\c6|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xiplus_1(10),
	datab => xu(10),
	datad => VCC,
	cin => \c6|LessThan0~19_cout\,
	cout => \c6|LessThan0~21_cout\);

-- Location: LCCOMB_X77_Y1_N22
\c6|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6|LessThan0~23_cout\ = CARRY((xiplus_1(11) & (xu(11) & !\c6|LessThan0~21_cout\)) # (!xiplus_1(11) & ((xu(11)) # (!\c6|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xiplus_1(11),
	datab => xu(11),
	datad => VCC,
	cin => \c6|LessThan0~21_cout\,
	cout => \c6|LessThan0~23_cout\);

-- Location: LCCOMB_X77_Y1_N24
\c6|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6|LessThan0~25_cout\ = CARRY((xu(12) & (xiplus_1(12) & !\c6|LessThan0~23_cout\)) # (!xu(12) & ((xiplus_1(12)) # (!\c6|LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu(12),
	datab => xiplus_1(12),
	datad => VCC,
	cin => \c6|LessThan0~23_cout\,
	cout => \c6|LessThan0~25_cout\);

-- Location: LCCOMB_X77_Y1_N26
\c6|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6|LessThan0~27_cout\ = CARRY((xiplus_1(13) & (xu(13) & !\c6|LessThan0~25_cout\)) # (!xiplus_1(13) & ((xu(13)) # (!\c6|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xiplus_1(13),
	datab => xu(13),
	datad => VCC,
	cin => \c6|LessThan0~25_cout\,
	cout => \c6|LessThan0~27_cout\);

-- Location: LCCOMB_X77_Y1_N28
\c6|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6|LessThan0~29_cout\ = CARRY((xu(14) & (xiplus_1(14) & !\c6|LessThan0~27_cout\)) # (!xu(14) & ((xiplus_1(14)) # (!\c6|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu(14),
	datab => xiplus_1(14),
	datad => VCC,
	cin => \c6|LessThan0~27_cout\,
	cout => \c6|LessThan0~29_cout\);

-- Location: LCCOMB_X77_Y1_N30
\c6|LessThan0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \c6|LessThan0~30_combout\ = (xiplus_1(15) & ((\c6|LessThan0~29_cout\) # (!xu(15)))) # (!xiplus_1(15) & (\c6|LessThan0~29_cout\ & !xu(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => xiplus_1(15),
	datad => xu(15),
	cin => \c6|LessThan0~29_cout\,
	combout => \c6|LessThan0~30_combout\);

-- Location: FF_X77_Y1_N31
D2_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c6|LessThan0~30_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2_1~q\);

-- Location: LCCOMB_X75_Y1_N22
\U1_1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_1[3]~feeder_combout\ = U1(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => U1(3),
	combout => \U1_1[3]~feeder_combout\);

-- Location: FF_X75_Y1_N23
\U1_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1_1[3]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_1(3));

-- Location: LCCOMB_X76_Y1_N12
\U1_2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_2[3]~feeder_combout\ = U1_1(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => U1_1(3),
	combout => \U1_2[3]~feeder_combout\);

-- Location: FF_X76_Y1_N13
\U1_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1_2[3]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_2(3));

-- Location: FF_X76_Y1_N25
\U1_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => U1(2),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_1(2));

-- Location: LCCOMB_X76_Y1_N2
\U1_2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_2[2]~feeder_combout\ = U1_1(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => U1_1(2),
	combout => \U1_2[2]~feeder_combout\);

-- Location: FF_X76_Y1_N3
\U1_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1_2[2]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_2(2));

-- Location: LCCOMB_X76_Y1_N14
\U1_1[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_1[7]~feeder_combout\ = U1(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => U1(7),
	combout => \U1_1[7]~feeder_combout\);

-- Location: FF_X76_Y1_N15
\U1_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1_1[7]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_1(7));

-- Location: FF_X76_Y1_N31
\U1_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => U1_1(7),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_2(7));

-- Location: FF_X75_Y1_N5
\U1_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => U1(5),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_1(5));

-- Location: FF_X76_Y1_N17
\U1_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => U1_1(5),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_2(5));

-- Location: LCCOMB_X76_Y1_N30
\c2|D1out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2|D1out~0_combout\ = (U1_2(3) & (((U1_2(2) & U1_2(7))) # (!U1_2(5)))) # (!U1_2(3) & (!U1_2(5) & ((U1_2(2)) # (U1_2(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_2(3),
	datab => U1_2(2),
	datac => U1_2(7),
	datad => U1_2(5),
	combout => \c2|D1out~0_combout\);

-- Location: LCCOMB_X75_Y1_N26
\U1_1[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_1[4]~feeder_combout\ = U1(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => U1(4),
	combout => \U1_1[4]~feeder_combout\);

-- Location: FF_X75_Y1_N27
\U1_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1_1[4]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_1(4));

-- Location: FF_X76_Y1_N1
\U1_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => U1_1(4),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_2(4));

-- Location: LCCOMB_X76_Y1_N4
\U1_1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_1[1]~feeder_combout\ = U1(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => U1(1),
	combout => \U1_1[1]~feeder_combout\);

-- Location: FF_X76_Y1_N5
\U1_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1_1[1]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_1(1));

-- Location: FF_X76_Y1_N21
\U1_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => U1_1(1),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_2(1));

-- Location: FF_X76_Y1_N9
\U1_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => U1(0),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_1(0));

-- Location: FF_X76_Y1_N27
\U1_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => U1_1(0),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_2(0));

-- Location: LCCOMB_X76_Y1_N26
\c2|D1out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2|D1out~1_combout\ = (U1_2(1) & (((U1_2(0) & U1_2(5))) # (!U1_2(4)))) # (!U1_2(1) & (!U1_2(4) & ((U1_2(0)) # (U1_2(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U1_2(1),
	datab => U1_2(4),
	datac => U1_2(0),
	datad => U1_2(5),
	combout => \c2|D1out~1_combout\);

-- Location: LCCOMB_X76_Y1_N28
\U1_1[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_1[6]~feeder_combout\ = U1(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => U1(6),
	combout => \U1_1[6]~feeder_combout\);

-- Location: FF_X76_Y1_N29
\U1_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1_1[6]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_1(6));

-- Location: LCCOMB_X76_Y1_N18
\U1_2[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_2[6]~feeder_combout\ = U1_1(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => U1_1(6),
	combout => \U1_2[6]~feeder_combout\);

-- Location: FF_X76_Y1_N19
\U1_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \U1_2[6]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U1_2(6));

-- Location: LCCOMB_X76_Y1_N10
\c2|D1out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \c2|D1out~2_combout\ = (\c2|D1out~0_combout\ & (((!U1_2(6)) # (!\c2|D1out~1_combout\)) # (!U1_2(4)))) # (!\c2|D1out~0_combout\ & ((U1_2(4)) # ((\c2|D1out~1_combout\) # (U1_2(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c2|D1out~0_combout\,
	datab => U1_2(4),
	datac => \c2|D1out~1_combout\,
	datad => U1_2(6),
	combout => \c2|D1out~2_combout\);

-- Location: FF_X76_Y1_N11
D1_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \c2|D1out~2_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D1_1~q\);

-- Location: LCCOMB_X76_Y1_N20
\zigout[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \zigout[0]~18_combout\ = (\D2_1~q\ & (\start~input_o\ & \D1_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2_1~q\,
	datab => \start~input_o\,
	datad => \D1_1~q\,
	combout => \zigout[0]~18_combout\);

-- Location: FF_X80_Y1_N1
\zigout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \zigout[0]~16_combout\,
	ena => \zigout[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zigout[0]~reg0_q\);

-- Location: LCCOMB_X79_Y1_N30
\xu_1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xu_1[1]~feeder_combout\ = xu(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => xu(1),
	combout => \xu_1[1]~feeder_combout\);

-- Location: FF_X79_Y1_N31
\xu_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xu_1[1]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xu_1(1));

-- Location: LCCOMB_X80_Y1_N2
\zigout[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \zigout[1]~19_combout\ = (\zigout[0]~17\ & (U1_3(15) $ ((!xu_1(1))))) # (!\zigout[0]~17\ & ((U1_3(15) $ (xu_1(1))) # (GND)))
-- \zigout[1]~20\ = CARRY((U1_3(15) $ (!xu_1(1))) # (!\zigout[0]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U1_3(15),
	datab => xu_1(1),
	datad => VCC,
	cin => \zigout[0]~17\,
	combout => \zigout[1]~19_combout\,
	cout => \zigout[1]~20\);

-- Location: FF_X80_Y1_N3
\zigout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \zigout[1]~19_combout\,
	ena => \zigout[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zigout[1]~reg0_q\);

-- Location: LCCOMB_X79_Y1_N24
\xu_1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xu_1[2]~feeder_combout\ = xu(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => xu(2),
	combout => \xu_1[2]~feeder_combout\);

-- Location: FF_X79_Y1_N25
\xu_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xu_1[2]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xu_1(2));

-- Location: LCCOMB_X80_Y1_N4
\zigout[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \zigout[2]~21_combout\ = (\zigout[1]~20\ & ((U1_3(15) $ (xu_1(2))))) # (!\zigout[1]~20\ & (U1_3(15) $ (xu_1(2) $ (VCC))))
-- \zigout[2]~22\ = CARRY((!\zigout[1]~20\ & (U1_3(15) $ (xu_1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U1_3(15),
	datab => xu_1(2),
	datad => VCC,
	cin => \zigout[1]~20\,
	combout => \zigout[2]~21_combout\,
	cout => \zigout[2]~22\);

-- Location: FF_X80_Y1_N5
\zigout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \zigout[2]~21_combout\,
	ena => \zigout[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zigout[2]~reg0_q\);

-- Location: LCCOMB_X79_Y1_N18
\xu_1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xu_1[3]~feeder_combout\ = xu(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => xu(3),
	combout => \xu_1[3]~feeder_combout\);

-- Location: FF_X79_Y1_N19
\xu_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xu_1[3]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xu_1(3));

-- Location: LCCOMB_X80_Y1_N6
\zigout[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \zigout[3]~23_combout\ = (\zigout[2]~22\ & (U1_3(15) $ ((!xu_1(3))))) # (!\zigout[2]~22\ & ((U1_3(15) $ (xu_1(3))) # (GND)))
-- \zigout[3]~24\ = CARRY((U1_3(15) $ (!xu_1(3))) # (!\zigout[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U1_3(15),
	datab => xu_1(3),
	datad => VCC,
	cin => \zigout[2]~22\,
	combout => \zigout[3]~23_combout\,
	cout => \zigout[3]~24\);

-- Location: FF_X80_Y1_N7
\zigout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \zigout[3]~23_combout\,
	ena => \zigout[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zigout[3]~reg0_q\);

-- Location: LCCOMB_X79_Y1_N16
\xu_1[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xu_1[4]~feeder_combout\ = xu(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => xu(4),
	combout => \xu_1[4]~feeder_combout\);

-- Location: FF_X79_Y1_N17
\xu_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xu_1[4]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xu_1(4));

-- Location: LCCOMB_X80_Y1_N8
\zigout[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \zigout[4]~25_combout\ = (\zigout[3]~24\ & ((U1_3(15) $ (xu_1(4))))) # (!\zigout[3]~24\ & (U1_3(15) $ (xu_1(4) $ (VCC))))
-- \zigout[4]~26\ = CARRY((!\zigout[3]~24\ & (U1_3(15) $ (xu_1(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U1_3(15),
	datab => xu_1(4),
	datad => VCC,
	cin => \zigout[3]~24\,
	combout => \zigout[4]~25_combout\,
	cout => \zigout[4]~26\);

-- Location: FF_X80_Y1_N9
\zigout[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \zigout[4]~25_combout\,
	ena => \zigout[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zigout[4]~reg0_q\);

-- Location: FF_X79_Y1_N23
\xu_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => xu(5),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xu_1(5));

-- Location: LCCOMB_X80_Y1_N10
\zigout[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \zigout[5]~27_combout\ = (\zigout[4]~26\ & (U1_3(15) $ ((!xu_1(5))))) # (!\zigout[4]~26\ & ((U1_3(15) $ (xu_1(5))) # (GND)))
-- \zigout[5]~28\ = CARRY((U1_3(15) $ (!xu_1(5))) # (!\zigout[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U1_3(15),
	datab => xu_1(5),
	datad => VCC,
	cin => \zigout[4]~26\,
	combout => \zigout[5]~27_combout\,
	cout => \zigout[5]~28\);

-- Location: FF_X80_Y1_N11
\zigout[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \zigout[5]~27_combout\,
	ena => \zigout[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zigout[5]~reg0_q\);

-- Location: FF_X79_Y1_N21
\xu_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => xu(6),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xu_1(6));

-- Location: LCCOMB_X80_Y1_N12
\zigout[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \zigout[6]~29_combout\ = (\zigout[5]~28\ & ((U1_3(15) $ (xu_1(6))))) # (!\zigout[5]~28\ & (U1_3(15) $ (xu_1(6) $ (VCC))))
-- \zigout[6]~30\ = CARRY((!\zigout[5]~28\ & (U1_3(15) $ (xu_1(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U1_3(15),
	datab => xu_1(6),
	datad => VCC,
	cin => \zigout[5]~28\,
	combout => \zigout[6]~29_combout\,
	cout => \zigout[6]~30\);

-- Location: FF_X80_Y1_N13
\zigout[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \zigout[6]~29_combout\,
	ena => \zigout[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zigout[6]~reg0_q\);

-- Location: FF_X79_Y1_N3
\xu_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => xu(7),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xu_1(7));

-- Location: LCCOMB_X80_Y1_N14
\zigout[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \zigout[7]~31_combout\ = (\zigout[6]~30\ & (xu_1(7) $ ((!U1_3(15))))) # (!\zigout[6]~30\ & ((xu_1(7) $ (U1_3(15))) # (GND)))
-- \zigout[7]~32\ = CARRY((xu_1(7) $ (!U1_3(15))) # (!\zigout[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu_1(7),
	datab => U1_3(15),
	datad => VCC,
	cin => \zigout[6]~30\,
	combout => \zigout[7]~31_combout\,
	cout => \zigout[7]~32\);

-- Location: FF_X80_Y1_N15
\zigout[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \zigout[7]~31_combout\,
	ena => \zigout[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zigout[7]~reg0_q\);

-- Location: LCCOMB_X79_Y1_N28
\xu_1[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xu_1[8]~feeder_combout\ = xu(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => xu(8),
	combout => \xu_1[8]~feeder_combout\);

-- Location: FF_X79_Y1_N29
\xu_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xu_1[8]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xu_1(8));

-- Location: LCCOMB_X80_Y1_N16
\zigout[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \zigout[8]~33_combout\ = (\zigout[7]~32\ & ((U1_3(15) $ (xu_1(8))))) # (!\zigout[7]~32\ & (U1_3(15) $ (xu_1(8) $ (VCC))))
-- \zigout[8]~34\ = CARRY((!\zigout[7]~32\ & (U1_3(15) $ (xu_1(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => U1_3(15),
	datab => xu_1(8),
	datad => VCC,
	cin => \zigout[7]~32\,
	combout => \zigout[8]~33_combout\,
	cout => \zigout[8]~34\);

-- Location: FF_X80_Y1_N17
\zigout[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \zigout[8]~33_combout\,
	ena => \zigout[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zigout[8]~reg0_q\);

-- Location: LCCOMB_X79_Y1_N14
\xu_1[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xu_1[9]~feeder_combout\ = xu(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => xu(9),
	combout => \xu_1[9]~feeder_combout\);

-- Location: FF_X79_Y1_N15
\xu_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xu_1[9]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xu_1(9));

-- Location: LCCOMB_X80_Y1_N18
\zigout[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \zigout[9]~35_combout\ = (\zigout[8]~34\ & (xu_1(9) $ ((!U1_3(15))))) # (!\zigout[8]~34\ & ((xu_1(9) $ (U1_3(15))) # (GND)))
-- \zigout[9]~36\ = CARRY((xu_1(9) $ (!U1_3(15))) # (!\zigout[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu_1(9),
	datab => U1_3(15),
	datad => VCC,
	cin => \zigout[8]~34\,
	combout => \zigout[9]~35_combout\,
	cout => \zigout[9]~36\);

-- Location: FF_X80_Y1_N19
\zigout[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \zigout[9]~35_combout\,
	ena => \zigout[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zigout[9]~reg0_q\);

-- Location: LCCOMB_X79_Y1_N0
\xu_1[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xu_1[10]~feeder_combout\ = xu(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => xu(10),
	combout => \xu_1[10]~feeder_combout\);

-- Location: FF_X79_Y1_N1
\xu_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xu_1[10]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xu_1(10));

-- Location: LCCOMB_X80_Y1_N20
\zigout[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \zigout[10]~37_combout\ = (\zigout[9]~36\ & ((xu_1(10) $ (U1_3(15))))) # (!\zigout[9]~36\ & (xu_1(10) $ (U1_3(15) $ (VCC))))
-- \zigout[10]~38\ = CARRY((!\zigout[9]~36\ & (xu_1(10) $ (U1_3(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu_1(10),
	datab => U1_3(15),
	datad => VCC,
	cin => \zigout[9]~36\,
	combout => \zigout[10]~37_combout\,
	cout => \zigout[10]~38\);

-- Location: FF_X80_Y1_N21
\zigout[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \zigout[10]~37_combout\,
	ena => \zigout[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zigout[10]~reg0_q\);

-- Location: LCCOMB_X79_Y1_N26
\xu_1[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xu_1[11]~feeder_combout\ = xu(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => xu(11),
	combout => \xu_1[11]~feeder_combout\);

-- Location: FF_X79_Y1_N27
\xu_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xu_1[11]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xu_1(11));

-- Location: LCCOMB_X80_Y1_N22
\zigout[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \zigout[11]~39_combout\ = (\zigout[10]~38\ & (xu_1(11) $ ((!U1_3(15))))) # (!\zigout[10]~38\ & ((xu_1(11) $ (U1_3(15))) # (GND)))
-- \zigout[11]~40\ = CARRY((xu_1(11) $ (!U1_3(15))) # (!\zigout[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu_1(11),
	datab => U1_3(15),
	datad => VCC,
	cin => \zigout[10]~38\,
	combout => \zigout[11]~39_combout\,
	cout => \zigout[11]~40\);

-- Location: FF_X80_Y1_N23
\zigout[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \zigout[11]~39_combout\,
	ena => \zigout[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zigout[11]~reg0_q\);

-- Location: FF_X77_Y1_N1
\xu_1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => xu(12),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xu_1(12));

-- Location: LCCOMB_X80_Y1_N24
\zigout[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \zigout[12]~41_combout\ = (\zigout[11]~40\ & ((xu_1(12) $ (U1_3(15))))) # (!\zigout[11]~40\ & (xu_1(12) $ (U1_3(15) $ (VCC))))
-- \zigout[12]~42\ = CARRY((!\zigout[11]~40\ & (xu_1(12) $ (U1_3(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu_1(12),
	datab => U1_3(15),
	datad => VCC,
	cin => \zigout[11]~40\,
	combout => \zigout[12]~41_combout\,
	cout => \zigout[12]~42\);

-- Location: FF_X80_Y1_N25
\zigout[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \zigout[12]~41_combout\,
	ena => \zigout[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zigout[12]~reg0_q\);

-- Location: LCCOMB_X79_Y1_N12
\xu_1[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xu_1[13]~feeder_combout\ = xu(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => xu(13),
	combout => \xu_1[13]~feeder_combout\);

-- Location: FF_X79_Y1_N13
\xu_1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xu_1[13]~feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xu_1(13));

-- Location: LCCOMB_X80_Y1_N26
\zigout[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \zigout[13]~43_combout\ = (\zigout[12]~42\ & (xu_1(13) $ ((!U1_3(15))))) # (!\zigout[12]~42\ & ((xu_1(13) $ (U1_3(15))) # (GND)))
-- \zigout[13]~44\ = CARRY((xu_1(13) $ (!U1_3(15))) # (!\zigout[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu_1(13),
	datab => U1_3(15),
	datad => VCC,
	cin => \zigout[12]~42\,
	combout => \zigout[13]~43_combout\,
	cout => \zigout[13]~44\);

-- Location: FF_X80_Y1_N27
\zigout[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \zigout[13]~43_combout\,
	ena => \zigout[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zigout[13]~reg0_q\);

-- Location: FF_X77_Y1_N27
\xu_1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => xu(14),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xu_1(14));

-- Location: LCCOMB_X80_Y1_N28
\zigout[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \zigout[14]~45_combout\ = (\zigout[13]~44\ & ((xu_1(14) $ (U1_3(15))))) # (!\zigout[13]~44\ & (xu_1(14) $ (U1_3(15) $ (VCC))))
-- \zigout[14]~46\ = CARRY((!\zigout[13]~44\ & (xu_1(14) $ (U1_3(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu_1(14),
	datab => U1_3(15),
	datad => VCC,
	cin => \zigout[13]~44\,
	combout => \zigout[14]~45_combout\,
	cout => \zigout[14]~46\);

-- Location: FF_X80_Y1_N29
\zigout[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \zigout[14]~45_combout\,
	ena => \zigout[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zigout[14]~reg0_q\);

-- Location: FF_X77_Y1_N25
\xu_1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => xu(15),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xu_1(15));

-- Location: LCCOMB_X80_Y1_N30
\zigout[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \zigout[15]~47_combout\ = xu_1(15) $ (\zigout[14]~46\ $ (U1_3(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xu_1(15),
	datad => U1_3(15),
	cin => \zigout[14]~46\,
	combout => \zigout[15]~47_combout\);

-- Location: FF_X80_Y1_N31
\zigout[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \zigout[15]~47_combout\,
	ena => \zigout[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zigout[15]~reg0_q\);

-- Location: FF_X67_Y1_N5
\xuout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \c1|shift_register\(0),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[0]~reg0_q\);

-- Location: LCCOMB_X67_Y1_N22
\xuout[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[1]~reg0feeder_combout\ = \c1|shift_register\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(1),
	combout => \xuout[1]~reg0feeder_combout\);

-- Location: FF_X67_Y1_N23
\xuout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[1]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[1]~reg0_q\);

-- Location: LCCOMB_X70_Y1_N20
\xuout[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[2]~0_combout\ = !\c1|shift_register\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c1|shift_register\(2),
	combout => \xuout[2]~0_combout\);

-- Location: FF_X70_Y1_N21
\xuout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[2]~0_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[2]~reg0_q\);

-- Location: LCCOMB_X82_Y1_N16
\xuout[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[3]~1_combout\ = !\c1|shift_register\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c1|shift_register\(3),
	combout => \xuout[3]~1_combout\);

-- Location: FF_X82_Y1_N17
\xuout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[3]~1_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[3]~reg0_q\);

-- Location: LCCOMB_X74_Y1_N24
\xuout[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[4]~reg0feeder_combout\ = \c1|shift_register\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(4),
	combout => \xuout[4]~reg0feeder_combout\);

-- Location: FF_X74_Y1_N25
\xuout[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[4]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[4]~reg0_q\);

-- Location: FF_X72_Y1_N29
\xuout[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \c1|shift_register\(5),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[5]~reg0_q\);

-- Location: LCCOMB_X68_Y1_N16
\xuout[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[6]~reg0feeder_combout\ = \c1|shift_register\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(6),
	combout => \xuout[6]~reg0feeder_combout\);

-- Location: FF_X68_Y1_N17
\xuout[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[6]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[6]~reg0_q\);

-- Location: FF_X67_Y1_N25
\xuout[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \c1|shift_register\(7),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[7]~reg0_q\);

-- Location: LCCOMB_X67_Y1_N26
\xuout[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[8]~reg0feeder_combout\ = \c1|shift_register\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(8),
	combout => \xuout[8]~reg0feeder_combout\);

-- Location: FF_X67_Y1_N27
\xuout[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[8]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[8]~reg0_q\);

-- Location: LCCOMB_X70_Y1_N6
\xuout[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[9]~reg0feeder_combout\ = \c1|shift_register\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(9),
	combout => \xuout[9]~reg0feeder_combout\);

-- Location: FF_X70_Y1_N7
\xuout[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[9]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[9]~reg0_q\);

-- Location: LCCOMB_X82_Y1_N6
\xuout[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[10]~reg0feeder_combout\ = \c1|shift_register\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(10),
	combout => \xuout[10]~reg0feeder_combout\);

-- Location: FF_X82_Y1_N7
\xuout[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[10]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[10]~reg0_q\);

-- Location: LCCOMB_X74_Y1_N26
\xuout[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[11]~reg0feeder_combout\ = \c1|shift_register\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(11),
	combout => \xuout[11]~reg0feeder_combout\);

-- Location: FF_X74_Y1_N27
\xuout[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[11]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[11]~reg0_q\);

-- Location: LCCOMB_X68_Y1_N2
\xuout[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[12]~reg0feeder_combout\ = \c1|shift_register\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(12),
	combout => \xuout[12]~reg0feeder_combout\);

-- Location: FF_X68_Y1_N3
\xuout[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[12]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[12]~reg0_q\);

-- Location: LCCOMB_X68_Y1_N28
\xuout[13]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[13]~reg0feeder_combout\ = \c1|shift_register\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(13),
	combout => \xuout[13]~reg0feeder_combout\);

-- Location: FF_X68_Y1_N29
\xuout[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[13]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[13]~reg0_q\);

-- Location: LCCOMB_X67_Y1_N12
\xuout[14]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[14]~reg0feeder_combout\ = \c1|shift_register\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(14),
	combout => \xuout[14]~reg0feeder_combout\);

-- Location: FF_X67_Y1_N13
\xuout[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[14]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[14]~reg0_q\);

-- Location: FF_X70_Y1_N17
\xuout[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \c1|shift_register\(15),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[15]~reg0_q\);

-- Location: FF_X82_Y1_N9
\xuout[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \c1|shift_register\(16),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[16]~reg0_q\);

-- Location: FF_X82_Y1_N15
\xuout[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \c1|shift_register\(17),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[17]~reg0_q\);

-- Location: FF_X75_Y1_N29
\xuout[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \c1|shift_register\(18),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[18]~reg0_q\);

-- Location: LCCOMB_X72_Y1_N26
\xuout[19]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[19]~reg0feeder_combout\ = \c1|shift_register\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(19),
	combout => \xuout[19]~reg0feeder_combout\);

-- Location: FF_X72_Y1_N27
\xuout[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[19]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[19]~reg0_q\);

-- Location: LCCOMB_X68_Y1_N26
\xuout[20]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[20]~reg0feeder_combout\ = \c1|shift_register\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(20),
	combout => \xuout[20]~reg0feeder_combout\);

-- Location: FF_X68_Y1_N27
\xuout[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[20]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[20]~reg0_q\);

-- Location: LCCOMB_X67_Y1_N30
\xuout[21]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[21]~reg0feeder_combout\ = \c1|shift_register\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(21),
	combout => \xuout[21]~reg0feeder_combout\);

-- Location: FF_X67_Y1_N31
\xuout[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[21]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[21]~reg0_q\);

-- Location: LCCOMB_X70_Y1_N26
\xuout[22]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[22]~reg0feeder_combout\ = \c1|shift_register\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(22),
	combout => \xuout[22]~reg0feeder_combout\);

-- Location: FF_X70_Y1_N27
\xuout[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[22]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[22]~reg0_q\);

-- Location: FF_X79_Y1_N9
\xuout[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \c1|shift_register\(23),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[23]~reg0_q\);

-- Location: LCCOMB_X74_Y1_N28
\xuout[24]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[24]~reg0feeder_combout\ = \c1|shift_register\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(24),
	combout => \xuout[24]~reg0feeder_combout\);

-- Location: FF_X74_Y1_N29
\xuout[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[24]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[24]~reg0_q\);

-- Location: LCCOMB_X72_Y1_N4
\xuout[25]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[25]~reg0feeder_combout\ = \c1|shift_register\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(25),
	combout => \xuout[25]~reg0feeder_combout\);

-- Location: FF_X72_Y1_N5
\xuout[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[25]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[25]~reg0_q\);

-- Location: LCCOMB_X67_Y1_N28
\xuout[26]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[26]~reg0feeder_combout\ = \c1|shift_register\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(26),
	combout => \xuout[26]~reg0feeder_combout\);

-- Location: FF_X67_Y1_N29
\xuout[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[26]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[26]~reg0_q\);

-- Location: FF_X67_Y1_N3
\xuout[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \c1|shift_register\(27),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[27]~reg0_q\);

-- Location: FF_X70_Y1_N25
\xuout[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	asdata => \c1|shift_register\(28),
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[28]~reg0_q\);

-- Location: LCCOMB_X82_Y1_N12
\xuout[29]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[29]~reg0feeder_combout\ = \c1|shift_register\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(29),
	combout => \xuout[29]~reg0feeder_combout\);

-- Location: FF_X82_Y1_N13
\xuout[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[29]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[29]~reg0_q\);

-- Location: LCCOMB_X82_Y1_N30
\xuout[30]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[30]~reg0feeder_combout\ = \c1|shift_register\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(30),
	combout => \xuout[30]~reg0feeder_combout\);

-- Location: FF_X82_Y1_N31
\xuout[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[30]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[30]~reg0_q\);

-- Location: LCCOMB_X82_Y1_N28
\xuout[31]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[31]~reg0feeder_combout\ = \c1|shift_register\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(31),
	combout => \xuout[31]~reg0feeder_combout\);

-- Location: FF_X82_Y1_N29
\xuout[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[31]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[31]~reg0_q\);

-- Location: LCCOMB_X72_Y1_N18
\xuout[32]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \xuout[32]~reg0feeder_combout\ = \c1|shift_register\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c1|shift_register\(32),
	combout => \xuout[32]~reg0feeder_combout\);

-- Location: FF_X72_Y1_N19
\xuout[32]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \xuout[32]~reg0feeder_combout\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xuout[32]~reg0_q\);

-- Location: IOIBUF_X115_Y37_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

ww_zigout(0) <= \zigout[0]~output_o\;

ww_zigout(1) <= \zigout[1]~output_o\;

ww_zigout(2) <= \zigout[2]~output_o\;

ww_zigout(3) <= \zigout[3]~output_o\;

ww_zigout(4) <= \zigout[4]~output_o\;

ww_zigout(5) <= \zigout[5]~output_o\;

ww_zigout(6) <= \zigout[6]~output_o\;

ww_zigout(7) <= \zigout[7]~output_o\;

ww_zigout(8) <= \zigout[8]~output_o\;

ww_zigout(9) <= \zigout[9]~output_o\;

ww_zigout(10) <= \zigout[10]~output_o\;

ww_zigout(11) <= \zigout[11]~output_o\;

ww_zigout(12) <= \zigout[12]~output_o\;

ww_zigout(13) <= \zigout[13]~output_o\;

ww_zigout(14) <= \zigout[14]~output_o\;

ww_zigout(15) <= \zigout[15]~output_o\;

ww_xuout(0) <= \xuout[0]~output_o\;

ww_xuout(1) <= \xuout[1]~output_o\;

ww_xuout(2) <= \xuout[2]~output_o\;

ww_xuout(3) <= \xuout[3]~output_o\;

ww_xuout(4) <= \xuout[4]~output_o\;

ww_xuout(5) <= \xuout[5]~output_o\;

ww_xuout(6) <= \xuout[6]~output_o\;

ww_xuout(7) <= \xuout[7]~output_o\;

ww_xuout(8) <= \xuout[8]~output_o\;

ww_xuout(9) <= \xuout[9]~output_o\;

ww_xuout(10) <= \xuout[10]~output_o\;

ww_xuout(11) <= \xuout[11]~output_o\;

ww_xuout(12) <= \xuout[12]~output_o\;

ww_xuout(13) <= \xuout[13]~output_o\;

ww_xuout(14) <= \xuout[14]~output_o\;

ww_xuout(15) <= \xuout[15]~output_o\;

ww_xuout(16) <= \xuout[16]~output_o\;

ww_xuout(17) <= \xuout[17]~output_o\;

ww_xuout(18) <= \xuout[18]~output_o\;

ww_xuout(19) <= \xuout[19]~output_o\;

ww_xuout(20) <= \xuout[20]~output_o\;

ww_xuout(21) <= \xuout[21]~output_o\;

ww_xuout(22) <= \xuout[22]~output_o\;

ww_xuout(23) <= \xuout[23]~output_o\;

ww_xuout(24) <= \xuout[24]~output_o\;

ww_xuout(25) <= \xuout[25]~output_o\;

ww_xuout(26) <= \xuout[26]~output_o\;

ww_xuout(27) <= \xuout[27]~output_o\;

ww_xuout(28) <= \xuout[28]~output_o\;

ww_xuout(29) <= \xuout[29]~output_o\;

ww_xuout(30) <= \xuout[30]~output_o\;

ww_xuout(31) <= \xuout[31]~output_o\;

ww_xuout(32) <= \xuout[32]~output_o\;
END structure;


