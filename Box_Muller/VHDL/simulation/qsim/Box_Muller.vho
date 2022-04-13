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

-- DATE "04/13/2022 10:30:39"

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

ENTITY 	f_block IS
    PORT (
	U : IN std_logic_vector(31 DOWNTO 0);
	clk_in : IN std_logic;
	f_res : OUT std_logic_vector(15 DOWNTO 0)
	);
END f_block;

-- Design Ports Information
-- f_res[0]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_res[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_res[2]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_res[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_res[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_res[5]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_res[6]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_res[7]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_res[8]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_res[9]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_res[10]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_res[11]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_res[12]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_res[13]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_res[14]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f_res[15]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[28]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[29]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[30]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[31]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[26]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[27]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[20]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[21]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[24]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[25]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[22]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[23]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[18]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[19]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[12]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[13]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[16]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[17]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[14]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[15]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[10]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[11]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[7]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[8]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[9]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF f_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_U : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_f_res : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \f_res[0]~output_o\ : std_logic;
SIGNAL \f_res[1]~output_o\ : std_logic;
SIGNAL \f_res[2]~output_o\ : std_logic;
SIGNAL \f_res[3]~output_o\ : std_logic;
SIGNAL \f_res[4]~output_o\ : std_logic;
SIGNAL \f_res[5]~output_o\ : std_logic;
SIGNAL \f_res[6]~output_o\ : std_logic;
SIGNAL \f_res[7]~output_o\ : std_logic;
SIGNAL \f_res[8]~output_o\ : std_logic;
SIGNAL \f_res[9]~output_o\ : std_logic;
SIGNAL \f_res[10]~output_o\ : std_logic;
SIGNAL \f_res[11]~output_o\ : std_logic;
SIGNAL \f_res[12]~output_o\ : std_logic;
SIGNAL \f_res[13]~output_o\ : std_logic;
SIGNAL \f_res[14]~output_o\ : std_logic;
SIGNAL \f_res[15]~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \U[31]~input_o\ : std_logic;
SIGNAL \U[30]~input_o\ : std_logic;
SIGNAL \U[29]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:28:detector|o_or~combout\ : std_logic;
SIGNAL \U[28]~input_o\ : std_logic;
SIGNAL \U[27]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:26:detector|o_or~combout\ : std_logic;
SIGNAL \U[26]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:26:detector|o_or~0_combout\ : std_logic;
SIGNAL \U[25]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add23~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add26~0_combout\ : std_logic;
SIGNAL \U[24]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add23~1_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add25~1\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add25~3\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add25~5\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add25~6_combout\ : std_logic;
SIGNAL \U[23]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:22:detector|o_or~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\ : std_logic;
SIGNAL \U[22]~input_o\ : std_logic;
SIGNAL \U[21]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\ : std_logic;
SIGNAL \U[19]~input_o\ : std_logic;
SIGNAL \U[20]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:18:detector|o_or~combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add19~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:18:detector|o_or~0_combout\ : std_logic;
SIGNAL \U[17]~input_o\ : std_logic;
SIGNAL \U[18]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add15~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add19~1_combout\ : std_logic;
SIGNAL \U[16]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add15~1_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add17~1\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add17~3\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add17~5\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add17~6_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add25~4_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add17~4_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add25~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add17~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add25~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add17~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add21~1\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add21~3\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add21~5\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add21~7\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add21~8_combout\ : std_logic;
SIGNAL \U[14]~input_o\ : std_logic;
SIGNAL \U[13]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\ : std_logic;
SIGNAL \U[15]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:14:detector|o_or~2_combout\ : std_logic;
SIGNAL \U[12]~input_o\ : std_logic;
SIGNAL \U[11]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:10:detector|o_or~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:16:detector|o_or~combout\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:10:detector|o_or~combout\ : std_logic;
SIGNAL \U[9]~input_o\ : std_logic;
SIGNAL \U[10]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add7~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:12:detector|o_or~combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add10~0_combout\ : std_logic;
SIGNAL \U[8]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add7~1_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add9~1\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add9~3\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add9~5\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add9~6_combout\ : std_logic;
SIGNAL \U[4]~input_o\ : std_logic;
SIGNAL \U[2]~input_o\ : std_logic;
SIGNAL \U[1]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add1~1_combout\ : std_logic;
SIGNAL \U[3]~input_o\ : std_logic;
SIGNAL \U[5]~input_o\ : std_logic;
SIGNAL \U[6]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:8:detector|o_or~0_combout\ : std_logic;
SIGNAL \U[7]~input_o\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:6:detector|o_or~combout\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:4:detector|o_or~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add1~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add1~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add3~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add3~1_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add3~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add4~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add5~1\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add5~3\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add5~5\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add5~6_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add5~4_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add9~4_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add9~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add5~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add5~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add9~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add11~1\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add11~3\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add11~5\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add11~6_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add11~4_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add11~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:14:detector|o_or~combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add11~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add12~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add13~1\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add13~3\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add13~5\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add13~7\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add13~8_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add13~6_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add21~6_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add21~4_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add13~4_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add21~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add13~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add21~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add13~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add27~1\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add27~3\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add27~5\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add27~7\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add27~8_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add27~6_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add27~4_combout\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add51~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:21:detector|o_and~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add47~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:17:detector|o_and~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add43~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:13:detector|o_and~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add40~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add39~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add36~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add34~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add32~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add31~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add28~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add27~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add28~1_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add27~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add29~1\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add29~3\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add29~5\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add29~7\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add29~9\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add29~10_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add35~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add31~1_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add35~1_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add31~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add33~1\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add33~3\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add33~5\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add33~6_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add43~1_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add43~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add39~1_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add43~3_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add39~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add41~1\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add41~3\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add41~5\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add41~6_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add33~4_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add41~4_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add41~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add33~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add33~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add41~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add37~1\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add37~3\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add37~5\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add37~7\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add37~8_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add55~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add55~1_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add55~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add55~3_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add58~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add57~1\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add57~3\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add57~5\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add57~6_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add51~1_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add47~1_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add51~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add47~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add51~3_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add47~3_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add49~1\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add49~3\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add49~5\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add49~6_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add57~4_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add49~4_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add57~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add49~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add57~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add49~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add53~1\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add53~3\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add53~5\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add53~7\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add53~8_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add53~6_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add37~6_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add37~4_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add53~4_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add37~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add53~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add37~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add53~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add45~1\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add45~3\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add45~5\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add45~7\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add45~9\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add45~10_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add29~8_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add45~8_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add45~6_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add29~6_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add45~4_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add29~4_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add45~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add29~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add45~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|Add29~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|sum[0]~1\ : std_logic;
SIGNAL \AU0|LOD0|oc0|sum[1]~3\ : std_logic;
SIGNAL \AU0|LOD0|oc0|sum[2]~5\ : std_logic;
SIGNAL \AU0|LOD0|oc0|sum[3]~7\ : std_logic;
SIGNAL \AU0|LOD0|oc0|sum[4]~9\ : std_logic;
SIGNAL \AU0|LOD0|oc0|sum[5]~10_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|sum[4]~8_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|sum[3]~6_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|sum[2]~4_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|sum[1]~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \AU0|LOD0|oc0|sum[0]~0_combout\ : std_logic;
SIGNAL \shift_num[0]~7\ : std_logic;
SIGNAL \shift_num[1]~9\ : std_logic;
SIGNAL \shift_num[2]~11\ : std_logic;
SIGNAL \shift_num[3]~13\ : std_logic;
SIGNAL \shift_num[4]~15\ : std_logic;
SIGNAL \shift_num[5]~16_combout\ : std_logic;
SIGNAL \U[0]~input_o\ : std_logic;
SIGNAL \U_tilde[0]~33\ : std_logic;
SIGNAL \U_tilde[1]~34_combout\ : std_logic;
SIGNAL \U_tilde[1]~feeder_combout\ : std_logic;
SIGNAL \U_tilde[0]~32_combout\ : std_logic;
SIGNAL \U_tilde[0]~feeder_combout\ : std_logic;
SIGNAL \shift_num[2]~10_combout\ : std_logic;
SIGNAL \shift_num[1]~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~41_combout\ : std_logic;
SIGNAL \shift_num[0]~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~144_combout\ : std_logic;
SIGNAL \shift_num[3]~12_combout\ : std_logic;
SIGNAL \shift_num[4]~14_combout\ : std_logic;
SIGNAL \ShiftLeft0~39_combout\ : std_logic;
SIGNAL \U_tilde[1]~35\ : std_logic;
SIGNAL \U_tilde[2]~37\ : std_logic;
SIGNAL \U_tilde[3]~38_combout\ : std_logic;
SIGNAL \U_tilde[3]~39\ : std_logic;
SIGNAL \U_tilde[4]~41\ : std_logic;
SIGNAL \U_tilde[5]~42_combout\ : std_logic;
SIGNAL \U_tilde[5]~feeder_combout\ : std_logic;
SIGNAL \ShiftLeft0~28_combout\ : std_logic;
SIGNAL \U_tilde[4]~40_combout\ : std_logic;
SIGNAL \U_tilde[4]~feeder_combout\ : std_logic;
SIGNAL \U_tilde[2]~36_combout\ : std_logic;
SIGNAL \ShiftLeft0~11_combout\ : std_logic;
SIGNAL \ShiftLeft0~29_combout\ : std_logic;
SIGNAL \U_tilde[5]~43\ : std_logic;
SIGNAL \U_tilde[6]~45\ : std_logic;
SIGNAL \U_tilde[7]~46_combout\ : std_logic;
SIGNAL \U_tilde[7]~47\ : std_logic;
SIGNAL \U_tilde[8]~49\ : std_logic;
SIGNAL \U_tilde[9]~50_combout\ : std_logic;
SIGNAL \U_tilde[9]~feeder_combout\ : std_logic;
SIGNAL \ShiftLeft0~30_combout\ : std_logic;
SIGNAL \U_tilde[6]~44_combout\ : std_logic;
SIGNAL \U_tilde[6]~feeder_combout\ : std_logic;
SIGNAL \U_tilde[8]~48_combout\ : std_logic;
SIGNAL \U_tilde[8]~feeder_combout\ : std_logic;
SIGNAL \ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ShiftLeft0~31_combout\ : std_logic;
SIGNAL \ShiftLeft0~32_combout\ : std_logic;
SIGNAL \U_tilde[9]~51\ : std_logic;
SIGNAL \U_tilde[10]~52_combout\ : std_logic;
SIGNAL \U_tilde[10]~feeder_combout\ : std_logic;
SIGNAL \U_tilde[10]~53\ : std_logic;
SIGNAL \U_tilde[11]~55\ : std_logic;
SIGNAL \U_tilde[12]~56_combout\ : std_logic;
SIGNAL \ShiftLeft0~18_combout\ : std_logic;
SIGNAL \U_tilde[12]~57\ : std_logic;
SIGNAL \U_tilde[13]~58_combout\ : std_logic;
SIGNAL \U_tilde[11]~54_combout\ : std_logic;
SIGNAL \ShiftLeft0~33_combout\ : std_logic;
SIGNAL \ShiftLeft0~34_combout\ : std_logic;
SIGNAL \U_tilde[13]~59\ : std_logic;
SIGNAL \U_tilde[14]~60_combout\ : std_logic;
SIGNAL \U_tilde[14]~61\ : std_logic;
SIGNAL \U_tilde[15]~63\ : std_logic;
SIGNAL \U_tilde[16]~64_combout\ : std_logic;
SIGNAL \U_tilde[16]~feeder_combout\ : std_logic;
SIGNAL \ShiftLeft0~21_combout\ : std_logic;
SIGNAL \U_tilde[15]~62_combout\ : std_logic;
SIGNAL \U_tilde[15]~feeder_combout\ : std_logic;
SIGNAL \U_tilde[16]~65\ : std_logic;
SIGNAL \U_tilde[17]~66_combout\ : std_logic;
SIGNAL \ShiftLeft0~35_combout\ : std_logic;
SIGNAL \ShiftLeft0~36_combout\ : std_logic;
SIGNAL \ShiftLeft0~37_combout\ : std_logic;
SIGNAL \ShiftLeft0~38_combout\ : std_logic;
SIGNAL \ShiftLeft0~42_combout\ : std_logic;
SIGNAL \ShiftLeft0~54_combout\ : std_logic;
SIGNAL \ShiftLeft0~55_combout\ : std_logic;
SIGNAL \ShiftLeft0~25_combout\ : std_logic;
SIGNAL \ShiftLeft0~45_combout\ : std_logic;
SIGNAL \ShiftLeft0~46_combout\ : std_logic;
SIGNAL \ShiftLeft0~43_combout\ : std_logic;
SIGNAL \ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ShiftLeft0~47_combout\ : std_logic;
SIGNAL \U_tilde[17]~67\ : std_logic;
SIGNAL \U_tilde[18]~68_combout\ : std_logic;
SIGNAL \U_tilde[18]~feeder_combout\ : std_logic;
SIGNAL \ShiftLeft0~50_combout\ : std_logic;
SIGNAL \ShiftLeft0~51_combout\ : std_logic;
SIGNAL \ShiftLeft0~48_combout\ : std_logic;
SIGNAL \ShiftLeft0~49_combout\ : std_logic;
SIGNAL \ShiftLeft0~52_combout\ : std_logic;
SIGNAL \ShiftLeft0~53_combout\ : std_logic;
SIGNAL \ShiftLeft0~56_combout\ : std_logic;
SIGNAL \ShiftLeft0~65_combout\ : std_logic;
SIGNAL \ShiftLeft0~40_combout\ : std_logic;
SIGNAL \ShiftLeft0~66_combout\ : std_logic;
SIGNAL \ShiftLeft0~13_combout\ : std_logic;
SIGNAL \ShiftLeft0~57_combout\ : std_logic;
SIGNAL \ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ShiftLeft0~58_combout\ : std_logic;
SIGNAL \ShiftLeft0~59_combout\ : std_logic;
SIGNAL \U_tilde[18]~69\ : std_logic;
SIGNAL \U_tilde[19]~70_combout\ : std_logic;
SIGNAL \ShiftLeft0~61_combout\ : std_logic;
SIGNAL \ShiftLeft0~62_combout\ : std_logic;
SIGNAL \ShiftLeft0~20_combout\ : std_logic;
SIGNAL \ShiftLeft0~60_combout\ : std_logic;
SIGNAL \ShiftLeft0~63_combout\ : std_logic;
SIGNAL \ShiftLeft0~64_combout\ : std_logic;
SIGNAL \ShiftLeft0~67_combout\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ShiftLeft0~26_combout\ : std_logic;
SIGNAL \ShiftLeft0~73_combout\ : std_logic;
SIGNAL \ShiftLeft0~22_combout\ : std_logic;
SIGNAL \U_tilde[19]~71\ : std_logic;
SIGNAL \U_tilde[20]~72_combout\ : std_logic;
SIGNAL \ShiftLeft0~69_combout\ : std_logic;
SIGNAL \ShiftLeft0~70_combout\ : std_logic;
SIGNAL \ShiftLeft0~71_combout\ : std_logic;
SIGNAL \ShiftLeft0~15_combout\ : std_logic;
SIGNAL \ShiftLeft0~19_combout\ : std_logic;
SIGNAL \ShiftLeft0~68_combout\ : std_logic;
SIGNAL \ShiftLeft0~72_combout\ : std_logic;
SIGNAL \ShiftLeft0~74_combout\ : std_logic;
SIGNAL \ShiftLeft0~80_combout\ : std_logic;
SIGNAL \ShiftLeft0~75_combout\ : std_logic;
SIGNAL \U_tilde[20]~73\ : std_logic;
SIGNAL \U_tilde[21]~74_combout\ : std_logic;
SIGNAL \ShiftLeft0~76_combout\ : std_logic;
SIGNAL \ShiftLeft0~77_combout\ : std_logic;
SIGNAL \ShiftLeft0~78_combout\ : std_logic;
SIGNAL \ShiftLeft0~79_combout\ : std_logic;
SIGNAL \ShiftLeft0~81_combout\ : std_logic;
SIGNAL \ShiftLeft0~87_combout\ : std_logic;
SIGNAL \ShiftLeft0~82_combout\ : std_logic;
SIGNAL \U_tilde[21]~75\ : std_logic;
SIGNAL \U_tilde[22]~76_combout\ : std_logic;
SIGNAL \ShiftLeft0~83_combout\ : std_logic;
SIGNAL \ShiftLeft0~84_combout\ : std_logic;
SIGNAL \ShiftLeft0~85_combout\ : std_logic;
SIGNAL \ShiftLeft0~86_combout\ : std_logic;
SIGNAL \ShiftLeft0~88_combout\ : std_logic;
SIGNAL \ShiftLeft0~94_combout\ : std_logic;
SIGNAL \U_tilde[22]~77\ : std_logic;
SIGNAL \U_tilde[23]~78_combout\ : std_logic;
SIGNAL \U_tilde[23]~feeder_combout\ : std_logic;
SIGNAL \ShiftLeft0~90_combout\ : std_logic;
SIGNAL \ShiftLeft0~91_combout\ : std_logic;
SIGNAL \ShiftLeft0~92_combout\ : std_logic;
SIGNAL \ShiftLeft0~89_combout\ : std_logic;
SIGNAL \ShiftLeft0~93_combout\ : std_logic;
SIGNAL \ShiftLeft0~95_combout\ : std_logic;
SIGNAL \ShiftLeft0~96_combout\ : std_logic;
SIGNAL \ShiftLeft0~145_combout\ : std_logic;
SIGNAL \ShiftLeft0~97_combout\ : std_logic;
SIGNAL \ShiftLeft0~16_combout\ : std_logic;
SIGNAL \U_tilde[23]~79\ : std_logic;
SIGNAL \U_tilde[24]~80_combout\ : std_logic;
SIGNAL \ShiftLeft0~99_combout\ : std_logic;
SIGNAL \ShiftLeft0~100_combout\ : std_logic;
SIGNAL \ShiftLeft0~98_combout\ : std_logic;
SIGNAL \ShiftLeft0~23_combout\ : std_logic;
SIGNAL \ShiftLeft0~101_combout\ : std_logic;
SIGNAL \ShiftLeft0~102_combout\ : std_logic;
SIGNAL \ShiftLeft0~103_combout\ : std_logic;
SIGNAL \U_tilde[24]~81\ : std_logic;
SIGNAL \U_tilde[25]~82_combout\ : std_logic;
SIGNAL \ShiftLeft0~104_combout\ : std_logic;
SIGNAL \ShiftLeft0~105_combout\ : std_logic;
SIGNAL \ShiftLeft0~106_combout\ : std_logic;
SIGNAL \ShiftLeft0~107_combout\ : std_logic;
SIGNAL \ShiftLeft0~108_combout\ : std_logic;
SIGNAL \ShiftLeft0~146_combout\ : std_logic;
SIGNAL \ShiftLeft0~109_combout\ : std_logic;
SIGNAL \U_tilde[25]~83\ : std_logic;
SIGNAL \U_tilde[26]~84_combout\ : std_logic;
SIGNAL \ShiftLeft0~110_combout\ : std_logic;
SIGNAL \ShiftLeft0~111_combout\ : std_logic;
SIGNAL \ShiftLeft0~112_combout\ : std_logic;
SIGNAL \ShiftLeft0~113_combout\ : std_logic;
SIGNAL \ShiftLeft0~114_combout\ : std_logic;
SIGNAL \ShiftLeft0~147_combout\ : std_logic;
SIGNAL \U_tilde[26]~85\ : std_logic;
SIGNAL \U_tilde[27]~86_combout\ : std_logic;
SIGNAL \ShiftLeft0~116_combout\ : std_logic;
SIGNAL \ShiftLeft0~115_combout\ : std_logic;
SIGNAL \ShiftLeft0~117_combout\ : std_logic;
SIGNAL \ShiftLeft0~118_combout\ : std_logic;
SIGNAL \ShiftLeft0~119_combout\ : std_logic;
SIGNAL \ShiftLeft0~120_combout\ : std_logic;
SIGNAL \ShiftLeft0~122_combout\ : std_logic;
SIGNAL \ShiftLeft0~123_combout\ : std_logic;
SIGNAL \U_tilde[27]~87\ : std_logic;
SIGNAL \U_tilde[28]~88_combout\ : std_logic;
SIGNAL \ShiftLeft0~124_combout\ : std_logic;
SIGNAL \ShiftLeft0~125_combout\ : std_logic;
SIGNAL \ShiftLeft0~126_combout\ : std_logic;
SIGNAL \ShiftLeft0~121_combout\ : std_logic;
SIGNAL \ShiftLeft0~127_combout\ : std_logic;
SIGNAL \ShiftLeft0~128_combout\ : std_logic;
SIGNAL \U_tilde[28]~89\ : std_logic;
SIGNAL \U_tilde[29]~90_combout\ : std_logic;
SIGNAL \ShiftLeft0~129_combout\ : std_logic;
SIGNAL \ShiftLeft0~130_combout\ : std_logic;
SIGNAL \ShiftLeft0~131_combout\ : std_logic;
SIGNAL \ShiftLeft0~132_combout\ : std_logic;
SIGNAL \ShiftLeft0~133_combout\ : std_logic;
SIGNAL \U_tilde[29]~91\ : std_logic;
SIGNAL \U_tilde[30]~92_combout\ : std_logic;
SIGNAL \ShiftLeft0~134_combout\ : std_logic;
SIGNAL \ShiftLeft0~135_combout\ : std_logic;
SIGNAL \ShiftLeft0~136_combout\ : std_logic;
SIGNAL \ShiftLeft0~137_combout\ : std_logic;
SIGNAL \ShiftLeft0~138_combout\ : std_logic;
SIGNAL \ShiftLeft0~142_combout\ : std_logic;
SIGNAL \ShiftLeft0~140_combout\ : std_logic;
SIGNAL \U_tilde[30]~93\ : std_logic;
SIGNAL \U_tilde[31]~94_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \ShiftLeft0~139_combout\ : std_logic;
SIGNAL \ShiftLeft0~141_combout\ : std_logic;
SIGNAL \ShiftLeft0~143_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~10_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~9_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~11_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~13_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~12_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~14_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~6_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~7_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~8_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~15_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~8_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~10_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~9_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~11_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~12_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~13_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~17_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~16_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~18_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~23_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~22_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~20_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~19_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~21_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~24_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~25_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~14_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~16_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~17_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~18_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~20_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~19_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~21_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~22_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~23_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~24_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~25_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~26_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~49_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~48_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~50_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~42_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~43_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~40_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~41_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~44_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~45_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~46_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~47_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~51_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~35_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~33_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~34_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~36_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~37_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~28_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~29_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~30_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~31_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~32_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~38_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~27_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~26_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~28_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~30_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~29_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~31_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~35_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~36_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~37_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~33_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~32_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~34_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~27_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~39_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~38_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~53_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~46_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~44_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~43_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~45_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~47_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~48_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~42_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~39_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~40_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~41_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|_~49_combout\ : std_logic;
SIGNAL \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~52_combout\ : std_logic;
SIGNAL \ShiftLeft0~24_combout\ : std_logic;
SIGNAL \ShiftLeft0~27_combout\ : std_logic;
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
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \f_res[0]~17_cout\ : std_logic;
SIGNAL \f_res[0]~18_combout\ : std_logic;
SIGNAL \f_res[0]~reg0_q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \f_res[0]~19\ : std_logic;
SIGNAL \f_res[1]~20_combout\ : std_logic;
SIGNAL \f_res[1]~reg0_q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \f_res[1]~21\ : std_logic;
SIGNAL \f_res[2]~22_combout\ : std_logic;
SIGNAL \f_res[2]~reg0_q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \f_res[2]~23\ : std_logic;
SIGNAL \f_res[3]~24_combout\ : std_logic;
SIGNAL \f_res[3]~reg0_q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \f_res[3]~25\ : std_logic;
SIGNAL \f_res[4]~26_combout\ : std_logic;
SIGNAL \f_res[4]~reg0_q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \f_res[4]~27\ : std_logic;
SIGNAL \f_res[5]~28_combout\ : std_logic;
SIGNAL \f_res[5]~reg0_q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \f_res[5]~29\ : std_logic;
SIGNAL \f_res[6]~30_combout\ : std_logic;
SIGNAL \f_res[6]~reg0_q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \f_res[6]~31\ : std_logic;
SIGNAL \f_res[7]~32_combout\ : std_logic;
SIGNAL \f_res[7]~reg0_q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \f_res[7]~33\ : std_logic;
SIGNAL \f_res[8]~34_combout\ : std_logic;
SIGNAL \f_res[8]~reg0_q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \f_res[8]~35\ : std_logic;
SIGNAL \f_res[9]~36_combout\ : std_logic;
SIGNAL \f_res[9]~reg0_q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \f_res[9]~37\ : std_logic;
SIGNAL \f_res[10]~38_combout\ : std_logic;
SIGNAL \f_res[10]~reg0_q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \f_res[10]~39\ : std_logic;
SIGNAL \f_res[11]~40_combout\ : std_logic;
SIGNAL \f_res[11]~reg0_q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \f_res[11]~41\ : std_logic;
SIGNAL \f_res[12]~42_combout\ : std_logic;
SIGNAL \f_res[12]~reg0_q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \f_res[12]~43\ : std_logic;
SIGNAL \f_res[13]~44_combout\ : std_logic;
SIGNAL \f_res[13]~reg0_q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \f_res[13]~45\ : std_logic;
SIGNAL \f_res[14]~46_combout\ : std_logic;
SIGNAL \f_res[14]~reg0_q\ : std_logic;
SIGNAL \f_res[14]~47\ : std_logic;
SIGNAL \f_res[15]~48_combout\ : std_logic;
SIGNAL \f_res[15]~reg0_q\ : std_logic;
SIGNAL \LUT_a|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \LUT_b|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL shift_num : std_logic_vector(5 DOWNTO 0);
SIGNAL U_tilde : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_U[31]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_U <= U;
ww_clk_in <= clk_in;
f_res <= ww_f_res;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT32\ & \Mult0|auto_generated|mac_mult1~DATAOUT31\ & \Mult0|auto_generated|mac_mult1~DATAOUT30\ & \Mult0|auto_generated|mac_mult1~DATAOUT29\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT28\ & \Mult0|auto_generated|mac_mult1~DATAOUT27\ & \Mult0|auto_generated|mac_mult1~DATAOUT26\ & \Mult0|auto_generated|mac_mult1~DATAOUT25\ & \Mult0|auto_generated|mac_mult1~DATAOUT24\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT23\ & \Mult0|auto_generated|mac_mult1~DATAOUT22\ & \Mult0|auto_generated|mac_mult1~DATAOUT21\ & \Mult0|auto_generated|mac_mult1~DATAOUT20\ & \Mult0|auto_generated|mac_mult1~DATAOUT19\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT18\ & \Mult0|auto_generated|mac_mult1~DATAOUT17\ & \Mult0|auto_generated|mac_mult1~DATAOUT16\ & \Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & \Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & \Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & \Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~2\ & \Mult0|auto_generated|mac_mult1~1\ & 
\Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out2~DATAOUT16\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out2~DATAOUT17\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out2~DATAOUT18\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out2~DATAOUT19\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out2~DATAOUT20\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out2~DATAOUT21\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out2~DATAOUT22\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out2~DATAOUT23\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out2~DATAOUT24\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out2~DATAOUT25\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out2~DATAOUT26\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out2~DATAOUT27\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out2~DATAOUT28\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out2~DATAOUT29\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out2~DATAOUT30\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out2~DATAOUT31\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out2~DATAOUT32\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & \ShiftLeft0~143_combout\ & \ShiftLeft0~138_combout\ & \ShiftLeft0~132_combout\ & \ShiftLeft0~127_combout\ & \ShiftLeft0~120_combout\ & \ShiftLeft0~114_combout\ & \ShiftLeft0~108_combout\ & 
\ShiftLeft0~103_combout\ & \ShiftLeft0~95_combout\ & \ShiftLeft0~88_combout\ & \ShiftLeft0~81_combout\ & \ShiftLeft0~74_combout\ & \ShiftLeft0~67_combout\ & \ShiftLeft0~56_combout\ & \ShiftLeft0~42_combout\ & \ShiftLeft0~27_combout\ & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\LUT_a|altsyncram_component|auto_generated|q_a\(15) & \LUT_a|altsyncram_component|auto_generated|q_a\(14) & \LUT_a|altsyncram_component|auto_generated|q_a\(13) & 
\LUT_a|altsyncram_component|auto_generated|q_a\(12) & \LUT_a|altsyncram_component|auto_generated|q_a\(11) & \LUT_a|altsyncram_component|auto_generated|q_a\(10) & \LUT_a|altsyncram_component|auto_generated|q_a\(9) & 
\LUT_a|altsyncram_component|auto_generated|q_a\(8) & \LUT_a|altsyncram_component|auto_generated|q_a\(7) & \LUT_a|altsyncram_component|auto_generated|q_a\(6) & \LUT_a|altsyncram_component|auto_generated|q_a\(5) & 
\LUT_a|altsyncram_component|auto_generated|q_a\(4) & \LUT_a|altsyncram_component|auto_generated|q_a\(3) & \LUT_a|altsyncram_component|auto_generated|q_a\(2) & \LUT_a|altsyncram_component|auto_generated|q_a\(1) & 
\LUT_a|altsyncram_component|auto_generated|q_a\(0) & gnd & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult1~DATAOUT32\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\AU0|LOD0|oc0|sum[5]~10_combout\ & \AU0|LOD0|oc0|sum[4]~8_combout\ & \AU0|LOD0|oc0|sum[3]~6_combout\ & \AU0|LOD0|oc0|sum[2]~4_combout\ & \AU0|LOD0|oc0|sum[1]~2_combout\ & 
\AU0|LOD0|oc0|sum[0]~0_combout\ & \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~52_combout\ & \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~26_combout\);

\LUT_a|altsyncram_component|auto_generated|q_a\(0) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\LUT_a|altsyncram_component|auto_generated|q_a\(1) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\LUT_a|altsyncram_component|auto_generated|q_a\(2) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\LUT_a|altsyncram_component|auto_generated|q_a\(3) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\LUT_a|altsyncram_component|auto_generated|q_a\(4) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\LUT_a|altsyncram_component|auto_generated|q_a\(5) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\LUT_a|altsyncram_component|auto_generated|q_a\(6) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\LUT_a|altsyncram_component|auto_generated|q_a\(7) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\LUT_a|altsyncram_component|auto_generated|q_a\(8) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\LUT_a|altsyncram_component|auto_generated|q_a\(9) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\LUT_a|altsyncram_component|auto_generated|q_a\(10) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\LUT_a|altsyncram_component|auto_generated|q_a\(11) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\LUT_a|altsyncram_component|auto_generated|q_a\(12) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\LUT_a|altsyncram_component|auto_generated|q_a\(13) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\LUT_a|altsyncram_component|auto_generated|q_a\(14) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\LUT_a|altsyncram_component|auto_generated|q_a\(15) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\LUT_b|altsyncram_component|auto_generated|q_a\(0) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\LUT_b|altsyncram_component|auto_generated|q_a\(1) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\LUT_b|altsyncram_component|auto_generated|q_a\(2) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\LUT_b|altsyncram_component|auto_generated|q_a\(3) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\LUT_b|altsyncram_component|auto_generated|q_a\(4) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\LUT_b|altsyncram_component|auto_generated|q_a\(5) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\LUT_b|altsyncram_component|auto_generated|q_a\(6) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\LUT_b|altsyncram_component|auto_generated|q_a\(7) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\LUT_b|altsyncram_component|auto_generated|q_a\(8) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\LUT_b|altsyncram_component|auto_generated|q_a\(9) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\LUT_b|altsyncram_component|auto_generated|q_a\(10) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\LUT_b|altsyncram_component|auto_generated|q_a\(11) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\LUT_b|altsyncram_component|auto_generated|q_a\(12) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\LUT_b|altsyncram_component|auto_generated|q_a\(13) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\LUT_b|altsyncram_component|auto_generated|q_a\(14) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\LUT_b|altsyncram_component|auto_generated|q_a\(15) <= \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);
\ALT_INV_U[31]~input_o\ <= NOT \U[31]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X81_Y73_N23
\f_res[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f_res[0]~reg0_q\,
	devoe => ww_devoe,
	o => \f_res[0]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\f_res[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f_res[1]~reg0_q\,
	devoe => ww_devoe,
	o => \f_res[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\f_res[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f_res[2]~reg0_q\,
	devoe => ww_devoe,
	o => \f_res[2]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\f_res[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f_res[3]~reg0_q\,
	devoe => ww_devoe,
	o => \f_res[3]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\f_res[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f_res[4]~reg0_q\,
	devoe => ww_devoe,
	o => \f_res[4]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\f_res[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f_res[5]~reg0_q\,
	devoe => ww_devoe,
	o => \f_res[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\f_res[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f_res[6]~reg0_q\,
	devoe => ww_devoe,
	o => \f_res[6]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\f_res[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f_res[7]~reg0_q\,
	devoe => ww_devoe,
	o => \f_res[7]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\f_res[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f_res[8]~reg0_q\,
	devoe => ww_devoe,
	o => \f_res[8]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\f_res[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f_res[9]~reg0_q\,
	devoe => ww_devoe,
	o => \f_res[9]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\f_res[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f_res[10]~reg0_q\,
	devoe => ww_devoe,
	o => \f_res[10]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\f_res[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f_res[11]~reg0_q\,
	devoe => ww_devoe,
	o => \f_res[11]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\f_res[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f_res[12]~reg0_q\,
	devoe => ww_devoe,
	o => \f_res[12]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\f_res[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f_res[13]~reg0_q\,
	devoe => ww_devoe,
	o => \f_res[13]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\f_res[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f_res[14]~reg0_q\,
	devoe => ww_devoe,
	o => \f_res[14]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\f_res[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f_res[15]~reg0_q\,
	devoe => ww_devoe,
	o => \f_res[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: CLKCTRL_G2
\clk_in~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~inputclkctrl_outclk\);

-- Location: IOIBUF_X60_Y73_N1
\U[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(31),
	o => \U[31]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\U[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(30),
	o => \U[30]~input_o\);

-- Location: IOIBUF_X87_Y73_N8
\U[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(29),
	o => \U[29]~input_o\);

-- Location: LCCOMB_X67_Y70_N4
\AU0|LOD0|gen_LOD:28:detector|o_or\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:28:detector|o_or~combout\ = (\U[31]~input_o\) # ((\U[30]~input_o\) # (\U[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[31]~input_o\,
	datac => \U[30]~input_o\,
	datad => \U[29]~input_o\,
	combout => \AU0|LOD0|gen_LOD:28:detector|o_or~combout\);

-- Location: IOIBUF_X81_Y73_N1
\U[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(28),
	o => \U[28]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\U[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(27),
	o => \U[27]~input_o\);

-- Location: LCCOMB_X66_Y70_N0
\AU0|LOD0|gen_LOD:26:detector|o_or\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:26:detector|o_or~combout\ = (\AU0|LOD0|gen_LOD:28:detector|o_or~combout\) # ((\U[28]~input_o\) # (\U[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|gen_LOD:28:detector|o_or~combout\,
	datab => \U[28]~input_o\,
	datad => \U[27]~input_o\,
	combout => \AU0|LOD0|gen_LOD:26:detector|o_or~combout\);

-- Location: IOIBUF_X74_Y73_N15
\U[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(26),
	o => \U[26]~input_o\);

-- Location: LCCOMB_X67_Y70_N10
\AU0|LOD0|gen_LOD:26:detector|o_or~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:26:detector|o_or~0_combout\ = (\U[31]~input_o\) # ((\U[29]~input_o\) # ((\U[30]~input_o\) # (\U[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[31]~input_o\,
	datab => \U[29]~input_o\,
	datac => \U[30]~input_o\,
	datad => \U[27]~input_o\,
	combout => \AU0|LOD0|gen_LOD:26:detector|o_or~0_combout\);

-- Location: IOIBUF_X85_Y73_N8
\U[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(25),
	o => \U[25]~input_o\);

-- Location: LCCOMB_X66_Y70_N2
\AU0|LOD0|oc0|Add23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add23~0_combout\ = (!\U[28]~input_o\ & (!\AU0|LOD0|gen_LOD:26:detector|o_or~0_combout\ & ((\U[26]~input_o\) # (\U[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[26]~input_o\,
	datab => \U[28]~input_o\,
	datac => \AU0|LOD0|gen_LOD:26:detector|o_or~0_combout\,
	datad => \U[25]~input_o\,
	combout => \AU0|LOD0|oc0|Add23~0_combout\);

-- Location: LCCOMB_X67_Y70_N20
\AU0|LOD0|oc0|Add26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add26~0_combout\ = (!\U[31]~input_o\ & (\U[28]~input_o\ & (!\U[30]~input_o\ & !\U[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[31]~input_o\,
	datab => \U[28]~input_o\,
	datac => \U[30]~input_o\,
	datad => \U[29]~input_o\,
	combout => \AU0|LOD0|oc0|Add26~0_combout\);

-- Location: IOIBUF_X67_Y73_N8
\U[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(24),
	o => \U[24]~input_o\);

-- Location: LCCOMB_X66_Y70_N20
\AU0|LOD0|oc0|Add23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add23~1_combout\ = (!\AU0|LOD0|gen_LOD:26:detector|o_or~combout\ & ((\U[26]~input_o\) # ((\U[24]~input_o\ & !\U[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[26]~input_o\,
	datab => \AU0|LOD0|gen_LOD:26:detector|o_or~combout\,
	datac => \U[24]~input_o\,
	datad => \U[25]~input_o\,
	combout => \AU0|LOD0|oc0|Add23~1_combout\);

-- Location: LCCOMB_X66_Y70_N12
\AU0|LOD0|oc0|Add25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add25~0_combout\ = (\AU0|LOD0|oc0|Add26~0_combout\ & (\AU0|LOD0|oc0|Add23~1_combout\ $ (VCC))) # (!\AU0|LOD0|oc0|Add26~0_combout\ & (\AU0|LOD0|oc0|Add23~1_combout\ & VCC))
-- \AU0|LOD0|oc0|Add25~1\ = CARRY((\AU0|LOD0|oc0|Add26~0_combout\ & \AU0|LOD0|oc0|Add23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add26~0_combout\,
	datab => \AU0|LOD0|oc0|Add23~1_combout\,
	datad => VCC,
	combout => \AU0|LOD0|oc0|Add25~0_combout\,
	cout => \AU0|LOD0|oc0|Add25~1\);

-- Location: LCCOMB_X66_Y70_N14
\AU0|LOD0|oc0|Add25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add25~2_combout\ = (\AU0|LOD0|gen_LOD:28:detector|o_or~combout\ & ((\AU0|LOD0|oc0|Add23~0_combout\ & (\AU0|LOD0|oc0|Add25~1\ & VCC)) # (!\AU0|LOD0|oc0|Add23~0_combout\ & (!\AU0|LOD0|oc0|Add25~1\)))) # 
-- (!\AU0|LOD0|gen_LOD:28:detector|o_or~combout\ & ((\AU0|LOD0|oc0|Add23~0_combout\ & (!\AU0|LOD0|oc0|Add25~1\)) # (!\AU0|LOD0|oc0|Add23~0_combout\ & ((\AU0|LOD0|oc0|Add25~1\) # (GND)))))
-- \AU0|LOD0|oc0|Add25~3\ = CARRY((\AU0|LOD0|gen_LOD:28:detector|o_or~combout\ & (!\AU0|LOD0|oc0|Add23~0_combout\ & !\AU0|LOD0|oc0|Add25~1\)) # (!\AU0|LOD0|gen_LOD:28:detector|o_or~combout\ & ((!\AU0|LOD0|oc0|Add25~1\) # (!\AU0|LOD0|oc0|Add23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|gen_LOD:28:detector|o_or~combout\,
	datab => \AU0|LOD0|oc0|Add23~0_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add25~1\,
	combout => \AU0|LOD0|oc0|Add25~2_combout\,
	cout => \AU0|LOD0|oc0|Add25~3\);

-- Location: LCCOMB_X66_Y70_N16
\AU0|LOD0|oc0|Add25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add25~4_combout\ = (\AU0|LOD0|gen_LOD:26:detector|o_or~combout\ & (\AU0|LOD0|oc0|Add25~3\ $ (GND))) # (!\AU0|LOD0|gen_LOD:26:detector|o_or~combout\ & (!\AU0|LOD0|oc0|Add25~3\ & VCC))
-- \AU0|LOD0|oc0|Add25~5\ = CARRY((\AU0|LOD0|gen_LOD:26:detector|o_or~combout\ & !\AU0|LOD0|oc0|Add25~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AU0|LOD0|gen_LOD:26:detector|o_or~combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add25~3\,
	combout => \AU0|LOD0|oc0|Add25~4_combout\,
	cout => \AU0|LOD0|oc0|Add25~5\);

-- Location: LCCOMB_X66_Y70_N18
\AU0|LOD0|oc0|Add25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add25~6_combout\ = \AU0|LOD0|oc0|Add25~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \AU0|LOD0|oc0|Add25~5\,
	combout => \AU0|LOD0|oc0|Add25~6_combout\);

-- Location: IOIBUF_X67_Y73_N1
\U[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(23),
	o => \U[23]~input_o\);

-- Location: LCCOMB_X67_Y69_N0
\AU0|LOD0|gen_LOD:22:detector|o_or~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:22:detector|o_or~0_combout\ = (\U[28]~input_o\) # ((\U[26]~input_o\) # (\U[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[28]~input_o\,
	datab => \U[26]~input_o\,
	datac => \U[23]~input_o\,
	combout => \AU0|LOD0|gen_LOD:22:detector|o_or~0_combout\);

-- Location: LCCOMB_X67_Y70_N30
\AU0|LOD0|gen_LOD:22:detector|o_or~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\ = (\U[24]~input_o\) # ((\AU0|LOD0|gen_LOD:22:detector|o_or~0_combout\) # ((\AU0|LOD0|gen_LOD:26:detector|o_or~0_combout\) # (\U[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[24]~input_o\,
	datab => \AU0|LOD0|gen_LOD:22:detector|o_or~0_combout\,
	datac => \AU0|LOD0|gen_LOD:26:detector|o_or~0_combout\,
	datad => \U[25]~input_o\,
	combout => \AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\);

-- Location: IOIBUF_X69_Y73_N22
\U[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(22),
	o => \U[22]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\U[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(21),
	o => \U[21]~input_o\);

-- Location: LCCOMB_X67_Y72_N24
\AU0|LOD0|gen_LOD:20:detector|o_or~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\ = (\U[22]~input_o\) # (\U[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U[22]~input_o\,
	datac => \U[21]~input_o\,
	combout => \AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\);

-- Location: IOIBUF_X72_Y73_N8
\U[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(19),
	o => \U[19]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\U[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(20),
	o => \U[20]~input_o\);

-- Location: LCCOMB_X67_Y72_N22
\AU0|LOD0|gen_LOD:18:detector|o_or\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:18:detector|o_or~combout\ = (\AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\) # ((\AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\) # ((\U[19]~input_o\) # (\U[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\,
	datab => \AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\,
	datac => \U[19]~input_o\,
	datad => \U[20]~input_o\,
	combout => \AU0|LOD0|gen_LOD:18:detector|o_or~combout\);

-- Location: LCCOMB_X67_Y72_N26
\AU0|LOD0|oc0|Add19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add19~0_combout\ = (!\AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\ & ((\U[21]~input_o\) # (\U[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[21]~input_o\,
	datab => \U[22]~input_o\,
	datac => \AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\,
	combout => \AU0|LOD0|oc0|Add19~0_combout\);

-- Location: LCCOMB_X67_Y72_N10
\AU0|LOD0|gen_LOD:18:detector|o_or~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:18:detector|o_or~0_combout\ = (\U[19]~input_o\) # (\U[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U[19]~input_o\,
	datad => \U[20]~input_o\,
	combout => \AU0|LOD0|gen_LOD:18:detector|o_or~0_combout\);

-- Location: IOIBUF_X52_Y73_N8
\U[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(17),
	o => \U[17]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\U[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(18),
	o => \U[18]~input_o\);

-- Location: LCCOMB_X67_Y72_N0
\AU0|LOD0|gen_LOD:16:detector|o_or~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\ = (\U[17]~input_o\) # (\U[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U[17]~input_o\,
	datad => \U[18]~input_o\,
	combout => \AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\);

-- Location: LCCOMB_X67_Y72_N20
\AU0|LOD0|oc0|Add15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add15~0_combout\ = (!\AU0|LOD0|gen_LOD:18:detector|o_or~0_combout\ & (!\AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\ & (!\AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\ & \AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|gen_LOD:18:detector|o_or~0_combout\,
	datab => \AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\,
	datac => \AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\,
	datad => \AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\,
	combout => \AU0|LOD0|oc0|Add15~0_combout\);

-- Location: LCCOMB_X67_Y72_N6
\AU0|LOD0|oc0|Add19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add19~1_combout\ = (!\AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\ & ((\U[22]~input_o\) # ((!\U[21]~input_o\ & \U[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[21]~input_o\,
	datab => \AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\,
	datac => \U[22]~input_o\,
	datad => \U[20]~input_o\,
	combout => \AU0|LOD0|oc0|Add19~1_combout\);

-- Location: IOIBUF_X65_Y73_N22
\U[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(16),
	o => \U[16]~input_o\);

-- Location: LCCOMB_X67_Y72_N28
\AU0|LOD0|oc0|Add15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add15~1_combout\ = (!\AU0|LOD0|gen_LOD:18:detector|o_or~combout\ & ((\U[18]~input_o\) # ((\U[16]~input_o\ & !\U[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|gen_LOD:18:detector|o_or~combout\,
	datab => \U[18]~input_o\,
	datac => \U[16]~input_o\,
	datad => \U[17]~input_o\,
	combout => \AU0|LOD0|oc0|Add15~1_combout\);

-- Location: LCCOMB_X67_Y72_N12
\AU0|LOD0|oc0|Add17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add17~0_combout\ = (\AU0|LOD0|oc0|Add19~1_combout\ & (\AU0|LOD0|oc0|Add15~1_combout\ $ (VCC))) # (!\AU0|LOD0|oc0|Add19~1_combout\ & (\AU0|LOD0|oc0|Add15~1_combout\ & VCC))
-- \AU0|LOD0|oc0|Add17~1\ = CARRY((\AU0|LOD0|oc0|Add19~1_combout\ & \AU0|LOD0|oc0|Add15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add19~1_combout\,
	datab => \AU0|LOD0|oc0|Add15~1_combout\,
	datad => VCC,
	combout => \AU0|LOD0|oc0|Add17~0_combout\,
	cout => \AU0|LOD0|oc0|Add17~1\);

-- Location: LCCOMB_X67_Y72_N14
\AU0|LOD0|oc0|Add17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add17~2_combout\ = (\AU0|LOD0|oc0|Add19~0_combout\ & ((\AU0|LOD0|oc0|Add15~0_combout\ & (\AU0|LOD0|oc0|Add17~1\ & VCC)) # (!\AU0|LOD0|oc0|Add15~0_combout\ & (!\AU0|LOD0|oc0|Add17~1\)))) # (!\AU0|LOD0|oc0|Add19~0_combout\ & 
-- ((\AU0|LOD0|oc0|Add15~0_combout\ & (!\AU0|LOD0|oc0|Add17~1\)) # (!\AU0|LOD0|oc0|Add15~0_combout\ & ((\AU0|LOD0|oc0|Add17~1\) # (GND)))))
-- \AU0|LOD0|oc0|Add17~3\ = CARRY((\AU0|LOD0|oc0|Add19~0_combout\ & (!\AU0|LOD0|oc0|Add15~0_combout\ & !\AU0|LOD0|oc0|Add17~1\)) # (!\AU0|LOD0|oc0|Add19~0_combout\ & ((!\AU0|LOD0|oc0|Add17~1\) # (!\AU0|LOD0|oc0|Add15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add19~0_combout\,
	datab => \AU0|LOD0|oc0|Add15~0_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add17~1\,
	combout => \AU0|LOD0|oc0|Add17~2_combout\,
	cout => \AU0|LOD0|oc0|Add17~3\);

-- Location: LCCOMB_X67_Y72_N16
\AU0|LOD0|oc0|Add17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add17~4_combout\ = ((\AU0|LOD0|gen_LOD:18:detector|o_or~combout\ $ (\AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\ $ (!\AU0|LOD0|oc0|Add17~3\)))) # (GND)
-- \AU0|LOD0|oc0|Add17~5\ = CARRY((\AU0|LOD0|gen_LOD:18:detector|o_or~combout\ & ((\AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\) # (!\AU0|LOD0|oc0|Add17~3\))) # (!\AU0|LOD0|gen_LOD:18:detector|o_or~combout\ & (\AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\ & 
-- !\AU0|LOD0|oc0|Add17~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|gen_LOD:18:detector|o_or~combout\,
	datab => \AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add17~3\,
	combout => \AU0|LOD0|oc0|Add17~4_combout\,
	cout => \AU0|LOD0|oc0|Add17~5\);

-- Location: LCCOMB_X67_Y72_N18
\AU0|LOD0|oc0|Add17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add17~6_combout\ = \AU0|LOD0|oc0|Add17~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \AU0|LOD0|oc0|Add17~5\,
	combout => \AU0|LOD0|oc0|Add17~6_combout\);

-- Location: LCCOMB_X66_Y72_N22
\AU0|LOD0|oc0|Add21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add21~0_combout\ = (\AU0|LOD0|oc0|Add25~0_combout\ & (\AU0|LOD0|oc0|Add17~0_combout\ $ (VCC))) # (!\AU0|LOD0|oc0|Add25~0_combout\ & (\AU0|LOD0|oc0|Add17~0_combout\ & VCC))
-- \AU0|LOD0|oc0|Add21~1\ = CARRY((\AU0|LOD0|oc0|Add25~0_combout\ & \AU0|LOD0|oc0|Add17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add25~0_combout\,
	datab => \AU0|LOD0|oc0|Add17~0_combout\,
	datad => VCC,
	combout => \AU0|LOD0|oc0|Add21~0_combout\,
	cout => \AU0|LOD0|oc0|Add21~1\);

-- Location: LCCOMB_X66_Y72_N24
\AU0|LOD0|oc0|Add21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add21~2_combout\ = (\AU0|LOD0|oc0|Add25~2_combout\ & ((\AU0|LOD0|oc0|Add17~2_combout\ & (\AU0|LOD0|oc0|Add21~1\ & VCC)) # (!\AU0|LOD0|oc0|Add17~2_combout\ & (!\AU0|LOD0|oc0|Add21~1\)))) # (!\AU0|LOD0|oc0|Add25~2_combout\ & 
-- ((\AU0|LOD0|oc0|Add17~2_combout\ & (!\AU0|LOD0|oc0|Add21~1\)) # (!\AU0|LOD0|oc0|Add17~2_combout\ & ((\AU0|LOD0|oc0|Add21~1\) # (GND)))))
-- \AU0|LOD0|oc0|Add21~3\ = CARRY((\AU0|LOD0|oc0|Add25~2_combout\ & (!\AU0|LOD0|oc0|Add17~2_combout\ & !\AU0|LOD0|oc0|Add21~1\)) # (!\AU0|LOD0|oc0|Add25~2_combout\ & ((!\AU0|LOD0|oc0|Add21~1\) # (!\AU0|LOD0|oc0|Add17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add25~2_combout\,
	datab => \AU0|LOD0|oc0|Add17~2_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add21~1\,
	combout => \AU0|LOD0|oc0|Add21~2_combout\,
	cout => \AU0|LOD0|oc0|Add21~3\);

-- Location: LCCOMB_X66_Y72_N26
\AU0|LOD0|oc0|Add21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add21~4_combout\ = ((\AU0|LOD0|oc0|Add25~4_combout\ $ (\AU0|LOD0|oc0|Add17~4_combout\ $ (!\AU0|LOD0|oc0|Add21~3\)))) # (GND)
-- \AU0|LOD0|oc0|Add21~5\ = CARRY((\AU0|LOD0|oc0|Add25~4_combout\ & ((\AU0|LOD0|oc0|Add17~4_combout\) # (!\AU0|LOD0|oc0|Add21~3\))) # (!\AU0|LOD0|oc0|Add25~4_combout\ & (\AU0|LOD0|oc0|Add17~4_combout\ & !\AU0|LOD0|oc0|Add21~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add25~4_combout\,
	datab => \AU0|LOD0|oc0|Add17~4_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add21~3\,
	combout => \AU0|LOD0|oc0|Add21~4_combout\,
	cout => \AU0|LOD0|oc0|Add21~5\);

-- Location: LCCOMB_X66_Y72_N28
\AU0|LOD0|oc0|Add21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add21~6_combout\ = (\AU0|LOD0|oc0|Add25~6_combout\ & ((\AU0|LOD0|oc0|Add17~6_combout\ & (\AU0|LOD0|oc0|Add21~5\ & VCC)) # (!\AU0|LOD0|oc0|Add17~6_combout\ & (!\AU0|LOD0|oc0|Add21~5\)))) # (!\AU0|LOD0|oc0|Add25~6_combout\ & 
-- ((\AU0|LOD0|oc0|Add17~6_combout\ & (!\AU0|LOD0|oc0|Add21~5\)) # (!\AU0|LOD0|oc0|Add17~6_combout\ & ((\AU0|LOD0|oc0|Add21~5\) # (GND)))))
-- \AU0|LOD0|oc0|Add21~7\ = CARRY((\AU0|LOD0|oc0|Add25~6_combout\ & (!\AU0|LOD0|oc0|Add17~6_combout\ & !\AU0|LOD0|oc0|Add21~5\)) # (!\AU0|LOD0|oc0|Add25~6_combout\ & ((!\AU0|LOD0|oc0|Add21~5\) # (!\AU0|LOD0|oc0|Add17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add25~6_combout\,
	datab => \AU0|LOD0|oc0|Add17~6_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add21~5\,
	combout => \AU0|LOD0|oc0|Add21~6_combout\,
	cout => \AU0|LOD0|oc0|Add21~7\);

-- Location: LCCOMB_X66_Y72_N30
\AU0|LOD0|oc0|Add21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add21~8_combout\ = !\AU0|LOD0|oc0|Add21~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \AU0|LOD0|oc0|Add21~7\,
	combout => \AU0|LOD0|oc0|Add21~8_combout\);

-- Location: IOIBUF_X67_Y73_N22
\U[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(14),
	o => \U[14]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\U[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(13),
	o => \U[13]~input_o\);

-- Location: LCCOMB_X65_Y69_N10
\AU0|LOD0|gen_LOD:12:detector|o_or~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\ = (\U[14]~input_o\) # (\U[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U[14]~input_o\,
	datad => \U[13]~input_o\,
	combout => \AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\);

-- Location: IOIBUF_X65_Y73_N15
\U[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(15),
	o => \U[15]~input_o\);

-- Location: LCCOMB_X65_Y69_N28
\AU0|LOD0|gen_LOD:14:detector|o_or~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:14:detector|o_or~2_combout\ = (\U[15]~input_o\) # (\U[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U[15]~input_o\,
	datad => \U[16]~input_o\,
	combout => \AU0|LOD0|gen_LOD:14:detector|o_or~2_combout\);

-- Location: IOIBUF_X67_Y73_N15
\U[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(12),
	o => \U[12]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\U[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(11),
	o => \U[11]~input_o\);

-- Location: LCCOMB_X65_Y69_N4
\AU0|LOD0|gen_LOD:10:detector|o_or~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:10:detector|o_or~0_combout\ = (\U[12]~input_o\) # (\U[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U[12]~input_o\,
	datac => \U[11]~input_o\,
	combout => \AU0|LOD0|gen_LOD:10:detector|o_or~0_combout\);

-- Location: LCCOMB_X67_Y72_N4
\AU0|LOD0|gen_LOD:16:detector|o_or\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:16:detector|o_or~combout\ = (\AU0|LOD0|gen_LOD:18:detector|o_or~0_combout\) # ((\AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\) # ((\AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\) # (\AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|gen_LOD:18:detector|o_or~0_combout\,
	datab => \AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\,
	datac => \AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\,
	datad => \AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\,
	combout => \AU0|LOD0|gen_LOD:16:detector|o_or~combout\);

-- Location: LCCOMB_X65_Y69_N18
\AU0|LOD0|gen_LOD:10:detector|o_or\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:10:detector|o_or~combout\ = (\AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\) # ((\AU0|LOD0|gen_LOD:14:detector|o_or~2_combout\) # ((\AU0|LOD0|gen_LOD:10:detector|o_or~0_combout\) # (\AU0|LOD0|gen_LOD:16:detector|o_or~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\,
	datab => \AU0|LOD0|gen_LOD:14:detector|o_or~2_combout\,
	datac => \AU0|LOD0|gen_LOD:10:detector|o_or~0_combout\,
	datad => \AU0|LOD0|gen_LOD:16:detector|o_or~combout\,
	combout => \AU0|LOD0|gen_LOD:10:detector|o_or~combout\);

-- Location: IOIBUF_X54_Y73_N8
\U[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(9),
	o => \U[9]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\U[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(10),
	o => \U[10]~input_o\);

-- Location: LCCOMB_X62_Y71_N24
\AU0|LOD0|oc0|Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add7~0_combout\ = (!\AU0|LOD0|gen_LOD:10:detector|o_or~combout\ & ((\U[9]~input_o\) # (\U[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[9]~input_o\,
	datab => \U[10]~input_o\,
	datad => \AU0|LOD0|gen_LOD:10:detector|o_or~combout\,
	combout => \AU0|LOD0|oc0|Add7~0_combout\);

-- Location: LCCOMB_X65_Y72_N0
\AU0|LOD0|gen_LOD:12:detector|o_or\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:12:detector|o_or~combout\ = (\U[16]~input_o\) # ((\U[15]~input_o\) # ((\AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\) # (\AU0|LOD0|gen_LOD:16:detector|o_or~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[16]~input_o\,
	datab => \U[15]~input_o\,
	datac => \AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\,
	datad => \AU0|LOD0|gen_LOD:16:detector|o_or~combout\,
	combout => \AU0|LOD0|gen_LOD:12:detector|o_or~combout\);

-- Location: LCCOMB_X65_Y72_N12
\AU0|LOD0|oc0|Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add10~0_combout\ = (!\AU0|LOD0|gen_LOD:16:detector|o_or~combout\ & (!\AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\ & (!\AU0|LOD0|gen_LOD:14:detector|o_or~2_combout\ & \U[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|gen_LOD:16:detector|o_or~combout\,
	datab => \AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\,
	datac => \AU0|LOD0|gen_LOD:14:detector|o_or~2_combout\,
	datad => \U[12]~input_o\,
	combout => \AU0|LOD0|oc0|Add10~0_combout\);

-- Location: IOIBUF_X60_Y73_N15
\U[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(8),
	o => \U[8]~input_o\);

-- Location: LCCOMB_X62_Y71_N22
\AU0|LOD0|oc0|Add7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add7~1_combout\ = (!\AU0|LOD0|gen_LOD:10:detector|o_or~combout\ & ((\U[10]~input_o\) # ((!\U[9]~input_o\ & \U[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[9]~input_o\,
	datab => \AU0|LOD0|gen_LOD:10:detector|o_or~combout\,
	datac => \U[8]~input_o\,
	datad => \U[10]~input_o\,
	combout => \AU0|LOD0|oc0|Add7~1_combout\);

-- Location: LCCOMB_X65_Y72_N24
\AU0|LOD0|oc0|Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add9~0_combout\ = (\AU0|LOD0|oc0|Add10~0_combout\ & (\AU0|LOD0|oc0|Add7~1_combout\ $ (VCC))) # (!\AU0|LOD0|oc0|Add10~0_combout\ & (\AU0|LOD0|oc0|Add7~1_combout\ & VCC))
-- \AU0|LOD0|oc0|Add9~1\ = CARRY((\AU0|LOD0|oc0|Add10~0_combout\ & \AU0|LOD0|oc0|Add7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add10~0_combout\,
	datab => \AU0|LOD0|oc0|Add7~1_combout\,
	datad => VCC,
	combout => \AU0|LOD0|oc0|Add9~0_combout\,
	cout => \AU0|LOD0|oc0|Add9~1\);

-- Location: LCCOMB_X65_Y72_N26
\AU0|LOD0|oc0|Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add9~2_combout\ = (\AU0|LOD0|oc0|Add7~0_combout\ & ((\AU0|LOD0|gen_LOD:12:detector|o_or~combout\ & (\AU0|LOD0|oc0|Add9~1\ & VCC)) # (!\AU0|LOD0|gen_LOD:12:detector|o_or~combout\ & (!\AU0|LOD0|oc0|Add9~1\)))) # (!\AU0|LOD0|oc0|Add7~0_combout\ 
-- & ((\AU0|LOD0|gen_LOD:12:detector|o_or~combout\ & (!\AU0|LOD0|oc0|Add9~1\)) # (!\AU0|LOD0|gen_LOD:12:detector|o_or~combout\ & ((\AU0|LOD0|oc0|Add9~1\) # (GND)))))
-- \AU0|LOD0|oc0|Add9~3\ = CARRY((\AU0|LOD0|oc0|Add7~0_combout\ & (!\AU0|LOD0|gen_LOD:12:detector|o_or~combout\ & !\AU0|LOD0|oc0|Add9~1\)) # (!\AU0|LOD0|oc0|Add7~0_combout\ & ((!\AU0|LOD0|oc0|Add9~1\) # (!\AU0|LOD0|gen_LOD:12:detector|o_or~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add7~0_combout\,
	datab => \AU0|LOD0|gen_LOD:12:detector|o_or~combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add9~1\,
	combout => \AU0|LOD0|oc0|Add9~2_combout\,
	cout => \AU0|LOD0|oc0|Add9~3\);

-- Location: LCCOMB_X65_Y72_N28
\AU0|LOD0|oc0|Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add9~4_combout\ = (\AU0|LOD0|gen_LOD:10:detector|o_or~combout\ & (\AU0|LOD0|oc0|Add9~3\ $ (GND))) # (!\AU0|LOD0|gen_LOD:10:detector|o_or~combout\ & (!\AU0|LOD0|oc0|Add9~3\ & VCC))
-- \AU0|LOD0|oc0|Add9~5\ = CARRY((\AU0|LOD0|gen_LOD:10:detector|o_or~combout\ & !\AU0|LOD0|oc0|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AU0|LOD0|gen_LOD:10:detector|o_or~combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add9~3\,
	combout => \AU0|LOD0|oc0|Add9~4_combout\,
	cout => \AU0|LOD0|oc0|Add9~5\);

-- Location: LCCOMB_X65_Y72_N30
\AU0|LOD0|oc0|Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add9~6_combout\ = \AU0|LOD0|oc0|Add9~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \AU0|LOD0|oc0|Add9~5\,
	combout => \AU0|LOD0|oc0|Add9~6_combout\);

-- Location: IOIBUF_X52_Y73_N15
\U[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(4),
	o => \U[4]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\U[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(2),
	o => \U[2]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\U[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(1),
	o => \U[1]~input_o\);

-- Location: LCCOMB_X63_Y72_N24
\AU0|LOD0|oc0|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add1~1_combout\ = (!\U[2]~input_o\ & \U[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U[2]~input_o\,
	datad => \U[1]~input_o\,
	combout => \AU0|LOD0|oc0|Add1~1_combout\);

-- Location: IOIBUF_X58_Y73_N15
\U[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(3),
	o => \U[3]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\U[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(5),
	o => \U[5]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\U[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(6),
	o => \U[6]~input_o\);

-- Location: LCCOMB_X62_Y71_N20
\AU0|LOD0|gen_LOD:8:detector|o_or~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:8:detector|o_or~0_combout\ = (\U[9]~input_o\) # (\U[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[9]~input_o\,
	datad => \U[10]~input_o\,
	combout => \AU0|LOD0|gen_LOD:8:detector|o_or~0_combout\);

-- Location: IOIBUF_X60_Y73_N8
\U[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(7),
	o => \U[7]~input_o\);

-- Location: LCCOMB_X62_Y71_N30
\AU0|LOD0|gen_LOD:6:detector|o_or\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:6:detector|o_or~combout\ = (\U[8]~input_o\) # ((\AU0|LOD0|gen_LOD:8:detector|o_or~0_combout\) # ((\U[7]~input_o\) # (\AU0|LOD0|gen_LOD:10:detector|o_or~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[8]~input_o\,
	datab => \AU0|LOD0|gen_LOD:8:detector|o_or~0_combout\,
	datac => \U[7]~input_o\,
	datad => \AU0|LOD0|gen_LOD:10:detector|o_or~combout\,
	combout => \AU0|LOD0|gen_LOD:6:detector|o_or~combout\);

-- Location: LCCOMB_X63_Y71_N24
\AU0|LOD0|gen_LOD:4:detector|o_or~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:4:detector|o_or~0_combout\ = (!\U[5]~input_o\ & (!\U[6]~input_o\ & !\AU0|LOD0|gen_LOD:6:detector|o_or~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U[5]~input_o\,
	datac => \U[6]~input_o\,
	datad => \AU0|LOD0|gen_LOD:6:detector|o_or~combout\,
	combout => \AU0|LOD0|gen_LOD:4:detector|o_or~0_combout\);

-- Location: LCCOMB_X63_Y71_N20
\AU0|LOD0|oc0|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add1~2_combout\ = (\AU0|LOD0|oc0|Add1~1_combout\) # ((\U[3]~input_o\) # ((\U[4]~input_o\) # (!\AU0|LOD0|gen_LOD:4:detector|o_or~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add1~1_combout\,
	datab => \U[3]~input_o\,
	datac => \U[4]~input_o\,
	datad => \AU0|LOD0|gen_LOD:4:detector|o_or~0_combout\,
	combout => \AU0|LOD0|oc0|Add1~2_combout\);

-- Location: LCCOMB_X63_Y71_N14
\AU0|LOD0|oc0|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add1~0_combout\ = (\U[2]~input_o\) # ((\U[3]~input_o\) # ((\U[4]~input_o\) # (!\AU0|LOD0|gen_LOD:4:detector|o_or~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[2]~input_o\,
	datab => \U[3]~input_o\,
	datac => \U[4]~input_o\,
	datad => \AU0|LOD0|gen_LOD:4:detector|o_or~0_combout\,
	combout => \AU0|LOD0|oc0|Add1~0_combout\);

-- Location: LCCOMB_X63_Y71_N2
\AU0|LOD0|oc0|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add3~0_combout\ = ((\U[4]~input_o\ & (\AU0|LOD0|oc0|Add1~2_combout\ & \AU0|LOD0|oc0|Add1~0_combout\))) # (!\AU0|LOD0|gen_LOD:4:detector|o_or~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[4]~input_o\,
	datab => \AU0|LOD0|oc0|Add1~2_combout\,
	datac => \AU0|LOD0|oc0|Add1~0_combout\,
	datad => \AU0|LOD0|gen_LOD:4:detector|o_or~0_combout\,
	combout => \AU0|LOD0|oc0|Add3~0_combout\);

-- Location: LCCOMB_X63_Y71_N0
\AU0|LOD0|oc0|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add3~1_combout\ = \AU0|LOD0|oc0|Add1~0_combout\ $ ((((\U[4]~input_o\ & \AU0|LOD0|oc0|Add1~2_combout\)) # (!\AU0|LOD0|gen_LOD:4:detector|o_or~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[4]~input_o\,
	datab => \AU0|LOD0|oc0|Add1~2_combout\,
	datac => \AU0|LOD0|oc0|Add1~0_combout\,
	datad => \AU0|LOD0|gen_LOD:4:detector|o_or~0_combout\,
	combout => \AU0|LOD0|oc0|Add3~1_combout\);

-- Location: LCCOMB_X63_Y71_N30
\AU0|LOD0|oc0|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add3~2_combout\ = ((!\U[4]~input_o\ & ((\AU0|LOD0|oc0|Add1~1_combout\) # (\U[3]~input_o\)))) # (!\AU0|LOD0|gen_LOD:4:detector|o_or~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add1~1_combout\,
	datab => \U[3]~input_o\,
	datac => \U[4]~input_o\,
	datad => \AU0|LOD0|gen_LOD:4:detector|o_or~0_combout\,
	combout => \AU0|LOD0|oc0|Add3~2_combout\);

-- Location: LCCOMB_X62_Y71_N16
\AU0|LOD0|oc0|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add4~0_combout\ = (\U[6]~input_o\ & !\AU0|LOD0|gen_LOD:6:detector|o_or~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U[6]~input_o\,
	datac => \AU0|LOD0|gen_LOD:6:detector|o_or~combout\,
	combout => \AU0|LOD0|oc0|Add4~0_combout\);

-- Location: LCCOMB_X62_Y71_N0
\AU0|LOD0|oc0|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add5~0_combout\ = (\AU0|LOD0|oc0|Add3~2_combout\ & (\AU0|LOD0|oc0|Add4~0_combout\ $ (VCC))) # (!\AU0|LOD0|oc0|Add3~2_combout\ & (\AU0|LOD0|oc0|Add4~0_combout\ & VCC))
-- \AU0|LOD0|oc0|Add5~1\ = CARRY((\AU0|LOD0|oc0|Add3~2_combout\ & \AU0|LOD0|oc0|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add3~2_combout\,
	datab => \AU0|LOD0|oc0|Add4~0_combout\,
	datad => VCC,
	combout => \AU0|LOD0|oc0|Add5~0_combout\,
	cout => \AU0|LOD0|oc0|Add5~1\);

-- Location: LCCOMB_X62_Y71_N2
\AU0|LOD0|oc0|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add5~2_combout\ = (\AU0|LOD0|gen_LOD:6:detector|o_or~combout\ & ((\AU0|LOD0|oc0|Add3~1_combout\ & (\AU0|LOD0|oc0|Add5~1\ & VCC)) # (!\AU0|LOD0|oc0|Add3~1_combout\ & (!\AU0|LOD0|oc0|Add5~1\)))) # (!\AU0|LOD0|gen_LOD:6:detector|o_or~combout\ & 
-- ((\AU0|LOD0|oc0|Add3~1_combout\ & (!\AU0|LOD0|oc0|Add5~1\)) # (!\AU0|LOD0|oc0|Add3~1_combout\ & ((\AU0|LOD0|oc0|Add5~1\) # (GND)))))
-- \AU0|LOD0|oc0|Add5~3\ = CARRY((\AU0|LOD0|gen_LOD:6:detector|o_or~combout\ & (!\AU0|LOD0|oc0|Add3~1_combout\ & !\AU0|LOD0|oc0|Add5~1\)) # (!\AU0|LOD0|gen_LOD:6:detector|o_or~combout\ & ((!\AU0|LOD0|oc0|Add5~1\) # (!\AU0|LOD0|oc0|Add3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|gen_LOD:6:detector|o_or~combout\,
	datab => \AU0|LOD0|oc0|Add3~1_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add5~1\,
	combout => \AU0|LOD0|oc0|Add5~2_combout\,
	cout => \AU0|LOD0|oc0|Add5~3\);

-- Location: LCCOMB_X62_Y71_N4
\AU0|LOD0|oc0|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add5~4_combout\ = (\AU0|LOD0|oc0|Add3~0_combout\ & (\AU0|LOD0|oc0|Add5~3\ $ (GND))) # (!\AU0|LOD0|oc0|Add3~0_combout\ & (!\AU0|LOD0|oc0|Add5~3\ & VCC))
-- \AU0|LOD0|oc0|Add5~5\ = CARRY((\AU0|LOD0|oc0|Add3~0_combout\ & !\AU0|LOD0|oc0|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add3~0_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add5~3\,
	combout => \AU0|LOD0|oc0|Add5~4_combout\,
	cout => \AU0|LOD0|oc0|Add5~5\);

-- Location: LCCOMB_X62_Y71_N6
\AU0|LOD0|oc0|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add5~6_combout\ = \AU0|LOD0|oc0|Add5~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \AU0|LOD0|oc0|Add5~5\,
	combout => \AU0|LOD0|oc0|Add5~6_combout\);

-- Location: LCCOMB_X65_Y72_N16
\AU0|LOD0|oc0|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add11~0_combout\ = (\AU0|LOD0|oc0|Add5~0_combout\ & (\AU0|LOD0|oc0|Add9~0_combout\ $ (VCC))) # (!\AU0|LOD0|oc0|Add5~0_combout\ & (\AU0|LOD0|oc0|Add9~0_combout\ & VCC))
-- \AU0|LOD0|oc0|Add11~1\ = CARRY((\AU0|LOD0|oc0|Add5~0_combout\ & \AU0|LOD0|oc0|Add9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add5~0_combout\,
	datab => \AU0|LOD0|oc0|Add9~0_combout\,
	datad => VCC,
	combout => \AU0|LOD0|oc0|Add11~0_combout\,
	cout => \AU0|LOD0|oc0|Add11~1\);

-- Location: LCCOMB_X65_Y72_N18
\AU0|LOD0|oc0|Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add11~2_combout\ = (\AU0|LOD0|oc0|Add9~2_combout\ & ((\AU0|LOD0|oc0|Add5~2_combout\ & (\AU0|LOD0|oc0|Add11~1\ & VCC)) # (!\AU0|LOD0|oc0|Add5~2_combout\ & (!\AU0|LOD0|oc0|Add11~1\)))) # (!\AU0|LOD0|oc0|Add9~2_combout\ & 
-- ((\AU0|LOD0|oc0|Add5~2_combout\ & (!\AU0|LOD0|oc0|Add11~1\)) # (!\AU0|LOD0|oc0|Add5~2_combout\ & ((\AU0|LOD0|oc0|Add11~1\) # (GND)))))
-- \AU0|LOD0|oc0|Add11~3\ = CARRY((\AU0|LOD0|oc0|Add9~2_combout\ & (!\AU0|LOD0|oc0|Add5~2_combout\ & !\AU0|LOD0|oc0|Add11~1\)) # (!\AU0|LOD0|oc0|Add9~2_combout\ & ((!\AU0|LOD0|oc0|Add11~1\) # (!\AU0|LOD0|oc0|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add9~2_combout\,
	datab => \AU0|LOD0|oc0|Add5~2_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add11~1\,
	combout => \AU0|LOD0|oc0|Add11~2_combout\,
	cout => \AU0|LOD0|oc0|Add11~3\);

-- Location: LCCOMB_X65_Y72_N20
\AU0|LOD0|oc0|Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add11~4_combout\ = ((\AU0|LOD0|oc0|Add5~4_combout\ $ (\AU0|LOD0|oc0|Add9~4_combout\ $ (!\AU0|LOD0|oc0|Add11~3\)))) # (GND)
-- \AU0|LOD0|oc0|Add11~5\ = CARRY((\AU0|LOD0|oc0|Add5~4_combout\ & ((\AU0|LOD0|oc0|Add9~4_combout\) # (!\AU0|LOD0|oc0|Add11~3\))) # (!\AU0|LOD0|oc0|Add5~4_combout\ & (\AU0|LOD0|oc0|Add9~4_combout\ & !\AU0|LOD0|oc0|Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add5~4_combout\,
	datab => \AU0|LOD0|oc0|Add9~4_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add11~3\,
	combout => \AU0|LOD0|oc0|Add11~4_combout\,
	cout => \AU0|LOD0|oc0|Add11~5\);

-- Location: LCCOMB_X65_Y72_N22
\AU0|LOD0|oc0|Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add11~6_combout\ = \AU0|LOD0|oc0|Add9~6_combout\ $ (\AU0|LOD0|oc0|Add11~5\ $ (\AU0|LOD0|oc0|Add5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add9~6_combout\,
	datad => \AU0|LOD0|oc0|Add5~6_combout\,
	cin => \AU0|LOD0|oc0|Add11~5\,
	combout => \AU0|LOD0|oc0|Add11~6_combout\);

-- Location: LCCOMB_X65_Y72_N14
\AU0|LOD0|gen_LOD:14:detector|o_or\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:14:detector|o_or~combout\ = (\U[15]~input_o\) # ((\U[16]~input_o\) # (\AU0|LOD0|gen_LOD:16:detector|o_or~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U[15]~input_o\,
	datac => \U[16]~input_o\,
	datad => \AU0|LOD0|gen_LOD:16:detector|o_or~combout\,
	combout => \AU0|LOD0|gen_LOD:14:detector|o_or~combout\);

-- Location: LCCOMB_X67_Y72_N2
\AU0|LOD0|oc0|Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add12~0_combout\ = (!\AU0|LOD0|gen_LOD:18:detector|o_or~combout\ & (!\AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\ & (!\AU0|LOD0|gen_LOD:14:detector|o_or~2_combout\ & \U[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|gen_LOD:18:detector|o_or~combout\,
	datab => \AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\,
	datac => \AU0|LOD0|gen_LOD:14:detector|o_or~2_combout\,
	datad => \U[14]~input_o\,
	combout => \AU0|LOD0|oc0|Add12~0_combout\);

-- Location: LCCOMB_X65_Y72_N2
\AU0|LOD0|oc0|Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add13~0_combout\ = (\AU0|LOD0|oc0|Add11~0_combout\ & (\AU0|LOD0|oc0|Add12~0_combout\ $ (VCC))) # (!\AU0|LOD0|oc0|Add11~0_combout\ & (\AU0|LOD0|oc0|Add12~0_combout\ & VCC))
-- \AU0|LOD0|oc0|Add13~1\ = CARRY((\AU0|LOD0|oc0|Add11~0_combout\ & \AU0|LOD0|oc0|Add12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add11~0_combout\,
	datab => \AU0|LOD0|oc0|Add12~0_combout\,
	datad => VCC,
	combout => \AU0|LOD0|oc0|Add13~0_combout\,
	cout => \AU0|LOD0|oc0|Add13~1\);

-- Location: LCCOMB_X65_Y72_N4
\AU0|LOD0|oc0|Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add13~2_combout\ = (\AU0|LOD0|oc0|Add11~2_combout\ & ((\AU0|LOD0|gen_LOD:14:detector|o_or~combout\ & (\AU0|LOD0|oc0|Add13~1\ & VCC)) # (!\AU0|LOD0|gen_LOD:14:detector|o_or~combout\ & (!\AU0|LOD0|oc0|Add13~1\)))) # 
-- (!\AU0|LOD0|oc0|Add11~2_combout\ & ((\AU0|LOD0|gen_LOD:14:detector|o_or~combout\ & (!\AU0|LOD0|oc0|Add13~1\)) # (!\AU0|LOD0|gen_LOD:14:detector|o_or~combout\ & ((\AU0|LOD0|oc0|Add13~1\) # (GND)))))
-- \AU0|LOD0|oc0|Add13~3\ = CARRY((\AU0|LOD0|oc0|Add11~2_combout\ & (!\AU0|LOD0|gen_LOD:14:detector|o_or~combout\ & !\AU0|LOD0|oc0|Add13~1\)) # (!\AU0|LOD0|oc0|Add11~2_combout\ & ((!\AU0|LOD0|oc0|Add13~1\) # (!\AU0|LOD0|gen_LOD:14:detector|o_or~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add11~2_combout\,
	datab => \AU0|LOD0|gen_LOD:14:detector|o_or~combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add13~1\,
	combout => \AU0|LOD0|oc0|Add13~2_combout\,
	cout => \AU0|LOD0|oc0|Add13~3\);

-- Location: LCCOMB_X65_Y72_N6
\AU0|LOD0|oc0|Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add13~4_combout\ = (\AU0|LOD0|oc0|Add11~4_combout\ & (\AU0|LOD0|oc0|Add13~3\ $ (GND))) # (!\AU0|LOD0|oc0|Add11~4_combout\ & (!\AU0|LOD0|oc0|Add13~3\ & VCC))
-- \AU0|LOD0|oc0|Add13~5\ = CARRY((\AU0|LOD0|oc0|Add11~4_combout\ & !\AU0|LOD0|oc0|Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AU0|LOD0|oc0|Add11~4_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add13~3\,
	combout => \AU0|LOD0|oc0|Add13~4_combout\,
	cout => \AU0|LOD0|oc0|Add13~5\);

-- Location: LCCOMB_X65_Y72_N8
\AU0|LOD0|oc0|Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add13~6_combout\ = (\AU0|LOD0|oc0|Add11~6_combout\ & (!\AU0|LOD0|oc0|Add13~5\)) # (!\AU0|LOD0|oc0|Add11~6_combout\ & ((\AU0|LOD0|oc0|Add13~5\) # (GND)))
-- \AU0|LOD0|oc0|Add13~7\ = CARRY((!\AU0|LOD0|oc0|Add13~5\) # (!\AU0|LOD0|oc0|Add11~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add11~6_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add13~5\,
	combout => \AU0|LOD0|oc0|Add13~6_combout\,
	cout => \AU0|LOD0|oc0|Add13~7\);

-- Location: LCCOMB_X65_Y72_N10
\AU0|LOD0|oc0|Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add13~8_combout\ = !\AU0|LOD0|oc0|Add13~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \AU0|LOD0|oc0|Add13~7\,
	combout => \AU0|LOD0|oc0|Add13~8_combout\);

-- Location: LCCOMB_X66_Y72_N0
\AU0|LOD0|oc0|Add27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add27~0_combout\ = (\AU0|LOD0|oc0|Add21~0_combout\ & (\AU0|LOD0|oc0|Add13~0_combout\ $ (VCC))) # (!\AU0|LOD0|oc0|Add21~0_combout\ & (\AU0|LOD0|oc0|Add13~0_combout\ & VCC))
-- \AU0|LOD0|oc0|Add27~1\ = CARRY((\AU0|LOD0|oc0|Add21~0_combout\ & \AU0|LOD0|oc0|Add13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add21~0_combout\,
	datab => \AU0|LOD0|oc0|Add13~0_combout\,
	datad => VCC,
	combout => \AU0|LOD0|oc0|Add27~0_combout\,
	cout => \AU0|LOD0|oc0|Add27~1\);

-- Location: LCCOMB_X66_Y72_N2
\AU0|LOD0|oc0|Add27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add27~2_combout\ = (\AU0|LOD0|oc0|Add21~2_combout\ & ((\AU0|LOD0|oc0|Add13~2_combout\ & (\AU0|LOD0|oc0|Add27~1\ & VCC)) # (!\AU0|LOD0|oc0|Add13~2_combout\ & (!\AU0|LOD0|oc0|Add27~1\)))) # (!\AU0|LOD0|oc0|Add21~2_combout\ & 
-- ((\AU0|LOD0|oc0|Add13~2_combout\ & (!\AU0|LOD0|oc0|Add27~1\)) # (!\AU0|LOD0|oc0|Add13~2_combout\ & ((\AU0|LOD0|oc0|Add27~1\) # (GND)))))
-- \AU0|LOD0|oc0|Add27~3\ = CARRY((\AU0|LOD0|oc0|Add21~2_combout\ & (!\AU0|LOD0|oc0|Add13~2_combout\ & !\AU0|LOD0|oc0|Add27~1\)) # (!\AU0|LOD0|oc0|Add21~2_combout\ & ((!\AU0|LOD0|oc0|Add27~1\) # (!\AU0|LOD0|oc0|Add13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add21~2_combout\,
	datab => \AU0|LOD0|oc0|Add13~2_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add27~1\,
	combout => \AU0|LOD0|oc0|Add27~2_combout\,
	cout => \AU0|LOD0|oc0|Add27~3\);

-- Location: LCCOMB_X66_Y72_N4
\AU0|LOD0|oc0|Add27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add27~4_combout\ = ((\AU0|LOD0|oc0|Add21~4_combout\ $ (\AU0|LOD0|oc0|Add13~4_combout\ $ (!\AU0|LOD0|oc0|Add27~3\)))) # (GND)
-- \AU0|LOD0|oc0|Add27~5\ = CARRY((\AU0|LOD0|oc0|Add21~4_combout\ & ((\AU0|LOD0|oc0|Add13~4_combout\) # (!\AU0|LOD0|oc0|Add27~3\))) # (!\AU0|LOD0|oc0|Add21~4_combout\ & (\AU0|LOD0|oc0|Add13~4_combout\ & !\AU0|LOD0|oc0|Add27~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add21~4_combout\,
	datab => \AU0|LOD0|oc0|Add13~4_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add27~3\,
	combout => \AU0|LOD0|oc0|Add27~4_combout\,
	cout => \AU0|LOD0|oc0|Add27~5\);

-- Location: LCCOMB_X66_Y72_N6
\AU0|LOD0|oc0|Add27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add27~6_combout\ = (\AU0|LOD0|oc0|Add13~6_combout\ & ((\AU0|LOD0|oc0|Add21~6_combout\ & (\AU0|LOD0|oc0|Add27~5\ & VCC)) # (!\AU0|LOD0|oc0|Add21~6_combout\ & (!\AU0|LOD0|oc0|Add27~5\)))) # (!\AU0|LOD0|oc0|Add13~6_combout\ & 
-- ((\AU0|LOD0|oc0|Add21~6_combout\ & (!\AU0|LOD0|oc0|Add27~5\)) # (!\AU0|LOD0|oc0|Add21~6_combout\ & ((\AU0|LOD0|oc0|Add27~5\) # (GND)))))
-- \AU0|LOD0|oc0|Add27~7\ = CARRY((\AU0|LOD0|oc0|Add13~6_combout\ & (!\AU0|LOD0|oc0|Add21~6_combout\ & !\AU0|LOD0|oc0|Add27~5\)) # (!\AU0|LOD0|oc0|Add13~6_combout\ & ((!\AU0|LOD0|oc0|Add27~5\) # (!\AU0|LOD0|oc0|Add21~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add13~6_combout\,
	datab => \AU0|LOD0|oc0|Add21~6_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add27~5\,
	combout => \AU0|LOD0|oc0|Add27~6_combout\,
	cout => \AU0|LOD0|oc0|Add27~7\);

-- Location: LCCOMB_X66_Y72_N8
\AU0|LOD0|oc0|Add27~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add27~8_combout\ = \AU0|LOD0|oc0|Add21~8_combout\ $ (\AU0|LOD0|oc0|Add27~7\ $ (!\AU0|LOD0|oc0|Add13~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add21~8_combout\,
	datad => \AU0|LOD0|oc0|Add13~8_combout\,
	cin => \AU0|LOD0|oc0|Add27~7\,
	combout => \AU0|LOD0|oc0|Add27~8_combout\);

-- Location: LCCOMB_X67_Y70_N24
\AU0|LOD0|gen_LOD:25:detector|o_and~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\ = (\U[31]~input_o\ & (\U[28]~input_o\ & (\U[30]~input_o\ & \U[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[31]~input_o\,
	datab => \U[28]~input_o\,
	datac => \U[30]~input_o\,
	datad => \U[29]~input_o\,
	combout => \AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\);

-- Location: LCCOMB_X67_Y70_N2
\AU0|LOD0|oc0|Add51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add51~0_combout\ = (\U[27]~input_o\ & (\AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\ & (\U[26]~input_o\ & \U[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[27]~input_o\,
	datab => \AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\,
	datac => \U[26]~input_o\,
	datad => \U[25]~input_o\,
	combout => \AU0|LOD0|oc0|Add51~0_combout\);

-- Location: LCCOMB_X68_Y71_N24
\AU0|LOD0|gen_LOD:21:detector|o_and~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:21:detector|o_and~0_combout\ = (\U[23]~input_o\ & \U[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[23]~input_o\,
	datac => \U[22]~input_o\,
	combout => \AU0|LOD0|gen_LOD:21:detector|o_and~0_combout\);

-- Location: LCCOMB_X68_Y71_N2
\AU0|LOD0|oc0|Add47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add47~0_combout\ = (\AU0|LOD0|oc0|Add51~0_combout\ & (\AU0|LOD0|gen_LOD:21:detector|o_and~0_combout\ & (\U[24]~input_o\ & \U[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add51~0_combout\,
	datab => \AU0|LOD0|gen_LOD:21:detector|o_and~0_combout\,
	datac => \U[24]~input_o\,
	datad => \U[21]~input_o\,
	combout => \AU0|LOD0|oc0|Add47~0_combout\);

-- Location: LCCOMB_X67_Y72_N8
\AU0|LOD0|gen_LOD:17:detector|o_and~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:17:detector|o_and~0_combout\ = (\U[19]~input_o\ & \U[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U[19]~input_o\,
	datad => \U[18]~input_o\,
	combout => \AU0|LOD0|gen_LOD:17:detector|o_and~0_combout\);

-- Location: LCCOMB_X67_Y72_N30
\AU0|LOD0|oc0|Add43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add43~0_combout\ = (\AU0|LOD0|oc0|Add47~0_combout\ & (\U[17]~input_o\ & (\AU0|LOD0|gen_LOD:17:detector|o_and~0_combout\ & \U[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add47~0_combout\,
	datab => \U[17]~input_o\,
	datac => \AU0|LOD0|gen_LOD:17:detector|o_and~0_combout\,
	datad => \U[20]~input_o\,
	combout => \AU0|LOD0|oc0|Add43~0_combout\);

-- Location: LCCOMB_X65_Y71_N4
\AU0|LOD0|gen_LOD:13:detector|o_and~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:13:detector|o_and~0_combout\ = (\U[15]~input_o\ & \U[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U[15]~input_o\,
	datad => \U[14]~input_o\,
	combout => \AU0|LOD0|gen_LOD:13:detector|o_and~0_combout\);

-- Location: LCCOMB_X65_Y71_N22
\AU0|LOD0|oc0|Add40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add40~0_combout\ = (\AU0|LOD0|oc0|Add43~0_combout\ & (\U[16]~input_o\ & (\AU0|LOD0|gen_LOD:13:detector|o_and~0_combout\ & \U[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add43~0_combout\,
	datab => \U[16]~input_o\,
	datac => \AU0|LOD0|gen_LOD:13:detector|o_and~0_combout\,
	datad => \U[13]~input_o\,
	combout => \AU0|LOD0|oc0|Add40~0_combout\);

-- Location: LCCOMB_X65_Y71_N12
\AU0|LOD0|oc0|Add39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add39~0_combout\ = (\AU0|LOD0|oc0|Add40~0_combout\ & (\U[10]~input_o\ & (\U[12]~input_o\ & \U[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add40~0_combout\,
	datab => \U[10]~input_o\,
	datac => \U[12]~input_o\,
	datad => \U[11]~input_o\,
	combout => \AU0|LOD0|oc0|Add39~0_combout\);

-- Location: LCCOMB_X62_Y71_N12
\AU0|LOD0|oc0|Add36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add36~0_combout\ = (\U[9]~input_o\ & \AU0|LOD0|oc0|Add39~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[9]~input_o\,
	datad => \AU0|LOD0|oc0|Add39~0_combout\,
	combout => \AU0|LOD0|oc0|Add36~0_combout\);

-- Location: LCCOMB_X62_Y71_N14
\AU0|LOD0|oc0|Add34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add34~0_combout\ = (\U[8]~input_o\ & (\U[6]~input_o\ & (\U[7]~input_o\ & \AU0|LOD0|oc0|Add36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[8]~input_o\,
	datab => \U[6]~input_o\,
	datac => \U[7]~input_o\,
	datad => \AU0|LOD0|oc0|Add36~0_combout\,
	combout => \AU0|LOD0|oc0|Add34~0_combout\);

-- Location: LCCOMB_X63_Y71_N4
\AU0|LOD0|oc0|Add32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add32~0_combout\ = (\U[5]~input_o\ & \AU0|LOD0|oc0|Add34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U[5]~input_o\,
	datad => \AU0|LOD0|oc0|Add34~0_combout\,
	combout => \AU0|LOD0|oc0|Add32~0_combout\);

-- Location: LCCOMB_X63_Y71_N18
\AU0|LOD0|oc0|Add31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add31~0_combout\ = (\U[2]~input_o\ & (\U[4]~input_o\ & (\AU0|LOD0|oc0|Add32~0_combout\ & \U[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[2]~input_o\,
	datab => \U[4]~input_o\,
	datac => \AU0|LOD0|oc0|Add32~0_combout\,
	datad => \U[3]~input_o\,
	combout => \AU0|LOD0|oc0|Add31~0_combout\);

-- Location: LCCOMB_X63_Y72_N6
\AU0|LOD0|oc0|Add28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add28~0_combout\ = (\AU0|LOD0|oc0|Add31~0_combout\ & (\U[1]~input_o\ & ((\U[31]~input_o\) # (\U[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add31~0_combout\,
	datab => \U[31]~input_o\,
	datac => \U[30]~input_o\,
	datad => \U[1]~input_o\,
	combout => \AU0|LOD0|oc0|Add28~0_combout\);

-- Location: LCCOMB_X63_Y72_N28
\AU0|LOD0|oc0|Add28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add28~1_combout\ = (\AU0|LOD0|oc0|Add31~0_combout\ & (\U[1]~input_o\ $ (((\U[31]~input_o\) # (\U[30]~input_o\))))) # (!\AU0|LOD0|oc0|Add31~0_combout\ & ((\U[31]~input_o\) # ((\U[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add31~0_combout\,
	datab => \U[31]~input_o\,
	datac => \U[30]~input_o\,
	datad => \U[1]~input_o\,
	combout => \AU0|LOD0|oc0|Add28~1_combout\);

-- Location: LCCOMB_X66_Y72_N10
\AU0|LOD0|oc0|Add29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add29~0_combout\ = (\AU0|LOD0|oc0|Add28~1_combout\ & (\AU0|LOD0|oc0|Add27~0_combout\ $ (VCC))) # (!\AU0|LOD0|oc0|Add28~1_combout\ & (\AU0|LOD0|oc0|Add27~0_combout\ & VCC))
-- \AU0|LOD0|oc0|Add29~1\ = CARRY((\AU0|LOD0|oc0|Add28~1_combout\ & \AU0|LOD0|oc0|Add27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add28~1_combout\,
	datab => \AU0|LOD0|oc0|Add27~0_combout\,
	datad => VCC,
	combout => \AU0|LOD0|oc0|Add29~0_combout\,
	cout => \AU0|LOD0|oc0|Add29~1\);

-- Location: LCCOMB_X66_Y72_N12
\AU0|LOD0|oc0|Add29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add29~2_combout\ = (\AU0|LOD0|oc0|Add28~0_combout\ & ((\AU0|LOD0|oc0|Add27~2_combout\ & (\AU0|LOD0|oc0|Add29~1\ & VCC)) # (!\AU0|LOD0|oc0|Add27~2_combout\ & (!\AU0|LOD0|oc0|Add29~1\)))) # (!\AU0|LOD0|oc0|Add28~0_combout\ & 
-- ((\AU0|LOD0|oc0|Add27~2_combout\ & (!\AU0|LOD0|oc0|Add29~1\)) # (!\AU0|LOD0|oc0|Add27~2_combout\ & ((\AU0|LOD0|oc0|Add29~1\) # (GND)))))
-- \AU0|LOD0|oc0|Add29~3\ = CARRY((\AU0|LOD0|oc0|Add28~0_combout\ & (!\AU0|LOD0|oc0|Add27~2_combout\ & !\AU0|LOD0|oc0|Add29~1\)) # (!\AU0|LOD0|oc0|Add28~0_combout\ & ((!\AU0|LOD0|oc0|Add29~1\) # (!\AU0|LOD0|oc0|Add27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add28~0_combout\,
	datab => \AU0|LOD0|oc0|Add27~2_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add29~1\,
	combout => \AU0|LOD0|oc0|Add29~2_combout\,
	cout => \AU0|LOD0|oc0|Add29~3\);

-- Location: LCCOMB_X66_Y72_N14
\AU0|LOD0|oc0|Add29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add29~4_combout\ = (\AU0|LOD0|oc0|Add27~4_combout\ & (\AU0|LOD0|oc0|Add29~3\ $ (GND))) # (!\AU0|LOD0|oc0|Add27~4_combout\ & (!\AU0|LOD0|oc0|Add29~3\ & VCC))
-- \AU0|LOD0|oc0|Add29~5\ = CARRY((\AU0|LOD0|oc0|Add27~4_combout\ & !\AU0|LOD0|oc0|Add29~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AU0|LOD0|oc0|Add27~4_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add29~3\,
	combout => \AU0|LOD0|oc0|Add29~4_combout\,
	cout => \AU0|LOD0|oc0|Add29~5\);

-- Location: LCCOMB_X66_Y72_N16
\AU0|LOD0|oc0|Add29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add29~6_combout\ = (\AU0|LOD0|oc0|Add27~6_combout\ & (!\AU0|LOD0|oc0|Add29~5\)) # (!\AU0|LOD0|oc0|Add27~6_combout\ & ((\AU0|LOD0|oc0|Add29~5\) # (GND)))
-- \AU0|LOD0|oc0|Add29~7\ = CARRY((!\AU0|LOD0|oc0|Add29~5\) # (!\AU0|LOD0|oc0|Add27~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add27~6_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add29~5\,
	combout => \AU0|LOD0|oc0|Add29~6_combout\,
	cout => \AU0|LOD0|oc0|Add29~7\);

-- Location: LCCOMB_X66_Y72_N18
\AU0|LOD0|oc0|Add29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add29~8_combout\ = (\AU0|LOD0|oc0|Add27~8_combout\ & (\AU0|LOD0|oc0|Add29~7\ $ (GND))) # (!\AU0|LOD0|oc0|Add27~8_combout\ & (!\AU0|LOD0|oc0|Add29~7\ & VCC))
-- \AU0|LOD0|oc0|Add29~9\ = CARRY((\AU0|LOD0|oc0|Add27~8_combout\ & !\AU0|LOD0|oc0|Add29~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AU0|LOD0|oc0|Add27~8_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add29~7\,
	combout => \AU0|LOD0|oc0|Add29~8_combout\,
	cout => \AU0|LOD0|oc0|Add29~9\);

-- Location: LCCOMB_X66_Y72_N20
\AU0|LOD0|oc0|Add29~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add29~10_combout\ = \AU0|LOD0|oc0|Add29~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \AU0|LOD0|oc0|Add29~9\,
	combout => \AU0|LOD0|oc0|Add29~10_combout\);

-- Location: LCCOMB_X63_Y71_N22
\AU0|LOD0|oc0|Add35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add35~0_combout\ = (\U[8]~input_o\ & (\AU0|LOD0|oc0|Add36~0_combout\ & ((!\U[6]~input_o\) # (!\U[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[7]~input_o\,
	datab => \U[8]~input_o\,
	datac => \U[6]~input_o\,
	datad => \AU0|LOD0|oc0|Add36~0_combout\,
	combout => \AU0|LOD0|oc0|Add35~0_combout\);

-- Location: LCCOMB_X63_Y71_N16
\AU0|LOD0|oc0|Add31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add31~1_combout\ = (\U[4]~input_o\ & (\AU0|LOD0|oc0|Add32~0_combout\ & ((!\U[3]~input_o\) # (!\U[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[2]~input_o\,
	datab => \U[4]~input_o\,
	datac => \AU0|LOD0|oc0|Add32~0_combout\,
	datad => \U[3]~input_o\,
	combout => \AU0|LOD0|oc0|Add31~1_combout\);

-- Location: LCCOMB_X63_Y71_N26
\AU0|LOD0|oc0|Add35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add35~1_combout\ = (\AU0|LOD0|oc0|Add36~0_combout\ & (((\U[7]~input_o\ & !\U[6]~input_o\)) # (!\U[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[7]~input_o\,
	datab => \U[8]~input_o\,
	datac => \U[6]~input_o\,
	datad => \AU0|LOD0|oc0|Add36~0_combout\,
	combout => \AU0|LOD0|oc0|Add35~1_combout\);

-- Location: LCCOMB_X63_Y71_N28
\AU0|LOD0|oc0|Add31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add31~2_combout\ = (\AU0|LOD0|oc0|Add32~0_combout\ & (((!\U[2]~input_o\ & \U[3]~input_o\)) # (!\U[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[2]~input_o\,
	datab => \U[4]~input_o\,
	datac => \AU0|LOD0|oc0|Add32~0_combout\,
	datad => \U[3]~input_o\,
	combout => \AU0|LOD0|oc0|Add31~2_combout\);

-- Location: LCCOMB_X63_Y71_N6
\AU0|LOD0|oc0|Add33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add33~0_combout\ = (\AU0|LOD0|oc0|Add35~1_combout\ & (\AU0|LOD0|oc0|Add31~2_combout\ $ (VCC))) # (!\AU0|LOD0|oc0|Add35~1_combout\ & (\AU0|LOD0|oc0|Add31~2_combout\ & VCC))
-- \AU0|LOD0|oc0|Add33~1\ = CARRY((\AU0|LOD0|oc0|Add35~1_combout\ & \AU0|LOD0|oc0|Add31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add35~1_combout\,
	datab => \AU0|LOD0|oc0|Add31~2_combout\,
	datad => VCC,
	combout => \AU0|LOD0|oc0|Add33~0_combout\,
	cout => \AU0|LOD0|oc0|Add33~1\);

-- Location: LCCOMB_X63_Y71_N8
\AU0|LOD0|oc0|Add33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add33~2_combout\ = (\AU0|LOD0|oc0|Add35~0_combout\ & ((\AU0|LOD0|oc0|Add31~1_combout\ & (\AU0|LOD0|oc0|Add33~1\ & VCC)) # (!\AU0|LOD0|oc0|Add31~1_combout\ & (!\AU0|LOD0|oc0|Add33~1\)))) # (!\AU0|LOD0|oc0|Add35~0_combout\ & 
-- ((\AU0|LOD0|oc0|Add31~1_combout\ & (!\AU0|LOD0|oc0|Add33~1\)) # (!\AU0|LOD0|oc0|Add31~1_combout\ & ((\AU0|LOD0|oc0|Add33~1\) # (GND)))))
-- \AU0|LOD0|oc0|Add33~3\ = CARRY((\AU0|LOD0|oc0|Add35~0_combout\ & (!\AU0|LOD0|oc0|Add31~1_combout\ & !\AU0|LOD0|oc0|Add33~1\)) # (!\AU0|LOD0|oc0|Add35~0_combout\ & ((!\AU0|LOD0|oc0|Add33~1\) # (!\AU0|LOD0|oc0|Add31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add35~0_combout\,
	datab => \AU0|LOD0|oc0|Add31~1_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add33~1\,
	combout => \AU0|LOD0|oc0|Add33~2_combout\,
	cout => \AU0|LOD0|oc0|Add33~3\);

-- Location: LCCOMB_X63_Y71_N10
\AU0|LOD0|oc0|Add33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add33~4_combout\ = ((\AU0|LOD0|oc0|Add34~0_combout\ $ (\AU0|LOD0|oc0|Add31~0_combout\ $ (!\AU0|LOD0|oc0|Add33~3\)))) # (GND)
-- \AU0|LOD0|oc0|Add33~5\ = CARRY((\AU0|LOD0|oc0|Add34~0_combout\ & ((\AU0|LOD0|oc0|Add31~0_combout\) # (!\AU0|LOD0|oc0|Add33~3\))) # (!\AU0|LOD0|oc0|Add34~0_combout\ & (\AU0|LOD0|oc0|Add31~0_combout\ & !\AU0|LOD0|oc0|Add33~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add34~0_combout\,
	datab => \AU0|LOD0|oc0|Add31~0_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add33~3\,
	combout => \AU0|LOD0|oc0|Add33~4_combout\,
	cout => \AU0|LOD0|oc0|Add33~5\);

-- Location: LCCOMB_X63_Y71_N12
\AU0|LOD0|oc0|Add33~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add33~6_combout\ = \AU0|LOD0|oc0|Add33~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \AU0|LOD0|oc0|Add33~5\,
	combout => \AU0|LOD0|oc0|Add33~6_combout\);

-- Location: LCCOMB_X65_Y71_N14
\AU0|LOD0|oc0|Add43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add43~1_combout\ = (\AU0|LOD0|oc0|Add43~0_combout\ & (\U[16]~input_o\ & (\U[15]~input_o\ & \U[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add43~0_combout\,
	datab => \U[16]~input_o\,
	datac => \U[15]~input_o\,
	datad => \U[14]~input_o\,
	combout => \AU0|LOD0|oc0|Add43~1_combout\);

-- Location: LCCOMB_X65_Y71_N18
\AU0|LOD0|oc0|Add43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add43~2_combout\ = (\AU0|LOD0|oc0|Add43~0_combout\ & (\U[16]~input_o\ & ((!\U[14]~input_o\) # (!\U[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add43~0_combout\,
	datab => \U[16]~input_o\,
	datac => \U[15]~input_o\,
	datad => \U[14]~input_o\,
	combout => \AU0|LOD0|oc0|Add43~2_combout\);

-- Location: LCCOMB_X65_Y71_N8
\AU0|LOD0|oc0|Add39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add39~1_combout\ = (\AU0|LOD0|oc0|Add40~0_combout\ & (\U[12]~input_o\ & ((!\U[11]~input_o\) # (!\U[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add40~0_combout\,
	datab => \U[10]~input_o\,
	datac => \U[12]~input_o\,
	datad => \U[11]~input_o\,
	combout => \AU0|LOD0|oc0|Add39~1_combout\);

-- Location: LCCOMB_X65_Y71_N6
\AU0|LOD0|oc0|Add43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add43~3_combout\ = (\AU0|LOD0|oc0|Add43~0_combout\ & (((\U[15]~input_o\ & !\U[14]~input_o\)) # (!\U[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add43~0_combout\,
	datab => \U[16]~input_o\,
	datac => \U[15]~input_o\,
	datad => \U[14]~input_o\,
	combout => \AU0|LOD0|oc0|Add43~3_combout\);

-- Location: LCCOMB_X65_Y71_N16
\AU0|LOD0|oc0|Add39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add39~2_combout\ = (\AU0|LOD0|oc0|Add40~0_combout\ & (((!\U[10]~input_o\ & \U[11]~input_o\)) # (!\U[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add40~0_combout\,
	datab => \U[10]~input_o\,
	datac => \U[12]~input_o\,
	datad => \U[11]~input_o\,
	combout => \AU0|LOD0|oc0|Add39~2_combout\);

-- Location: LCCOMB_X65_Y71_N24
\AU0|LOD0|oc0|Add41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add41~0_combout\ = (\AU0|LOD0|oc0|Add43~3_combout\ & (\AU0|LOD0|oc0|Add39~2_combout\ $ (VCC))) # (!\AU0|LOD0|oc0|Add43~3_combout\ & (\AU0|LOD0|oc0|Add39~2_combout\ & VCC))
-- \AU0|LOD0|oc0|Add41~1\ = CARRY((\AU0|LOD0|oc0|Add43~3_combout\ & \AU0|LOD0|oc0|Add39~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add43~3_combout\,
	datab => \AU0|LOD0|oc0|Add39~2_combout\,
	datad => VCC,
	combout => \AU0|LOD0|oc0|Add41~0_combout\,
	cout => \AU0|LOD0|oc0|Add41~1\);

-- Location: LCCOMB_X65_Y71_N26
\AU0|LOD0|oc0|Add41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add41~2_combout\ = (\AU0|LOD0|oc0|Add43~2_combout\ & ((\AU0|LOD0|oc0|Add39~1_combout\ & (\AU0|LOD0|oc0|Add41~1\ & VCC)) # (!\AU0|LOD0|oc0|Add39~1_combout\ & (!\AU0|LOD0|oc0|Add41~1\)))) # (!\AU0|LOD0|oc0|Add43~2_combout\ & 
-- ((\AU0|LOD0|oc0|Add39~1_combout\ & (!\AU0|LOD0|oc0|Add41~1\)) # (!\AU0|LOD0|oc0|Add39~1_combout\ & ((\AU0|LOD0|oc0|Add41~1\) # (GND)))))
-- \AU0|LOD0|oc0|Add41~3\ = CARRY((\AU0|LOD0|oc0|Add43~2_combout\ & (!\AU0|LOD0|oc0|Add39~1_combout\ & !\AU0|LOD0|oc0|Add41~1\)) # (!\AU0|LOD0|oc0|Add43~2_combout\ & ((!\AU0|LOD0|oc0|Add41~1\) # (!\AU0|LOD0|oc0|Add39~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add43~2_combout\,
	datab => \AU0|LOD0|oc0|Add39~1_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add41~1\,
	combout => \AU0|LOD0|oc0|Add41~2_combout\,
	cout => \AU0|LOD0|oc0|Add41~3\);

-- Location: LCCOMB_X65_Y71_N28
\AU0|LOD0|oc0|Add41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add41~4_combout\ = ((\AU0|LOD0|oc0|Add39~0_combout\ $ (\AU0|LOD0|oc0|Add43~1_combout\ $ (!\AU0|LOD0|oc0|Add41~3\)))) # (GND)
-- \AU0|LOD0|oc0|Add41~5\ = CARRY((\AU0|LOD0|oc0|Add39~0_combout\ & ((\AU0|LOD0|oc0|Add43~1_combout\) # (!\AU0|LOD0|oc0|Add41~3\))) # (!\AU0|LOD0|oc0|Add39~0_combout\ & (\AU0|LOD0|oc0|Add43~1_combout\ & !\AU0|LOD0|oc0|Add41~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add39~0_combout\,
	datab => \AU0|LOD0|oc0|Add43~1_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add41~3\,
	combout => \AU0|LOD0|oc0|Add41~4_combout\,
	cout => \AU0|LOD0|oc0|Add41~5\);

-- Location: LCCOMB_X65_Y71_N30
\AU0|LOD0|oc0|Add41~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add41~6_combout\ = \AU0|LOD0|oc0|Add41~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \AU0|LOD0|oc0|Add41~5\,
	combout => \AU0|LOD0|oc0|Add41~6_combout\);

-- Location: LCCOMB_X66_Y71_N16
\AU0|LOD0|oc0|Add37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add37~0_combout\ = (\AU0|LOD0|oc0|Add33~0_combout\ & (\AU0|LOD0|oc0|Add41~0_combout\ $ (VCC))) # (!\AU0|LOD0|oc0|Add33~0_combout\ & (\AU0|LOD0|oc0|Add41~0_combout\ & VCC))
-- \AU0|LOD0|oc0|Add37~1\ = CARRY((\AU0|LOD0|oc0|Add33~0_combout\ & \AU0|LOD0|oc0|Add41~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add33~0_combout\,
	datab => \AU0|LOD0|oc0|Add41~0_combout\,
	datad => VCC,
	combout => \AU0|LOD0|oc0|Add37~0_combout\,
	cout => \AU0|LOD0|oc0|Add37~1\);

-- Location: LCCOMB_X66_Y71_N18
\AU0|LOD0|oc0|Add37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add37~2_combout\ = (\AU0|LOD0|oc0|Add41~2_combout\ & ((\AU0|LOD0|oc0|Add33~2_combout\ & (\AU0|LOD0|oc0|Add37~1\ & VCC)) # (!\AU0|LOD0|oc0|Add33~2_combout\ & (!\AU0|LOD0|oc0|Add37~1\)))) # (!\AU0|LOD0|oc0|Add41~2_combout\ & 
-- ((\AU0|LOD0|oc0|Add33~2_combout\ & (!\AU0|LOD0|oc0|Add37~1\)) # (!\AU0|LOD0|oc0|Add33~2_combout\ & ((\AU0|LOD0|oc0|Add37~1\) # (GND)))))
-- \AU0|LOD0|oc0|Add37~3\ = CARRY((\AU0|LOD0|oc0|Add41~2_combout\ & (!\AU0|LOD0|oc0|Add33~2_combout\ & !\AU0|LOD0|oc0|Add37~1\)) # (!\AU0|LOD0|oc0|Add41~2_combout\ & ((!\AU0|LOD0|oc0|Add37~1\) # (!\AU0|LOD0|oc0|Add33~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add41~2_combout\,
	datab => \AU0|LOD0|oc0|Add33~2_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add37~1\,
	combout => \AU0|LOD0|oc0|Add37~2_combout\,
	cout => \AU0|LOD0|oc0|Add37~3\);

-- Location: LCCOMB_X66_Y71_N20
\AU0|LOD0|oc0|Add37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add37~4_combout\ = ((\AU0|LOD0|oc0|Add33~4_combout\ $ (\AU0|LOD0|oc0|Add41~4_combout\ $ (!\AU0|LOD0|oc0|Add37~3\)))) # (GND)
-- \AU0|LOD0|oc0|Add37~5\ = CARRY((\AU0|LOD0|oc0|Add33~4_combout\ & ((\AU0|LOD0|oc0|Add41~4_combout\) # (!\AU0|LOD0|oc0|Add37~3\))) # (!\AU0|LOD0|oc0|Add33~4_combout\ & (\AU0|LOD0|oc0|Add41~4_combout\ & !\AU0|LOD0|oc0|Add37~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add33~4_combout\,
	datab => \AU0|LOD0|oc0|Add41~4_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add37~3\,
	combout => \AU0|LOD0|oc0|Add37~4_combout\,
	cout => \AU0|LOD0|oc0|Add37~5\);

-- Location: LCCOMB_X66_Y71_N22
\AU0|LOD0|oc0|Add37~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add37~6_combout\ = (\AU0|LOD0|oc0|Add33~6_combout\ & ((\AU0|LOD0|oc0|Add41~6_combout\ & (\AU0|LOD0|oc0|Add37~5\ & VCC)) # (!\AU0|LOD0|oc0|Add41~6_combout\ & (!\AU0|LOD0|oc0|Add37~5\)))) # (!\AU0|LOD0|oc0|Add33~6_combout\ & 
-- ((\AU0|LOD0|oc0|Add41~6_combout\ & (!\AU0|LOD0|oc0|Add37~5\)) # (!\AU0|LOD0|oc0|Add41~6_combout\ & ((\AU0|LOD0|oc0|Add37~5\) # (GND)))))
-- \AU0|LOD0|oc0|Add37~7\ = CARRY((\AU0|LOD0|oc0|Add33~6_combout\ & (!\AU0|LOD0|oc0|Add41~6_combout\ & !\AU0|LOD0|oc0|Add37~5\)) # (!\AU0|LOD0|oc0|Add33~6_combout\ & ((!\AU0|LOD0|oc0|Add37~5\) # (!\AU0|LOD0|oc0|Add41~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add33~6_combout\,
	datab => \AU0|LOD0|oc0|Add41~6_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add37~5\,
	combout => \AU0|LOD0|oc0|Add37~6_combout\,
	cout => \AU0|LOD0|oc0|Add37~7\);

-- Location: LCCOMB_X66_Y71_N24
\AU0|LOD0|oc0|Add37~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add37~8_combout\ = !\AU0|LOD0|oc0|Add37~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \AU0|LOD0|oc0|Add37~7\,
	combout => \AU0|LOD0|oc0|Add37~8_combout\);

-- Location: LCCOMB_X67_Y70_N6
\AU0|LOD0|oc0|Add55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add55~0_combout\ = (\AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\ & (\U[26]~input_o\ & \U[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\,
	datac => \U[26]~input_o\,
	datad => \U[27]~input_o\,
	combout => \AU0|LOD0|oc0|Add55~0_combout\);

-- Location: LCCOMB_X67_Y70_N22
\AU0|LOD0|gen_LOD:29:detector|o_and~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\ = (\U[31]~input_o\ & \U[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[31]~input_o\,
	datac => \U[30]~input_o\,
	combout => \AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\);

-- Location: LCCOMB_X67_Y70_N8
\AU0|LOD0|oc0|Add55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add55~1_combout\ = (\AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\ & ((!\U[27]~input_o\) # (!\U[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\,
	datac => \U[26]~input_o\,
	datad => \U[27]~input_o\,
	combout => \AU0|LOD0|oc0|Add55~1_combout\);

-- Location: LCCOMB_X67_Y70_N28
\AU0|LOD0|oc0|Add55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add55~2_combout\ = ((\U[27]~input_o\ & !\U[26]~input_o\)) # (!\U[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[27]~input_o\,
	datac => \U[26]~input_o\,
	datad => \U[28]~input_o\,
	combout => \AU0|LOD0|oc0|Add55~2_combout\);

-- Location: LCCOMB_X67_Y70_N26
\AU0|LOD0|oc0|Add55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add55~3_combout\ = (\U[31]~input_o\ & (\AU0|LOD0|oc0|Add55~2_combout\ & (\U[30]~input_o\ & \U[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[31]~input_o\,
	datab => \AU0|LOD0|oc0|Add55~2_combout\,
	datac => \U[30]~input_o\,
	datad => \U[29]~input_o\,
	combout => \AU0|LOD0|oc0|Add55~3_combout\);

-- Location: LCCOMB_X67_Y70_N0
\AU0|LOD0|oc0|Add58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add58~0_combout\ = (\U[31]~input_o\ & !\U[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[31]~input_o\,
	datac => \U[30]~input_o\,
	combout => \AU0|LOD0|oc0|Add58~0_combout\);

-- Location: LCCOMB_X67_Y70_N12
\AU0|LOD0|oc0|Add57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add57~0_combout\ = (\AU0|LOD0|oc0|Add55~3_combout\ & (\AU0|LOD0|oc0|Add58~0_combout\ $ (VCC))) # (!\AU0|LOD0|oc0|Add55~3_combout\ & (\AU0|LOD0|oc0|Add58~0_combout\ & VCC))
-- \AU0|LOD0|oc0|Add57~1\ = CARRY((\AU0|LOD0|oc0|Add55~3_combout\ & \AU0|LOD0|oc0|Add58~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add55~3_combout\,
	datab => \AU0|LOD0|oc0|Add58~0_combout\,
	datad => VCC,
	combout => \AU0|LOD0|oc0|Add57~0_combout\,
	cout => \AU0|LOD0|oc0|Add57~1\);

-- Location: LCCOMB_X67_Y70_N14
\AU0|LOD0|oc0|Add57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add57~2_combout\ = (\AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\ & ((\AU0|LOD0|oc0|Add55~1_combout\ & (\AU0|LOD0|oc0|Add57~1\ & VCC)) # (!\AU0|LOD0|oc0|Add55~1_combout\ & (!\AU0|LOD0|oc0|Add57~1\)))) # 
-- (!\AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\ & ((\AU0|LOD0|oc0|Add55~1_combout\ & (!\AU0|LOD0|oc0|Add57~1\)) # (!\AU0|LOD0|oc0|Add55~1_combout\ & ((\AU0|LOD0|oc0|Add57~1\) # (GND)))))
-- \AU0|LOD0|oc0|Add57~3\ = CARRY((\AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\ & (!\AU0|LOD0|oc0|Add55~1_combout\ & !\AU0|LOD0|oc0|Add57~1\)) # (!\AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\ & ((!\AU0|LOD0|oc0|Add57~1\) # 
-- (!\AU0|LOD0|oc0|Add55~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\,
	datab => \AU0|LOD0|oc0|Add55~1_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add57~1\,
	combout => \AU0|LOD0|oc0|Add57~2_combout\,
	cout => \AU0|LOD0|oc0|Add57~3\);

-- Location: LCCOMB_X67_Y70_N16
\AU0|LOD0|oc0|Add57~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add57~4_combout\ = (\AU0|LOD0|oc0|Add55~0_combout\ & (\AU0|LOD0|oc0|Add57~3\ $ (GND))) # (!\AU0|LOD0|oc0|Add55~0_combout\ & (!\AU0|LOD0|oc0|Add57~3\ & VCC))
-- \AU0|LOD0|oc0|Add57~5\ = CARRY((\AU0|LOD0|oc0|Add55~0_combout\ & !\AU0|LOD0|oc0|Add57~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add55~0_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add57~3\,
	combout => \AU0|LOD0|oc0|Add57~4_combout\,
	cout => \AU0|LOD0|oc0|Add57~5\);

-- Location: LCCOMB_X67_Y70_N18
\AU0|LOD0|oc0|Add57~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add57~6_combout\ = \AU0|LOD0|oc0|Add57~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \AU0|LOD0|oc0|Add57~5\,
	combout => \AU0|LOD0|oc0|Add57~6_combout\);

-- Location: LCCOMB_X68_Y71_N6
\AU0|LOD0|oc0|Add51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add51~1_combout\ = (\U[24]~input_o\ & (\AU0|LOD0|oc0|Add51~0_combout\ & (\U[22]~input_o\ & \U[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[24]~input_o\,
	datab => \AU0|LOD0|oc0|Add51~0_combout\,
	datac => \U[22]~input_o\,
	datad => \U[23]~input_o\,
	combout => \AU0|LOD0|oc0|Add51~1_combout\);

-- Location: LCCOMB_X68_Y71_N28
\AU0|LOD0|oc0|Add47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add47~1_combout\ = (\U[19]~input_o\ & (\AU0|LOD0|oc0|Add47~0_combout\ & (\U[18]~input_o\ & \U[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[19]~input_o\,
	datab => \AU0|LOD0|oc0|Add47~0_combout\,
	datac => \U[18]~input_o\,
	datad => \U[20]~input_o\,
	combout => \AU0|LOD0|oc0|Add47~1_combout\);

-- Location: LCCOMB_X68_Y71_N22
\AU0|LOD0|oc0|Add51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add51~2_combout\ = (\U[24]~input_o\ & (\AU0|LOD0|oc0|Add51~0_combout\ & ((!\U[23]~input_o\) # (!\U[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[24]~input_o\,
	datab => \AU0|LOD0|oc0|Add51~0_combout\,
	datac => \U[22]~input_o\,
	datad => \U[23]~input_o\,
	combout => \AU0|LOD0|oc0|Add51~2_combout\);

-- Location: LCCOMB_X68_Y71_N4
\AU0|LOD0|oc0|Add47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add47~2_combout\ = (\AU0|LOD0|oc0|Add47~0_combout\ & (\U[20]~input_o\ & ((!\U[18]~input_o\) # (!\U[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[19]~input_o\,
	datab => \AU0|LOD0|oc0|Add47~0_combout\,
	datac => \U[18]~input_o\,
	datad => \U[20]~input_o\,
	combout => \AU0|LOD0|oc0|Add47~2_combout\);

-- Location: LCCOMB_X68_Y71_N26
\AU0|LOD0|oc0|Add51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add51~3_combout\ = (\AU0|LOD0|oc0|Add51~0_combout\ & (((!\U[22]~input_o\ & \U[23]~input_o\)) # (!\U[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[24]~input_o\,
	datab => \AU0|LOD0|oc0|Add51~0_combout\,
	datac => \U[22]~input_o\,
	datad => \U[23]~input_o\,
	combout => \AU0|LOD0|oc0|Add51~3_combout\);

-- Location: LCCOMB_X68_Y71_N0
\AU0|LOD0|oc0|Add47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add47~3_combout\ = (\AU0|LOD0|oc0|Add47~0_combout\ & (((\U[19]~input_o\ & !\U[18]~input_o\)) # (!\U[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[19]~input_o\,
	datab => \AU0|LOD0|oc0|Add47~0_combout\,
	datac => \U[18]~input_o\,
	datad => \U[20]~input_o\,
	combout => \AU0|LOD0|oc0|Add47~3_combout\);

-- Location: LCCOMB_X68_Y71_N12
\AU0|LOD0|oc0|Add49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add49~0_combout\ = (\AU0|LOD0|oc0|Add51~3_combout\ & (\AU0|LOD0|oc0|Add47~3_combout\ $ (VCC))) # (!\AU0|LOD0|oc0|Add51~3_combout\ & (\AU0|LOD0|oc0|Add47~3_combout\ & VCC))
-- \AU0|LOD0|oc0|Add49~1\ = CARRY((\AU0|LOD0|oc0|Add51~3_combout\ & \AU0|LOD0|oc0|Add47~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add51~3_combout\,
	datab => \AU0|LOD0|oc0|Add47~3_combout\,
	datad => VCC,
	combout => \AU0|LOD0|oc0|Add49~0_combout\,
	cout => \AU0|LOD0|oc0|Add49~1\);

-- Location: LCCOMB_X68_Y71_N14
\AU0|LOD0|oc0|Add49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add49~2_combout\ = (\AU0|LOD0|oc0|Add51~2_combout\ & ((\AU0|LOD0|oc0|Add47~2_combout\ & (\AU0|LOD0|oc0|Add49~1\ & VCC)) # (!\AU0|LOD0|oc0|Add47~2_combout\ & (!\AU0|LOD0|oc0|Add49~1\)))) # (!\AU0|LOD0|oc0|Add51~2_combout\ & 
-- ((\AU0|LOD0|oc0|Add47~2_combout\ & (!\AU0|LOD0|oc0|Add49~1\)) # (!\AU0|LOD0|oc0|Add47~2_combout\ & ((\AU0|LOD0|oc0|Add49~1\) # (GND)))))
-- \AU0|LOD0|oc0|Add49~3\ = CARRY((\AU0|LOD0|oc0|Add51~2_combout\ & (!\AU0|LOD0|oc0|Add47~2_combout\ & !\AU0|LOD0|oc0|Add49~1\)) # (!\AU0|LOD0|oc0|Add51~2_combout\ & ((!\AU0|LOD0|oc0|Add49~1\) # (!\AU0|LOD0|oc0|Add47~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add51~2_combout\,
	datab => \AU0|LOD0|oc0|Add47~2_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add49~1\,
	combout => \AU0|LOD0|oc0|Add49~2_combout\,
	cout => \AU0|LOD0|oc0|Add49~3\);

-- Location: LCCOMB_X68_Y71_N16
\AU0|LOD0|oc0|Add49~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add49~4_combout\ = ((\AU0|LOD0|oc0|Add51~1_combout\ $ (\AU0|LOD0|oc0|Add47~1_combout\ $ (!\AU0|LOD0|oc0|Add49~3\)))) # (GND)
-- \AU0|LOD0|oc0|Add49~5\ = CARRY((\AU0|LOD0|oc0|Add51~1_combout\ & ((\AU0|LOD0|oc0|Add47~1_combout\) # (!\AU0|LOD0|oc0|Add49~3\))) # (!\AU0|LOD0|oc0|Add51~1_combout\ & (\AU0|LOD0|oc0|Add47~1_combout\ & !\AU0|LOD0|oc0|Add49~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add51~1_combout\,
	datab => \AU0|LOD0|oc0|Add47~1_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add49~3\,
	combout => \AU0|LOD0|oc0|Add49~4_combout\,
	cout => \AU0|LOD0|oc0|Add49~5\);

-- Location: LCCOMB_X68_Y71_N18
\AU0|LOD0|oc0|Add49~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add49~6_combout\ = \AU0|LOD0|oc0|Add49~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \AU0|LOD0|oc0|Add49~5\,
	combout => \AU0|LOD0|oc0|Add49~6_combout\);

-- Location: LCCOMB_X67_Y71_N16
\AU0|LOD0|oc0|Add53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add53~0_combout\ = (\AU0|LOD0|oc0|Add57~0_combout\ & (\AU0|LOD0|oc0|Add49~0_combout\ $ (VCC))) # (!\AU0|LOD0|oc0|Add57~0_combout\ & (\AU0|LOD0|oc0|Add49~0_combout\ & VCC))
-- \AU0|LOD0|oc0|Add53~1\ = CARRY((\AU0|LOD0|oc0|Add57~0_combout\ & \AU0|LOD0|oc0|Add49~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add57~0_combout\,
	datab => \AU0|LOD0|oc0|Add49~0_combout\,
	datad => VCC,
	combout => \AU0|LOD0|oc0|Add53~0_combout\,
	cout => \AU0|LOD0|oc0|Add53~1\);

-- Location: LCCOMB_X67_Y71_N18
\AU0|LOD0|oc0|Add53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add53~2_combout\ = (\AU0|LOD0|oc0|Add57~2_combout\ & ((\AU0|LOD0|oc0|Add49~2_combout\ & (\AU0|LOD0|oc0|Add53~1\ & VCC)) # (!\AU0|LOD0|oc0|Add49~2_combout\ & (!\AU0|LOD0|oc0|Add53~1\)))) # (!\AU0|LOD0|oc0|Add57~2_combout\ & 
-- ((\AU0|LOD0|oc0|Add49~2_combout\ & (!\AU0|LOD0|oc0|Add53~1\)) # (!\AU0|LOD0|oc0|Add49~2_combout\ & ((\AU0|LOD0|oc0|Add53~1\) # (GND)))))
-- \AU0|LOD0|oc0|Add53~3\ = CARRY((\AU0|LOD0|oc0|Add57~2_combout\ & (!\AU0|LOD0|oc0|Add49~2_combout\ & !\AU0|LOD0|oc0|Add53~1\)) # (!\AU0|LOD0|oc0|Add57~2_combout\ & ((!\AU0|LOD0|oc0|Add53~1\) # (!\AU0|LOD0|oc0|Add49~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add57~2_combout\,
	datab => \AU0|LOD0|oc0|Add49~2_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add53~1\,
	combout => \AU0|LOD0|oc0|Add53~2_combout\,
	cout => \AU0|LOD0|oc0|Add53~3\);

-- Location: LCCOMB_X67_Y71_N20
\AU0|LOD0|oc0|Add53~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add53~4_combout\ = ((\AU0|LOD0|oc0|Add57~4_combout\ $ (\AU0|LOD0|oc0|Add49~4_combout\ $ (!\AU0|LOD0|oc0|Add53~3\)))) # (GND)
-- \AU0|LOD0|oc0|Add53~5\ = CARRY((\AU0|LOD0|oc0|Add57~4_combout\ & ((\AU0|LOD0|oc0|Add49~4_combout\) # (!\AU0|LOD0|oc0|Add53~3\))) # (!\AU0|LOD0|oc0|Add57~4_combout\ & (\AU0|LOD0|oc0|Add49~4_combout\ & !\AU0|LOD0|oc0|Add53~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add57~4_combout\,
	datab => \AU0|LOD0|oc0|Add49~4_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add53~3\,
	combout => \AU0|LOD0|oc0|Add53~4_combout\,
	cout => \AU0|LOD0|oc0|Add53~5\);

-- Location: LCCOMB_X67_Y71_N22
\AU0|LOD0|oc0|Add53~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add53~6_combout\ = (\AU0|LOD0|oc0|Add57~6_combout\ & ((\AU0|LOD0|oc0|Add49~6_combout\ & (\AU0|LOD0|oc0|Add53~5\ & VCC)) # (!\AU0|LOD0|oc0|Add49~6_combout\ & (!\AU0|LOD0|oc0|Add53~5\)))) # (!\AU0|LOD0|oc0|Add57~6_combout\ & 
-- ((\AU0|LOD0|oc0|Add49~6_combout\ & (!\AU0|LOD0|oc0|Add53~5\)) # (!\AU0|LOD0|oc0|Add49~6_combout\ & ((\AU0|LOD0|oc0|Add53~5\) # (GND)))))
-- \AU0|LOD0|oc0|Add53~7\ = CARRY((\AU0|LOD0|oc0|Add57~6_combout\ & (!\AU0|LOD0|oc0|Add49~6_combout\ & !\AU0|LOD0|oc0|Add53~5\)) # (!\AU0|LOD0|oc0|Add57~6_combout\ & ((!\AU0|LOD0|oc0|Add53~5\) # (!\AU0|LOD0|oc0|Add49~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add57~6_combout\,
	datab => \AU0|LOD0|oc0|Add49~6_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add53~5\,
	combout => \AU0|LOD0|oc0|Add53~6_combout\,
	cout => \AU0|LOD0|oc0|Add53~7\);

-- Location: LCCOMB_X67_Y71_N24
\AU0|LOD0|oc0|Add53~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add53~8_combout\ = !\AU0|LOD0|oc0|Add53~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \AU0|LOD0|oc0|Add53~7\,
	combout => \AU0|LOD0|oc0|Add53~8_combout\);

-- Location: LCCOMB_X67_Y71_N0
\AU0|LOD0|oc0|Add45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add45~0_combout\ = (\AU0|LOD0|oc0|Add37~0_combout\ & (\AU0|LOD0|oc0|Add53~0_combout\ $ (VCC))) # (!\AU0|LOD0|oc0|Add37~0_combout\ & (\AU0|LOD0|oc0|Add53~0_combout\ & VCC))
-- \AU0|LOD0|oc0|Add45~1\ = CARRY((\AU0|LOD0|oc0|Add37~0_combout\ & \AU0|LOD0|oc0|Add53~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add37~0_combout\,
	datab => \AU0|LOD0|oc0|Add53~0_combout\,
	datad => VCC,
	combout => \AU0|LOD0|oc0|Add45~0_combout\,
	cout => \AU0|LOD0|oc0|Add45~1\);

-- Location: LCCOMB_X67_Y71_N2
\AU0|LOD0|oc0|Add45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add45~2_combout\ = (\AU0|LOD0|oc0|Add37~2_combout\ & ((\AU0|LOD0|oc0|Add53~2_combout\ & (\AU0|LOD0|oc0|Add45~1\ & VCC)) # (!\AU0|LOD0|oc0|Add53~2_combout\ & (!\AU0|LOD0|oc0|Add45~1\)))) # (!\AU0|LOD0|oc0|Add37~2_combout\ & 
-- ((\AU0|LOD0|oc0|Add53~2_combout\ & (!\AU0|LOD0|oc0|Add45~1\)) # (!\AU0|LOD0|oc0|Add53~2_combout\ & ((\AU0|LOD0|oc0|Add45~1\) # (GND)))))
-- \AU0|LOD0|oc0|Add45~3\ = CARRY((\AU0|LOD0|oc0|Add37~2_combout\ & (!\AU0|LOD0|oc0|Add53~2_combout\ & !\AU0|LOD0|oc0|Add45~1\)) # (!\AU0|LOD0|oc0|Add37~2_combout\ & ((!\AU0|LOD0|oc0|Add45~1\) # (!\AU0|LOD0|oc0|Add53~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add37~2_combout\,
	datab => \AU0|LOD0|oc0|Add53~2_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add45~1\,
	combout => \AU0|LOD0|oc0|Add45~2_combout\,
	cout => \AU0|LOD0|oc0|Add45~3\);

-- Location: LCCOMB_X67_Y71_N4
\AU0|LOD0|oc0|Add45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add45~4_combout\ = ((\AU0|LOD0|oc0|Add37~4_combout\ $ (\AU0|LOD0|oc0|Add53~4_combout\ $ (!\AU0|LOD0|oc0|Add45~3\)))) # (GND)
-- \AU0|LOD0|oc0|Add45~5\ = CARRY((\AU0|LOD0|oc0|Add37~4_combout\ & ((\AU0|LOD0|oc0|Add53~4_combout\) # (!\AU0|LOD0|oc0|Add45~3\))) # (!\AU0|LOD0|oc0|Add37~4_combout\ & (\AU0|LOD0|oc0|Add53~4_combout\ & !\AU0|LOD0|oc0|Add45~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add37~4_combout\,
	datab => \AU0|LOD0|oc0|Add53~4_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add45~3\,
	combout => \AU0|LOD0|oc0|Add45~4_combout\,
	cout => \AU0|LOD0|oc0|Add45~5\);

-- Location: LCCOMB_X67_Y71_N6
\AU0|LOD0|oc0|Add45~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add45~6_combout\ = (\AU0|LOD0|oc0|Add53~6_combout\ & ((\AU0|LOD0|oc0|Add37~6_combout\ & (\AU0|LOD0|oc0|Add45~5\ & VCC)) # (!\AU0|LOD0|oc0|Add37~6_combout\ & (!\AU0|LOD0|oc0|Add45~5\)))) # (!\AU0|LOD0|oc0|Add53~6_combout\ & 
-- ((\AU0|LOD0|oc0|Add37~6_combout\ & (!\AU0|LOD0|oc0|Add45~5\)) # (!\AU0|LOD0|oc0|Add37~6_combout\ & ((\AU0|LOD0|oc0|Add45~5\) # (GND)))))
-- \AU0|LOD0|oc0|Add45~7\ = CARRY((\AU0|LOD0|oc0|Add53~6_combout\ & (!\AU0|LOD0|oc0|Add37~6_combout\ & !\AU0|LOD0|oc0|Add45~5\)) # (!\AU0|LOD0|oc0|Add53~6_combout\ & ((!\AU0|LOD0|oc0|Add45~5\) # (!\AU0|LOD0|oc0|Add37~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add53~6_combout\,
	datab => \AU0|LOD0|oc0|Add37~6_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add45~5\,
	combout => \AU0|LOD0|oc0|Add45~6_combout\,
	cout => \AU0|LOD0|oc0|Add45~7\);

-- Location: LCCOMB_X67_Y71_N8
\AU0|LOD0|oc0|Add45~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add45~8_combout\ = ((\AU0|LOD0|oc0|Add37~8_combout\ $ (\AU0|LOD0|oc0|Add53~8_combout\ $ (!\AU0|LOD0|oc0|Add45~7\)))) # (GND)
-- \AU0|LOD0|oc0|Add45~9\ = CARRY((\AU0|LOD0|oc0|Add37~8_combout\ & ((\AU0|LOD0|oc0|Add53~8_combout\) # (!\AU0|LOD0|oc0|Add45~7\))) # (!\AU0|LOD0|oc0|Add37~8_combout\ & (\AU0|LOD0|oc0|Add53~8_combout\ & !\AU0|LOD0|oc0|Add45~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add37~8_combout\,
	datab => \AU0|LOD0|oc0|Add53~8_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|Add45~7\,
	combout => \AU0|LOD0|oc0|Add45~8_combout\,
	cout => \AU0|LOD0|oc0|Add45~9\);

-- Location: LCCOMB_X67_Y71_N10
\AU0|LOD0|oc0|Add45~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|Add45~10_combout\ = \AU0|LOD0|oc0|Add45~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \AU0|LOD0|oc0|Add45~9\,
	combout => \AU0|LOD0|oc0|Add45~10_combout\);

-- Location: LCCOMB_X66_Y71_N4
\AU0|LOD0|oc0|sum[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|sum[0]~0_combout\ = (\AU0|LOD0|oc0|Add45~0_combout\ & (\AU0|LOD0|oc0|Add29~0_combout\ $ (VCC))) # (!\AU0|LOD0|oc0|Add45~0_combout\ & (\AU0|LOD0|oc0|Add29~0_combout\ & VCC))
-- \AU0|LOD0|oc0|sum[0]~1\ = CARRY((\AU0|LOD0|oc0|Add45~0_combout\ & \AU0|LOD0|oc0|Add29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add45~0_combout\,
	datab => \AU0|LOD0|oc0|Add29~0_combout\,
	datad => VCC,
	combout => \AU0|LOD0|oc0|sum[0]~0_combout\,
	cout => \AU0|LOD0|oc0|sum[0]~1\);

-- Location: LCCOMB_X66_Y71_N6
\AU0|LOD0|oc0|sum[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|sum[1]~2_combout\ = (\AU0|LOD0|oc0|Add45~2_combout\ & ((\AU0|LOD0|oc0|Add29~2_combout\ & (\AU0|LOD0|oc0|sum[0]~1\ & VCC)) # (!\AU0|LOD0|oc0|Add29~2_combout\ & (!\AU0|LOD0|oc0|sum[0]~1\)))) # (!\AU0|LOD0|oc0|Add45~2_combout\ & 
-- ((\AU0|LOD0|oc0|Add29~2_combout\ & (!\AU0|LOD0|oc0|sum[0]~1\)) # (!\AU0|LOD0|oc0|Add29~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~1\) # (GND)))))
-- \AU0|LOD0|oc0|sum[1]~3\ = CARRY((\AU0|LOD0|oc0|Add45~2_combout\ & (!\AU0|LOD0|oc0|Add29~2_combout\ & !\AU0|LOD0|oc0|sum[0]~1\)) # (!\AU0|LOD0|oc0|Add45~2_combout\ & ((!\AU0|LOD0|oc0|sum[0]~1\) # (!\AU0|LOD0|oc0|Add29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add45~2_combout\,
	datab => \AU0|LOD0|oc0|Add29~2_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|sum[0]~1\,
	combout => \AU0|LOD0|oc0|sum[1]~2_combout\,
	cout => \AU0|LOD0|oc0|sum[1]~3\);

-- Location: LCCOMB_X66_Y71_N8
\AU0|LOD0|oc0|sum[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|sum[2]~4_combout\ = ((\AU0|LOD0|oc0|Add45~4_combout\ $ (\AU0|LOD0|oc0|Add29~4_combout\ $ (!\AU0|LOD0|oc0|sum[1]~3\)))) # (GND)
-- \AU0|LOD0|oc0|sum[2]~5\ = CARRY((\AU0|LOD0|oc0|Add45~4_combout\ & ((\AU0|LOD0|oc0|Add29~4_combout\) # (!\AU0|LOD0|oc0|sum[1]~3\))) # (!\AU0|LOD0|oc0|Add45~4_combout\ & (\AU0|LOD0|oc0|Add29~4_combout\ & !\AU0|LOD0|oc0|sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add45~4_combout\,
	datab => \AU0|LOD0|oc0|Add29~4_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|sum[1]~3\,
	combout => \AU0|LOD0|oc0|sum[2]~4_combout\,
	cout => \AU0|LOD0|oc0|sum[2]~5\);

-- Location: LCCOMB_X66_Y71_N10
\AU0|LOD0|oc0|sum[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|sum[3]~6_combout\ = (\AU0|LOD0|oc0|Add45~6_combout\ & ((\AU0|LOD0|oc0|Add29~6_combout\ & (\AU0|LOD0|oc0|sum[2]~5\ & VCC)) # (!\AU0|LOD0|oc0|Add29~6_combout\ & (!\AU0|LOD0|oc0|sum[2]~5\)))) # (!\AU0|LOD0|oc0|Add45~6_combout\ & 
-- ((\AU0|LOD0|oc0|Add29~6_combout\ & (!\AU0|LOD0|oc0|sum[2]~5\)) # (!\AU0|LOD0|oc0|Add29~6_combout\ & ((\AU0|LOD0|oc0|sum[2]~5\) # (GND)))))
-- \AU0|LOD0|oc0|sum[3]~7\ = CARRY((\AU0|LOD0|oc0|Add45~6_combout\ & (!\AU0|LOD0|oc0|Add29~6_combout\ & !\AU0|LOD0|oc0|sum[2]~5\)) # (!\AU0|LOD0|oc0|Add45~6_combout\ & ((!\AU0|LOD0|oc0|sum[2]~5\) # (!\AU0|LOD0|oc0|Add29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add45~6_combout\,
	datab => \AU0|LOD0|oc0|Add29~6_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|sum[2]~5\,
	combout => \AU0|LOD0|oc0|sum[3]~6_combout\,
	cout => \AU0|LOD0|oc0|sum[3]~7\);

-- Location: LCCOMB_X66_Y71_N12
\AU0|LOD0|oc0|sum[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|sum[4]~8_combout\ = ((\AU0|LOD0|oc0|Add29~8_combout\ $ (\AU0|LOD0|oc0|Add45~8_combout\ $ (!\AU0|LOD0|oc0|sum[3]~7\)))) # (GND)
-- \AU0|LOD0|oc0|sum[4]~9\ = CARRY((\AU0|LOD0|oc0|Add29~8_combout\ & ((\AU0|LOD0|oc0|Add45~8_combout\) # (!\AU0|LOD0|oc0|sum[3]~7\))) # (!\AU0|LOD0|oc0|Add29~8_combout\ & (\AU0|LOD0|oc0|Add45~8_combout\ & !\AU0|LOD0|oc0|sum[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add29~8_combout\,
	datab => \AU0|LOD0|oc0|Add45~8_combout\,
	datad => VCC,
	cin => \AU0|LOD0|oc0|sum[3]~7\,
	combout => \AU0|LOD0|oc0|sum[4]~8_combout\,
	cout => \AU0|LOD0|oc0|sum[4]~9\);

-- Location: LCCOMB_X66_Y71_N14
\AU0|LOD0|oc0|sum[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|LOD0|oc0|sum[5]~10_combout\ = \AU0|LOD0|oc0|Add29~10_combout\ $ (\AU0|LOD0|oc0|Add45~10_combout\ $ (\AU0|LOD0|oc0|sum[4]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|Add29~10_combout\,
	datab => \AU0|LOD0|oc0|Add45~10_combout\,
	cin => \AU0|LOD0|oc0|sum[4]~9\,
	combout => \AU0|LOD0|oc0|sum[5]~10_combout\);

-- Location: LCCOMB_X68_Y69_N18
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = \U[31]~input_o\ $ (\AU0|LOD0|oc0|sum[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U[31]~input_o\,
	datad => \AU0|LOD0|oc0|sum[5]~10_combout\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X68_Y69_N24
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = \AU0|LOD0|oc0|sum[4]~8_combout\ $ (\U[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[4]~8_combout\,
	datac => \U[31]~input_o\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X68_Y69_N22
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \AU0|LOD0|oc0|sum[3]~6_combout\ $ (\U[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[3]~6_combout\,
	datac => \U[31]~input_o\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X68_Y69_N20
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \U[31]~input_o\ $ (\AU0|LOD0|oc0|sum[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U[31]~input_o\,
	datad => \AU0|LOD0|oc0|sum[2]~4_combout\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X68_Y69_N30
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \U[31]~input_o\ $ (\AU0|LOD0|oc0|sum[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U[31]~input_o\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X68_Y69_N4
\shift_num[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_num[0]~6_combout\ = \AU0|LOD0|oc0|sum[0]~0_combout\ $ (\U[31]~input_o\ $ (GND))
-- \shift_num[0]~7\ = CARRY(\AU0|LOD0|oc0|sum[0]~0_combout\ $ (!\U[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datab => \U[31]~input_o\,
	datad => VCC,
	combout => \shift_num[0]~6_combout\,
	cout => \shift_num[0]~7\);

-- Location: LCCOMB_X68_Y69_N6
\shift_num[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_num[1]~8_combout\ = (\Add0~0_combout\ & ((\U[31]~input_o\ & ((\shift_num[0]~7\) # (GND))) # (!\U[31]~input_o\ & (!\shift_num[0]~7\)))) # (!\Add0~0_combout\ & ((\U[31]~input_o\ & (!\shift_num[0]~7\)) # (!\U[31]~input_o\ & (\shift_num[0]~7\ & VCC))))
-- \shift_num[1]~9\ = CARRY((\Add0~0_combout\ & ((\U[31]~input_o\) # (!\shift_num[0]~7\))) # (!\Add0~0_combout\ & (\U[31]~input_o\ & !\shift_num[0]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \U[31]~input_o\,
	datad => VCC,
	cin => \shift_num[0]~7\,
	combout => \shift_num[1]~8_combout\,
	cout => \shift_num[1]~9\);

-- Location: LCCOMB_X68_Y69_N8
\shift_num[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_num[2]~10_combout\ = ((\Add0~1_combout\ $ (\U[31]~input_o\ $ (!\shift_num[1]~9\)))) # (GND)
-- \shift_num[2]~11\ = CARRY((\Add0~1_combout\ & (!\U[31]~input_o\ & !\shift_num[1]~9\)) # (!\Add0~1_combout\ & ((!\shift_num[1]~9\) # (!\U[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \U[31]~input_o\,
	datad => VCC,
	cin => \shift_num[1]~9\,
	combout => \shift_num[2]~10_combout\,
	cout => \shift_num[2]~11\);

-- Location: LCCOMB_X68_Y69_N10
\shift_num[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_num[3]~12_combout\ = (\Add0~2_combout\ & ((\U[31]~input_o\ & ((\shift_num[2]~11\) # (GND))) # (!\U[31]~input_o\ & (!\shift_num[2]~11\)))) # (!\Add0~2_combout\ & ((\U[31]~input_o\ & (!\shift_num[2]~11\)) # (!\U[31]~input_o\ & (\shift_num[2]~11\ & 
-- VCC))))
-- \shift_num[3]~13\ = CARRY((\Add0~2_combout\ & ((\U[31]~input_o\) # (!\shift_num[2]~11\))) # (!\Add0~2_combout\ & (\U[31]~input_o\ & !\shift_num[2]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \U[31]~input_o\,
	datad => VCC,
	cin => \shift_num[2]~11\,
	combout => \shift_num[3]~12_combout\,
	cout => \shift_num[3]~13\);

-- Location: LCCOMB_X68_Y69_N12
\shift_num[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_num[4]~14_combout\ = ((\Add0~3_combout\ $ (\U[31]~input_o\ $ (!\shift_num[3]~13\)))) # (GND)
-- \shift_num[4]~15\ = CARRY((\Add0~3_combout\ & (!\U[31]~input_o\ & !\shift_num[3]~13\)) # (!\Add0~3_combout\ & ((!\shift_num[3]~13\) # (!\U[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \U[31]~input_o\,
	datad => VCC,
	cin => \shift_num[3]~13\,
	combout => \shift_num[4]~14_combout\,
	cout => \shift_num[4]~15\);

-- Location: LCCOMB_X68_Y69_N14
\shift_num[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift_num[5]~16_combout\ = \U[31]~input_o\ $ (\shift_num[4]~15\ $ (!\Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U[31]~input_o\,
	datad => \Add0~4_combout\,
	cin => \shift_num[4]~15\,
	combout => \shift_num[5]~16_combout\);

-- Location: FF_X70_Y67_N3
\shift_num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \shift_num[5]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_num(5));

-- Location: IOIBUF_X58_Y73_N1
\U[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_U(0),
	o => \U[0]~input_o\);

-- Location: LCCOMB_X69_Y69_N0
\U_tilde[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[0]~32_combout\ = \U[0]~input_o\ $ (GND)
-- \U_tilde[0]~33\ = CARRY(!\U[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U[0]~input_o\,
	datad => VCC,
	combout => \U_tilde[0]~32_combout\,
	cout => \U_tilde[0]~33\);

-- Location: LCCOMB_X69_Y69_N2
\U_tilde[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[1]~34_combout\ = (\U[1]~input_o\ & ((\U_tilde[0]~33\) # (GND))) # (!\U[1]~input_o\ & (!\U_tilde[0]~33\))
-- \U_tilde[1]~35\ = CARRY((\U[1]~input_o\) # (!\U_tilde[0]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U[1]~input_o\,
	datad => VCC,
	cin => \U_tilde[0]~33\,
	combout => \U_tilde[1]~34_combout\,
	cout => \U_tilde[1]~35\);

-- Location: LCCOMB_X70_Y69_N20
\U_tilde[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[1]~feeder_combout\ = \U_tilde[1]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_tilde[1]~34_combout\,
	combout => \U_tilde[1]~feeder_combout\);

-- Location: FF_X70_Y69_N21
\U_tilde[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[1]~feeder_combout\,
	asdata => \U[1]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(1));

-- Location: LCCOMB_X70_Y69_N8
\U_tilde[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[0]~feeder_combout\ = \U_tilde[0]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_tilde[0]~32_combout\,
	combout => \U_tilde[0]~feeder_combout\);

-- Location: FF_X70_Y69_N9
\U_tilde[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[0]~feeder_combout\,
	asdata => \U[0]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(0));

-- Location: FF_X70_Y67_N1
\shift_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \shift_num[2]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_num(2));

-- Location: FF_X69_Y65_N29
\shift_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \shift_num[1]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_num(1));

-- Location: LCCOMB_X70_Y68_N22
\ShiftLeft0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~41_combout\ = (shift_num(2)) # (shift_num(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => shift_num(2),
	datad => shift_num(1),
	combout => \ShiftLeft0~41_combout\);

-- Location: FF_X69_Y67_N1
\shift_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \shift_num[0]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_num(0));

-- Location: LCCOMB_X70_Y67_N14
\ShiftLeft0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~144_combout\ = (!\ShiftLeft0~41_combout\ & ((shift_num(0) & ((U_tilde(0)))) # (!shift_num(0) & (U_tilde(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(1),
	datab => U_tilde(0),
	datac => \ShiftLeft0~41_combout\,
	datad => shift_num(0),
	combout => \ShiftLeft0~144_combout\);

-- Location: FF_X70_Y65_N1
\shift_num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \shift_num[3]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_num(3));

-- Location: FF_X70_Y65_N31
\shift_num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \shift_num[4]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => shift_num(4));

-- Location: LCCOMB_X69_Y65_N28
\ShiftLeft0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~39_combout\ = (!shift_num(3) & shift_num(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(3),
	datab => shift_num(4),
	combout => \ShiftLeft0~39_combout\);

-- Location: LCCOMB_X69_Y69_N4
\U_tilde[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[2]~36_combout\ = (\U[2]~input_o\ & (!\U_tilde[1]~35\ & VCC)) # (!\U[2]~input_o\ & (\U_tilde[1]~35\ $ (GND)))
-- \U_tilde[2]~37\ = CARRY((!\U[2]~input_o\ & !\U_tilde[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U[2]~input_o\,
	datad => VCC,
	cin => \U_tilde[1]~35\,
	combout => \U_tilde[2]~36_combout\,
	cout => \U_tilde[2]~37\);

-- Location: LCCOMB_X69_Y69_N6
\U_tilde[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[3]~38_combout\ = (\U[3]~input_o\ & ((\U_tilde[2]~37\) # (GND))) # (!\U[3]~input_o\ & (!\U_tilde[2]~37\))
-- \U_tilde[3]~39\ = CARRY((\U[3]~input_o\) # (!\U_tilde[2]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U[3]~input_o\,
	datad => VCC,
	cin => \U_tilde[2]~37\,
	combout => \U_tilde[3]~38_combout\,
	cout => \U_tilde[3]~39\);

-- Location: FF_X69_Y69_N7
\U_tilde[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[3]~38_combout\,
	asdata => \U[3]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(3));

-- Location: LCCOMB_X69_Y69_N8
\U_tilde[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[4]~40_combout\ = (\U[4]~input_o\ & (!\U_tilde[3]~39\ & VCC)) # (!\U[4]~input_o\ & (\U_tilde[3]~39\ $ (GND)))
-- \U_tilde[4]~41\ = CARRY((!\U[4]~input_o\ & !\U_tilde[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U[4]~input_o\,
	datad => VCC,
	cin => \U_tilde[3]~39\,
	combout => \U_tilde[4]~40_combout\,
	cout => \U_tilde[4]~41\);

-- Location: LCCOMB_X69_Y69_N10
\U_tilde[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[5]~42_combout\ = (\U[5]~input_o\ & ((\U_tilde[4]~41\) # (GND))) # (!\U[5]~input_o\ & (!\U_tilde[4]~41\))
-- \U_tilde[5]~43\ = CARRY((\U[5]~input_o\) # (!\U_tilde[4]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U[5]~input_o\,
	datad => VCC,
	cin => \U_tilde[4]~41\,
	combout => \U_tilde[5]~42_combout\,
	cout => \U_tilde[5]~43\);

-- Location: LCCOMB_X68_Y66_N26
\U_tilde[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[5]~feeder_combout\ = \U_tilde[5]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_tilde[5]~42_combout\,
	combout => \U_tilde[5]~feeder_combout\);

-- Location: FF_X68_Y66_N27
\U_tilde[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[5]~feeder_combout\,
	asdata => \U[5]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(5));

-- Location: LCCOMB_X69_Y66_N14
\ShiftLeft0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~28_combout\ = (shift_num(1) & (U_tilde(3))) # (!shift_num(1) & ((U_tilde(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(3),
	datac => U_tilde(5),
	datad => shift_num(1),
	combout => \ShiftLeft0~28_combout\);

-- Location: LCCOMB_X68_Y66_N4
\U_tilde[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[4]~feeder_combout\ = \U_tilde[4]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_tilde[4]~40_combout\,
	combout => \U_tilde[4]~feeder_combout\);

-- Location: FF_X68_Y66_N5
\U_tilde[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[4]~feeder_combout\,
	asdata => \U[4]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(4));

-- Location: FF_X69_Y69_N5
\U_tilde[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[2]~36_combout\,
	asdata => \U[2]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(2));

-- Location: LCCOMB_X69_Y66_N28
\ShiftLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~11_combout\ = (shift_num(1) & ((U_tilde(2)))) # (!shift_num(1) & (U_tilde(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U_tilde(4),
	datac => U_tilde(2),
	datad => shift_num(1),
	combout => \ShiftLeft0~11_combout\);

-- Location: LCCOMB_X69_Y66_N24
\ShiftLeft0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~29_combout\ = (shift_num(0) & ((\ShiftLeft0~11_combout\))) # (!shift_num(0) & (\ShiftLeft0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(0),
	datac => \ShiftLeft0~28_combout\,
	datad => \ShiftLeft0~11_combout\,
	combout => \ShiftLeft0~29_combout\);

-- Location: LCCOMB_X69_Y69_N12
\U_tilde[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[6]~44_combout\ = (\U[6]~input_o\ & (!\U_tilde[5]~43\ & VCC)) # (!\U[6]~input_o\ & (\U_tilde[5]~43\ $ (GND)))
-- \U_tilde[6]~45\ = CARRY((!\U[6]~input_o\ & !\U_tilde[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U[6]~input_o\,
	datad => VCC,
	cin => \U_tilde[5]~43\,
	combout => \U_tilde[6]~44_combout\,
	cout => \U_tilde[6]~45\);

-- Location: LCCOMB_X69_Y69_N14
\U_tilde[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[7]~46_combout\ = (\U[7]~input_o\ & ((\U_tilde[6]~45\) # (GND))) # (!\U[7]~input_o\ & (!\U_tilde[6]~45\))
-- \U_tilde[7]~47\ = CARRY((\U[7]~input_o\) # (!\U_tilde[6]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U[7]~input_o\,
	datad => VCC,
	cin => \U_tilde[6]~45\,
	combout => \U_tilde[7]~46_combout\,
	cout => \U_tilde[7]~47\);

-- Location: FF_X69_Y69_N15
\U_tilde[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[7]~46_combout\,
	asdata => \U[7]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(7));

-- Location: LCCOMB_X69_Y69_N16
\U_tilde[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[8]~48_combout\ = (\U[8]~input_o\ & (!\U_tilde[7]~47\ & VCC)) # (!\U[8]~input_o\ & (\U_tilde[7]~47\ $ (GND)))
-- \U_tilde[8]~49\ = CARRY((!\U[8]~input_o\ & !\U_tilde[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U[8]~input_o\,
	datad => VCC,
	cin => \U_tilde[7]~47\,
	combout => \U_tilde[8]~48_combout\,
	cout => \U_tilde[8]~49\);

-- Location: LCCOMB_X69_Y69_N18
\U_tilde[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[9]~50_combout\ = (\U[9]~input_o\ & ((\U_tilde[8]~49\) # (GND))) # (!\U[9]~input_o\ & (!\U_tilde[8]~49\))
-- \U_tilde[9]~51\ = CARRY((\U[9]~input_o\) # (!\U_tilde[8]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U[9]~input_o\,
	datad => VCC,
	cin => \U_tilde[8]~49\,
	combout => \U_tilde[9]~50_combout\,
	cout => \U_tilde[9]~51\);

-- Location: LCCOMB_X68_Y65_N12
\U_tilde[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[9]~feeder_combout\ = \U_tilde[9]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_tilde[9]~50_combout\,
	combout => \U_tilde[9]~feeder_combout\);

-- Location: FF_X68_Y65_N13
\U_tilde[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[9]~feeder_combout\,
	asdata => \U[9]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(9));

-- Location: LCCOMB_X69_Y66_N22
\ShiftLeft0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~30_combout\ = (shift_num(1) & (U_tilde(7))) # (!shift_num(1) & ((U_tilde(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(7),
	datac => U_tilde(9),
	datad => shift_num(1),
	combout => \ShiftLeft0~30_combout\);

-- Location: LCCOMB_X68_Y66_N8
\U_tilde[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[6]~feeder_combout\ = \U_tilde[6]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_tilde[6]~44_combout\,
	combout => \U_tilde[6]~feeder_combout\);

-- Location: FF_X68_Y66_N9
\U_tilde[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[6]~feeder_combout\,
	asdata => \U[6]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(6));

-- Location: LCCOMB_X68_Y66_N6
\U_tilde[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[8]~feeder_combout\ = \U_tilde[8]~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_tilde[8]~48_combout\,
	combout => \U_tilde[8]~feeder_combout\);

-- Location: FF_X68_Y66_N7
\U_tilde[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[8]~feeder_combout\,
	asdata => \U[8]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(8));

-- Location: LCCOMB_X69_Y66_N20
\ShiftLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~14_combout\ = (shift_num(1) & (U_tilde(6))) # (!shift_num(1) & ((U_tilde(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(6),
	datac => U_tilde(8),
	datad => shift_num(1),
	combout => \ShiftLeft0~14_combout\);

-- Location: LCCOMB_X69_Y66_N16
\ShiftLeft0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~31_combout\ = (shift_num(0) & ((\ShiftLeft0~14_combout\))) # (!shift_num(0) & (\ShiftLeft0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(0),
	datac => \ShiftLeft0~30_combout\,
	datad => \ShiftLeft0~14_combout\,
	combout => \ShiftLeft0~31_combout\);

-- Location: LCCOMB_X69_Y66_N2
\ShiftLeft0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~32_combout\ = (shift_num(2) & (\ShiftLeft0~29_combout\)) # (!shift_num(2) & ((\ShiftLeft0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(2),
	datac => \ShiftLeft0~29_combout\,
	datad => \ShiftLeft0~31_combout\,
	combout => \ShiftLeft0~32_combout\);

-- Location: LCCOMB_X69_Y69_N20
\U_tilde[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[10]~52_combout\ = (\U[10]~input_o\ & (!\U_tilde[9]~51\ & VCC)) # (!\U[10]~input_o\ & (\U_tilde[9]~51\ $ (GND)))
-- \U_tilde[10]~53\ = CARRY((!\U[10]~input_o\ & !\U_tilde[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U[10]~input_o\,
	datad => VCC,
	cin => \U_tilde[9]~51\,
	combout => \U_tilde[10]~52_combout\,
	cout => \U_tilde[10]~53\);

-- Location: LCCOMB_X70_Y69_N10
\U_tilde[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[10]~feeder_combout\ = \U_tilde[10]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_tilde[10]~52_combout\,
	combout => \U_tilde[10]~feeder_combout\);

-- Location: FF_X70_Y69_N11
\U_tilde[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[10]~feeder_combout\,
	asdata => \U[10]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(10));

-- Location: LCCOMB_X69_Y69_N22
\U_tilde[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[11]~54_combout\ = (\U[11]~input_o\ & ((\U_tilde[10]~53\) # (GND))) # (!\U[11]~input_o\ & (!\U_tilde[10]~53\))
-- \U_tilde[11]~55\ = CARRY((\U[11]~input_o\) # (!\U_tilde[10]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U[11]~input_o\,
	datad => VCC,
	cin => \U_tilde[10]~53\,
	combout => \U_tilde[11]~54_combout\,
	cout => \U_tilde[11]~55\);

-- Location: LCCOMB_X69_Y69_N24
\U_tilde[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[12]~56_combout\ = (\U[12]~input_o\ & (!\U_tilde[11]~55\ & VCC)) # (!\U[12]~input_o\ & (\U_tilde[11]~55\ $ (GND)))
-- \U_tilde[12]~57\ = CARRY((!\U[12]~input_o\ & !\U_tilde[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U[12]~input_o\,
	datad => VCC,
	cin => \U_tilde[11]~55\,
	combout => \U_tilde[12]~56_combout\,
	cout => \U_tilde[12]~57\);

-- Location: FF_X69_Y69_N25
\U_tilde[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[12]~56_combout\,
	asdata => \U[12]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(12));

-- Location: LCCOMB_X70_Y69_N18
\ShiftLeft0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~18_combout\ = (shift_num(1) & (U_tilde(10))) # (!shift_num(1) & ((U_tilde(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(10),
	datac => shift_num(1),
	datad => U_tilde(12),
	combout => \ShiftLeft0~18_combout\);

-- Location: LCCOMB_X69_Y69_N26
\U_tilde[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[13]~58_combout\ = (\U[13]~input_o\ & ((\U_tilde[12]~57\) # (GND))) # (!\U[13]~input_o\ & (!\U_tilde[12]~57\))
-- \U_tilde[13]~59\ = CARRY((\U[13]~input_o\) # (!\U_tilde[12]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U[13]~input_o\,
	datad => VCC,
	cin => \U_tilde[12]~57\,
	combout => \U_tilde[13]~58_combout\,
	cout => \U_tilde[13]~59\);

-- Location: FF_X69_Y69_N27
\U_tilde[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[13]~58_combout\,
	asdata => \U[13]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(13));

-- Location: FF_X69_Y69_N23
\U_tilde[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[11]~54_combout\,
	asdata => \U[11]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(11));

-- Location: LCCOMB_X70_Y68_N0
\ShiftLeft0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~33_combout\ = (shift_num(1) & ((U_tilde(11)))) # (!shift_num(1) & (U_tilde(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U_tilde(13),
	datac => U_tilde(11),
	datad => shift_num(1),
	combout => \ShiftLeft0~33_combout\);

-- Location: LCCOMB_X70_Y69_N30
\ShiftLeft0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~34_combout\ = (shift_num(0) & (\ShiftLeft0~18_combout\)) # (!shift_num(0) & ((\ShiftLeft0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(0),
	datac => \ShiftLeft0~18_combout\,
	datad => \ShiftLeft0~33_combout\,
	combout => \ShiftLeft0~34_combout\);

-- Location: LCCOMB_X69_Y69_N28
\U_tilde[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[14]~60_combout\ = (\U[14]~input_o\ & (!\U_tilde[13]~59\ & VCC)) # (!\U[14]~input_o\ & (\U_tilde[13]~59\ $ (GND)))
-- \U_tilde[14]~61\ = CARRY((!\U[14]~input_o\ & !\U_tilde[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U[14]~input_o\,
	datad => VCC,
	cin => \U_tilde[13]~59\,
	combout => \U_tilde[14]~60_combout\,
	cout => \U_tilde[14]~61\);

-- Location: FF_X69_Y69_N29
\U_tilde[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[14]~60_combout\,
	asdata => \U[14]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(14));

-- Location: LCCOMB_X69_Y69_N30
\U_tilde[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[15]~62_combout\ = (\U[15]~input_o\ & ((\U_tilde[14]~61\) # (GND))) # (!\U[15]~input_o\ & (!\U_tilde[14]~61\))
-- \U_tilde[15]~63\ = CARRY((\U[15]~input_o\) # (!\U_tilde[14]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U[15]~input_o\,
	datad => VCC,
	cin => \U_tilde[14]~61\,
	combout => \U_tilde[15]~62_combout\,
	cout => \U_tilde[15]~63\);

-- Location: LCCOMB_X69_Y68_N0
\U_tilde[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[16]~64_combout\ = (\U[16]~input_o\ & (!\U_tilde[15]~63\ & VCC)) # (!\U[16]~input_o\ & (\U_tilde[15]~63\ $ (GND)))
-- \U_tilde[16]~65\ = CARRY((!\U[16]~input_o\ & !\U_tilde[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U[16]~input_o\,
	datad => VCC,
	cin => \U_tilde[15]~63\,
	combout => \U_tilde[16]~64_combout\,
	cout => \U_tilde[16]~65\);

-- Location: LCCOMB_X68_Y65_N24
\U_tilde[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[16]~feeder_combout\ = \U_tilde[16]~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_tilde[16]~64_combout\,
	combout => \U_tilde[16]~feeder_combout\);

-- Location: FF_X68_Y65_N25
\U_tilde[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[16]~feeder_combout\,
	asdata => \U[16]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(16));

-- Location: LCCOMB_X69_Y65_N0
\ShiftLeft0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~21_combout\ = (shift_num(1) & (U_tilde(14))) # (!shift_num(1) & ((U_tilde(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(1),
	datac => U_tilde(14),
	datad => U_tilde(16),
	combout => \ShiftLeft0~21_combout\);

-- Location: LCCOMB_X68_Y65_N6
\U_tilde[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[15]~feeder_combout\ = \U_tilde[15]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_tilde[15]~62_combout\,
	combout => \U_tilde[15]~feeder_combout\);

-- Location: FF_X68_Y65_N7
\U_tilde[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[15]~feeder_combout\,
	asdata => \U[15]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(15));

-- Location: LCCOMB_X69_Y68_N2
\U_tilde[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[17]~66_combout\ = (\U[17]~input_o\ & ((\U_tilde[16]~65\) # (GND))) # (!\U[17]~input_o\ & (!\U_tilde[16]~65\))
-- \U_tilde[17]~67\ = CARRY((\U[17]~input_o\) # (!\U_tilde[16]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U[17]~input_o\,
	datad => VCC,
	cin => \U_tilde[16]~65\,
	combout => \U_tilde[17]~66_combout\,
	cout => \U_tilde[17]~67\);

-- Location: FF_X69_Y68_N3
\U_tilde[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[17]~66_combout\,
	asdata => \U[17]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(17));

-- Location: LCCOMB_X69_Y65_N10
\ShiftLeft0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~35_combout\ = (shift_num(1) & (U_tilde(15))) # (!shift_num(1) & ((U_tilde(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U_tilde(15),
	datac => U_tilde(17),
	datad => shift_num(1),
	combout => \ShiftLeft0~35_combout\);

-- Location: LCCOMB_X69_Y65_N8
\ShiftLeft0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~36_combout\ = (shift_num(0) & (\ShiftLeft0~21_combout\)) # (!shift_num(0) & ((\ShiftLeft0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(0),
	datab => \ShiftLeft0~21_combout\,
	datad => \ShiftLeft0~35_combout\,
	combout => \ShiftLeft0~36_combout\);

-- Location: LCCOMB_X70_Y67_N2
\ShiftLeft0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~37_combout\ = (shift_num(2) & (\ShiftLeft0~34_combout\)) # (!shift_num(2) & ((\ShiftLeft0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(2),
	datab => \ShiftLeft0~34_combout\,
	datad => \ShiftLeft0~36_combout\,
	combout => \ShiftLeft0~37_combout\);

-- Location: LCCOMB_X70_Y67_N24
\ShiftLeft0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~38_combout\ = (!shift_num(4) & ((shift_num(3) & (\ShiftLeft0~32_combout\)) # (!shift_num(3) & ((\ShiftLeft0~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(3),
	datab => shift_num(4),
	datac => \ShiftLeft0~32_combout\,
	datad => \ShiftLeft0~37_combout\,
	combout => \ShiftLeft0~38_combout\);

-- Location: LCCOMB_X70_Y67_N22
\ShiftLeft0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~42_combout\ = (!shift_num(5) & ((\ShiftLeft0~38_combout\) # ((\ShiftLeft0~144_combout\ & \ShiftLeft0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(5),
	datab => \ShiftLeft0~144_combout\,
	datac => \ShiftLeft0~39_combout\,
	datad => \ShiftLeft0~38_combout\,
	combout => \ShiftLeft0~42_combout\);

-- Location: LCCOMB_X69_Y66_N18
\ShiftLeft0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~54_combout\ = (!shift_num(0) & ((shift_num(1) & ((U_tilde(0)))) # (!shift_num(1) & (U_tilde(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(0),
	datab => U_tilde(2),
	datac => U_tilde(0),
	datad => shift_num(1),
	combout => \ShiftLeft0~54_combout\);

-- Location: LCCOMB_X69_Y66_N4
\ShiftLeft0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~55_combout\ = (\ShiftLeft0~54_combout\) # ((!shift_num(1) & (U_tilde(1) & shift_num(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(1),
	datab => U_tilde(1),
	datac => shift_num(0),
	datad => \ShiftLeft0~54_combout\,
	combout => \ShiftLeft0~55_combout\);

-- Location: LCCOMB_X68_Y67_N18
\ShiftLeft0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~25_combout\ = (!shift_num(2) & (shift_num(4) & !shift_num(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(2),
	datac => shift_num(4),
	datad => shift_num(3),
	combout => \ShiftLeft0~25_combout\);

-- Location: LCCOMB_X69_Y66_N0
\ShiftLeft0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~45_combout\ = (shift_num(1) & (U_tilde(8))) # (!shift_num(1) & ((U_tilde(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U_tilde(8),
	datac => U_tilde(10),
	datad => shift_num(1),
	combout => \ShiftLeft0~45_combout\);

-- Location: LCCOMB_X69_Y66_N30
\ShiftLeft0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~46_combout\ = (shift_num(0) & (\ShiftLeft0~30_combout\)) # (!shift_num(0) & ((\ShiftLeft0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(0),
	datac => \ShiftLeft0~30_combout\,
	datad => \ShiftLeft0~45_combout\,
	combout => \ShiftLeft0~46_combout\);

-- Location: LCCOMB_X69_Y66_N12
\ShiftLeft0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~43_combout\ = (shift_num(1) & ((U_tilde(4)))) # (!shift_num(1) & (U_tilde(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(6),
	datac => U_tilde(4),
	datad => shift_num(1),
	combout => \ShiftLeft0~43_combout\);

-- Location: LCCOMB_X69_Y66_N10
\ShiftLeft0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~44_combout\ = (shift_num(0) & (\ShiftLeft0~28_combout\)) # (!shift_num(0) & ((\ShiftLeft0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(0),
	datac => \ShiftLeft0~28_combout\,
	datad => \ShiftLeft0~43_combout\,
	combout => \ShiftLeft0~44_combout\);

-- Location: LCCOMB_X69_Y66_N8
\ShiftLeft0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~47_combout\ = (shift_num(2) & ((\ShiftLeft0~44_combout\))) # (!shift_num(2) & (\ShiftLeft0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(2),
	datac => \ShiftLeft0~46_combout\,
	datad => \ShiftLeft0~44_combout\,
	combout => \ShiftLeft0~47_combout\);

-- Location: LCCOMB_X69_Y68_N4
\U_tilde[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[18]~68_combout\ = (\U[18]~input_o\ & (!\U_tilde[17]~67\ & VCC)) # (!\U[18]~input_o\ & (\U_tilde[17]~67\ $ (GND)))
-- \U_tilde[18]~69\ = CARRY((!\U[18]~input_o\ & !\U_tilde[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U[18]~input_o\,
	datad => VCC,
	cin => \U_tilde[17]~67\,
	combout => \U_tilde[18]~68_combout\,
	cout => \U_tilde[18]~69\);

-- Location: LCCOMB_X68_Y65_N26
\U_tilde[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[18]~feeder_combout\ = \U_tilde[18]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_tilde[18]~68_combout\,
	combout => \U_tilde[18]~feeder_combout\);

-- Location: FF_X68_Y65_N27
\U_tilde[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[18]~feeder_combout\,
	asdata => \U[18]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(18));

-- Location: LCCOMB_X69_Y65_N14
\ShiftLeft0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~50_combout\ = (shift_num(1) & ((U_tilde(16)))) # (!shift_num(1) & (U_tilde(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(1),
	datac => U_tilde(18),
	datad => U_tilde(16),
	combout => \ShiftLeft0~50_combout\);

-- Location: LCCOMB_X69_Y65_N4
\ShiftLeft0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~51_combout\ = (shift_num(0) & ((\ShiftLeft0~35_combout\))) # (!shift_num(0) & (\ShiftLeft0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(0),
	datac => \ShiftLeft0~50_combout\,
	datad => \ShiftLeft0~35_combout\,
	combout => \ShiftLeft0~51_combout\);

-- Location: LCCOMB_X70_Y68_N4
\ShiftLeft0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~48_combout\ = (shift_num(1) & ((U_tilde(12)))) # (!shift_num(1) & (U_tilde(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(14),
	datac => U_tilde(12),
	datad => shift_num(1),
	combout => \ShiftLeft0~48_combout\);

-- Location: LCCOMB_X70_Y68_N6
\ShiftLeft0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~49_combout\ = (shift_num(0) & ((\ShiftLeft0~33_combout\))) # (!shift_num(0) & (\ShiftLeft0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(0),
	datac => \ShiftLeft0~48_combout\,
	datad => \ShiftLeft0~33_combout\,
	combout => \ShiftLeft0~49_combout\);

-- Location: LCCOMB_X70_Y65_N20
\ShiftLeft0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~52_combout\ = (shift_num(2) & ((\ShiftLeft0~49_combout\))) # (!shift_num(2) & (\ShiftLeft0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(2),
	datac => \ShiftLeft0~51_combout\,
	datad => \ShiftLeft0~49_combout\,
	combout => \ShiftLeft0~52_combout\);

-- Location: LCCOMB_X70_Y65_N18
\ShiftLeft0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~53_combout\ = (!shift_num(4) & ((shift_num(3) & (\ShiftLeft0~47_combout\)) # (!shift_num(3) & ((\ShiftLeft0~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(4),
	datab => shift_num(3),
	datac => \ShiftLeft0~47_combout\,
	datad => \ShiftLeft0~52_combout\,
	combout => \ShiftLeft0~53_combout\);

-- Location: LCCOMB_X70_Y65_N12
\ShiftLeft0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~56_combout\ = (!shift_num(5) & ((\ShiftLeft0~53_combout\) # ((\ShiftLeft0~55_combout\ & \ShiftLeft0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(5),
	datab => \ShiftLeft0~55_combout\,
	datac => \ShiftLeft0~25_combout\,
	datad => \ShiftLeft0~53_combout\,
	combout => \ShiftLeft0~56_combout\);

-- Location: LCCOMB_X70_Y69_N22
\ShiftLeft0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~65_combout\ = (!shift_num(1) & ((shift_num(0) & ((U_tilde(2)))) # (!shift_num(0) & (U_tilde(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(3),
	datab => U_tilde(2),
	datac => shift_num(1),
	datad => shift_num(0),
	combout => \ShiftLeft0~65_combout\);

-- Location: LCCOMB_X70_Y69_N16
\ShiftLeft0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~40_combout\ = (shift_num(0) & ((U_tilde(0)))) # (!shift_num(0) & (U_tilde(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U_tilde(1),
	datac => U_tilde(0),
	datad => shift_num(0),
	combout => \ShiftLeft0~40_combout\);

-- Location: LCCOMB_X70_Y69_N0
\ShiftLeft0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~66_combout\ = (\ShiftLeft0~65_combout\) # ((shift_num(1) & \ShiftLeft0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(1),
	datac => \ShiftLeft0~65_combout\,
	datad => \ShiftLeft0~40_combout\,
	combout => \ShiftLeft0~66_combout\);

-- Location: LCCOMB_X69_Y66_N26
\ShiftLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~13_combout\ = (shift_num(1) & (U_tilde(5))) # (!shift_num(1) & ((U_tilde(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(5),
	datac => U_tilde(7),
	datad => shift_num(1),
	combout => \ShiftLeft0~13_combout\);

-- Location: LCCOMB_X69_Y66_N6
\ShiftLeft0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~57_combout\ = (shift_num(0) & ((\ShiftLeft0~43_combout\))) # (!shift_num(0) & (\ShiftLeft0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(0),
	datac => \ShiftLeft0~13_combout\,
	datad => \ShiftLeft0~43_combout\,
	combout => \ShiftLeft0~57_combout\);

-- Location: LCCOMB_X69_Y65_N30
\ShiftLeft0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~17_combout\ = (shift_num(1) & ((U_tilde(9)))) # (!shift_num(1) & (U_tilde(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(1),
	datac => U_tilde(11),
	datad => U_tilde(9),
	combout => \ShiftLeft0~17_combout\);

-- Location: LCCOMB_X68_Y67_N8
\ShiftLeft0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~58_combout\ = (shift_num(0) & (\ShiftLeft0~45_combout\)) # (!shift_num(0) & ((\ShiftLeft0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(0),
	datac => \ShiftLeft0~45_combout\,
	datad => \ShiftLeft0~17_combout\,
	combout => \ShiftLeft0~58_combout\);

-- Location: LCCOMB_X68_Y67_N26
\ShiftLeft0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~59_combout\ = (shift_num(2) & (\ShiftLeft0~57_combout\)) # (!shift_num(2) & ((\ShiftLeft0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(2),
	datac => \ShiftLeft0~57_combout\,
	datad => \ShiftLeft0~58_combout\,
	combout => \ShiftLeft0~59_combout\);

-- Location: LCCOMB_X69_Y68_N6
\U_tilde[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[19]~70_combout\ = (\U[19]~input_o\ & ((\U_tilde[18]~69\) # (GND))) # (!\U[19]~input_o\ & (!\U_tilde[18]~69\))
-- \U_tilde[19]~71\ = CARRY((\U[19]~input_o\) # (!\U_tilde[18]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U[19]~input_o\,
	datad => VCC,
	cin => \U_tilde[18]~69\,
	combout => \U_tilde[19]~70_combout\,
	cout => \U_tilde[19]~71\);

-- Location: FF_X69_Y68_N7
\U_tilde[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[19]~70_combout\,
	asdata => \U[19]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(19));

-- Location: LCCOMB_X69_Y65_N6
\ShiftLeft0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~61_combout\ = (shift_num(1) & (U_tilde(17))) # (!shift_num(1) & ((U_tilde(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(1),
	datac => U_tilde(17),
	datad => U_tilde(19),
	combout => \ShiftLeft0~61_combout\);

-- Location: LCCOMB_X69_Y65_N12
\ShiftLeft0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~62_combout\ = (shift_num(0) & (\ShiftLeft0~50_combout\)) # (!shift_num(0) & ((\ShiftLeft0~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(0),
	datac => \ShiftLeft0~50_combout\,
	datad => \ShiftLeft0~61_combout\,
	combout => \ShiftLeft0~62_combout\);

-- Location: LCCOMB_X69_Y65_N18
\ShiftLeft0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~20_combout\ = (shift_num(1) & ((U_tilde(13)))) # (!shift_num(1) & (U_tilde(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(1),
	datac => U_tilde(15),
	datad => U_tilde(13),
	combout => \ShiftLeft0~20_combout\);

-- Location: LCCOMB_X68_Y67_N12
\ShiftLeft0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~60_combout\ = (shift_num(0) & ((\ShiftLeft0~48_combout\))) # (!shift_num(0) & (\ShiftLeft0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(0),
	datac => \ShiftLeft0~20_combout\,
	datad => \ShiftLeft0~48_combout\,
	combout => \ShiftLeft0~60_combout\);

-- Location: LCCOMB_X68_Y67_N2
\ShiftLeft0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~63_combout\ = (shift_num(2) & ((\ShiftLeft0~60_combout\))) # (!shift_num(2) & (\ShiftLeft0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(2),
	datac => \ShiftLeft0~62_combout\,
	datad => \ShiftLeft0~60_combout\,
	combout => \ShiftLeft0~63_combout\);

-- Location: LCCOMB_X68_Y67_N24
\ShiftLeft0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~64_combout\ = (!shift_num(4) & ((shift_num(3) & (\ShiftLeft0~59_combout\)) # (!shift_num(3) & ((\ShiftLeft0~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(3),
	datab => shift_num(4),
	datac => \ShiftLeft0~59_combout\,
	datad => \ShiftLeft0~63_combout\,
	combout => \ShiftLeft0~64_combout\);

-- Location: LCCOMB_X68_Y67_N10
\ShiftLeft0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~67_combout\ = (!shift_num(5) & ((\ShiftLeft0~64_combout\) # ((\ShiftLeft0~66_combout\ & \ShiftLeft0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~66_combout\,
	datab => \ShiftLeft0~25_combout\,
	datac => shift_num(5),
	datad => \ShiftLeft0~64_combout\,
	combout => \ShiftLeft0~67_combout\);

-- Location: LCCOMB_X70_Y66_N4
\ShiftLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = (shift_num(0) & ((shift_num(1) & (U_tilde(1))) # (!shift_num(1) & ((U_tilde(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(1),
	datab => U_tilde(3),
	datac => shift_num(0),
	datad => shift_num(1),
	combout => \ShiftLeft0~10_combout\);

-- Location: LCCOMB_X70_Y66_N22
\ShiftLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~12_combout\ = (\ShiftLeft0~10_combout\) # ((!shift_num(0) & \ShiftLeft0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(0),
	datac => \ShiftLeft0~10_combout\,
	datad => \ShiftLeft0~11_combout\,
	combout => \ShiftLeft0~12_combout\);

-- Location: LCCOMB_X70_Y69_N24
\ShiftLeft0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~26_combout\ = (U_tilde(0) & (!shift_num(1) & !shift_num(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U_tilde(0),
	datac => shift_num(1),
	datad => shift_num(0),
	combout => \ShiftLeft0~26_combout\);

-- Location: LCCOMB_X70_Y66_N8
\ShiftLeft0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~73_combout\ = (shift_num(2) & ((\ShiftLeft0~26_combout\))) # (!shift_num(2) & (\ShiftLeft0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(2),
	datac => \ShiftLeft0~12_combout\,
	datad => \ShiftLeft0~26_combout\,
	combout => \ShiftLeft0~73_combout\);

-- Location: LCCOMB_X69_Y65_N26
\ShiftLeft0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~22_combout\ = (shift_num(0) & ((\ShiftLeft0~20_combout\))) # (!shift_num(0) & (\ShiftLeft0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(0),
	datab => \ShiftLeft0~21_combout\,
	datad => \ShiftLeft0~20_combout\,
	combout => \ShiftLeft0~22_combout\);

-- Location: LCCOMB_X69_Y68_N8
\U_tilde[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[20]~72_combout\ = (\U[20]~input_o\ & (!\U_tilde[19]~71\ & VCC)) # (!\U[20]~input_o\ & (\U_tilde[19]~71\ $ (GND)))
-- \U_tilde[20]~73\ = CARRY((!\U[20]~input_o\ & !\U_tilde[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U[20]~input_o\,
	datad => VCC,
	cin => \U_tilde[19]~71\,
	combout => \U_tilde[20]~72_combout\,
	cout => \U_tilde[20]~73\);

-- Location: FF_X69_Y68_N9
\U_tilde[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[20]~72_combout\,
	asdata => \U[20]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(20));

-- Location: LCCOMB_X69_Y65_N2
\ShiftLeft0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~69_combout\ = (shift_num(1) & (U_tilde(18))) # (!shift_num(1) & ((U_tilde(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(1),
	datac => U_tilde(18),
	datad => U_tilde(20),
	combout => \ShiftLeft0~69_combout\);

-- Location: LCCOMB_X69_Y65_N16
\ShiftLeft0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~70_combout\ = (shift_num(0) & (\ShiftLeft0~61_combout\)) # (!shift_num(0) & ((\ShiftLeft0~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~61_combout\,
	datac => shift_num(0),
	datad => \ShiftLeft0~69_combout\,
	combout => \ShiftLeft0~70_combout\);

-- Location: LCCOMB_X69_Y65_N22
\ShiftLeft0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~71_combout\ = (shift_num(2) & (\ShiftLeft0~22_combout\)) # (!shift_num(2) & ((\ShiftLeft0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(2),
	datac => \ShiftLeft0~22_combout\,
	datad => \ShiftLeft0~70_combout\,
	combout => \ShiftLeft0~71_combout\);

-- Location: LCCOMB_X70_Y66_N28
\ShiftLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~15_combout\ = (shift_num(0) & (\ShiftLeft0~13_combout\)) # (!shift_num(0) & ((\ShiftLeft0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(0),
	datac => \ShiftLeft0~13_combout\,
	datad => \ShiftLeft0~14_combout\,
	combout => \ShiftLeft0~15_combout\);

-- Location: LCCOMB_X69_Y65_N20
\ShiftLeft0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~19_combout\ = (shift_num(0) & (\ShiftLeft0~17_combout\)) # (!shift_num(0) & ((\ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(0),
	datac => \ShiftLeft0~17_combout\,
	datad => \ShiftLeft0~18_combout\,
	combout => \ShiftLeft0~19_combout\);

-- Location: LCCOMB_X70_Y66_N24
\ShiftLeft0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~68_combout\ = (shift_num(2) & (\ShiftLeft0~15_combout\)) # (!shift_num(2) & ((\ShiftLeft0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(2),
	datab => \ShiftLeft0~15_combout\,
	datad => \ShiftLeft0~19_combout\,
	combout => \ShiftLeft0~68_combout\);

-- Location: LCCOMB_X70_Y66_N18
\ShiftLeft0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~72_combout\ = (!shift_num(4) & ((shift_num(3) & ((\ShiftLeft0~68_combout\))) # (!shift_num(3) & (\ShiftLeft0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(4),
	datab => shift_num(3),
	datac => \ShiftLeft0~71_combout\,
	datad => \ShiftLeft0~68_combout\,
	combout => \ShiftLeft0~72_combout\);

-- Location: LCCOMB_X70_Y66_N10
\ShiftLeft0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~74_combout\ = (!shift_num(5) & ((\ShiftLeft0~72_combout\) # ((\ShiftLeft0~39_combout\ & \ShiftLeft0~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~39_combout\,
	datab => shift_num(5),
	datac => \ShiftLeft0~73_combout\,
	datad => \ShiftLeft0~72_combout\,
	combout => \ShiftLeft0~74_combout\);

-- Location: LCCOMB_X70_Y69_N28
\ShiftLeft0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~80_combout\ = (shift_num(2) & (!shift_num(1) & ((\ShiftLeft0~40_combout\)))) # (!shift_num(2) & (((\ShiftLeft0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(1),
	datab => shift_num(2),
	datac => \ShiftLeft0~29_combout\,
	datad => \ShiftLeft0~40_combout\,
	combout => \ShiftLeft0~80_combout\);

-- Location: LCCOMB_X70_Y69_N26
\ShiftLeft0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~75_combout\ = (shift_num(2) & ((\ShiftLeft0~31_combout\))) # (!shift_num(2) & (\ShiftLeft0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(2),
	datac => \ShiftLeft0~34_combout\,
	datad => \ShiftLeft0~31_combout\,
	combout => \ShiftLeft0~75_combout\);

-- Location: LCCOMB_X69_Y68_N10
\U_tilde[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[21]~74_combout\ = (\U[21]~input_o\ & ((\U_tilde[20]~73\) # (GND))) # (!\U[21]~input_o\ & (!\U_tilde[20]~73\))
-- \U_tilde[21]~75\ = CARRY((\U[21]~input_o\) # (!\U_tilde[20]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U[21]~input_o\,
	datad => VCC,
	cin => \U_tilde[20]~73\,
	combout => \U_tilde[21]~74_combout\,
	cout => \U_tilde[21]~75\);

-- Location: FF_X69_Y68_N11
\U_tilde[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[21]~74_combout\,
	asdata => \U[21]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(21));

-- Location: LCCOMB_X69_Y67_N14
\ShiftLeft0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~76_combout\ = (shift_num(1) & ((U_tilde(19)))) # (!shift_num(1) & (U_tilde(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U_tilde(21),
	datac => U_tilde(19),
	datad => shift_num(1),
	combout => \ShiftLeft0~76_combout\);

-- Location: LCCOMB_X69_Y67_N24
\ShiftLeft0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~77_combout\ = (shift_num(0) & ((\ShiftLeft0~69_combout\))) # (!shift_num(0) & (\ShiftLeft0~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(0),
	datac => \ShiftLeft0~76_combout\,
	datad => \ShiftLeft0~69_combout\,
	combout => \ShiftLeft0~77_combout\);

-- Location: LCCOMB_X70_Y69_N12
\ShiftLeft0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~78_combout\ = (shift_num(2) & (\ShiftLeft0~36_combout\)) # (!shift_num(2) & ((\ShiftLeft0~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(2),
	datac => \ShiftLeft0~36_combout\,
	datad => \ShiftLeft0~77_combout\,
	combout => \ShiftLeft0~78_combout\);

-- Location: LCCOMB_X70_Y69_N2
\ShiftLeft0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~79_combout\ = (!shift_num(4) & ((shift_num(3) & (\ShiftLeft0~75_combout\)) # (!shift_num(3) & ((\ShiftLeft0~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(4),
	datab => shift_num(3),
	datac => \ShiftLeft0~75_combout\,
	datad => \ShiftLeft0~78_combout\,
	combout => \ShiftLeft0~79_combout\);

-- Location: LCCOMB_X70_Y69_N14
\ShiftLeft0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~81_combout\ = (!shift_num(5) & ((\ShiftLeft0~79_combout\) # ((\ShiftLeft0~39_combout\ & \ShiftLeft0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~39_combout\,
	datab => \ShiftLeft0~80_combout\,
	datac => shift_num(5),
	datad => \ShiftLeft0~79_combout\,
	combout => \ShiftLeft0~81_combout\);

-- Location: LCCOMB_X70_Y68_N24
\ShiftLeft0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~87_combout\ = (shift_num(2) & ((\ShiftLeft0~55_combout\))) # (!shift_num(2) & (\ShiftLeft0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(2),
	datac => \ShiftLeft0~44_combout\,
	datad => \ShiftLeft0~55_combout\,
	combout => \ShiftLeft0~87_combout\);

-- Location: LCCOMB_X70_Y68_N8
\ShiftLeft0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~82_combout\ = (shift_num(2) & ((\ShiftLeft0~46_combout\))) # (!shift_num(2) & (\ShiftLeft0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~49_combout\,
	datac => shift_num(2),
	datad => \ShiftLeft0~46_combout\,
	combout => \ShiftLeft0~82_combout\);

-- Location: LCCOMB_X69_Y68_N12
\U_tilde[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[22]~76_combout\ = (\U[22]~input_o\ & (!\U_tilde[21]~75\ & VCC)) # (!\U[22]~input_o\ & (\U_tilde[21]~75\ $ (GND)))
-- \U_tilde[22]~77\ = CARRY((!\U[22]~input_o\ & !\U_tilde[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U[22]~input_o\,
	datad => VCC,
	cin => \U_tilde[21]~75\,
	combout => \U_tilde[22]~76_combout\,
	cout => \U_tilde[22]~77\);

-- Location: FF_X69_Y68_N13
\U_tilde[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[22]~76_combout\,
	asdata => \U[22]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(22));

-- Location: LCCOMB_X69_Y67_N26
\ShiftLeft0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~83_combout\ = (shift_num(1) & (U_tilde(20))) # (!shift_num(1) & ((U_tilde(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(20),
	datac => U_tilde(22),
	datad => shift_num(1),
	combout => \ShiftLeft0~83_combout\);

-- Location: LCCOMB_X70_Y68_N14
\ShiftLeft0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~84_combout\ = (shift_num(0) & ((\ShiftLeft0~76_combout\))) # (!shift_num(0) & (\ShiftLeft0~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(0),
	datac => \ShiftLeft0~83_combout\,
	datad => \ShiftLeft0~76_combout\,
	combout => \ShiftLeft0~84_combout\);

-- Location: LCCOMB_X70_Y68_N12
\ShiftLeft0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~85_combout\ = (shift_num(2) & ((\ShiftLeft0~51_combout\))) # (!shift_num(2) & (\ShiftLeft0~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(2),
	datac => \ShiftLeft0~84_combout\,
	datad => \ShiftLeft0~51_combout\,
	combout => \ShiftLeft0~85_combout\);

-- Location: LCCOMB_X70_Y68_N18
\ShiftLeft0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~86_combout\ = (!shift_num(4) & ((shift_num(3) & (\ShiftLeft0~82_combout\)) # (!shift_num(3) & ((\ShiftLeft0~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(4),
	datab => shift_num(3),
	datac => \ShiftLeft0~82_combout\,
	datad => \ShiftLeft0~85_combout\,
	combout => \ShiftLeft0~86_combout\);

-- Location: LCCOMB_X70_Y68_N10
\ShiftLeft0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~88_combout\ = (!shift_num(5) & ((\ShiftLeft0~86_combout\) # ((\ShiftLeft0~39_combout\ & \ShiftLeft0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~39_combout\,
	datab => \ShiftLeft0~87_combout\,
	datac => shift_num(5),
	datad => \ShiftLeft0~86_combout\,
	combout => \ShiftLeft0~88_combout\);

-- Location: LCCOMB_X68_Y67_N6
\ShiftLeft0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~94_combout\ = (shift_num(2) & ((\ShiftLeft0~66_combout\))) # (!shift_num(2) & (\ShiftLeft0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(2),
	datac => \ShiftLeft0~57_combout\,
	datad => \ShiftLeft0~66_combout\,
	combout => \ShiftLeft0~94_combout\);

-- Location: LCCOMB_X69_Y68_N14
\U_tilde[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[23]~78_combout\ = (\U[23]~input_o\ & ((\U_tilde[22]~77\) # (GND))) # (!\U[23]~input_o\ & (!\U_tilde[22]~77\))
-- \U_tilde[23]~79\ = CARRY((\U[23]~input_o\) # (!\U_tilde[22]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U[23]~input_o\,
	datad => VCC,
	cin => \U_tilde[22]~77\,
	combout => \U_tilde[23]~78_combout\,
	cout => \U_tilde[23]~79\);

-- Location: LCCOMB_X68_Y67_N16
\U_tilde[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[23]~feeder_combout\ = \U_tilde[23]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_tilde[23]~78_combout\,
	combout => \U_tilde[23]~feeder_combout\);

-- Location: FF_X68_Y67_N17
\U_tilde[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[23]~feeder_combout\,
	asdata => \U[23]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(23));

-- Location: LCCOMB_X69_Y67_N20
\ShiftLeft0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~90_combout\ = (shift_num(1) & ((U_tilde(21)))) # (!shift_num(1) & (U_tilde(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(23),
	datab => U_tilde(21),
	datad => shift_num(1),
	combout => \ShiftLeft0~90_combout\);

-- Location: LCCOMB_X69_Y67_N6
\ShiftLeft0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~91_combout\ = (shift_num(0) & (\ShiftLeft0~83_combout\)) # (!shift_num(0) & ((\ShiftLeft0~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(0),
	datac => \ShiftLeft0~83_combout\,
	datad => \ShiftLeft0~90_combout\,
	combout => \ShiftLeft0~91_combout\);

-- Location: LCCOMB_X68_Y67_N30
\ShiftLeft0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~92_combout\ = (shift_num(2) & (\ShiftLeft0~62_combout\)) # (!shift_num(2) & ((\ShiftLeft0~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(2),
	datac => \ShiftLeft0~62_combout\,
	datad => \ShiftLeft0~91_combout\,
	combout => \ShiftLeft0~92_combout\);

-- Location: LCCOMB_X68_Y67_N20
\ShiftLeft0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~89_combout\ = (shift_num(2) & (\ShiftLeft0~58_combout\)) # (!shift_num(2) & ((\ShiftLeft0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(2),
	datac => \ShiftLeft0~58_combout\,
	datad => \ShiftLeft0~60_combout\,
	combout => \ShiftLeft0~89_combout\);

-- Location: LCCOMB_X68_Y67_N28
\ShiftLeft0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~93_combout\ = (!shift_num(4) & ((shift_num(3) & ((\ShiftLeft0~89_combout\))) # (!shift_num(3) & (\ShiftLeft0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(3),
	datab => shift_num(4),
	datac => \ShiftLeft0~92_combout\,
	datad => \ShiftLeft0~89_combout\,
	combout => \ShiftLeft0~93_combout\);

-- Location: LCCOMB_X68_Y67_N4
\ShiftLeft0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~95_combout\ = (!shift_num(5) & ((\ShiftLeft0~93_combout\) # ((\ShiftLeft0~94_combout\ & \ShiftLeft0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~94_combout\,
	datab => shift_num(5),
	datac => \ShiftLeft0~39_combout\,
	datad => \ShiftLeft0~93_combout\,
	combout => \ShiftLeft0~95_combout\);

-- Location: LCCOMB_X70_Y65_N30
\ShiftLeft0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~96_combout\ = (shift_num(4) & shift_num(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => shift_num(4),
	datad => shift_num(3),
	combout => \ShiftLeft0~96_combout\);

-- Location: LCCOMB_X70_Y65_N8
\ShiftLeft0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~145_combout\ = (shift_num(4) & (shift_num(3) & (!shift_num(2) & \ShiftLeft0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(4),
	datab => shift_num(3),
	datac => shift_num(2),
	datad => \ShiftLeft0~26_combout\,
	combout => \ShiftLeft0~145_combout\);

-- Location: LCCOMB_X70_Y65_N14
\ShiftLeft0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~97_combout\ = (shift_num(4)) # ((shift_num(2) & !shift_num(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(4),
	datab => shift_num(2),
	datad => shift_num(3),
	combout => \ShiftLeft0~97_combout\);

-- Location: LCCOMB_X70_Y66_N30
\ShiftLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~16_combout\ = (shift_num(2) & (\ShiftLeft0~12_combout\)) # (!shift_num(2) & ((\ShiftLeft0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(2),
	datac => \ShiftLeft0~12_combout\,
	datad => \ShiftLeft0~15_combout\,
	combout => \ShiftLeft0~16_combout\);

-- Location: LCCOMB_X69_Y68_N16
\U_tilde[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[24]~80_combout\ = (\U[24]~input_o\ & (!\U_tilde[23]~79\ & VCC)) # (!\U[24]~input_o\ & (\U_tilde[23]~79\ $ (GND)))
-- \U_tilde[24]~81\ = CARRY((!\U[24]~input_o\ & !\U_tilde[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U[24]~input_o\,
	datad => VCC,
	cin => \U_tilde[23]~79\,
	combout => \U_tilde[24]~80_combout\,
	cout => \U_tilde[24]~81\);

-- Location: FF_X69_Y68_N17
\U_tilde[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[24]~80_combout\,
	asdata => \U[24]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(24));

-- Location: LCCOMB_X69_Y67_N8
\ShiftLeft0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~99_combout\ = (shift_num(1) & ((U_tilde(22)))) # (!shift_num(1) & (U_tilde(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U_tilde(24),
	datac => U_tilde(22),
	datad => shift_num(1),
	combout => \ShiftLeft0~99_combout\);

-- Location: LCCOMB_X69_Y67_N22
\ShiftLeft0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~100_combout\ = (shift_num(0) & ((\ShiftLeft0~90_combout\))) # (!shift_num(0) & (\ShiftLeft0~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(0),
	datac => \ShiftLeft0~99_combout\,
	datad => \ShiftLeft0~90_combout\,
	combout => \ShiftLeft0~100_combout\);

-- Location: LCCOMB_X70_Y65_N0
\ShiftLeft0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~98_combout\ = (shift_num(4)) # (shift_num(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(4),
	datac => shift_num(3),
	combout => \ShiftLeft0~98_combout\);

-- Location: LCCOMB_X69_Y65_N24
\ShiftLeft0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~23_combout\ = (shift_num(2) & ((\ShiftLeft0~19_combout\))) # (!shift_num(2) & (\ShiftLeft0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(2),
	datac => \ShiftLeft0~22_combout\,
	datad => \ShiftLeft0~19_combout\,
	combout => \ShiftLeft0~23_combout\);

-- Location: LCCOMB_X70_Y65_N16
\ShiftLeft0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~101_combout\ = (\ShiftLeft0~98_combout\ & (((\ShiftLeft0~97_combout\) # (\ShiftLeft0~23_combout\)))) # (!\ShiftLeft0~98_combout\ & (\ShiftLeft0~100_combout\ & (!\ShiftLeft0~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~100_combout\,
	datab => \ShiftLeft0~98_combout\,
	datac => \ShiftLeft0~97_combout\,
	datad => \ShiftLeft0~23_combout\,
	combout => \ShiftLeft0~101_combout\);

-- Location: LCCOMB_X70_Y65_N6
\ShiftLeft0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~102_combout\ = (\ShiftLeft0~97_combout\ & ((\ShiftLeft0~101_combout\ & ((\ShiftLeft0~16_combout\))) # (!\ShiftLeft0~101_combout\ & (\ShiftLeft0~70_combout\)))) # (!\ShiftLeft0~97_combout\ & (((\ShiftLeft0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~70_combout\,
	datab => \ShiftLeft0~97_combout\,
	datac => \ShiftLeft0~16_combout\,
	datad => \ShiftLeft0~101_combout\,
	combout => \ShiftLeft0~102_combout\);

-- Location: LCCOMB_X70_Y65_N4
\ShiftLeft0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~103_combout\ = (!shift_num(5) & ((\ShiftLeft0~145_combout\) # ((!\ShiftLeft0~96_combout\ & \ShiftLeft0~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(5),
	datab => \ShiftLeft0~96_combout\,
	datac => \ShiftLeft0~145_combout\,
	datad => \ShiftLeft0~102_combout\,
	combout => \ShiftLeft0~103_combout\);

-- Location: LCCOMB_X69_Y68_N18
\U_tilde[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[25]~82_combout\ = (\U[25]~input_o\ & ((\U_tilde[24]~81\) # (GND))) # (!\U[25]~input_o\ & (!\U_tilde[24]~81\))
-- \U_tilde[25]~83\ = CARRY((\U[25]~input_o\) # (!\U_tilde[24]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U[25]~input_o\,
	datad => VCC,
	cin => \U_tilde[24]~81\,
	combout => \U_tilde[25]~82_combout\,
	cout => \U_tilde[25]~83\);

-- Location: FF_X69_Y68_N19
\U_tilde[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[25]~82_combout\,
	asdata => \U[25]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(25));

-- Location: LCCOMB_X69_Y67_N16
\ShiftLeft0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~104_combout\ = (!shift_num(0) & ((shift_num(1) & (U_tilde(23))) # (!shift_num(1) & ((U_tilde(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(23),
	datab => shift_num(0),
	datac => U_tilde(25),
	datad => shift_num(1),
	combout => \ShiftLeft0~104_combout\);

-- Location: LCCOMB_X69_Y67_N18
\ShiftLeft0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~105_combout\ = (\ShiftLeft0~104_combout\) # ((shift_num(0) & \ShiftLeft0~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(0),
	datac => \ShiftLeft0~99_combout\,
	datad => \ShiftLeft0~104_combout\,
	combout => \ShiftLeft0~105_combout\);

-- Location: LCCOMB_X69_Y67_N4
\ShiftLeft0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~106_combout\ = (\ShiftLeft0~98_combout\ & (((\ShiftLeft0~97_combout\)))) # (!\ShiftLeft0~98_combout\ & ((\ShiftLeft0~97_combout\ & ((\ShiftLeft0~77_combout\))) # (!\ShiftLeft0~97_combout\ & (\ShiftLeft0~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~98_combout\,
	datab => \ShiftLeft0~105_combout\,
	datac => \ShiftLeft0~97_combout\,
	datad => \ShiftLeft0~77_combout\,
	combout => \ShiftLeft0~106_combout\);

-- Location: LCCOMB_X70_Y67_N28
\ShiftLeft0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~107_combout\ = (\ShiftLeft0~98_combout\ & ((\ShiftLeft0~106_combout\ & (\ShiftLeft0~32_combout\)) # (!\ShiftLeft0~106_combout\ & ((\ShiftLeft0~37_combout\))))) # (!\ShiftLeft0~98_combout\ & (((\ShiftLeft0~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~32_combout\,
	datab => \ShiftLeft0~98_combout\,
	datac => \ShiftLeft0~106_combout\,
	datad => \ShiftLeft0~37_combout\,
	combout => \ShiftLeft0~107_combout\);

-- Location: LCCOMB_X70_Y67_N10
\ShiftLeft0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~108_combout\ = (!shift_num(5) & ((\ShiftLeft0~96_combout\ & (\ShiftLeft0~144_combout\)) # (!\ShiftLeft0~96_combout\ & ((\ShiftLeft0~107_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~96_combout\,
	datab => shift_num(5),
	datac => \ShiftLeft0~144_combout\,
	datad => \ShiftLeft0~107_combout\,
	combout => \ShiftLeft0~108_combout\);

-- Location: LCCOMB_X70_Y65_N26
\ShiftLeft0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~146_combout\ = (shift_num(4) & (shift_num(3) & (!shift_num(2) & \ShiftLeft0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(4),
	datab => shift_num(3),
	datac => shift_num(2),
	datad => \ShiftLeft0~55_combout\,
	combout => \ShiftLeft0~146_combout\);

-- Location: LCCOMB_X69_Y67_N30
\ShiftLeft0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~109_combout\ = (shift_num(1) & ((shift_num(0) & (U_tilde(23))) # (!shift_num(0) & ((U_tilde(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(23),
	datab => shift_num(0),
	datac => U_tilde(24),
	datad => shift_num(1),
	combout => \ShiftLeft0~109_combout\);

-- Location: LCCOMB_X69_Y68_N20
\U_tilde[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[26]~84_combout\ = (\U[26]~input_o\ & (!\U_tilde[25]~83\ & VCC)) # (!\U[26]~input_o\ & (\U_tilde[25]~83\ $ (GND)))
-- \U_tilde[26]~85\ = CARRY((!\U[26]~input_o\ & !\U_tilde[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U[26]~input_o\,
	datad => VCC,
	cin => \U_tilde[25]~83\,
	combout => \U_tilde[26]~84_combout\,
	cout => \U_tilde[26]~85\);

-- Location: FF_X69_Y68_N21
\U_tilde[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[26]~84_combout\,
	asdata => \U[26]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(26));

-- Location: LCCOMB_X70_Y66_N20
\ShiftLeft0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~110_combout\ = (shift_num(0) & ((U_tilde(25)))) # (!shift_num(0) & (U_tilde(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(26),
	datac => shift_num(0),
	datad => U_tilde(25),
	combout => \ShiftLeft0~110_combout\);

-- Location: LCCOMB_X70_Y66_N6
\ShiftLeft0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~111_combout\ = (\ShiftLeft0~109_combout\) # ((!shift_num(1) & \ShiftLeft0~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(1),
	datac => \ShiftLeft0~109_combout\,
	datad => \ShiftLeft0~110_combout\,
	combout => \ShiftLeft0~111_combout\);

-- Location: LCCOMB_X70_Y65_N10
\ShiftLeft0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~112_combout\ = (\ShiftLeft0~97_combout\ & (\ShiftLeft0~98_combout\)) # (!\ShiftLeft0~97_combout\ & ((\ShiftLeft0~98_combout\ & ((\ShiftLeft0~52_combout\))) # (!\ShiftLeft0~98_combout\ & (\ShiftLeft0~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~97_combout\,
	datab => \ShiftLeft0~98_combout\,
	datac => \ShiftLeft0~111_combout\,
	datad => \ShiftLeft0~52_combout\,
	combout => \ShiftLeft0~112_combout\);

-- Location: LCCOMB_X70_Y65_N28
\ShiftLeft0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~113_combout\ = (\ShiftLeft0~97_combout\ & ((\ShiftLeft0~112_combout\ & (\ShiftLeft0~47_combout\)) # (!\ShiftLeft0~112_combout\ & ((\ShiftLeft0~84_combout\))))) # (!\ShiftLeft0~97_combout\ & (((\ShiftLeft0~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~47_combout\,
	datab => \ShiftLeft0~97_combout\,
	datac => \ShiftLeft0~84_combout\,
	datad => \ShiftLeft0~112_combout\,
	combout => \ShiftLeft0~113_combout\);

-- Location: LCCOMB_X70_Y65_N22
\ShiftLeft0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~114_combout\ = (!shift_num(5) & ((\ShiftLeft0~146_combout\) # ((!\ShiftLeft0~96_combout\ & \ShiftLeft0~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(5),
	datab => \ShiftLeft0~96_combout\,
	datac => \ShiftLeft0~146_combout\,
	datad => \ShiftLeft0~113_combout\,
	combout => \ShiftLeft0~114_combout\);

-- Location: LCCOMB_X70_Y69_N6
\ShiftLeft0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~147_combout\ = (shift_num(4) & (\ShiftLeft0~66_combout\ & (shift_num(3) & !shift_num(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(4),
	datab => \ShiftLeft0~66_combout\,
	datac => shift_num(3),
	datad => shift_num(2),
	combout => \ShiftLeft0~147_combout\);

-- Location: LCCOMB_X69_Y68_N22
\U_tilde[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[27]~86_combout\ = (\U[27]~input_o\ & ((\U_tilde[26]~85\) # (GND))) # (!\U[27]~input_o\ & (!\U_tilde[26]~85\))
-- \U_tilde[27]~87\ = CARRY((\U[27]~input_o\) # (!\U_tilde[26]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U[27]~input_o\,
	datad => VCC,
	cin => \U_tilde[26]~85\,
	combout => \U_tilde[27]~86_combout\,
	cout => \U_tilde[27]~87\);

-- Location: FF_X69_Y68_N23
\U_tilde[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[27]~86_combout\,
	asdata => \U[27]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(27));

-- Location: LCCOMB_X69_Y67_N0
\ShiftLeft0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~116_combout\ = (shift_num(0) & (U_tilde(26))) # (!shift_num(0) & ((U_tilde(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(26),
	datac => shift_num(0),
	datad => U_tilde(27),
	combout => \ShiftLeft0~116_combout\);

-- Location: LCCOMB_X69_Y67_N28
\ShiftLeft0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~115_combout\ = (shift_num(1) & ((shift_num(0) & (U_tilde(24))) # (!shift_num(0) & ((U_tilde(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(24),
	datab => shift_num(0),
	datac => U_tilde(25),
	datad => shift_num(1),
	combout => \ShiftLeft0~115_combout\);

-- Location: LCCOMB_X69_Y67_N2
\ShiftLeft0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~117_combout\ = (\ShiftLeft0~115_combout\) # ((!shift_num(1) & \ShiftLeft0~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(1),
	datac => \ShiftLeft0~116_combout\,
	datad => \ShiftLeft0~115_combout\,
	combout => \ShiftLeft0~117_combout\);

-- Location: LCCOMB_X69_Y67_N12
\ShiftLeft0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~118_combout\ = (\ShiftLeft0~98_combout\ & (((\ShiftLeft0~97_combout\)))) # (!\ShiftLeft0~98_combout\ & ((\ShiftLeft0~97_combout\ & (\ShiftLeft0~91_combout\)) # (!\ShiftLeft0~97_combout\ & ((\ShiftLeft0~117_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~91_combout\,
	datab => \ShiftLeft0~98_combout\,
	datac => \ShiftLeft0~97_combout\,
	datad => \ShiftLeft0~117_combout\,
	combout => \ShiftLeft0~118_combout\);

-- Location: LCCOMB_X69_Y67_N10
\ShiftLeft0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~119_combout\ = (\ShiftLeft0~118_combout\ & (((\ShiftLeft0~59_combout\)) # (!\ShiftLeft0~98_combout\))) # (!\ShiftLeft0~118_combout\ & (\ShiftLeft0~98_combout\ & ((\ShiftLeft0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~118_combout\,
	datab => \ShiftLeft0~98_combout\,
	datac => \ShiftLeft0~59_combout\,
	datad => \ShiftLeft0~63_combout\,
	combout => \ShiftLeft0~119_combout\);

-- Location: LCCOMB_X70_Y67_N16
\ShiftLeft0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~120_combout\ = (!shift_num(5) & ((\ShiftLeft0~147_combout\) # ((!\ShiftLeft0~96_combout\ & \ShiftLeft0~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~96_combout\,
	datab => \ShiftLeft0~147_combout\,
	datac => shift_num(5),
	datad => \ShiftLeft0~119_combout\,
	combout => \ShiftLeft0~120_combout\);

-- Location: LCCOMB_X70_Y66_N14
\ShiftLeft0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~122_combout\ = (shift_num(3)) # ((!shift_num(2) & shift_num(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(2),
	datac => shift_num(1),
	datad => shift_num(3),
	combout => \ShiftLeft0~122_combout\);

-- Location: LCCOMB_X70_Y67_N30
\ShiftLeft0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~123_combout\ = (shift_num(2)) # (shift_num(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(2),
	datad => shift_num(3),
	combout => \ShiftLeft0~123_combout\);

-- Location: LCCOMB_X69_Y68_N24
\U_tilde[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[28]~88_combout\ = (\U[28]~input_o\ & (!\U_tilde[27]~87\ & VCC)) # (!\U[28]~input_o\ & (\U_tilde[27]~87\ $ (GND)))
-- \U_tilde[28]~89\ = CARRY((!\U[28]~input_o\ & !\U_tilde[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U[28]~input_o\,
	datad => VCC,
	cin => \U_tilde[27]~87\,
	combout => \U_tilde[28]~88_combout\,
	cout => \U_tilde[28]~89\);

-- Location: FF_X69_Y68_N25
\U_tilde[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[28]~88_combout\,
	asdata => \U[28]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(28));

-- Location: LCCOMB_X70_Y68_N20
\ShiftLeft0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~124_combout\ = (shift_num(0) & (U_tilde(27))) # (!shift_num(0) & ((U_tilde(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U_tilde(27),
	datac => shift_num(0),
	datad => U_tilde(28),
	combout => \ShiftLeft0~124_combout\);

-- Location: LCCOMB_X70_Y66_N16
\ShiftLeft0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~125_combout\ = (\ShiftLeft0~123_combout\ & ((\ShiftLeft0~122_combout\) # ((\ShiftLeft0~100_combout\)))) # (!\ShiftLeft0~123_combout\ & (!\ShiftLeft0~122_combout\ & ((\ShiftLeft0~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~123_combout\,
	datab => \ShiftLeft0~122_combout\,
	datac => \ShiftLeft0~100_combout\,
	datad => \ShiftLeft0~124_combout\,
	combout => \ShiftLeft0~125_combout\);

-- Location: LCCOMB_X70_Y66_N26
\ShiftLeft0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~126_combout\ = (\ShiftLeft0~122_combout\ & ((\ShiftLeft0~125_combout\ & ((\ShiftLeft0~71_combout\))) # (!\ShiftLeft0~125_combout\ & (\ShiftLeft0~110_combout\)))) # (!\ShiftLeft0~122_combout\ & (((\ShiftLeft0~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~122_combout\,
	datab => \ShiftLeft0~110_combout\,
	datac => \ShiftLeft0~71_combout\,
	datad => \ShiftLeft0~125_combout\,
	combout => \ShiftLeft0~126_combout\);

-- Location: LCCOMB_X70_Y66_N12
\ShiftLeft0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~121_combout\ = (shift_num(4) & ((shift_num(3) & (\ShiftLeft0~73_combout\)) # (!shift_num(3) & ((\ShiftLeft0~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(4),
	datab => shift_num(3),
	datac => \ShiftLeft0~73_combout\,
	datad => \ShiftLeft0~68_combout\,
	combout => \ShiftLeft0~121_combout\);

-- Location: LCCOMB_X70_Y66_N0
\ShiftLeft0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~127_combout\ = (!shift_num(5) & ((\ShiftLeft0~121_combout\) # ((!shift_num(4) & \ShiftLeft0~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(4),
	datab => shift_num(5),
	datac => \ShiftLeft0~126_combout\,
	datad => \ShiftLeft0~121_combout\,
	combout => \ShiftLeft0~127_combout\);

-- Location: LCCOMB_X70_Y69_N4
\ShiftLeft0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~128_combout\ = (shift_num(4) & ((shift_num(3) & ((\ShiftLeft0~80_combout\))) # (!shift_num(3) & (\ShiftLeft0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(4),
	datab => shift_num(3),
	datac => \ShiftLeft0~75_combout\,
	datad => \ShiftLeft0~80_combout\,
	combout => \ShiftLeft0~128_combout\);

-- Location: LCCOMB_X69_Y68_N26
\U_tilde[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[29]~90_combout\ = (\U[29]~input_o\ & ((\U_tilde[28]~89\) # (GND))) # (!\U[29]~input_o\ & (!\U_tilde[28]~89\))
-- \U_tilde[29]~91\ = CARRY((\U[29]~input_o\) # (!\U_tilde[28]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U[29]~input_o\,
	datad => VCC,
	cin => \U_tilde[28]~89\,
	combout => \U_tilde[29]~90_combout\,
	cout => \U_tilde[29]~91\);

-- Location: FF_X69_Y68_N27
\U_tilde[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[29]~90_combout\,
	asdata => \U[29]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(29));

-- Location: LCCOMB_X68_Y68_N28
\ShiftLeft0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~129_combout\ = (shift_num(0) & (U_tilde(28))) # (!shift_num(0) & ((U_tilde(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => U_tilde(28),
	datac => shift_num(0),
	datad => U_tilde(29),
	combout => \ShiftLeft0~129_combout\);

-- Location: LCCOMB_X70_Y67_N8
\ShiftLeft0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~130_combout\ = (\ShiftLeft0~122_combout\ & (((\ShiftLeft0~123_combout\) # (\ShiftLeft0~116_combout\)))) # (!\ShiftLeft0~122_combout\ & (\ShiftLeft0~129_combout\ & (!\ShiftLeft0~123_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~129_combout\,
	datab => \ShiftLeft0~122_combout\,
	datac => \ShiftLeft0~123_combout\,
	datad => \ShiftLeft0~116_combout\,
	combout => \ShiftLeft0~130_combout\);

-- Location: LCCOMB_X70_Y67_N18
\ShiftLeft0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~131_combout\ = (\ShiftLeft0~123_combout\ & ((\ShiftLeft0~130_combout\ & ((\ShiftLeft0~78_combout\))) # (!\ShiftLeft0~130_combout\ & (\ShiftLeft0~105_combout\)))) # (!\ShiftLeft0~123_combout\ & (((\ShiftLeft0~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~123_combout\,
	datab => \ShiftLeft0~105_combout\,
	datac => \ShiftLeft0~130_combout\,
	datad => \ShiftLeft0~78_combout\,
	combout => \ShiftLeft0~131_combout\);

-- Location: LCCOMB_X70_Y67_N4
\ShiftLeft0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~132_combout\ = (!shift_num(5) & ((\ShiftLeft0~128_combout\) # ((!shift_num(4) & \ShiftLeft0~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(5),
	datab => shift_num(4),
	datac => \ShiftLeft0~128_combout\,
	datad => \ShiftLeft0~131_combout\,
	combout => \ShiftLeft0~132_combout\);

-- Location: LCCOMB_X70_Y68_N26
\ShiftLeft0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~133_combout\ = (!shift_num(5) & ((shift_num(4)) # ((\ShiftLeft0~85_combout\) # (!shift_num(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(4),
	datab => shift_num(3),
	datac => shift_num(5),
	datad => \ShiftLeft0~85_combout\,
	combout => \ShiftLeft0~133_combout\);

-- Location: LCCOMB_X69_Y68_N28
\U_tilde[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[30]~92_combout\ = (\U[30]~input_o\ & (!\U_tilde[29]~91\ & VCC)) # (!\U[30]~input_o\ & (\U_tilde[29]~91\ $ (GND)))
-- \U_tilde[30]~93\ = CARRY((!\U[30]~input_o\ & !\U_tilde[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U[30]~input_o\,
	datad => VCC,
	cin => \U_tilde[29]~91\,
	combout => \U_tilde[30]~92_combout\,
	cout => \U_tilde[30]~93\);

-- Location: FF_X69_Y68_N29
\U_tilde[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[30]~92_combout\,
	asdata => \U[30]~input_o\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(30));

-- Location: LCCOMB_X70_Y67_N0
\ShiftLeft0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~134_combout\ = (shift_num(2)) # ((!shift_num(1) & shift_num(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(1),
	datac => shift_num(2),
	datad => shift_num(0),
	combout => \ShiftLeft0~134_combout\);

-- Location: LCCOMB_X70_Y68_N16
\ShiftLeft0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~135_combout\ = (\ShiftLeft0~41_combout\ & (((\ShiftLeft0~134_combout\)))) # (!\ShiftLeft0~41_combout\ & ((\ShiftLeft0~134_combout\ & (U_tilde(29))) # (!\ShiftLeft0~134_combout\ & ((U_tilde(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => U_tilde(29),
	datab => U_tilde(30),
	datac => \ShiftLeft0~41_combout\,
	datad => \ShiftLeft0~134_combout\,
	combout => \ShiftLeft0~135_combout\);

-- Location: LCCOMB_X70_Y68_N2
\ShiftLeft0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~136_combout\ = (\ShiftLeft0~41_combout\ & ((\ShiftLeft0~135_combout\ & ((\ShiftLeft0~111_combout\))) # (!\ShiftLeft0~135_combout\ & (\ShiftLeft0~124_combout\)))) # (!\ShiftLeft0~41_combout\ & (\ShiftLeft0~135_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~41_combout\,
	datab => \ShiftLeft0~135_combout\,
	datac => \ShiftLeft0~124_combout\,
	datad => \ShiftLeft0~111_combout\,
	combout => \ShiftLeft0~136_combout\);

-- Location: LCCOMB_X70_Y68_N28
\ShiftLeft0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~137_combout\ = (shift_num(4) & (!shift_num(3) & (\ShiftLeft0~82_combout\))) # (!shift_num(4) & ((shift_num(3)) # ((\ShiftLeft0~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(4),
	datab => shift_num(3),
	datac => \ShiftLeft0~82_combout\,
	datad => \ShiftLeft0~136_combout\,
	combout => \ShiftLeft0~137_combout\);

-- Location: LCCOMB_X70_Y68_N30
\ShiftLeft0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~138_combout\ = (\ShiftLeft0~133_combout\ & ((\ShiftLeft0~137_combout\) # ((shift_num(3) & \ShiftLeft0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(3),
	datab => \ShiftLeft0~87_combout\,
	datac => \ShiftLeft0~133_combout\,
	datad => \ShiftLeft0~137_combout\,
	combout => \ShiftLeft0~138_combout\);

-- Location: LCCOMB_X68_Y67_N22
\ShiftLeft0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~142_combout\ = (shift_num(4) & ((\ShiftLeft0~94_combout\))) # (!shift_num(4) & (\ShiftLeft0~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => shift_num(4),
	datac => \ShiftLeft0~92_combout\,
	datad => \ShiftLeft0~94_combout\,
	combout => \ShiftLeft0~142_combout\);

-- Location: LCCOMB_X70_Y67_N12
\ShiftLeft0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~140_combout\ = ((\ShiftLeft0~134_combout\ & ((\ShiftLeft0~117_combout\))) # (!\ShiftLeft0~134_combout\ & (\ShiftLeft0~129_combout\))) # (!\ShiftLeft0~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~41_combout\,
	datab => \ShiftLeft0~129_combout\,
	datac => \ShiftLeft0~134_combout\,
	datad => \ShiftLeft0~117_combout\,
	combout => \ShiftLeft0~140_combout\);

-- Location: LCCOMB_X69_Y68_N30
\U_tilde[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_tilde[31]~94_combout\ = \U_tilde[30]~93\ $ (!\U[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U[31]~input_o\,
	cin => \U_tilde[30]~93\,
	combout => \U_tilde[31]~94_combout\);

-- Location: LCCOMB_X72_Y68_N4
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

-- Location: FF_X69_Y68_N31
\U_tilde[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \U_tilde[31]~94_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_U[31]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => U_tilde(31));

-- Location: LCCOMB_X70_Y67_N26
\ShiftLeft0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~139_combout\ = (\ShiftLeft0~41_combout\) # ((\ShiftLeft0~134_combout\ & ((U_tilde(30)))) # (!\ShiftLeft0~134_combout\ & (U_tilde(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~41_combout\,
	datab => U_tilde(31),
	datac => \ShiftLeft0~134_combout\,
	datad => U_tilde(30),
	combout => \ShiftLeft0~139_combout\);

-- Location: LCCOMB_X70_Y67_N6
\ShiftLeft0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~141_combout\ = (shift_num(4) & (((\ShiftLeft0~89_combout\)))) # (!shift_num(4) & (\ShiftLeft0~140_combout\ & (\ShiftLeft0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~140_combout\,
	datab => shift_num(4),
	datac => \ShiftLeft0~139_combout\,
	datad => \ShiftLeft0~89_combout\,
	combout => \ShiftLeft0~141_combout\);

-- Location: LCCOMB_X70_Y67_N20
\ShiftLeft0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~143_combout\ = (!shift_num(5) & ((shift_num(3) & (\ShiftLeft0~142_combout\)) # (!shift_num(3) & ((\ShiftLeft0~141_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(3),
	datab => shift_num(5),
	datac => \ShiftLeft0~142_combout\,
	datad => \ShiftLeft0~141_combout\,
	combout => \ShiftLeft0~143_combout\);

-- Location: LCCOMB_X65_Y69_N6
\AU0|mux0|LPM_MUX_component|auto_generated|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~10_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\) # (\U[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datab => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datad => \U[13]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~10_combout\);

-- Location: LCCOMB_X65_Y69_N0
\AU0|mux0|LPM_MUX_component|auto_generated|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~9_combout\ = (!\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[14]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datab => \U[15]~input_o\,
	datac => \U[14]~input_o\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~9_combout\);

-- Location: LCCOMB_X65_Y69_N24
\AU0|mux0|LPM_MUX_component|auto_generated|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~11_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|_~9_combout\) # ((\AU0|mux0|LPM_MUX_component|auto_generated|_~10_combout\ & ((\U[12]~input_o\) # (!\AU0|LOD0|oc0|sum[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|_~10_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~9_combout\,
	datac => \U[12]~input_o\,
	datad => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~11_combout\);

-- Location: LCCOMB_X66_Y69_N22
\AU0|mux0|LPM_MUX_component|auto_generated|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~13_combout\ = (!\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[18]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[19]~input_o\,
	datab => \U[18]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~13_combout\);

-- Location: LCCOMB_X66_Y69_N20
\AU0|mux0|LPM_MUX_component|auto_generated|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~12_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[16]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[17]~input_o\,
	datab => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datac => \U[16]~input_o\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~12_combout\);

-- Location: LCCOMB_X66_Y69_N8
\AU0|mux0|LPM_MUX_component|auto_generated|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~14_combout\ = (\AU0|LOD0|oc0|sum[2]~4_combout\ & (\AU0|mux0|LPM_MUX_component|auto_generated|_~11_combout\)) # (!\AU0|LOD0|oc0|sum[2]~4_combout\ & (((\AU0|mux0|LPM_MUX_component|auto_generated|_~13_combout\) # 
-- (\AU0|mux0|LPM_MUX_component|auto_generated|_~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~11_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|_~13_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|_~12_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~14_combout\);

-- Location: LCCOMB_X66_Y68_N10
\AU0|mux0|LPM_MUX_component|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~1_combout\ = (!\AU0|LOD0|oc0|sum[3]~6_combout\ & \AU0|LOD0|oc0|sum[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[3]~6_combout\,
	datad => \AU0|LOD0|oc0|sum[5]~10_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~1_combout\);

-- Location: LCCOMB_X66_Y68_N28
\AU0|mux0|LPM_MUX_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~0_combout\ = (\AU0|LOD0|oc0|sum[5]~10_combout\ & \AU0|LOD0|oc0|sum[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[5]~10_combout\,
	datac => \AU0|LOD0|oc0|sum[4]~8_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X67_Y69_N30
\AU0|mux0|LPM_MUX_component|auto_generated|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~6_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[22]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U[23]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \U[22]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~6_combout\);

-- Location: LCCOMB_X66_Y69_N16
\AU0|mux0|LPM_MUX_component|auto_generated|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~5_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[20]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U[20]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \U[21]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~5_combout\);

-- Location: LCCOMB_X66_Y69_N26
\AU0|mux0|LPM_MUX_component|auto_generated|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~7_combout\ = (\AU0|LOD0|oc0|sum[2]~4_combout\ & ((\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|_~5_combout\))) # (!\AU0|LOD0|oc0|sum[1]~2_combout\ & 
-- (\AU0|mux0|LPM_MUX_component|auto_generated|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|_~6_combout\,
	datab => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datac => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|_~5_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~7_combout\);

-- Location: LCCOMB_X66_Y70_N26
\AU0|mux0|LPM_MUX_component|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~2_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[24]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[25]~input_o\,
	datab => \U[24]~input_o\,
	datad => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~2_combout\);

-- Location: LCCOMB_X66_Y70_N8
\AU0|mux0|LPM_MUX_component|auto_generated|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~3_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[26]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[26]~input_o\,
	datab => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \U[27]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~3_combout\);

-- Location: LCCOMB_X66_Y70_N6
\AU0|mux0|LPM_MUX_component|auto_generated|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~4_combout\ = (!\AU0|LOD0|oc0|sum[2]~4_combout\ & ((\AU0|LOD0|oc0|sum[1]~2_combout\ & (\AU0|mux0|LPM_MUX_component|auto_generated|_~2_combout\)) # (!\AU0|LOD0|oc0|sum[1]~2_combout\ & 
-- ((\AU0|mux0|LPM_MUX_component|auto_generated|_~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|_~2_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~3_combout\,
	datac => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datad => \AU0|LOD0|oc0|sum[2]~4_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~4_combout\);

-- Location: LCCOMB_X66_Y68_N4
\AU0|mux0|LPM_MUX_component|auto_generated|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~8_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|_~0_combout\) # ((\AU0|mux0|LPM_MUX_component|auto_generated|_~1_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|_~7_combout\) # 
-- (\AU0|mux0|LPM_MUX_component|auto_generated|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|_~1_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~0_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|_~7_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|_~4_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~8_combout\);

-- Location: LCCOMB_X66_Y68_N18
\AU0|mux0|LPM_MUX_component|auto_generated|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~15_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|_~8_combout\) # ((\AU0|LOD0|oc0|sum[3]~6_combout\ & (\AU0|mux0|LPM_MUX_component|auto_generated|_~14_combout\ & \AU0|LOD0|oc0|sum[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[3]~6_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~14_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|_~8_combout\,
	datad => \AU0|LOD0|oc0|sum[5]~10_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~15_combout\);

-- Location: LCCOMB_X63_Y69_N18
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[7]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[7]~input_o\,
	datac => \U[6]~input_o\,
	datad => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~7_combout\);

-- Location: LCCOMB_X63_Y69_N8
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[9]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U[9]~input_o\,
	datac => \U[8]~input_o\,
	datad => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~6_combout\);

-- Location: LCCOMB_X63_Y69_N28
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~8_combout\ = (!\AU0|LOD0|oc0|sum[2]~4_combout\ & ((\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~6_combout\))) # (!\AU0|LOD0|oc0|sum[1]~2_combout\ & 
-- (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~8_combout\);

-- Location: LCCOMB_X65_Y69_N12
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~10_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[11]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U[10]~input_o\,
	datac => \U[11]~input_o\,
	datad => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~10_combout\);

-- Location: LCCOMB_X65_Y69_N14
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~9_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[13]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datac => \U[12]~input_o\,
	datad => \U[13]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~9_combout\);

-- Location: LCCOMB_X65_Y69_N26
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~11_combout\ = (\AU0|LOD0|oc0|sum[2]~4_combout\ & ((\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~9_combout\))) # (!\AU0|LOD0|oc0|sum[1]~2_combout\ & 
-- (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~10_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~9_combout\,
	datac => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~11_combout\);

-- Location: LCCOMB_X63_Y69_N6
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ = (!\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[3]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datab => \U[2]~input_o\,
	datac => \U[3]~input_o\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~3_combout\);

-- Location: LCCOMB_X63_Y69_N20
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[5]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datab => \U[5]~input_o\,
	datac => \U[4]~input_o\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X63_Y69_N16
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[1]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datab => \U[1]~input_o\,
	datac => \U[0]~input_o\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~2_combout\);

-- Location: LCCOMB_X63_Y69_N2
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ = (\AU0|LOD0|oc0|sum[2]~4_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~3_combout\) # ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~4_combout\)))) 
-- # (!\AU0|LOD0|oc0|sum[2]~4_combout\ & (((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~3_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datac => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X63_Y69_N30
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~12_combout\ = (\AU0|LOD0|oc0|sum[3]~6_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~8_combout\) # 
-- ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~11_combout\)))) # (!\AU0|LOD0|oc0|sum[3]~6_combout\ & (((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[3]~6_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~8_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~11_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~12_combout\);

-- Location: LCCOMB_X66_Y68_N12
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~13_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|_~15_combout\) # ((!\AU0|LOD0|oc0|sum[5]~10_combout\ & (!\AU0|LOD0|oc0|sum[4]~8_combout\ & 
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[5]~10_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~15_combout\,
	datac => \AU0|LOD0|oc0|sum[4]~8_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~12_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~13_combout\);

-- Location: LCCOMB_X66_Y71_N30
\AU0|mux0|LPM_MUX_component|auto_generated|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~17_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[4]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datab => \U[4]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \U[5]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~17_combout\);

-- Location: LCCOMB_X66_Y71_N0
\AU0|mux0|LPM_MUX_component|auto_generated|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~16_combout\ = (!\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[6]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[6]~input_o\,
	datab => \U[7]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~16_combout\);

-- Location: LCCOMB_X66_Y71_N26
\AU0|mux0|LPM_MUX_component|auto_generated|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~18_combout\ = (\AU0|LOD0|oc0|sum[2]~4_combout\ & (!\AU0|LOD0|oc0|sum[3]~6_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|_~17_combout\) # (\AU0|mux0|LPM_MUX_component|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|_~17_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~16_combout\,
	datac => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datad => \AU0|LOD0|oc0|sum[3]~6_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~18_combout\);

-- Location: LCCOMB_X67_Y71_N12
\AU0|mux0|LPM_MUX_component|auto_generated|_~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~23_combout\ = (!\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[10]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[10]~input_o\,
	datab => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datac => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datad => \U[11]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~23_combout\);

-- Location: LCCOMB_X67_Y71_N14
\AU0|mux0|LPM_MUX_component|auto_generated|_~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~22_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[8]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datab => \U[9]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \U[8]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~22_combout\);

-- Location: LCCOMB_X67_Y71_N28
\AU0|mux0|LPM_MUX_component|auto_generated|_~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~20_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[2]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datac => \U[3]~input_o\,
	datad => \U[2]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~20_combout\);

-- Location: LCCOMB_X66_Y71_N28
\AU0|mux0|LPM_MUX_component|auto_generated|_~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~19_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[0]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[1]~input_o\,
	datab => \U[0]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~19_combout\);

-- Location: LCCOMB_X67_Y71_N30
\AU0|mux0|LPM_MUX_component|auto_generated|_~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~21_combout\ = (\AU0|LOD0|oc0|sum[3]~6_combout\ & ((\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|_~19_combout\))) # (!\AU0|LOD0|oc0|sum[1]~2_combout\ & 
-- (\AU0|mux0|LPM_MUX_component|auto_generated|_~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[3]~6_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~20_combout\,
	datac => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|_~19_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~21_combout\);

-- Location: LCCOMB_X67_Y71_N26
\AU0|mux0|LPM_MUX_component|auto_generated|_~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~24_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|_~21_combout\) # ((!\AU0|LOD0|oc0|sum[3]~6_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|_~23_combout\) # 
-- (\AU0|mux0|LPM_MUX_component|auto_generated|_~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|_~23_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~22_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|_~21_combout\,
	datad => \AU0|LOD0|oc0|sum[3]~6_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~24_combout\);

-- Location: LCCOMB_X66_Y71_N2
\AU0|mux0|LPM_MUX_component|auto_generated|_~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~25_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|_~18_combout\) # (((\AU0|mux0|LPM_MUX_component|auto_generated|_~24_combout\ & !\AU0|LOD0|oc0|sum[2]~4_combout\)) # (!\AU0|LOD0|oc0|sum[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|_~18_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~24_combout\,
	datac => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datad => \AU0|LOD0|oc0|sum[4]~8_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~25_combout\);

-- Location: LCCOMB_X66_Y70_N4
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~14_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[27]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[26]~input_o\,
	datab => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \U[27]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~14_combout\);

-- Location: LCCOMB_X66_Y70_N10
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ = (\AU0|LOD0|oc0|sum[2]~4_combout\ & ((\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\U[28]~input_o\))) # (!\AU0|LOD0|oc0|sum[1]~2_combout\ & 
-- (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datab => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~14_combout\,
	datad => \U[28]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~15_combout\);

-- Location: LCCOMB_X66_Y70_N24
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~16_combout\ = (!\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[23]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[22]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datab => \U[23]~input_o\,
	datac => \U[22]~input_o\,
	datad => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~16_combout\);

-- Location: LCCOMB_X66_Y70_N22
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~17_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[25]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datab => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datac => \U[24]~input_o\,
	datad => \U[25]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~17_combout\);

-- Location: LCCOMB_X66_Y70_N28
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~18_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~15_combout\) # ((!\AU0|LOD0|oc0|sum[2]~4_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~16_combout\) 
-- # (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~16_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~17_combout\,
	datad => \AU0|LOD0|oc0|sum[2]~4_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~18_combout\);

-- Location: LCCOMB_X66_Y69_N12
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~20_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[19]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U[18]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \U[19]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~20_combout\);

-- Location: LCCOMB_X66_Y69_N18
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~19_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[21]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U[20]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \U[21]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~19_combout\);

-- Location: LCCOMB_X66_Y69_N6
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~21_combout\ = (\AU0|LOD0|oc0|sum[2]~4_combout\ & ((\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~19_combout\))) # (!\AU0|LOD0|oc0|sum[1]~2_combout\ & 
-- (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~20_combout\,
	datab => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datac => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~19_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~21_combout\);

-- Location: LCCOMB_X66_Y69_N0
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~22_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[17]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[17]~input_o\,
	datab => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datac => \U[16]~input_o\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~22_combout\);

-- Location: LCCOMB_X65_Y69_N8
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~23_combout\ = (!\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[15]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datab => \U[15]~input_o\,
	datac => \U[14]~input_o\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~23_combout\);

-- Location: LCCOMB_X66_Y69_N30
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~24_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~21_combout\) # ((!\AU0|LOD0|oc0|sum[2]~4_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~22_combout\) 
-- # (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~21_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~22_combout\,
	datac => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~23_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~24_combout\);

-- Location: LCCOMB_X66_Y68_N2
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~25_combout\ = (!\AU0|mux0|LPM_MUX_component|auto_generated|_~15_combout\ & ((\AU0|LOD0|oc0|sum[3]~6_combout\ & (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~18_combout\)) # 
-- (!\AU0|LOD0|oc0|sum[3]~6_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~18_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~15_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~24_combout\,
	datad => \AU0|LOD0|oc0|sum[3]~6_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~25_combout\);

-- Location: LCCOMB_X66_Y68_N8
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~26_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~13_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|_~25_combout\) # ((\AU0|LOD0|oc0|sum[4]~8_combout\ & 
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~25_combout\)))) # (!\AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~13_combout\ & (((\AU0|LOD0|oc0|sum[4]~8_combout\ & 
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~13_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~25_combout\,
	datac => \AU0|LOD0|oc0|sum[4]~8_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~25_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~26_combout\);

-- Location: LCCOMB_X66_Y69_N28
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~49_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[16]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[15]~input_o\,
	datab => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datac => \U[16]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~49_combout\);

-- Location: LCCOMB_X63_Y69_N24
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~48_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[18]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[18]~input_o\,
	datac => \U[17]~input_o\,
	datad => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~48_combout\);

-- Location: LCCOMB_X66_Y69_N2
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~50_combout\ = (!\AU0|LOD0|oc0|sum[2]~4_combout\ & ((\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~48_combout\))) # (!\AU0|LOD0|oc0|sum[1]~2_combout\ 
-- & (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~49_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~48_combout\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~50_combout\);

-- Location: LCCOMB_X67_Y69_N12
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~42_combout\ = (!\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[24]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datab => \U[23]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \U[24]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~42_combout\);

-- Location: LCCOMB_X67_Y69_N2
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~43_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[26]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datab => \U[26]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \U[25]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~43_combout\);

-- Location: LCCOMB_X67_Y69_N6
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~40_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[28]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[28]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \U[27]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~40_combout\);

-- Location: LCCOMB_X68_Y69_N16
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~41_combout\ = (\AU0|LOD0|oc0|sum[2]~4_combout\ & ((\AU0|LOD0|oc0|sum[1]~2_combout\ & (\U[29]~input_o\)) # (!\AU0|LOD0|oc0|sum[1]~2_combout\ & 
-- ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[29]~input_o\,
	datab => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~40_combout\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~41_combout\);

-- Location: LCCOMB_X67_Y69_N24
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~44_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~41_combout\) # ((!\AU0|LOD0|oc0|sum[2]~4_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~42_combout\) 
-- # (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~42_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~43_combout\,
	datac => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~41_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~44_combout\);

-- Location: LCCOMB_X68_Y71_N10
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~45_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[22]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[22]~input_o\,
	datab => \U[21]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~45_combout\);

-- Location: LCCOMB_X68_Y71_N8
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~46_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[20]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[19]~input_o\,
	datab => \U[20]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~46_combout\);

-- Location: LCCOMB_X68_Y71_N30
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~47_combout\ = (\AU0|LOD0|oc0|sum[2]~4_combout\ & ((\AU0|LOD0|oc0|sum[1]~2_combout\ & (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~45_combout\)) # (!\AU0|LOD0|oc0|sum[1]~2_combout\ & 
-- ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~45_combout\,
	datab => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~46_combout\,
	datad => \AU0|LOD0|oc0|sum[2]~4_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~47_combout\);

-- Location: LCCOMB_X67_Y69_N10
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~51_combout\ = (\AU0|LOD0|oc0|sum[3]~6_combout\ & (((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~44_combout\)))) # (!\AU0|LOD0|oc0|sum[3]~6_combout\ & 
-- ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~50_combout\) # ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~50_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~44_combout\,
	datac => \AU0|LOD0|oc0|sum[3]~6_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~47_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~51_combout\);

-- Location: LCCOMB_X62_Y71_N10
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~35_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[10]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[9]~input_o\,
	datab => \U[10]~input_o\,
	datac => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datad => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~35_combout\);

-- Location: LCCOMB_X62_Y71_N26
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~33_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[2]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U[1]~input_o\,
	datac => \U[2]~input_o\,
	datad => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~33_combout\);

-- Location: LCCOMB_X62_Y71_N28
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~34_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & (((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~33_combout\)))) # (!\AU0|LOD0|oc0|sum[1]~2_combout\ & (\U[31]~input_o\ & 
-- ((\AU0|LOD0|oc0|sum[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[31]~input_o\,
	datab => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~33_combout\,
	datad => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~34_combout\);

-- Location: LCCOMB_X62_Y71_N8
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~36_combout\ = (!\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[8]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[8]~input_o\,
	datab => \U[7]~input_o\,
	datac => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datad => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~36_combout\);

-- Location: LCCOMB_X62_Y71_N18
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~37_combout\ = (\AU0|LOD0|oc0|sum[3]~6_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~35_combout\) # 
-- ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~36_combout\)))) # (!\AU0|LOD0|oc0|sum[3]~6_combout\ & (((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~35_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~34_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~36_combout\,
	datad => \AU0|LOD0|oc0|sum[3]~6_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~37_combout\);

-- Location: LCCOMB_X65_Y69_N20
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~28_combout\ = (!\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[12]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datab => \U[11]~input_o\,
	datac => \U[12]~input_o\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~28_combout\);

-- Location: LCCOMB_X65_Y69_N2
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~29_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~28_combout\) # ((\AU0|mux0|LPM_MUX_component|auto_generated|_~10_combout\ & ((\U[14]~input_o\) # 
-- (!\AU0|LOD0|oc0|sum[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|_~10_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~28_combout\,
	datac => \U[14]~input_o\,
	datad => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~29_combout\);

-- Location: LCCOMB_X63_Y69_N0
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~30_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[6]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datab => \U[5]~input_o\,
	datac => \U[6]~input_o\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~30_combout\);

-- Location: LCCOMB_X63_Y69_N22
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~31_combout\ = (!\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[4]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[3]~input_o\,
	datab => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datac => \U[4]~input_o\,
	datad => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~31_combout\);

-- Location: LCCOMB_X63_Y69_N4
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~32_combout\ = (\AU0|LOD0|oc0|sum[3]~6_combout\ & (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~29_combout\)) # (!\AU0|LOD0|oc0|sum[3]~6_combout\ & 
-- (((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~30_combout\) # (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~29_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~30_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~31_combout\,
	datad => \AU0|LOD0|oc0|sum[3]~6_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~32_combout\);

-- Location: LCCOMB_X63_Y69_N10
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~38_combout\ = (\AU0|LOD0|oc0|sum[2]~4_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~32_combout\))) # (!\AU0|LOD0|oc0|sum[2]~4_combout\ & 
-- (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~37_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~32_combout\,
	datad => \AU0|LOD0|oc0|sum[2]~4_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~38_combout\);

-- Location: LCCOMB_X65_Y69_N16
\AU0|mux0|LPM_MUX_component|auto_generated|_~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~27_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[13]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datab => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datac => \U[14]~input_o\,
	datad => \U[13]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~27_combout\);

-- Location: LCCOMB_X65_Y69_N22
\AU0|mux0|LPM_MUX_component|auto_generated|_~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~26_combout\ = (!\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[15]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datab => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datac => \U[15]~input_o\,
	datad => \U[16]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~26_combout\);

-- Location: LCCOMB_X65_Y69_N30
\AU0|mux0|LPM_MUX_component|auto_generated|_~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~28_combout\ = (\AU0|LOD0|oc0|sum[5]~10_combout\ & (((\AU0|mux0|LPM_MUX_component|auto_generated|_~27_combout\) # (\AU0|mux0|LPM_MUX_component|auto_generated|_~26_combout\)) # 
-- (!\AU0|LOD0|oc0|sum[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~27_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|_~26_combout\,
	datad => \AU0|LOD0|oc0|sum[5]~10_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~28_combout\);

-- Location: LCCOMB_X66_Y69_N10
\AU0|mux0|LPM_MUX_component|auto_generated|_~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~30_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[17]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[17]~input_o\,
	datab => \U[18]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~30_combout\);

-- Location: LCCOMB_X66_Y69_N24
\AU0|mux0|LPM_MUX_component|auto_generated|_~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~29_combout\ = (!\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[19]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[20]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[19]~input_o\,
	datab => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datac => \U[20]~input_o\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~29_combout\);

-- Location: LCCOMB_X66_Y69_N4
\AU0|mux0|LPM_MUX_component|auto_generated|_~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~31_combout\ = (\AU0|LOD0|oc0|sum[3]~6_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|_~30_combout\) # ((\AU0|LOD0|oc0|sum[2]~4_combout\) # (\AU0|mux0|LPM_MUX_component|auto_generated|_~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|_~30_combout\,
	datab => \AU0|LOD0|oc0|sum[3]~6_combout\,
	datac => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|_~29_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~31_combout\);

-- Location: LCCOMB_X67_Y69_N26
\AU0|mux0|LPM_MUX_component|auto_generated|_~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~35_combout\ = (!\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[23]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datab => \U[23]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \U[24]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~35_combout\);

-- Location: LCCOMB_X68_Y71_N20
\AU0|mux0|LPM_MUX_component|auto_generated|_~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~36_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[21]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[22]~input_o\,
	datab => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \U[21]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~36_combout\);

-- Location: LCCOMB_X67_Y69_N8
\AU0|mux0|LPM_MUX_component|auto_generated|_~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~37_combout\ = (\AU0|LOD0|oc0|sum[2]~4_combout\ & (\AU0|mux0|LPM_MUX_component|auto_generated|_~1_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|_~35_combout\) # 
-- (\AU0|mux0|LPM_MUX_component|auto_generated|_~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~1_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|_~35_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|_~36_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~37_combout\);

-- Location: LCCOMB_X66_Y70_N30
\AU0|mux0|LPM_MUX_component|auto_generated|_~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~33_combout\ = (!\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[27]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[27]~input_o\,
	datab => \U[28]~input_o\,
	datac => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datad => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~33_combout\);

-- Location: LCCOMB_X67_Y69_N28
\AU0|mux0|LPM_MUX_component|auto_generated|_~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~32_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[25]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datab => \U[26]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \U[25]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~32_combout\);

-- Location: LCCOMB_X66_Y69_N14
\AU0|mux0|LPM_MUX_component|auto_generated|_~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~34_combout\ = (!\AU0|LOD0|oc0|sum[2]~4_combout\ & (!\AU0|LOD0|oc0|sum[3]~6_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|_~33_combout\) # (\AU0|mux0|LPM_MUX_component|auto_generated|_~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datab => \AU0|LOD0|oc0|sum[3]~6_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|_~33_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|_~32_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~34_combout\);

-- Location: LCCOMB_X67_Y69_N18
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~27_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|_~37_combout\) # ((\AU0|mux0|LPM_MUX_component|auto_generated|_~28_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|_~31_combout\) # 
-- (\AU0|mux0|LPM_MUX_component|auto_generated|_~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|_~28_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~31_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|_~37_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|_~34_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~27_combout\);

-- Location: LCCOMB_X67_Y69_N4
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~39_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~27_combout\) # ((\AU0|LOD0|oc0|sum[4]~8_combout\ & ((\AU0|LOD0|oc0|sum[5]~10_combout\))) # (!\AU0|LOD0|oc0|sum[4]~8_combout\ 
-- & (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~38_combout\ & !\AU0|LOD0|oc0|sum[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~38_combout\,
	datab => \AU0|LOD0|oc0|sum[4]~8_combout\,
	datac => \AU0|LOD0|oc0|sum[5]~10_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~27_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~39_combout\);

-- Location: LCCOMB_X67_Y69_N20
\AU0|mux0|LPM_MUX_component|auto_generated|_~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~38_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|_~28_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|_~31_combout\) # (\AU0|mux0|LPM_MUX_component|auto_generated|_~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~31_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|_~28_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|_~34_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~38_combout\);

-- Location: LCCOMB_X67_Y69_N22
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~53_combout\ = (!\AU0|LOD0|oc0|sum[5]~10_combout\ & (\AU0|LOD0|oc0|sum[4]~8_combout\ & (!\AU0|mux0|LPM_MUX_component|auto_generated|_~37_combout\ & 
-- !\AU0|mux0|LPM_MUX_component|auto_generated|_~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[5]~10_combout\,
	datab => \AU0|LOD0|oc0|sum[4]~8_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|_~37_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|_~38_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~53_combout\);

-- Location: LCCOMB_X63_Y69_N14
\AU0|mux0|LPM_MUX_component|auto_generated|_~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~46_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[5]~input_o\)) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datab => \U[5]~input_o\,
	datac => \U[6]~input_o\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~46_combout\);

-- Location: LCCOMB_X65_Y71_N10
\AU0|mux0|LPM_MUX_component|auto_generated|_~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~44_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[11]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[12]~input_o\,
	datab => \U[11]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~44_combout\);

-- Location: LCCOMB_X65_Y71_N0
\AU0|mux0|LPM_MUX_component|auto_generated|_~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~43_combout\ = (\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[9]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U[10]~input_o\,
	datac => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \U[9]~input_o\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~43_combout\);

-- Location: LCCOMB_X65_Y71_N20
\AU0|mux0|LPM_MUX_component|auto_generated|_~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~45_combout\ = (!\AU0|LOD0|oc0|sum[2]~4_combout\ & ((\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|_~43_combout\))) # (!\AU0|LOD0|oc0|sum[1]~2_combout\ & 
-- (\AU0|mux0|LPM_MUX_component|auto_generated|_~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|_~44_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~43_combout\,
	datac => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~45_combout\);

-- Location: LCCOMB_X68_Y69_N0
\AU0|mux0|LPM_MUX_component|auto_generated|_~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~47_combout\ = (!\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[7]~input_o\))) # (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datab => \U[8]~input_o\,
	datac => \U[7]~input_o\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~47_combout\);

-- Location: LCCOMB_X68_Y69_N2
\AU0|mux0|LPM_MUX_component|auto_generated|_~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~48_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|_~45_combout\) # ((\AU0|LOD0|oc0|sum[2]~4_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|_~46_combout\) # 
-- (\AU0|mux0|LPM_MUX_component|auto_generated|_~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|_~46_combout\,
	datab => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|_~45_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|_~47_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~48_combout\);

-- Location: LCCOMB_X68_Y69_N26
\AU0|mux0|LPM_MUX_component|auto_generated|_~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~42_combout\ = (!\AU0|LOD0|oc0|sum[0]~0_combout\ & (!\AU0|LOD0|oc0|sum[1]~2_combout\ & (\U[31]~input_o\ & \AU0|LOD0|oc0|sum[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[0]~0_combout\,
	datab => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datac => \U[31]~input_o\,
	datad => \AU0|LOD0|oc0|sum[2]~4_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~42_combout\);

-- Location: LCCOMB_X63_Y69_N26
\AU0|mux0|LPM_MUX_component|auto_generated|_~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~39_combout\ = (\AU0|LOD0|oc0|sum[1]~2_combout\ & (((\AU0|LOD0|oc0|sum[0]~0_combout\)))) # (!\AU0|LOD0|oc0|sum[1]~2_combout\ & ((\AU0|LOD0|oc0|sum[0]~0_combout\ & (\U[3]~input_o\)) # 
-- (!\AU0|LOD0|oc0|sum[0]~0_combout\ & ((\U[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U[3]~input_o\,
	datab => \AU0|LOD0|oc0|sum[1]~2_combout\,
	datac => \U[4]~input_o\,
	datad => \AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~39_combout\);

-- Location: LCCOMB_X63_Y69_N12
\AU0|mux0|LPM_MUX_component|auto_generated|_~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~40_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|_~39_combout\ & (((\U[1]~input_o\) # (!\AU0|LOD0|oc0|sum[1]~2_combout\)))) # (!\AU0|mux0|LPM_MUX_component|auto_generated|_~39_combout\ & 
-- (\U[2]~input_o\ & ((\AU0|LOD0|oc0|sum[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|_~39_combout\,
	datab => \U[2]~input_o\,
	datac => \U[1]~input_o\,
	datad => \AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~40_combout\);

-- Location: LCCOMB_X67_Y69_N14
\AU0|mux0|LPM_MUX_component|auto_generated|_~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~41_combout\ = ((\AU0|LOD0|oc0|sum[3]~6_combout\ & (!\AU0|LOD0|oc0|sum[2]~4_combout\ & \AU0|mux0|LPM_MUX_component|auto_generated|_~40_combout\))) # (!\AU0|LOD0|oc0|sum[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[3]~6_combout\,
	datab => \AU0|LOD0|oc0|sum[4]~8_combout\,
	datac => \AU0|LOD0|oc0|sum[2]~4_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|_~40_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~41_combout\);

-- Location: LCCOMB_X68_Y69_N28
\AU0|mux0|LPM_MUX_component|auto_generated|_~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|_~49_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|_~41_combout\) # ((\AU0|LOD0|oc0|sum[3]~6_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|_~42_combout\))) # (!\AU0|LOD0|oc0|sum[3]~6_combout\ & 
-- (\AU0|mux0|LPM_MUX_component|auto_generated|_~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|LOD0|oc0|sum[3]~6_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|_~48_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|_~42_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|_~41_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|_~49_combout\);

-- Location: LCCOMB_X67_Y69_N16
\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~52_combout\ = (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~51_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~53_combout\) # 
-- ((\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~39_combout\ & \AU0|mux0|LPM_MUX_component|auto_generated|_~49_combout\)))) # (!\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~51_combout\ & 
-- (\AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~39_combout\ & ((\AU0|mux0|LPM_MUX_component|auto_generated|_~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~51_combout\,
	datab => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~39_combout\,
	datac => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~53_combout\,
	datad => \AU0|mux0|LPM_MUX_component|auto_generated|_~49_combout\,
	combout => \AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~52_combout\);

-- Location: M9K_X64_Y67_N0
\LUT_a|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000010000000010000000010000000010000000010000000010000000010000000010000000010000000010000000010000000010000",
	mem_init3 => X"0000200000000200000000200000000100000000300000000200000000200000000200001000400001000300001000300001000300001000500001000500001000400001000400001000800001000700001000600001000600001000B00002000A00002000900002000800002000F00002000E00003000D00003000C00003001500003001300004001200004001100004001E00005001B00005001900005001700006002B00007002700007002400008002100008003C0000900370000A00320000B002F0000C00550000D004D0000E00470000F004200011007900013006D00014006400016005E0001800AB0001A009A0001D008E0001F00840002200F2000",
	mem_init2 => X"2500DA0002900C90002C00BB0003001560003501350003A011C0003E01090004401E30004B01B50005101920005801760006002AC0006A026B0007302390007C02120008703C800096036C000A30326000AF02EE000BF055B000D404D9000E60476000F704280010E079A0012B06E20014506570015D05E90017E0AD2001A609D0001CA090D001EC0874002190F83002510E1C002830D0F002B10C3B002EF168E0033B14A80037E133F003BB12280040C21D90046A1F7A004BA1DCF004FD1C9A0054A36D40058C35290059C34CF005703595020B4C88302169C5450225AC03C0238FB874024A8D7E60258BD3D902692CE57027CCC674028DEDF03029B7DB2302",
	mem_init1 => X"AB0D5ED02BD6CE8702CD7E35202DA1DFB502E89DAD802F9CD3F10308BE64A03148E2E903222DE5D03323D7E503404E87E034B5E55103582E10A03674DAF203748EA36037F0E736038B1E32A03997DD6403A60EB9A03B00E8C103BB8E4E803C92DF6803D52ECC203DEAEA0A03E9AE65D03F6BE11C04022EDBC040B4EB220415CE79C04225E292042D5EE9404360EC1304402E8B1044C3E3D70456DEF50045F3ECE704690E9A40474AE4F5047EDEFF70486FEDA304906EA7B049BAE5F404A59F08B04AD7EE4A04B69EB3C04C17E6D904CB1F11004D2BEEE104DB9EBEA04E62E7A804EF7F18904F6EEF6904FF8EC870509CE8640512EF1F7051A1EFE605227ED180",
	mem_init0 => X"52C8E90F05355F25C053C5F05805448ED9C054E5E9AD0556EF2B8055DCF0C10565CEE16056F4EA3F0577BF30E057E6F12205863EE87058F8EAC70597CF35D059E5F17D05A5FEEF005AF1EB4505B71F3A705BD8F1D105C4FEF5205CDEEBBA05D5DF3ED05DC1F22005E36EFAE05EC2EC2805F3EF42D05FA0F26A06013F0040609DEC8F06116F46A06177F2AF061E7F0540626EECF1062E5F4A406344F2F1063B3F0A106437ED4C064ACF4DA06509F32E06576F0E9065F8EDA30666BF50D066C7F36906731F12D067B1EDF506823F53E0687DF3A0068E6F16E06964EE44069D3F56C06A2CF3D506A93F1AB06B0FEE8E06B7DF59806BD4F40706C3AF1E606CB4EED4",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../Matlab/a_coeff.mif",
	init_file_layout => "port_a",
	logical_ram_name => "f_a_lut:LUT_a|altsyncram:altsyncram_component|altsyncram_g3s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 36,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk_in~inputclkctrl_outclk\,
	portaaddr => \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X70_Y65_N24
\ShiftLeft0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~24_combout\ = (!shift_num(4) & ((shift_num(3) & (\ShiftLeft0~16_combout\)) # (!shift_num(3) & ((\ShiftLeft0~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(4),
	datab => shift_num(3),
	datac => \ShiftLeft0~16_combout\,
	datad => \ShiftLeft0~23_combout\,
	combout => \ShiftLeft0~24_combout\);

-- Location: LCCOMB_X70_Y65_N2
\ShiftLeft0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~27_combout\ = (!shift_num(5) & ((\ShiftLeft0~24_combout\) # ((\ShiftLeft0~26_combout\ & \ShiftLeft0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => shift_num(5),
	datab => \ShiftLeft0~26_combout\,
	datac => \ShiftLeft0~25_combout\,
	datad => \ShiftLeft0~24_combout\,
	combout => \ShiftLeft0~27_combout\);

-- Location: DSPMULT_X71_Y67_N0
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X71_Y67_N2
\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X72_Y67_N16
\f_res[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_res[0]~17_cout\ = CARRY((\LUT_b|altsyncram_component|auto_generated|q_a\(0) & \Mult0|auto_generated|mac_out2~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_b|altsyncram_component|auto_generated|q_a\(0),
	datab => \Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cout => \f_res[0]~17_cout\);

-- Location: LCCOMB_X72_Y67_N18
\f_res[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_res[0]~18_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\LUT_b|altsyncram_component|auto_generated|q_a\(1) & (\f_res[0]~17_cout\ & VCC)) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(1) & (!\f_res[0]~17_cout\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\LUT_b|altsyncram_component|auto_generated|q_a\(1) & (!\f_res[0]~17_cout\)) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(1) & ((\f_res[0]~17_cout\) # (GND)))))
-- \f_res[0]~19\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\LUT_b|altsyncram_component|auto_generated|q_a\(1) & !\f_res[0]~17_cout\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT18\ & ((!\f_res[0]~17_cout\) # 
-- (!\LUT_b|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \LUT_b|altsyncram_component|auto_generated|q_a\(1),
	datad => VCC,
	cin => \f_res[0]~17_cout\,
	combout => \f_res[0]~18_combout\,
	cout => \f_res[0]~19\);

-- Location: FF_X72_Y67_N19
\f_res[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \f_res[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_res[0]~reg0_q\);

-- Location: LCCOMB_X72_Y67_N20
\f_res[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_res[1]~20_combout\ = ((\LUT_b|altsyncram_component|auto_generated|q_a\(2) $ (\Mult0|auto_generated|mac_out2~DATAOUT19\ $ (!\f_res[0]~19\)))) # (GND)
-- \f_res[1]~21\ = CARRY((\LUT_b|altsyncram_component|auto_generated|q_a\(2) & ((\Mult0|auto_generated|mac_out2~DATAOUT19\) # (!\f_res[0]~19\))) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(2) & (\Mult0|auto_generated|mac_out2~DATAOUT19\ & 
-- !\f_res[0]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_b|altsyncram_component|auto_generated|q_a\(2),
	datab => \Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \f_res[0]~19\,
	combout => \f_res[1]~20_combout\,
	cout => \f_res[1]~21\);

-- Location: FF_X72_Y67_N21
\f_res[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \f_res[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_res[1]~reg0_q\);

-- Location: LCCOMB_X72_Y67_N22
\f_res[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_res[2]~22_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\LUT_b|altsyncram_component|auto_generated|q_a\(3) & (\f_res[1]~21\ & VCC)) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(3) & (!\f_res[1]~21\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\LUT_b|altsyncram_component|auto_generated|q_a\(3) & (!\f_res[1]~21\)) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(3) & ((\f_res[1]~21\) # (GND)))))
-- \f_res[2]~23\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\LUT_b|altsyncram_component|auto_generated|q_a\(3) & !\f_res[1]~21\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT20\ & ((!\f_res[1]~21\) # 
-- (!\LUT_b|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT20\,
	datab => \LUT_b|altsyncram_component|auto_generated|q_a\(3),
	datad => VCC,
	cin => \f_res[1]~21\,
	combout => \f_res[2]~22_combout\,
	cout => \f_res[2]~23\);

-- Location: FF_X72_Y67_N23
\f_res[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \f_res[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_res[2]~reg0_q\);

-- Location: LCCOMB_X72_Y67_N24
\f_res[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_res[3]~24_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT21\ $ (\LUT_b|altsyncram_component|auto_generated|q_a\(4) $ (!\f_res[2]~23\)))) # (GND)
-- \f_res[3]~25\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\LUT_b|altsyncram_component|auto_generated|q_a\(4)) # (!\f_res[2]~23\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & (\LUT_b|altsyncram_component|auto_generated|q_a\(4) & 
-- !\f_res[2]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \LUT_b|altsyncram_component|auto_generated|q_a\(4),
	datad => VCC,
	cin => \f_res[2]~23\,
	combout => \f_res[3]~24_combout\,
	cout => \f_res[3]~25\);

-- Location: FF_X72_Y67_N25
\f_res[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \f_res[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_res[3]~reg0_q\);

-- Location: LCCOMB_X72_Y67_N26
\f_res[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_res[4]~26_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\LUT_b|altsyncram_component|auto_generated|q_a\(5) & (\f_res[3]~25\ & VCC)) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(5) & (!\f_res[3]~25\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\LUT_b|altsyncram_component|auto_generated|q_a\(5) & (!\f_res[3]~25\)) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(5) & ((\f_res[3]~25\) # (GND)))))
-- \f_res[4]~27\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\LUT_b|altsyncram_component|auto_generated|q_a\(5) & !\f_res[3]~25\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT22\ & ((!\f_res[3]~25\) # 
-- (!\LUT_b|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \LUT_b|altsyncram_component|auto_generated|q_a\(5),
	datad => VCC,
	cin => \f_res[3]~25\,
	combout => \f_res[4]~26_combout\,
	cout => \f_res[4]~27\);

-- Location: FF_X72_Y67_N27
\f_res[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \f_res[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_res[4]~reg0_q\);

-- Location: LCCOMB_X72_Y67_N28
\f_res[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_res[5]~28_combout\ = ((\LUT_b|altsyncram_component|auto_generated|q_a\(6) $ (\Mult0|auto_generated|mac_out2~DATAOUT23\ $ (!\f_res[4]~27\)))) # (GND)
-- \f_res[5]~29\ = CARRY((\LUT_b|altsyncram_component|auto_generated|q_a\(6) & ((\Mult0|auto_generated|mac_out2~DATAOUT23\) # (!\f_res[4]~27\))) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(6) & (\Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- !\f_res[4]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_b|altsyncram_component|auto_generated|q_a\(6),
	datab => \Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \f_res[4]~27\,
	combout => \f_res[5]~28_combout\,
	cout => \f_res[5]~29\);

-- Location: FF_X72_Y67_N29
\f_res[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \f_res[5]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_res[5]~reg0_q\);

-- Location: LCCOMB_X72_Y67_N30
\f_res[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_res[6]~30_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\LUT_b|altsyncram_component|auto_generated|q_a\(7) & (\f_res[5]~29\ & VCC)) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(7) & (!\f_res[5]~29\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\LUT_b|altsyncram_component|auto_generated|q_a\(7) & (!\f_res[5]~29\)) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(7) & ((\f_res[5]~29\) # (GND)))))
-- \f_res[6]~31\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\LUT_b|altsyncram_component|auto_generated|q_a\(7) & !\f_res[5]~29\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT24\ & ((!\f_res[5]~29\) # 
-- (!\LUT_b|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \LUT_b|altsyncram_component|auto_generated|q_a\(7),
	datad => VCC,
	cin => \f_res[5]~29\,
	combout => \f_res[6]~30_combout\,
	cout => \f_res[6]~31\);

-- Location: FF_X72_Y67_N31
\f_res[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \f_res[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_res[6]~reg0_q\);

-- Location: LCCOMB_X72_Y66_N0
\f_res[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_res[7]~32_combout\ = ((\LUT_b|altsyncram_component|auto_generated|q_a\(8) $ (\Mult0|auto_generated|mac_out2~DATAOUT25\ $ (!\f_res[6]~31\)))) # (GND)
-- \f_res[7]~33\ = CARRY((\LUT_b|altsyncram_component|auto_generated|q_a\(8) & ((\Mult0|auto_generated|mac_out2~DATAOUT25\) # (!\f_res[6]~31\))) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(8) & (\Mult0|auto_generated|mac_out2~DATAOUT25\ & 
-- !\f_res[6]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_b|altsyncram_component|auto_generated|q_a\(8),
	datab => \Mult0|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \f_res[6]~31\,
	combout => \f_res[7]~32_combout\,
	cout => \f_res[7]~33\);

-- Location: FF_X72_Y66_N1
\f_res[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \f_res[7]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_res[7]~reg0_q\);

-- Location: LCCOMB_X72_Y66_N2
\f_res[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_res[8]~34_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\LUT_b|altsyncram_component|auto_generated|q_a\(9) & (\f_res[7]~33\ & VCC)) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(9) & (!\f_res[7]~33\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\LUT_b|altsyncram_component|auto_generated|q_a\(9) & (!\f_res[7]~33\)) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(9) & ((\f_res[7]~33\) # (GND)))))
-- \f_res[8]~35\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\LUT_b|altsyncram_component|auto_generated|q_a\(9) & !\f_res[7]~33\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT26\ & ((!\f_res[7]~33\) # 
-- (!\LUT_b|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT26\,
	datab => \LUT_b|altsyncram_component|auto_generated|q_a\(9),
	datad => VCC,
	cin => \f_res[7]~33\,
	combout => \f_res[8]~34_combout\,
	cout => \f_res[8]~35\);

-- Location: FF_X72_Y66_N3
\f_res[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \f_res[8]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_res[8]~reg0_q\);

-- Location: LCCOMB_X72_Y66_N4
\f_res[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_res[9]~36_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT27\ $ (\LUT_b|altsyncram_component|auto_generated|q_a\(10) $ (!\f_res[8]~35\)))) # (GND)
-- \f_res[9]~37\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\LUT_b|altsyncram_component|auto_generated|q_a\(10)) # (!\f_res[8]~35\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT27\ & (\LUT_b|altsyncram_component|auto_generated|q_a\(10) & 
-- !\f_res[8]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT27\,
	datab => \LUT_b|altsyncram_component|auto_generated|q_a\(10),
	datad => VCC,
	cin => \f_res[8]~35\,
	combout => \f_res[9]~36_combout\,
	cout => \f_res[9]~37\);

-- Location: FF_X72_Y66_N5
\f_res[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \f_res[9]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_res[9]~reg0_q\);

-- Location: LCCOMB_X72_Y66_N6
\f_res[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_res[10]~38_combout\ = (\LUT_b|altsyncram_component|auto_generated|q_a\(11) & ((\Mult0|auto_generated|mac_out2~DATAOUT28\ & (\f_res[9]~37\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT28\ & (!\f_res[9]~37\)))) # 
-- (!\LUT_b|altsyncram_component|auto_generated|q_a\(11) & ((\Mult0|auto_generated|mac_out2~DATAOUT28\ & (!\f_res[9]~37\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT28\ & ((\f_res[9]~37\) # (GND)))))
-- \f_res[10]~39\ = CARRY((\LUT_b|altsyncram_component|auto_generated|q_a\(11) & (!\Mult0|auto_generated|mac_out2~DATAOUT28\ & !\f_res[9]~37\)) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(11) & ((!\f_res[9]~37\) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_b|altsyncram_component|auto_generated|q_a\(11),
	datab => \Mult0|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \f_res[9]~37\,
	combout => \f_res[10]~38_combout\,
	cout => \f_res[10]~39\);

-- Location: FF_X72_Y66_N7
\f_res[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \f_res[10]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_res[10]~reg0_q\);

-- Location: LCCOMB_X72_Y66_N8
\f_res[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_res[11]~40_combout\ = ((\LUT_b|altsyncram_component|auto_generated|q_a\(12) $ (\Mult0|auto_generated|mac_out2~DATAOUT29\ $ (!\f_res[10]~39\)))) # (GND)
-- \f_res[11]~41\ = CARRY((\LUT_b|altsyncram_component|auto_generated|q_a\(12) & ((\Mult0|auto_generated|mac_out2~DATAOUT29\) # (!\f_res[10]~39\))) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(12) & (\Mult0|auto_generated|mac_out2~DATAOUT29\ & 
-- !\f_res[10]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_b|altsyncram_component|auto_generated|q_a\(12),
	datab => \Mult0|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \f_res[10]~39\,
	combout => \f_res[11]~40_combout\,
	cout => \f_res[11]~41\);

-- Location: FF_X72_Y66_N9
\f_res[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \f_res[11]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_res[11]~reg0_q\);

-- Location: LCCOMB_X72_Y66_N10
\f_res[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_res[12]~42_combout\ = (\LUT_b|altsyncram_component|auto_generated|q_a\(13) & ((\Mult0|auto_generated|mac_out2~DATAOUT30\ & (\f_res[11]~41\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT30\ & (!\f_res[11]~41\)))) # 
-- (!\LUT_b|altsyncram_component|auto_generated|q_a\(13) & ((\Mult0|auto_generated|mac_out2~DATAOUT30\ & (!\f_res[11]~41\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT30\ & ((\f_res[11]~41\) # (GND)))))
-- \f_res[12]~43\ = CARRY((\LUT_b|altsyncram_component|auto_generated|q_a\(13) & (!\Mult0|auto_generated|mac_out2~DATAOUT30\ & !\f_res[11]~41\)) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(13) & ((!\f_res[11]~41\) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_b|altsyncram_component|auto_generated|q_a\(13),
	datab => \Mult0|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \f_res[11]~41\,
	combout => \f_res[12]~42_combout\,
	cout => \f_res[12]~43\);

-- Location: FF_X72_Y66_N11
\f_res[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \f_res[12]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_res[12]~reg0_q\);

-- Location: LCCOMB_X72_Y66_N12
\f_res[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_res[13]~44_combout\ = ((\LUT_b|altsyncram_component|auto_generated|q_a\(14) $ (\Mult0|auto_generated|mac_out2~DATAOUT31\ $ (!\f_res[12]~43\)))) # (GND)
-- \f_res[13]~45\ = CARRY((\LUT_b|altsyncram_component|auto_generated|q_a\(14) & ((\Mult0|auto_generated|mac_out2~DATAOUT31\) # (!\f_res[12]~43\))) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(14) & (\Mult0|auto_generated|mac_out2~DATAOUT31\ & 
-- !\f_res[12]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_b|altsyncram_component|auto_generated|q_a\(14),
	datab => \Mult0|auto_generated|mac_out2~DATAOUT31\,
	datad => VCC,
	cin => \f_res[12]~43\,
	combout => \f_res[13]~44_combout\,
	cout => \f_res[13]~45\);

-- Location: FF_X72_Y66_N13
\f_res[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \f_res[13]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_res[13]~reg0_q\);

-- Location: LCCOMB_X72_Y66_N14
\f_res[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_res[14]~46_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT32\ & ((\LUT_b|altsyncram_component|auto_generated|q_a\(15) & (\f_res[13]~45\ & VCC)) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(15) & (!\f_res[13]~45\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT32\ & ((\LUT_b|altsyncram_component|auto_generated|q_a\(15) & (!\f_res[13]~45\)) # (!\LUT_b|altsyncram_component|auto_generated|q_a\(15) & ((\f_res[13]~45\) # (GND)))))
-- \f_res[14]~47\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT32\ & (!\LUT_b|altsyncram_component|auto_generated|q_a\(15) & !\f_res[13]~45\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT32\ & ((!\f_res[13]~45\) # 
-- (!\LUT_b|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT32\,
	datab => \LUT_b|altsyncram_component|auto_generated|q_a\(15),
	datad => VCC,
	cin => \f_res[13]~45\,
	combout => \f_res[14]~46_combout\,
	cout => \f_res[14]~47\);

-- Location: FF_X72_Y66_N15
\f_res[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \f_res[14]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_res[14]~reg0_q\);

-- Location: LCCOMB_X72_Y66_N16
\f_res[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \f_res[15]~48_combout\ = \LUT_b|altsyncram_component|auto_generated|q_a\(15) $ (\f_res[14]~47\ $ (!\Mult0|auto_generated|mac_out2~DATAOUT32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_b|altsyncram_component|auto_generated|q_a\(15),
	datad => \Mult0|auto_generated|mac_out2~DATAOUT32\,
	cin => \f_res[14]~47\,
	combout => \f_res[15]~48_combout\);

-- Location: FF_X72_Y66_N17
\f_res[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \f_res[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f_res[15]~reg0_q\);

ww_f_res(0) <= \f_res[0]~output_o\;

ww_f_res(1) <= \f_res[1]~output_o\;

ww_f_res(2) <= \f_res[2]~output_o\;

ww_f_res(3) <= \f_res[3]~output_o\;

ww_f_res(4) <= \f_res[4]~output_o\;

ww_f_res(5) <= \f_res[5]~output_o\;

ww_f_res(6) <= \f_res[6]~output_o\;

ww_f_res(7) <= \f_res[7]~output_o\;

ww_f_res(8) <= \f_res[8]~output_o\;

ww_f_res(9) <= \f_res[9]~output_o\;

ww_f_res(10) <= \f_res[10]~output_o\;

ww_f_res(11) <= \f_res[11]~output_o\;

ww_f_res(12) <= \f_res[12]~output_o\;

ww_f_res(13) <= \f_res[13]~output_o\;

ww_f_res(14) <= \f_res[14]~output_o\;

ww_f_res(15) <= \f_res[15]~output_o\;
END structure;


