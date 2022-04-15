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

-- DATE "04/15/2022 11:50:48"

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

ENTITY 	Box_Muller IS
    PORT (
	gclk : IN std_logic;
	greset : IN std_logic;
	U1 : BUFFER std_logic_vector(15 DOWNTO 0);
	U2 : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END Box_Muller;

-- Design Ports Information
-- greset	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U1[0]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U1[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U1[2]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U1[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U1[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U1[5]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U1[6]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U1[7]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U1[8]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U1[9]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U1[10]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U1[11]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U1[12]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U1[13]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U1[14]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U1[15]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U2[0]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U2[1]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U2[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U2[3]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U2[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U2[5]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U2[6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U2[7]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U2[8]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U2[9]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U2[10]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U2[11]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U2[12]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U2[13]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U2[14]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- U2[15]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gclk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Box_Muller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_gclk : std_logic;
SIGNAL ww_greset : std_logic;
SIGNAL ww_U1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_U2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \f1|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \f1|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \f1|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \gclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \greset~input_o\ : std_logic;
SIGNAL \U1[0]~output_o\ : std_logic;
SIGNAL \U1[1]~output_o\ : std_logic;
SIGNAL \U1[2]~output_o\ : std_logic;
SIGNAL \U1[3]~output_o\ : std_logic;
SIGNAL \U1[4]~output_o\ : std_logic;
SIGNAL \U1[5]~output_o\ : std_logic;
SIGNAL \U1[6]~output_o\ : std_logic;
SIGNAL \U1[7]~output_o\ : std_logic;
SIGNAL \U1[8]~output_o\ : std_logic;
SIGNAL \U1[9]~output_o\ : std_logic;
SIGNAL \U1[10]~output_o\ : std_logic;
SIGNAL \U1[11]~output_o\ : std_logic;
SIGNAL \U1[12]~output_o\ : std_logic;
SIGNAL \U1[13]~output_o\ : std_logic;
SIGNAL \U1[14]~output_o\ : std_logic;
SIGNAL \U1[15]~output_o\ : std_logic;
SIGNAL \U2[0]~output_o\ : std_logic;
SIGNAL \U2[1]~output_o\ : std_logic;
SIGNAL \U2[2]~output_o\ : std_logic;
SIGNAL \U2[3]~output_o\ : std_logic;
SIGNAL \U2[4]~output_o\ : std_logic;
SIGNAL \U2[5]~output_o\ : std_logic;
SIGNAL \U2[6]~output_o\ : std_logic;
SIGNAL \U2[7]~output_o\ : std_logic;
SIGNAL \U2[8]~output_o\ : std_logic;
SIGNAL \U2[9]~output_o\ : std_logic;
SIGNAL \U2[10]~output_o\ : std_logic;
SIGNAL \U2[11]~output_o\ : std_logic;
SIGNAL \U2[12]~output_o\ : std_logic;
SIGNAL \U2[13]~output_o\ : std_logic;
SIGNAL \U2[14]~output_o\ : std_logic;
SIGNAL \U2[15]~output_o\ : std_logic;
SIGNAL \gclk~input_o\ : std_logic;
SIGNAL \gclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \LF33|shift_register~1_combout\ : std_logic;
SIGNAL \LF33|shift_register~4_combout\ : std_logic;
SIGNAL \f1|U_tilde[0]~32_combout\ : std_logic;
SIGNAL \f1|U_tilde[0]~feeder_combout\ : std_logic;
SIGNAL \LF33|shift_register~0_combout\ : std_logic;
SIGNAL \LF33|shift_register~2_combout\ : std_logic;
SIGNAL \LF33|shift_register~3_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:22:detector|o_or~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:18:detector|o_or~combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add19~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:18:detector|o_or~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add15~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add15~1_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add19~1_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add17~1\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add17~3\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add17~5\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add17~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:28:detector|o_or~combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:26:detector|o_or~combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:26:detector|o_or~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add23~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add23~1_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add26~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add25~1\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add25~3\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add25~5\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add25~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add25~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add17~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add17~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add25~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add17~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add25~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add21~1\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add21~3\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add21~5\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add21~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:10:detector|o_or~9_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:10:detector|o_or~8_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:10:detector|o_or~combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:16:detector|o_or~combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:12:detector|o_or~combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add7~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add7~1_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:14:detector|o_or~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add10~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add9~1\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add9~3\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add9~5\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add9~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:6:detector|o_or~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:4:detector|o_or~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:4:detector|o_or~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:4:detector|o_or~5_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add3~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:8:detector|o_or~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:6:detector|o_or~combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add3~1_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add4~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add1~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add3~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add5~1\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add5~3\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add5~5\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add5~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add5~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add9~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add5~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add9~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add9~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add5~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add11~1\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add11~3\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add11~5\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add11~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add11~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:14:detector|o_or~combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add11~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add12~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add11~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add13~1\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add13~3\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add13~5\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add13~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add21~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add13~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add13~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add21~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add13~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add21~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add27~1\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add27~3\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add27~5\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add27~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add27~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add32~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:17:detector|o_and~3_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:17:detector|o_and~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:25:detector|o_and~1_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:17:detector|o_and~1_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:17:detector|o_and~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:13:detector|o_and~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add40~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add39~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add32~1_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add31~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add28~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add27~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add28~1_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add27~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add29~1\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add29~3\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add29~5\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add29~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add55~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add55~7_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add58~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add55~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add55~5_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add57~1\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add57~3\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add57~5\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add57~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|gen_LOD:21:detector|o_and~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add51~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add47~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add47~1_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add47~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add51~3_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add47~3_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add51~5_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add51~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add49~1\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add49~3\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add49~5\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add49~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add49~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add57~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add49~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add57~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add49~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add57~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add53~1\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add53~3\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add53~5\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add53~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add36~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add35~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add31~1_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add35~1_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add31~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add35~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add33~1\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add33~3\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add33~5\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add33~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add43~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add43~3_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add39~1_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add43~5_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add43~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add39~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add41~1\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add41~3\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add41~5\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add41~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add41~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add33~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add41~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add33~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add41~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add33~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add37~1\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add37~3\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add37~5\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add37~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add37~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add53~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add53~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add37~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add37~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add53~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add45~1\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add45~3\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add45~5\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add45~6_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add45~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add29~4_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add45~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add29~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add45~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add29~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|sum[0]~1\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|sum[1]~3\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|sum[2]~5\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|sum[3]~6_combout\ : std_logic;
SIGNAL \f1|Add0~2_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|sum[2]~4_combout\ : std_logic;
SIGNAL \f1|Add0~1_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|sum[1]~2_combout\ : std_logic;
SIGNAL \f1|Add0~0_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|sum[0]~0_combout\ : std_logic;
SIGNAL \f1|shift_num[0]~7\ : std_logic;
SIGNAL \f1|shift_num[1]~9\ : std_logic;
SIGNAL \f1|shift_num[2]~11\ : std_logic;
SIGNAL \f1|shift_num[3]~12_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add37~7\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add37~8_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add53~7\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add53~8_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add45~7\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add45~8_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add21~7\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add21~8_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add13~7\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add13~8_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add27~7\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add27~8_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add29~7\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add29~8_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|sum[3]~7\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|sum[4]~8_combout\ : std_logic;
SIGNAL \f1|Add0~3_combout\ : std_logic;
SIGNAL \f1|shift_num[3]~13\ : std_logic;
SIGNAL \f1|shift_num[4]~14_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \f1|U_tilde[0]~33\ : std_logic;
SIGNAL \f1|U_tilde[1]~34_combout\ : std_logic;
SIGNAL \f1|shift_num[0]~6_combout\ : std_logic;
SIGNAL \f1|shift_num[2]~10_combout\ : std_logic;
SIGNAL \f1|shift_num[1]~8_combout\ : std_logic;
SIGNAL \f1|shift1[14]~0_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~136_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add45~9\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add45~10_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add29~9\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|Add29~10_combout\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|sum[4]~9\ : std_logic;
SIGNAL \f1|AU0|LOD0|oc0|sum[5]~10_combout\ : std_logic;
SIGNAL \f1|Add0~4_combout\ : std_logic;
SIGNAL \f1|shift_num[4]~15\ : std_logic;
SIGNAL \f1|shift_num[5]~16_combout\ : std_logic;
SIGNAL \f1|U_tilde[1]~35\ : std_logic;
SIGNAL \f1|U_tilde[2]~37\ : std_logic;
SIGNAL \f1|U_tilde[3]~39\ : std_logic;
SIGNAL \f1|U_tilde[4]~41\ : std_logic;
SIGNAL \f1|U_tilde[5]~43\ : std_logic;
SIGNAL \f1|U_tilde[6]~45\ : std_logic;
SIGNAL \f1|U_tilde[7]~47\ : std_logic;
SIGNAL \f1|U_tilde[8]~49\ : std_logic;
SIGNAL \f1|U_tilde[9]~51\ : std_logic;
SIGNAL \f1|U_tilde[10]~53\ : std_logic;
SIGNAL \f1|U_tilde[11]~55\ : std_logic;
SIGNAL \f1|U_tilde[12]~57\ : std_logic;
SIGNAL \f1|U_tilde[13]~59\ : std_logic;
SIGNAL \f1|U_tilde[14]~61\ : std_logic;
SIGNAL \f1|U_tilde[15]~63\ : std_logic;
SIGNAL \f1|U_tilde[16]~65\ : std_logic;
SIGNAL \f1|U_tilde[17]~66_combout\ : std_logic;
SIGNAL \f1|U_tilde[15]~62_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \f1|U_tilde[16]~64_combout\ : std_logic;
SIGNAL \f1|U_tilde[14]~60_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \f1|U_tilde[13]~58_combout\ : std_logic;
SIGNAL \f1|U_tilde[11]~54_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \f1|U_tilde[12]~56_combout\ : std_logic;
SIGNAL \f1|U_tilde[10]~52_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \f1|U_tilde[9]~50_combout\ : std_logic;
SIGNAL \f1|U_tilde[7]~46_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \f1|U_tilde[8]~48_combout\ : std_logic;
SIGNAL \f1|U_tilde[6]~44_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \f1|U_tilde[3]~38_combout\ : std_logic;
SIGNAL \f1|U_tilde[5]~42_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \f1|U_tilde[2]~36_combout\ : std_logic;
SIGNAL \f1|U_tilde[4]~40_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~51_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~52_combout\ : std_logic;
SIGNAL \f1|U_tilde[17]~67\ : std_logic;
SIGNAL \f1|U_tilde[18]~68_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~47_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~48_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~46_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~49_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~50_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~53_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~55_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~54_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~56_combout\ : std_logic;
SIGNAL \f1|U_tilde[18]~69\ : std_logic;
SIGNAL \f1|U_tilde[19]~70_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~58_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~59_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~57_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~60_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~61_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~62_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~63_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~64_combout\ : std_logic;
SIGNAL \f1|U_tilde[19]~71\ : std_logic;
SIGNAL \f1|U_tilde[20]~72_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~66_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~67_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~68_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~65_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~69_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~70_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~71_combout\ : std_logic;
SIGNAL \f1|U_tilde[20]~73\ : std_logic;
SIGNAL \f1|U_tilde[21]~74_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~73_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~74_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~75_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~72_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~76_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~77_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~78_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~84_combout\ : std_logic;
SIGNAL \f1|U_tilde[21]~75\ : std_logic;
SIGNAL \f1|U_tilde[22]~76_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~80_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~81_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~82_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~79_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~83_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~85_combout\ : std_logic;
SIGNAL \f1|U_tilde[22]~77\ : std_logic;
SIGNAL \f1|U_tilde[23]~78_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~87_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~88_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~89_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~86_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~90_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~91_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~92_combout\ : std_logic;
SIGNAL \f1|shift1[8]~1_combout\ : std_logic;
SIGNAL \f1|U_tilde[23]~79\ : std_logic;
SIGNAL \f1|U_tilde[24]~80_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~93_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~94_combout\ : std_logic;
SIGNAL \f1|shift1[8]~2_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~95_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~96_combout\ : std_logic;
SIGNAL \f1|shift1[8]~3_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~97_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~98_combout\ : std_logic;
SIGNAL \f1|U_tilde[24]~81\ : std_logic;
SIGNAL \f1|U_tilde[25]~82_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~99_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~100_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~101_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~102_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~103_combout\ : std_logic;
SIGNAL \f1|U_tilde[25]~83\ : std_logic;
SIGNAL \f1|U_tilde[26]~84_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~105_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~104_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~106_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~107_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~108_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~137_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~109_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~138_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~110_combout\ : std_logic;
SIGNAL \f1|U_tilde[26]~85\ : std_logic;
SIGNAL \f1|U_tilde[27]~86_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~111_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~112_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~113_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~114_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~115_combout\ : std_logic;
SIGNAL \f1|U_tilde[27]~87\ : std_logic;
SIGNAL \f1|U_tilde[28]~88_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~117_combout\ : std_logic;
SIGNAL \f1|shift1[12]~5_combout\ : std_logic;
SIGNAL \f1|shift1[12]~4_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~118_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~119_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~116_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~120_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~121_combout\ : std_logic;
SIGNAL \f1|U_tilde[28]~89\ : std_logic;
SIGNAL \f1|U_tilde[29]~90_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~122_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~123_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~124_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~125_combout\ : std_logic;
SIGNAL \f1|shift1[14]~6_combout\ : std_logic;
SIGNAL \f1|U_tilde[29]~91\ : std_logic;
SIGNAL \f1|U_tilde[30]~92_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~126_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~127_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~128_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~129_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~130_combout\ : std_logic;
SIGNAL \f1|U_tilde[30]~93\ : std_logic;
SIGNAL \f1|U_tilde[31]~94_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~131_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~132_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~133_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~134_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~135_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~21_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~22_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~23_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~18_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~19_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~20_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~16_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~13_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~14_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~17_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~24_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~18_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~19_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~16_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~17_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~20_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~11_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~10_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~13_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~12_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~14_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~15_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~21_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~22_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~8_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~9_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~10_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~6_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~7_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~8_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~9_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~11_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~12_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~25_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~47_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~48_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~49_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~45_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~44_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~46_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~42_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~41_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~39_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~40_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~43_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~50_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~51_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~39_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~43_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~44_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~40_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~41_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~42_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~45_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~36_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~37_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~38_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~46_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~35_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~36_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~32_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~33_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~34_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~37_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~29_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~30_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~27_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~26_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~28_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~31_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~25_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~26_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~23_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~24_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~27_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~28_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~30_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~29_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~31_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~32_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~33_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~34_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~35_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~38_combout\ : std_logic;
SIGNAL \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~52_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \f1|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \f1|f_res[0]~17_cout\ : std_logic;
SIGNAL \f1|f_res[0]~18_combout\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \f1|f_res[0]~19\ : std_logic;
SIGNAL \f1|f_res[1]~20_combout\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \f1|f_res[1]~21\ : std_logic;
SIGNAL \f1|f_res[2]~22_combout\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \f1|f_res[2]~23\ : std_logic;
SIGNAL \f1|f_res[3]~24_combout\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \f1|f_res[3]~25\ : std_logic;
SIGNAL \f1|f_res[4]~26_combout\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \f1|f_res[4]~27\ : std_logic;
SIGNAL \f1|f_res[5]~28_combout\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \f1|f_res[5]~29\ : std_logic;
SIGNAL \f1|f_res[6]~30_combout\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \f1|f_res[6]~31\ : std_logic;
SIGNAL \f1|f_res[7]~32_combout\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \f1|f_res[7]~33\ : std_logic;
SIGNAL \f1|f_res[8]~34_combout\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \f1|f_res[8]~35\ : std_logic;
SIGNAL \f1|f_res[9]~36_combout\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \f1|f_res[9]~37\ : std_logic;
SIGNAL \f1|f_res[10]~38_combout\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \f1|f_res[10]~39\ : std_logic;
SIGNAL \f1|f_res[11]~40_combout\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \f1|f_res[11]~41\ : std_logic;
SIGNAL \f1|f_res[12]~42_combout\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \f1|f_res[12]~43\ : std_logic;
SIGNAL \f1|f_res[13]~44_combout\ : std_logic;
SIGNAL \f1|Mult0|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \f1|f_res[13]~45\ : std_logic;
SIGNAL \f1|f_res[14]~46_combout\ : std_logic;
SIGNAL \f1|f_res[14]~47\ : std_logic;
SIGNAL \f1|f_res[15]~48_combout\ : std_logic;
SIGNAL \LF16|shift_register[7]~feeder_combout\ : std_logic;
SIGNAL \LF16|shift_register~4_combout\ : std_logic;
SIGNAL \sc|d[2]~feeder_combout\ : std_logic;
SIGNAL \LF16|shift_register~2_combout\ : std_logic;
SIGNAL \sc|d[1]~feeder_combout\ : std_logic;
SIGNAL \LF16|shift_register~3_combout\ : std_logic;
SIGNAL \LF16|shift_register~1_combout\ : std_logic;
SIGNAL \sc|d[6]~feeder_combout\ : std_logic;
SIGNAL \LF16|shift_register~0_combout\ : std_logic;
SIGNAL \sc|d[0]~feeder_combout\ : std_logic;
SIGNAL \sc|d[5]~feeder_combout\ : std_logic;
SIGNAL \sc|n~feeder_combout\ : std_logic;
SIGNAL \sc|n~q\ : std_logic;
SIGNAL \sc|m~feeder_combout\ : std_logic;
SIGNAL \sc|m~q\ : std_logic;
SIGNAL \sc|dSinpLUT~0_combout\ : std_logic;
SIGNAL \sc|dSinpLUT~1_combout\ : std_logic;
SIGNAL \sc|d[7]~feeder_combout\ : std_logic;
SIGNAL \sc|dSinpLUT~2_combout\ : std_logic;
SIGNAL \sc|d[8]~feeder_combout\ : std_logic;
SIGNAL \sc|dSinpLUT~3_combout\ : std_logic;
SIGNAL \sc|d[9]~feeder_combout\ : std_logic;
SIGNAL \sc|dSinpLUT~4_combout\ : std_logic;
SIGNAL \sc|process_0~0_combout\ : std_logic;
SIGNAL \sc|dSinpLUT[5]~feeder_combout\ : std_logic;
SIGNAL \sc|dCos[7]~feeder_combout\ : std_logic;
SIGNAL \sc|dSinpLUT~5_combout\ : std_logic;
SIGNAL \sc|dCos[8]~feeder_combout\ : std_logic;
SIGNAL \sc|dSinpLUT~6_combout\ : std_logic;
SIGNAL \sc|dCos[9]~feeder_combout\ : std_logic;
SIGNAL \sc|dSinpLUT~7_combout\ : std_logic;
SIGNAL \sc|dCospLUT[0]~0_combout\ : std_logic;
SIGNAL \sc|dCospLUT[1]~1_combout\ : std_logic;
SIGNAL \sc|dCospLUT[2]~2_combout\ : std_logic;
SIGNAL \sc|dCospLUT[3]~3_combout\ : std_logic;
SIGNAL \sc|dCospLUT[4]~4_combout\ : std_logic;
SIGNAL \sc|dCospLUT[5]~5_combout\ : std_logic;
SIGNAL \sc|dCospLUT[6]~feeder_combout\ : std_logic;
SIGNAL \sc|dCospLUT[7]~6_combout\ : std_logic;
SIGNAL \sc|dCospLUT[8]~7_combout\ : std_logic;
SIGNAL \sc|dCospLUT[9]~8_combout\ : std_logic;
SIGNAL \sc|Add0~0_combout\ : std_logic;
SIGNAL \sc|sinOut[0]~16_combout\ : std_logic;
SIGNAL \sc|sinOut[0]~17\ : std_logic;
SIGNAL \sc|sinOut[1]~18_combout\ : std_logic;
SIGNAL \sc|sinOut[1]~19\ : std_logic;
SIGNAL \sc|sinOut[2]~20_combout\ : std_logic;
SIGNAL \sc|sinOut[2]~21\ : std_logic;
SIGNAL \sc|sinOut[3]~22_combout\ : std_logic;
SIGNAL \sc|sinOut[3]~23\ : std_logic;
SIGNAL \sc|sinOut[4]~24_combout\ : std_logic;
SIGNAL \sc|sinOut[4]~25\ : std_logic;
SIGNAL \sc|sinOut[5]~26_combout\ : std_logic;
SIGNAL \sc|sinOut[5]~27\ : std_logic;
SIGNAL \sc|sinOut[6]~28_combout\ : std_logic;
SIGNAL \sc|sinOut[6]~29\ : std_logic;
SIGNAL \sc|sinOut[7]~30_combout\ : std_logic;
SIGNAL \sc|sinOut[7]~31\ : std_logic;
SIGNAL \sc|sinOut[8]~32_combout\ : std_logic;
SIGNAL \sc|sinOut[8]~33\ : std_logic;
SIGNAL \sc|sinOut[9]~34_combout\ : std_logic;
SIGNAL \sc|sinOut[9]~35\ : std_logic;
SIGNAL \sc|sinOut[10]~36_combout\ : std_logic;
SIGNAL \sc|sinOut[10]~37\ : std_logic;
SIGNAL \sc|sinOut[11]~38_combout\ : std_logic;
SIGNAL \sc|sinOut[11]~39\ : std_logic;
SIGNAL \sc|sinOut[12]~40_combout\ : std_logic;
SIGNAL \sc|sinOut[12]~41\ : std_logic;
SIGNAL \sc|sinOut[13]~42_combout\ : std_logic;
SIGNAL \sc|sinOut[13]~43\ : std_logic;
SIGNAL \sc|sinOut[14]~44_combout\ : std_logic;
SIGNAL \sc|sinOut[14]~45\ : std_logic;
SIGNAL \sc|sinOut[15]~46_combout\ : std_logic;
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
SIGNAL \U1[0]~reg0feeder_combout\ : std_logic;
SIGNAL \U1[0]~reg0_q\ : std_logic;
SIGNAL \U1[1]~reg0feeder_combout\ : std_logic;
SIGNAL \U1[1]~reg0_q\ : std_logic;
SIGNAL \U1[2]~reg0feeder_combout\ : std_logic;
SIGNAL \U1[2]~reg0_q\ : std_logic;
SIGNAL \U1[3]~reg0feeder_combout\ : std_logic;
SIGNAL \U1[3]~reg0_q\ : std_logic;
SIGNAL \U1[4]~reg0_q\ : std_logic;
SIGNAL \U1[5]~reg0feeder_combout\ : std_logic;
SIGNAL \U1[5]~reg0_q\ : std_logic;
SIGNAL \U1[6]~reg0feeder_combout\ : std_logic;
SIGNAL \U1[6]~reg0_q\ : std_logic;
SIGNAL \U1[7]~reg0feeder_combout\ : std_logic;
SIGNAL \U1[7]~reg0_q\ : std_logic;
SIGNAL \U1[8]~reg0feeder_combout\ : std_logic;
SIGNAL \U1[8]~reg0_q\ : std_logic;
SIGNAL \U1[9]~reg0feeder_combout\ : std_logic;
SIGNAL \U1[9]~reg0_q\ : std_logic;
SIGNAL \U1[10]~reg0_q\ : std_logic;
SIGNAL \U1[11]~reg0feeder_combout\ : std_logic;
SIGNAL \U1[11]~reg0_q\ : std_logic;
SIGNAL \U1[12]~reg0_q\ : std_logic;
SIGNAL \U1[13]~reg0feeder_combout\ : std_logic;
SIGNAL \U1[13]~reg0_q\ : std_logic;
SIGNAL \U1[14]~reg0feeder_combout\ : std_logic;
SIGNAL \U1[14]~reg0_q\ : std_logic;
SIGNAL \U1[15]~reg0feeder_combout\ : std_logic;
SIGNAL \U1[15]~reg0_q\ : std_logic;
SIGNAL \sc|Add1~0_combout\ : std_logic;
SIGNAL \sc|cosOut[0]~16_combout\ : std_logic;
SIGNAL \sc|cosOut[0]~17\ : std_logic;
SIGNAL \sc|cosOut[1]~18_combout\ : std_logic;
SIGNAL \sc|cosOut[1]~19\ : std_logic;
SIGNAL \sc|cosOut[2]~20_combout\ : std_logic;
SIGNAL \sc|cosOut[2]~21\ : std_logic;
SIGNAL \sc|cosOut[3]~22_combout\ : std_logic;
SIGNAL \sc|cosOut[3]~23\ : std_logic;
SIGNAL \sc|cosOut[4]~24_combout\ : std_logic;
SIGNAL \sc|cosOut[4]~25\ : std_logic;
SIGNAL \sc|cosOut[5]~26_combout\ : std_logic;
SIGNAL \sc|cosOut[5]~27\ : std_logic;
SIGNAL \sc|cosOut[6]~28_combout\ : std_logic;
SIGNAL \sc|cosOut[6]~29\ : std_logic;
SIGNAL \sc|cosOut[7]~30_combout\ : std_logic;
SIGNAL \sc|cosOut[7]~31\ : std_logic;
SIGNAL \sc|cosOut[8]~32_combout\ : std_logic;
SIGNAL \sc|cosOut[8]~33\ : std_logic;
SIGNAL \sc|cosOut[9]~34_combout\ : std_logic;
SIGNAL \sc|cosOut[9]~35\ : std_logic;
SIGNAL \sc|cosOut[10]~36_combout\ : std_logic;
SIGNAL \sc|cosOut[10]~37\ : std_logic;
SIGNAL \sc|cosOut[11]~38_combout\ : std_logic;
SIGNAL \sc|cosOut[11]~39\ : std_logic;
SIGNAL \sc|cosOut[12]~40_combout\ : std_logic;
SIGNAL \sc|cosOut[12]~41\ : std_logic;
SIGNAL \sc|cosOut[13]~42_combout\ : std_logic;
SIGNAL \sc|cosOut[13]~43\ : std_logic;
SIGNAL \sc|cosOut[14]~44_combout\ : std_logic;
SIGNAL \sc|cosOut[14]~45\ : std_logic;
SIGNAL \sc|cosOut[15]~46_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \U2[0]~reg0feeder_combout\ : std_logic;
SIGNAL \U2[0]~reg0_q\ : std_logic;
SIGNAL \U2[1]~reg0feeder_combout\ : std_logic;
SIGNAL \U2[1]~reg0_q\ : std_logic;
SIGNAL \U2[2]~reg0feeder_combout\ : std_logic;
SIGNAL \U2[2]~reg0_q\ : std_logic;
SIGNAL \U2[3]~reg0feeder_combout\ : std_logic;
SIGNAL \U2[3]~reg0_q\ : std_logic;
SIGNAL \U2[4]~reg0feeder_combout\ : std_logic;
SIGNAL \U2[4]~reg0_q\ : std_logic;
SIGNAL \U2[5]~reg0feeder_combout\ : std_logic;
SIGNAL \U2[5]~reg0_q\ : std_logic;
SIGNAL \U2[6]~reg0feeder_combout\ : std_logic;
SIGNAL \U2[6]~reg0_q\ : std_logic;
SIGNAL \U2[7]~reg0feeder_combout\ : std_logic;
SIGNAL \U2[7]~reg0_q\ : std_logic;
SIGNAL \U2[8]~reg0feeder_combout\ : std_logic;
SIGNAL \U2[8]~reg0_q\ : std_logic;
SIGNAL \U2[9]~reg0_q\ : std_logic;
SIGNAL \U2[10]~reg0feeder_combout\ : std_logic;
SIGNAL \U2[10]~reg0_q\ : std_logic;
SIGNAL \U2[11]~reg0feeder_combout\ : std_logic;
SIGNAL \U2[11]~reg0_q\ : std_logic;
SIGNAL \U2[12]~reg0feeder_combout\ : std_logic;
SIGNAL \U2[12]~reg0_q\ : std_logic;
SIGNAL \U2[13]~reg0_q\ : std_logic;
SIGNAL \U2[14]~reg0feeder_combout\ : std_logic;
SIGNAL \U2[14]~reg0_q\ : std_logic;
SIGNAL \U2[15]~reg0feeder_combout\ : std_logic;
SIGNAL \U2[15]~reg0_q\ : std_logic;
SIGNAL mulres1 : std_logic_vector(31 DOWNTO 0);
SIGNAL \f1|U_tilde\ : std_logic_vector(31 DOWNTO 0);
SIGNAL mulres2 : std_logic_vector(31 DOWNTO 0);
SIGNAL \LF16|shift_register\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \f1|LUT_a|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \sc|c1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \sc|c1|altsyncram_component|auto_generated|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \sc|dCospLUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \f1|shift_num\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \f1|LUT_b|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \LF33|shift_register\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \sc|d\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc|dSinpLUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sc|dCos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \LF33|ALT_INV_shift_register\ : std_logic_vector(31 DOWNTO 31);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_gclk <= gclk;
ww_greset <= greset;
U1 <= ww_U1;
U2 <= ww_U2;
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
mulres1(15) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
mulres1(16) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
mulres1(17) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
mulres1(18) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
mulres1(19) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
mulres1(20) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
mulres1(21) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
mulres1(22) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
mulres1(23) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
mulres1(24) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
mulres1(25) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
mulres1(26) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
mulres1(27) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
mulres1(28) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
mulres1(29) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
mulres1(30) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out2~DATAOUT31\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult1~DATAOUT31\ & \Mult1|auto_generated|mac_mult1~DATAOUT30\ & \Mult1|auto_generated|mac_mult1~DATAOUT29\ & \Mult1|auto_generated|mac_mult1~DATAOUT28\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT27\ & \Mult1|auto_generated|mac_mult1~DATAOUT26\ & \Mult1|auto_generated|mac_mult1~DATAOUT25\ & \Mult1|auto_generated|mac_mult1~DATAOUT24\ & \Mult1|auto_generated|mac_mult1~DATAOUT23\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT22\ & \Mult1|auto_generated|mac_mult1~DATAOUT21\ & \Mult1|auto_generated|mac_mult1~DATAOUT20\ & \Mult1|auto_generated|mac_mult1~DATAOUT19\ & \Mult1|auto_generated|mac_mult1~DATAOUT18\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT17\ & \Mult1|auto_generated|mac_mult1~DATAOUT16\ & \Mult1|auto_generated|mac_mult1~DATAOUT15\ & \Mult1|auto_generated|mac_mult1~DATAOUT14\ & \Mult1|auto_generated|mac_mult1~DATAOUT13\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT12\ & \Mult1|auto_generated|mac_mult1~DATAOUT11\ & \Mult1|auto_generated|mac_mult1~DATAOUT10\ & \Mult1|auto_generated|mac_mult1~DATAOUT9\ & \Mult1|auto_generated|mac_mult1~DATAOUT8\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT7\ & \Mult1|auto_generated|mac_mult1~DATAOUT6\ & \Mult1|auto_generated|mac_mult1~DATAOUT5\ & \Mult1|auto_generated|mac_mult1~DATAOUT4\ & \Mult1|auto_generated|mac_mult1~DATAOUT3\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT2\ & \Mult1|auto_generated|mac_mult1~DATAOUT1\ & \Mult1|auto_generated|mac_mult1~dataout\ & \Mult1|auto_generated|mac_mult1~3\ & \Mult1|auto_generated|mac_mult1~2\ & \Mult1|auto_generated|mac_mult1~1\ & 
\Mult1|auto_generated|mac_mult1~0\);

\Mult1|auto_generated|mac_out2~0\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out2~1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out2~2\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out2~3\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out2~dataout\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out2~DATAOUT1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out2~DATAOUT2\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out2~DATAOUT3\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out2~DATAOUT4\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out2~DATAOUT5\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_out2~DATAOUT6\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_out2~DATAOUT7\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_out2~DATAOUT8\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_out2~DATAOUT9\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_out2~DATAOUT10\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_out2~DATAOUT11\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_out2~DATAOUT12\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_out2~DATAOUT13\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_out2~DATAOUT14\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
mulres2(15) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
mulres2(16) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
mulres2(17) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
mulres2(18) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
mulres2(19) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
mulres2(20) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
mulres2(21) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
mulres2(22) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
mulres2(23) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
mulres2(24) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
mulres2(25) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
mulres2(26) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
mulres2(27) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
mulres2(28) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
mulres2(29) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
mulres2(30) <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_out2~DATAOUT31\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\f1|f_res[15]~48_combout\ & \f1|f_res[14]~46_combout\ & \f1|f_res[13]~44_combout\ & \f1|f_res[12]~42_combout\ & \f1|f_res[11]~40_combout\ & \f1|f_res[10]~38_combout\ & \f1|f_res[9]~36_combout\ & 
\f1|f_res[8]~34_combout\ & \f1|f_res[7]~32_combout\ & \f1|f_res[6]~30_combout\ & \f1|f_res[5]~28_combout\ & \f1|f_res[4]~26_combout\ & \f1|f_res[3]~24_combout\ & \f1|f_res[2]~22_combout\ & \f1|f_res[1]~20_combout\ & \f1|f_res[0]~18_combout\ & gnd & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\sc|sinOut[15]~46_combout\ & \sc|sinOut[14]~44_combout\ & \sc|sinOut[13]~42_combout\ & \sc|sinOut[12]~40_combout\ & \sc|sinOut[11]~38_combout\ & \sc|sinOut[10]~36_combout\ & \sc|sinOut[9]~34_combout\ & 
\sc|sinOut[8]~32_combout\ & \sc|sinOut[7]~30_combout\ & \sc|sinOut[6]~28_combout\ & \sc|sinOut[5]~26_combout\ & \sc|sinOut[4]~24_combout\ & \sc|sinOut[3]~22_combout\ & \sc|sinOut[2]~20_combout\ & \sc|sinOut[1]~18_combout\ & \sc|sinOut[0]~16_combout\ & gnd
& gnd);

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

\Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\f1|f_res[15]~48_combout\ & \f1|f_res[14]~46_combout\ & \f1|f_res[13]~44_combout\ & \f1|f_res[12]~42_combout\ & \f1|f_res[11]~40_combout\ & \f1|f_res[10]~38_combout\ & \f1|f_res[9]~36_combout\ & 
\f1|f_res[8]~34_combout\ & \f1|f_res[7]~32_combout\ & \f1|f_res[6]~30_combout\ & \f1|f_res[5]~28_combout\ & \f1|f_res[4]~26_combout\ & \f1|f_res[3]~24_combout\ & \f1|f_res[2]~22_combout\ & \f1|f_res[1]~20_combout\ & \f1|f_res[0]~18_combout\ & gnd & gnd);

\Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\sc|cosOut[15]~46_combout\ & \sc|cosOut[14]~44_combout\ & \sc|cosOut[13]~42_combout\ & \sc|cosOut[12]~40_combout\ & \sc|cosOut[11]~38_combout\ & \sc|cosOut[10]~36_combout\ & \sc|cosOut[9]~34_combout\ & 
\sc|cosOut[8]~32_combout\ & \sc|cosOut[7]~30_combout\ & \sc|cosOut[6]~28_combout\ & \sc|cosOut[5]~26_combout\ & \sc|cosOut[4]~24_combout\ & \sc|cosOut[3]~22_combout\ & \sc|cosOut[2]~20_combout\ & \sc|cosOut[1]~18_combout\ & \sc|cosOut[0]~16_combout\ & gnd
& gnd);

\Mult1|auto_generated|mac_mult1~0\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult1~1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult1~2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult1~3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult1~dataout\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult1|auto_generated|mac_mult1~DATAOUT24\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult1|auto_generated|mac_mult1~DATAOUT25\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult1|auto_generated|mac_mult1~DATAOUT26\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult1|auto_generated|mac_mult1~DATAOUT27\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult1|auto_generated|mac_mult1~DATAOUT28\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult1|auto_generated|mac_mult1~DATAOUT29\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult1|auto_generated|mac_mult1~DATAOUT30\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult1|auto_generated|mac_mult1~DATAOUT31\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\f1|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\f1|Mult0|auto_generated|mac_mult1~DATAOUT32\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT31\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT30\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT29\ & 
\f1|Mult0|auto_generated|mac_mult1~DATAOUT28\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT25\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT24\ & 
\f1|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT19\ & 
\f1|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT14\ & 
\f1|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\f1|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT4\ & 
\f1|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \f1|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \f1|Mult0|auto_generated|mac_mult1~dataout\ & \f1|Mult0|auto_generated|mac_mult1~2\ & 
\f1|Mult0|auto_generated|mac_mult1~1\ & \f1|Mult0|auto_generated|mac_mult1~0\);

\f1|Mult0|auto_generated|mac_out2~0\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\f1|Mult0|auto_generated|mac_out2~1\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\f1|Mult0|auto_generated|mac_out2~2\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\f1|Mult0|auto_generated|mac_out2~dataout\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\f1|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\f1|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\f1|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\f1|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\f1|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\f1|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\f1|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\f1|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\f1|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\f1|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\f1|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\f1|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\f1|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\f1|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\f1|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\f1|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\f1|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\f1|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\f1|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\f1|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\f1|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\f1|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\f1|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\f1|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\f1|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\f1|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\f1|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\f1|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\f1|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\f1|Mult0|auto_generated|mac_out2~DATAOUT30\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\f1|Mult0|auto_generated|mac_out2~DATAOUT31\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\f1|Mult0|auto_generated|mac_out2~DATAOUT32\ <= \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\sc|dSinpLUT\(9) & \sc|dSinpLUT\(8) & \sc|dSinpLUT\(7) & \~GND~combout\ & \sc|dSinpLUT\(5) & \sc|dSinpLUT\(4) & \sc|dSinpLUT\(3) & \sc|dSinpLUT\(2) & 
\sc|dSinpLUT\(1) & \sc|dSinpLUT\(0));

\sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\sc|dCospLUT\(9) & \sc|dCospLUT\(8) & \sc|dCospLUT\(7) & \sc|dCospLUT\(6) & \sc|dCospLUT\(5) & \sc|dCospLUT\(4) & \sc|dCospLUT\(3) & \sc|dCospLUT\(2) & 
\sc|dCospLUT\(1) & \sc|dCospLUT\(0));

\sc|c1|altsyncram_component|auto_generated|q_a\(0) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\sc|c1|altsyncram_component|auto_generated|q_a\(1) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\sc|c1|altsyncram_component|auto_generated|q_a\(2) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\sc|c1|altsyncram_component|auto_generated|q_a\(3) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\sc|c1|altsyncram_component|auto_generated|q_a\(4) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\sc|c1|altsyncram_component|auto_generated|q_a\(5) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\sc|c1|altsyncram_component|auto_generated|q_a\(6) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\sc|c1|altsyncram_component|auto_generated|q_a\(7) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\sc|c1|altsyncram_component|auto_generated|q_a\(8) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);

\sc|c1|altsyncram_component|auto_generated|q_b\(0) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\sc|c1|altsyncram_component|auto_generated|q_b\(1) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\sc|c1|altsyncram_component|auto_generated|q_b\(2) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\sc|c1|altsyncram_component|auto_generated|q_b\(3) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\sc|c1|altsyncram_component|auto_generated|q_b\(4) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\sc|c1|altsyncram_component|auto_generated|q_b\(5) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\sc|c1|altsyncram_component|auto_generated|q_b\(6) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\sc|c1|altsyncram_component|auto_generated|q_b\(7) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\sc|c1|altsyncram_component|auto_generated|q_b\(8) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);

\sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ <= (gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\ <= (gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\sc|dSinpLUT\(9) & \sc|dSinpLUT\(8) & \sc|dSinpLUT\(7) & \~GND~combout\ & \sc|dSinpLUT\(5) & \sc|dSinpLUT\(4) & \sc|dSinpLUT\(3) & \sc|dSinpLUT\(2) & 
\sc|dSinpLUT\(1) & \sc|dSinpLUT\(0));

\sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\sc|dCospLUT\(9) & \sc|dCospLUT\(8) & \sc|dCospLUT\(7) & \sc|dCospLUT\(6) & \sc|dCospLUT\(5) & \sc|dCospLUT\(4) & \sc|dCospLUT\(3) & \sc|dCospLUT\(2) & 
\sc|dCospLUT\(1) & \sc|dCospLUT\(0));

\sc|c1|altsyncram_component|auto_generated|q_a\(9) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);
\sc|c1|altsyncram_component|auto_generated|q_a\(10) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(1);
\sc|c1|altsyncram_component|auto_generated|q_a\(11) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(2);
\sc|c1|altsyncram_component|auto_generated|q_a\(12) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(3);
\sc|c1|altsyncram_component|auto_generated|q_a\(13) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(4);
\sc|c1|altsyncram_component|auto_generated|q_a\(14) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(5);
\sc|c1|altsyncram_component|auto_generated|q_a\(15) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(6);

\sc|c1|altsyncram_component|auto_generated|q_b\(9) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);
\sc|c1|altsyncram_component|auto_generated|q_b\(10) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(1);
\sc|c1|altsyncram_component|auto_generated|q_b\(11) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(2);
\sc|c1|altsyncram_component|auto_generated|q_b\(12) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(3);
\sc|c1|altsyncram_component|auto_generated|q_b\(13) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(4);
\sc|c1|altsyncram_component|auto_generated|q_b\(14) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(5);
\sc|c1|altsyncram_component|auto_generated|q_b\(15) <= \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(6);

\f1|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & \f1|ShiftLeft0~135_combout\ & \f1|ShiftLeft0~130_combout\ & \f1|ShiftLeft0~125_combout\ & \f1|ShiftLeft0~120_combout\ & \f1|ShiftLeft0~115_combout\ & \f1|ShiftLeft0~109_combout\ & 
\f1|ShiftLeft0~103_combout\ & \f1|ShiftLeft0~98_combout\ & \f1|ShiftLeft0~92_combout\ & \f1|ShiftLeft0~85_combout\ & \f1|ShiftLeft0~78_combout\ & \f1|ShiftLeft0~71_combout\ & \f1|ShiftLeft0~64_combout\ & \f1|ShiftLeft0~53_combout\ & 
\f1|ShiftLeft0~39_combout\ & \f1|ShiftLeft0~25_combout\ & gnd);

\f1|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\f1|LUT_a|altsyncram_component|auto_generated|q_a\(15) & \f1|LUT_a|altsyncram_component|auto_generated|q_a\(14) & \f1|LUT_a|altsyncram_component|auto_generated|q_a\(13) & 
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(12) & \f1|LUT_a|altsyncram_component|auto_generated|q_a\(11) & \f1|LUT_a|altsyncram_component|auto_generated|q_a\(10) & \f1|LUT_a|altsyncram_component|auto_generated|q_a\(9) & 
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(8) & \f1|LUT_a|altsyncram_component|auto_generated|q_a\(7) & \f1|LUT_a|altsyncram_component|auto_generated|q_a\(6) & \f1|LUT_a|altsyncram_component|auto_generated|q_a\(5) & 
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(4) & \f1|LUT_a|altsyncram_component|auto_generated|q_a\(3) & \f1|LUT_a|altsyncram_component|auto_generated|q_a\(2) & \f1|LUT_a|altsyncram_component|auto_generated|q_a\(1) & 
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(0) & gnd & gnd);

\f1|Mult0|auto_generated|mac_mult1~0\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\f1|Mult0|auto_generated|mac_mult1~1\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\f1|Mult0|auto_generated|mac_mult1~2\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\f1|Mult0|auto_generated|mac_mult1~dataout\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\f1|Mult0|auto_generated|mac_mult1~DATAOUT32\ <= \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\f1|AU0|LOD0|oc0|sum[5]~10_combout\ & \f1|AU0|LOD0|oc0|sum[4]~8_combout\ & \f1|AU0|LOD0|oc0|sum[3]~6_combout\ & \f1|AU0|LOD0|oc0|sum[2]~4_combout\ & 
\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & \f1|AU0|LOD0|oc0|sum[0]~0_combout\ & \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~52_combout\ & \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~25_combout\);

\f1|LUT_a|altsyncram_component|auto_generated|q_a\(0) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(1) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(2) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(3) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(4) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(5) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(6) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(7) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(8) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(9) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(10) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(11) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(12) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(13) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(14) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\f1|LUT_a|altsyncram_component|auto_generated|q_a\(15) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\f1|LUT_b|altsyncram_component|auto_generated|q_a\(0) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\f1|LUT_b|altsyncram_component|auto_generated|q_a\(1) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);
\f1|LUT_b|altsyncram_component|auto_generated|q_a\(2) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(18);
\f1|LUT_b|altsyncram_component|auto_generated|q_a\(3) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(19);
\f1|LUT_b|altsyncram_component|auto_generated|q_a\(4) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(20);
\f1|LUT_b|altsyncram_component|auto_generated|q_a\(5) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(21);
\f1|LUT_b|altsyncram_component|auto_generated|q_a\(6) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(22);
\f1|LUT_b|altsyncram_component|auto_generated|q_a\(7) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(23);
\f1|LUT_b|altsyncram_component|auto_generated|q_a\(8) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(24);
\f1|LUT_b|altsyncram_component|auto_generated|q_a\(9) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(25);
\f1|LUT_b|altsyncram_component|auto_generated|q_a\(10) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(26);
\f1|LUT_b|altsyncram_component|auto_generated|q_a\(11) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(27);
\f1|LUT_b|altsyncram_component|auto_generated|q_a\(12) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(28);
\f1|LUT_b|altsyncram_component|auto_generated|q_a\(13) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(29);
\f1|LUT_b|altsyncram_component|auto_generated|q_a\(14) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(30);
\f1|LUT_b|altsyncram_component|auto_generated|q_a\(15) <= \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(31);

\gclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gclk~input_o\);
\LF33|ALT_INV_shift_register\(31) <= NOT \LF33|shift_register\(31);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X74_Y0_N23
\U1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \U1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\U1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \U1[1]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\U1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \U1[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\U1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \U1[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\U1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1[4]~reg0_q\,
	devoe => ww_devoe,
	o => \U1[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\U1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1[5]~reg0_q\,
	devoe => ww_devoe,
	o => \U1[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\U1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1[6]~reg0_q\,
	devoe => ww_devoe,
	o => \U1[6]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\U1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1[7]~reg0_q\,
	devoe => ww_devoe,
	o => \U1[7]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\U1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1[8]~reg0_q\,
	devoe => ww_devoe,
	o => \U1[8]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\U1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1[9]~reg0_q\,
	devoe => ww_devoe,
	o => \U1[9]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\U1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1[10]~reg0_q\,
	devoe => ww_devoe,
	o => \U1[10]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\U1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1[11]~reg0_q\,
	devoe => ww_devoe,
	o => \U1[11]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\U1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1[12]~reg0_q\,
	devoe => ww_devoe,
	o => \U1[12]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\U1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1[13]~reg0_q\,
	devoe => ww_devoe,
	o => \U1[13]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\U1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1[14]~reg0_q\,
	devoe => ww_devoe,
	o => \U1[14]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\U1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1[15]~reg0_q\,
	devoe => ww_devoe,
	o => \U1[15]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\U2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \U2[0]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\U2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2[1]~reg0_q\,
	devoe => ww_devoe,
	o => \U2[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\U2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2[2]~reg0_q\,
	devoe => ww_devoe,
	o => \U2[2]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\U2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2[3]~reg0_q\,
	devoe => ww_devoe,
	o => \U2[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\U2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2[4]~reg0_q\,
	devoe => ww_devoe,
	o => \U2[4]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\U2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2[5]~reg0_q\,
	devoe => ww_devoe,
	o => \U2[5]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\U2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2[6]~reg0_q\,
	devoe => ww_devoe,
	o => \U2[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\U2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2[7]~reg0_q\,
	devoe => ww_devoe,
	o => \U2[7]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\U2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2[8]~reg0_q\,
	devoe => ww_devoe,
	o => \U2[8]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\U2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2[9]~reg0_q\,
	devoe => ww_devoe,
	o => \U2[9]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\U2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2[10]~reg0_q\,
	devoe => ww_devoe,
	o => \U2[10]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\U2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2[11]~reg0_q\,
	devoe => ww_devoe,
	o => \U2[11]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\U2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2[12]~reg0_q\,
	devoe => ww_devoe,
	o => \U2[12]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\U2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2[13]~reg0_q\,
	devoe => ww_devoe,
	o => \U2[13]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\U2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2[14]~reg0_q\,
	devoe => ww_devoe,
	o => \U2[14]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\U2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2[15]~reg0_q\,
	devoe => ww_devoe,
	o => \U2[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\gclk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_gclk,
	o => \gclk~input_o\);

-- Location: CLKCTRL_G2
\gclk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gclk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gclk~inputclkctrl_outclk\);

-- Location: LCCOMB_X57_Y38_N28
\LF33|shift_register~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LF33|shift_register~1_combout\ = \LF33|shift_register\(18) $ (!\LF33|shift_register\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LF33|shift_register\(18),
	datad => \LF33|shift_register\(31),
	combout => \LF33|shift_register~1_combout\);

-- Location: FF_X58_Y38_N27
\LF33|shift_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(3));

-- Location: FF_X58_Y38_N11
\LF33|shift_register[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(8));

-- Location: FF_X59_Y37_N5
\LF33|shift_register[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(13));

-- Location: FF_X59_Y37_N25
\LF33|shift_register[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(18));

-- Location: FF_X58_Y37_N5
\LF33|shift_register[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(23));

-- Location: FF_X58_Y37_N13
\LF33|shift_register[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(28));

-- Location: LCCOMB_X63_Y37_N24
\LF33|shift_register~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LF33|shift_register~4_combout\ = \LF33|shift_register\(15) $ (!\LF33|shift_register\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(15),
	datac => \LF33|shift_register\(28),
	combout => \LF33|shift_register~4_combout\);

-- Location: FF_X63_Y37_N25
\LF33|shift_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \LF33|shift_register~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(0));

-- Location: LCCOMB_X65_Y37_N0
\f1|U_tilde[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[0]~32_combout\ = \LF33|shift_register\(0) $ (GND)
-- \f1|U_tilde[0]~33\ = CARRY(!\LF33|shift_register\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(0),
	datad => VCC,
	combout => \f1|U_tilde[0]~32_combout\,
	cout => \f1|U_tilde[0]~33\);

-- Location: LCCOMB_X60_Y37_N20
\f1|U_tilde[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[0]~feeder_combout\ = \f1|U_tilde[0]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|U_tilde[0]~32_combout\,
	combout => \f1|U_tilde[0]~feeder_combout\);

-- Location: FF_X60_Y37_N21
\f1|U_tilde[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[0]~feeder_combout\,
	asdata => \LF33|shift_register\(0),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(0));

-- Location: FF_X58_Y38_N31
\LF33|shift_register[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \f1|U_tilde\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(10));

-- Location: FF_X59_Y37_N31
\LF33|shift_register[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(15));

-- Location: FF_X59_Y37_N29
\LF33|shift_register[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(20));

-- Location: FF_X58_Y37_N23
\LF33|shift_register[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(25));

-- Location: FF_X58_Y37_N29
\LF33|shift_register[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(30));

-- Location: LCCOMB_X57_Y38_N26
\LF33|shift_register~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LF33|shift_register~0_combout\ = \LF33|shift_register\(30) $ (!\LF33|shift_register\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(30),
	datad => \LF33|shift_register\(17),
	combout => \LF33|shift_register~0_combout\);

-- Location: FF_X58_Y38_N23
\LF33|shift_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(2));

-- Location: FF_X58_Y38_N17
\LF33|shift_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(7));

-- Location: FF_X59_Y37_N9
\LF33|shift_register[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(12));

-- Location: FF_X59_Y37_N21
\LF33|shift_register[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(17));

-- Location: FF_X58_Y37_N3
\LF33|shift_register[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(22));

-- Location: FF_X56_Y37_N31
\LF33|shift_register[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(27));

-- Location: FF_X58_Y37_N19
\LF33|shift_register[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(32));

-- Location: LCCOMB_X57_Y38_N10
\LF33|shift_register~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LF33|shift_register~2_combout\ = \LF33|shift_register\(32) $ (!\LF33|shift_register\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LF33|shift_register\(32),
	datad => \LF33|shift_register\(19),
	combout => \LF33|shift_register~2_combout\);

-- Location: FF_X58_Y38_N9
\LF33|shift_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(4));

-- Location: FF_X58_Y38_N25
\LF33|shift_register[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(9));

-- Location: FF_X59_Y37_N27
\LF33|shift_register[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(14));

-- Location: FF_X59_Y37_N17
\LF33|shift_register[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(19));

-- Location: FF_X58_Y37_N9
\LF33|shift_register[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(24));

-- Location: FF_X58_Y37_N17
\LF33|shift_register[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(29));

-- Location: LCCOMB_X57_Y38_N0
\LF33|shift_register~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LF33|shift_register~3_combout\ = \LF33|shift_register\(29) $ (!\LF33|shift_register\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(29),
	datac => \LF33|shift_register\(16),
	combout => \LF33|shift_register~3_combout\);

-- Location: FF_X58_Y38_N15
\LF33|shift_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(1));

-- Location: FF_X58_Y38_N7
\LF33|shift_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(6));

-- Location: FF_X59_Y37_N23
\LF33|shift_register[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(11));

-- Location: FF_X59_Y37_N15
\LF33|shift_register[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(16));

-- Location: FF_X59_Y37_N7
\LF33|shift_register[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(21));

-- Location: FF_X56_Y37_N29
\LF33|shift_register[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(26));

-- Location: FF_X58_Y37_N27
\LF33|shift_register[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF33|shift_register\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF33|shift_register\(31));

-- Location: LCCOMB_X58_Y37_N14
\f1|AU0|LOD0|gen_LOD:22:detector|o_or~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\ = (\LF33|shift_register\(31)) # ((\LF33|shift_register\(23)) # (\LF33|shift_register\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(31),
	datac => \LF33|shift_register\(23),
	datad => \LF33|shift_register\(28),
	combout => \f1|AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\);

-- Location: LCCOMB_X58_Y37_N20
\f1|AU0|LOD0|gen_LOD:22:detector|o_or~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:22:detector|o_or~0_combout\ = (\LF33|shift_register\(25)) # ((\LF33|shift_register\(24)) # ((\LF33|shift_register\(27)) # (\LF33|shift_register\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(25),
	datab => \LF33|shift_register\(24),
	datac => \LF33|shift_register\(27),
	datad => \LF33|shift_register\(26),
	combout => \f1|AU0|LOD0|gen_LOD:22:detector|o_or~0_combout\);

-- Location: LCCOMB_X58_Y37_N0
\f1|AU0|LOD0|gen_LOD:22:detector|o_or\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\ = (\LF33|shift_register\(29)) # ((\LF33|shift_register\(30)) # ((\f1|AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\) # (\f1|AU0|LOD0|gen_LOD:22:detector|o_or~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(29),
	datab => \LF33|shift_register\(30),
	datac => \f1|AU0|LOD0|gen_LOD:22:detector|o_or~1_combout\,
	datad => \f1|AU0|LOD0|gen_LOD:22:detector|o_or~0_combout\,
	combout => \f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\);

-- Location: LCCOMB_X59_Y37_N6
\f1|AU0|LOD0|gen_LOD:20:detector|o_or~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\ = (\LF33|shift_register\(21)) # (\LF33|shift_register\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LF33|shift_register\(21),
	datad => \LF33|shift_register\(22),
	combout => \f1|AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\);

-- Location: LCCOMB_X61_Y37_N0
\f1|AU0|LOD0|gen_LOD:18:detector|o_or\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:18:detector|o_or~combout\ = (\f1|AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\) # ((\LF33|shift_register\(19)) # ((\LF33|shift_register\(20)) # (\f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\,
	datab => \LF33|shift_register\(19),
	datac => \LF33|shift_register\(20),
	datad => \f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\,
	combout => \f1|AU0|LOD0|gen_LOD:18:detector|o_or~combout\);

-- Location: LCCOMB_X60_Y37_N14
\f1|AU0|LOD0|oc0|Add19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add19~0_combout\ = (!\f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\ & ((\LF33|shift_register\(22)) # (\LF33|shift_register\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\,
	datac => \LF33|shift_register\(22),
	datad => \LF33|shift_register\(21),
	combout => \f1|AU0|LOD0|oc0|Add19~0_combout\);

-- Location: LCCOMB_X59_Y37_N14
\f1|AU0|LOD0|gen_LOD:16:detector|o_or~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\ = (\LF33|shift_register\(18)) # (\LF33|shift_register\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(18),
	datad => \LF33|shift_register\(17),
	combout => \f1|AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\);

-- Location: LCCOMB_X59_Y37_N28
\f1|AU0|LOD0|gen_LOD:18:detector|o_or~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:18:detector|o_or~0_combout\ = (\LF33|shift_register\(19)) # (\LF33|shift_register\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(19),
	datac => \LF33|shift_register\(20),
	combout => \f1|AU0|LOD0|gen_LOD:18:detector|o_or~0_combout\);

-- Location: LCCOMB_X60_Y37_N4
\f1|AU0|LOD0|oc0|Add15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add15~0_combout\ = (\f1|AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\ & (!\f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\ & (!\f1|AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\ & !\f1|AU0|LOD0|gen_LOD:18:detector|o_or~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\,
	datab => \f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\,
	datac => \f1|AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\,
	datad => \f1|AU0|LOD0|gen_LOD:18:detector|o_or~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add15~0_combout\);

-- Location: LCCOMB_X61_Y37_N22
\f1|AU0|LOD0|oc0|Add15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add15~1_combout\ = (!\f1|AU0|LOD0|gen_LOD:18:detector|o_or~combout\ & ((\LF33|shift_register\(18)) # ((!\LF33|shift_register\(17) & \LF33|shift_register\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(18),
	datab => \LF33|shift_register\(17),
	datac => \LF33|shift_register\(16),
	datad => \f1|AU0|LOD0|gen_LOD:18:detector|o_or~combout\,
	combout => \f1|AU0|LOD0|oc0|Add15~1_combout\);

-- Location: LCCOMB_X61_Y37_N2
\f1|AU0|LOD0|oc0|Add19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add19~1_combout\ = (!\f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\ & ((\LF33|shift_register\(22)) # ((!\LF33|shift_register\(21) & \LF33|shift_register\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(21),
	datab => \LF33|shift_register\(22),
	datac => \LF33|shift_register\(20),
	datad => \f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\,
	combout => \f1|AU0|LOD0|oc0|Add19~1_combout\);

-- Location: LCCOMB_X61_Y37_N24
\f1|AU0|LOD0|oc0|Add17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add17~0_combout\ = (\f1|AU0|LOD0|oc0|Add15~1_combout\ & (\f1|AU0|LOD0|oc0|Add19~1_combout\ $ (VCC))) # (!\f1|AU0|LOD0|oc0|Add15~1_combout\ & (\f1|AU0|LOD0|oc0|Add19~1_combout\ & VCC))
-- \f1|AU0|LOD0|oc0|Add17~1\ = CARRY((\f1|AU0|LOD0|oc0|Add15~1_combout\ & \f1|AU0|LOD0|oc0|Add19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add15~1_combout\,
	datab => \f1|AU0|LOD0|oc0|Add19~1_combout\,
	datad => VCC,
	combout => \f1|AU0|LOD0|oc0|Add17~0_combout\,
	cout => \f1|AU0|LOD0|oc0|Add17~1\);

-- Location: LCCOMB_X61_Y37_N26
\f1|AU0|LOD0|oc0|Add17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add17~2_combout\ = (\f1|AU0|LOD0|oc0|Add19~0_combout\ & ((\f1|AU0|LOD0|oc0|Add15~0_combout\ & (\f1|AU0|LOD0|oc0|Add17~1\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add15~0_combout\ & (!\f1|AU0|LOD0|oc0|Add17~1\)))) # (!\f1|AU0|LOD0|oc0|Add19~0_combout\ 
-- & ((\f1|AU0|LOD0|oc0|Add15~0_combout\ & (!\f1|AU0|LOD0|oc0|Add17~1\)) # (!\f1|AU0|LOD0|oc0|Add15~0_combout\ & ((\f1|AU0|LOD0|oc0|Add17~1\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add17~3\ = CARRY((\f1|AU0|LOD0|oc0|Add19~0_combout\ & (!\f1|AU0|LOD0|oc0|Add15~0_combout\ & !\f1|AU0|LOD0|oc0|Add17~1\)) # (!\f1|AU0|LOD0|oc0|Add19~0_combout\ & ((!\f1|AU0|LOD0|oc0|Add17~1\) # (!\f1|AU0|LOD0|oc0|Add15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add19~0_combout\,
	datab => \f1|AU0|LOD0|oc0|Add15~0_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add17~1\,
	combout => \f1|AU0|LOD0|oc0|Add17~2_combout\,
	cout => \f1|AU0|LOD0|oc0|Add17~3\);

-- Location: LCCOMB_X61_Y37_N28
\f1|AU0|LOD0|oc0|Add17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add17~4_combout\ = ((\f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\ $ (\f1|AU0|LOD0|gen_LOD:18:detector|o_or~combout\ $ (!\f1|AU0|LOD0|oc0|Add17~3\)))) # (GND)
-- \f1|AU0|LOD0|oc0|Add17~5\ = CARRY((\f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\ & ((\f1|AU0|LOD0|gen_LOD:18:detector|o_or~combout\) # (!\f1|AU0|LOD0|oc0|Add17~3\))) # (!\f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\ & 
-- (\f1|AU0|LOD0|gen_LOD:18:detector|o_or~combout\ & !\f1|AU0|LOD0|oc0|Add17~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\,
	datab => \f1|AU0|LOD0|gen_LOD:18:detector|o_or~combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add17~3\,
	combout => \f1|AU0|LOD0|oc0|Add17~4_combout\,
	cout => \f1|AU0|LOD0|oc0|Add17~5\);

-- Location: LCCOMB_X61_Y37_N30
\f1|AU0|LOD0|oc0|Add17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add17~6_combout\ = \f1|AU0|LOD0|oc0|Add17~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \f1|AU0|LOD0|oc0|Add17~5\,
	combout => \f1|AU0|LOD0|oc0|Add17~6_combout\);

-- Location: LCCOMB_X58_Y37_N16
\f1|AU0|LOD0|gen_LOD:28:detector|o_or\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:28:detector|o_or~combout\ = (\LF33|shift_register\(31)) # ((\LF33|shift_register\(29)) # (\LF33|shift_register\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(31),
	datac => \LF33|shift_register\(29),
	datad => \LF33|shift_register\(30),
	combout => \f1|AU0|LOD0|gen_LOD:28:detector|o_or~combout\);

-- Location: LCCOMB_X58_Y37_N18
\f1|AU0|LOD0|gen_LOD:26:detector|o_or\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:26:detector|o_or~combout\ = (\LF33|shift_register\(28)) # ((\LF33|shift_register\(27)) # (\f1|AU0|LOD0|gen_LOD:28:detector|o_or~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(28),
	datac => \LF33|shift_register\(27),
	datad => \f1|AU0|LOD0|gen_LOD:28:detector|o_or~combout\,
	combout => \f1|AU0|LOD0|gen_LOD:26:detector|o_or~combout\);

-- Location: LCCOMB_X56_Y37_N10
\f1|AU0|LOD0|gen_LOD:26:detector|o_or~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:26:detector|o_or~0_combout\ = (\LF33|shift_register\(31)) # ((\LF33|shift_register\(30)) # ((\LF33|shift_register\(27)) # (\LF33|shift_register\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(31),
	datab => \LF33|shift_register\(30),
	datac => \LF33|shift_register\(27),
	datad => \LF33|shift_register\(29),
	combout => \f1|AU0|LOD0|gen_LOD:26:detector|o_or~0_combout\);

-- Location: LCCOMB_X56_Y37_N20
\f1|AU0|LOD0|oc0|Add23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add23~0_combout\ = (!\LF33|shift_register\(28) & (!\f1|AU0|LOD0|gen_LOD:26:detector|o_or~0_combout\ & ((\LF33|shift_register\(26)) # (\LF33|shift_register\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(28),
	datab => \LF33|shift_register\(26),
	datac => \LF33|shift_register\(25),
	datad => \f1|AU0|LOD0|gen_LOD:26:detector|o_or~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add23~0_combout\);

-- Location: LCCOMB_X58_Y37_N30
\f1|AU0|LOD0|oc0|Add23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add23~1_combout\ = (!\f1|AU0|LOD0|gen_LOD:26:detector|o_or~combout\ & ((\LF33|shift_register\(26)) # ((\LF33|shift_register\(24) & !\LF33|shift_register\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(24),
	datab => \f1|AU0|LOD0|gen_LOD:26:detector|o_or~combout\,
	datac => \LF33|shift_register\(25),
	datad => \LF33|shift_register\(26),
	combout => \f1|AU0|LOD0|oc0|Add23~1_combout\);

-- Location: LCCOMB_X58_Y37_N26
\f1|AU0|LOD0|oc0|Add26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add26~0_combout\ = (\LF33|shift_register\(28) & (!\LF33|shift_register\(29) & (!\LF33|shift_register\(31) & !\LF33|shift_register\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(28),
	datab => \LF33|shift_register\(29),
	datac => \LF33|shift_register\(31),
	datad => \LF33|shift_register\(30),
	combout => \f1|AU0|LOD0|oc0|Add26~0_combout\);

-- Location: LCCOMB_X61_Y37_N14
\f1|AU0|LOD0|oc0|Add25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add25~0_combout\ = (\f1|AU0|LOD0|oc0|Add23~1_combout\ & (\f1|AU0|LOD0|oc0|Add26~0_combout\ $ (VCC))) # (!\f1|AU0|LOD0|oc0|Add23~1_combout\ & (\f1|AU0|LOD0|oc0|Add26~0_combout\ & VCC))
-- \f1|AU0|LOD0|oc0|Add25~1\ = CARRY((\f1|AU0|LOD0|oc0|Add23~1_combout\ & \f1|AU0|LOD0|oc0|Add26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add23~1_combout\,
	datab => \f1|AU0|LOD0|oc0|Add26~0_combout\,
	datad => VCC,
	combout => \f1|AU0|LOD0|oc0|Add25~0_combout\,
	cout => \f1|AU0|LOD0|oc0|Add25~1\);

-- Location: LCCOMB_X61_Y37_N16
\f1|AU0|LOD0|oc0|Add25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add25~2_combout\ = (\f1|AU0|LOD0|gen_LOD:28:detector|o_or~combout\ & ((\f1|AU0|LOD0|oc0|Add23~0_combout\ & (\f1|AU0|LOD0|oc0|Add25~1\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add23~0_combout\ & (!\f1|AU0|LOD0|oc0|Add25~1\)))) # 
-- (!\f1|AU0|LOD0|gen_LOD:28:detector|o_or~combout\ & ((\f1|AU0|LOD0|oc0|Add23~0_combout\ & (!\f1|AU0|LOD0|oc0|Add25~1\)) # (!\f1|AU0|LOD0|oc0|Add23~0_combout\ & ((\f1|AU0|LOD0|oc0|Add25~1\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add25~3\ = CARRY((\f1|AU0|LOD0|gen_LOD:28:detector|o_or~combout\ & (!\f1|AU0|LOD0|oc0|Add23~0_combout\ & !\f1|AU0|LOD0|oc0|Add25~1\)) # (!\f1|AU0|LOD0|gen_LOD:28:detector|o_or~combout\ & ((!\f1|AU0|LOD0|oc0|Add25~1\) # 
-- (!\f1|AU0|LOD0|oc0|Add23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:28:detector|o_or~combout\,
	datab => \f1|AU0|LOD0|oc0|Add23~0_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add25~1\,
	combout => \f1|AU0|LOD0|oc0|Add25~2_combout\,
	cout => \f1|AU0|LOD0|oc0|Add25~3\);

-- Location: LCCOMB_X61_Y37_N18
\f1|AU0|LOD0|oc0|Add25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add25~4_combout\ = (\f1|AU0|LOD0|gen_LOD:26:detector|o_or~combout\ & (\f1|AU0|LOD0|oc0|Add25~3\ $ (GND))) # (!\f1|AU0|LOD0|gen_LOD:26:detector|o_or~combout\ & (!\f1|AU0|LOD0|oc0|Add25~3\ & VCC))
-- \f1|AU0|LOD0|oc0|Add25~5\ = CARRY((\f1|AU0|LOD0|gen_LOD:26:detector|o_or~combout\ & !\f1|AU0|LOD0|oc0|Add25~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:26:detector|o_or~combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add25~3\,
	combout => \f1|AU0|LOD0|oc0|Add25~4_combout\,
	cout => \f1|AU0|LOD0|oc0|Add25~5\);

-- Location: LCCOMB_X61_Y37_N20
\f1|AU0|LOD0|oc0|Add25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add25~6_combout\ = \f1|AU0|LOD0|oc0|Add25~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \f1|AU0|LOD0|oc0|Add25~5\,
	combout => \f1|AU0|LOD0|oc0|Add25~6_combout\);

-- Location: LCCOMB_X61_Y37_N4
\f1|AU0|LOD0|oc0|Add21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add21~0_combout\ = (\f1|AU0|LOD0|oc0|Add17~0_combout\ & (\f1|AU0|LOD0|oc0|Add25~0_combout\ $ (VCC))) # (!\f1|AU0|LOD0|oc0|Add17~0_combout\ & (\f1|AU0|LOD0|oc0|Add25~0_combout\ & VCC))
-- \f1|AU0|LOD0|oc0|Add21~1\ = CARRY((\f1|AU0|LOD0|oc0|Add17~0_combout\ & \f1|AU0|LOD0|oc0|Add25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add17~0_combout\,
	datab => \f1|AU0|LOD0|oc0|Add25~0_combout\,
	datad => VCC,
	combout => \f1|AU0|LOD0|oc0|Add21~0_combout\,
	cout => \f1|AU0|LOD0|oc0|Add21~1\);

-- Location: LCCOMB_X61_Y37_N6
\f1|AU0|LOD0|oc0|Add21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add21~2_combout\ = (\f1|AU0|LOD0|oc0|Add17~2_combout\ & ((\f1|AU0|LOD0|oc0|Add25~2_combout\ & (\f1|AU0|LOD0|oc0|Add21~1\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add25~2_combout\ & (!\f1|AU0|LOD0|oc0|Add21~1\)))) # (!\f1|AU0|LOD0|oc0|Add17~2_combout\ 
-- & ((\f1|AU0|LOD0|oc0|Add25~2_combout\ & (!\f1|AU0|LOD0|oc0|Add21~1\)) # (!\f1|AU0|LOD0|oc0|Add25~2_combout\ & ((\f1|AU0|LOD0|oc0|Add21~1\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add21~3\ = CARRY((\f1|AU0|LOD0|oc0|Add17~2_combout\ & (!\f1|AU0|LOD0|oc0|Add25~2_combout\ & !\f1|AU0|LOD0|oc0|Add21~1\)) # (!\f1|AU0|LOD0|oc0|Add17~2_combout\ & ((!\f1|AU0|LOD0|oc0|Add21~1\) # (!\f1|AU0|LOD0|oc0|Add25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add17~2_combout\,
	datab => \f1|AU0|LOD0|oc0|Add25~2_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add21~1\,
	combout => \f1|AU0|LOD0|oc0|Add21~2_combout\,
	cout => \f1|AU0|LOD0|oc0|Add21~3\);

-- Location: LCCOMB_X61_Y37_N8
\f1|AU0|LOD0|oc0|Add21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add21~4_combout\ = ((\f1|AU0|LOD0|oc0|Add25~4_combout\ $ (\f1|AU0|LOD0|oc0|Add17~4_combout\ $ (!\f1|AU0|LOD0|oc0|Add21~3\)))) # (GND)
-- \f1|AU0|LOD0|oc0|Add21~5\ = CARRY((\f1|AU0|LOD0|oc0|Add25~4_combout\ & ((\f1|AU0|LOD0|oc0|Add17~4_combout\) # (!\f1|AU0|LOD0|oc0|Add21~3\))) # (!\f1|AU0|LOD0|oc0|Add25~4_combout\ & (\f1|AU0|LOD0|oc0|Add17~4_combout\ & !\f1|AU0|LOD0|oc0|Add21~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add25~4_combout\,
	datab => \f1|AU0|LOD0|oc0|Add17~4_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add21~3\,
	combout => \f1|AU0|LOD0|oc0|Add21~4_combout\,
	cout => \f1|AU0|LOD0|oc0|Add21~5\);

-- Location: LCCOMB_X61_Y37_N10
\f1|AU0|LOD0|oc0|Add21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add21~6_combout\ = (\f1|AU0|LOD0|oc0|Add17~6_combout\ & ((\f1|AU0|LOD0|oc0|Add25~6_combout\ & (\f1|AU0|LOD0|oc0|Add21~5\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add25~6_combout\ & (!\f1|AU0|LOD0|oc0|Add21~5\)))) # (!\f1|AU0|LOD0|oc0|Add17~6_combout\ 
-- & ((\f1|AU0|LOD0|oc0|Add25~6_combout\ & (!\f1|AU0|LOD0|oc0|Add21~5\)) # (!\f1|AU0|LOD0|oc0|Add25~6_combout\ & ((\f1|AU0|LOD0|oc0|Add21~5\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add21~7\ = CARRY((\f1|AU0|LOD0|oc0|Add17~6_combout\ & (!\f1|AU0|LOD0|oc0|Add25~6_combout\ & !\f1|AU0|LOD0|oc0|Add21~5\)) # (!\f1|AU0|LOD0|oc0|Add17~6_combout\ & ((!\f1|AU0|LOD0|oc0|Add21~5\) # (!\f1|AU0|LOD0|oc0|Add25~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add17~6_combout\,
	datab => \f1|AU0|LOD0|oc0|Add25~6_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add21~5\,
	combout => \f1|AU0|LOD0|oc0|Add21~6_combout\,
	cout => \f1|AU0|LOD0|oc0|Add21~7\);

-- Location: LCCOMB_X59_Y37_N30
\f1|AU0|LOD0|gen_LOD:10:detector|o_or~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:10:detector|o_or~9_combout\ = (\LF33|shift_register\(21)) # ((\LF33|shift_register\(22)) # ((\LF33|shift_register\(15)) # (\LF33|shift_register\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(21),
	datab => \LF33|shift_register\(22),
	datac => \LF33|shift_register\(15),
	datad => \LF33|shift_register\(16),
	combout => \f1|AU0|LOD0|gen_LOD:10:detector|o_or~9_combout\);

-- Location: LCCOMB_X59_Y37_N2
\f1|AU0|LOD0|gen_LOD:12:detector|o_or~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\ = (\LF33|shift_register\(13)) # (\LF33|shift_register\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LF33|shift_register\(13),
	datad => \LF33|shift_register\(14),
	combout => \f1|AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\);

-- Location: LCCOMB_X59_Y37_N8
\f1|AU0|LOD0|gen_LOD:10:detector|o_or~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:10:detector|o_or~8_combout\ = (\LF33|shift_register\(11)) # ((\f1|AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\) # ((\LF33|shift_register\(12)) # (\f1|AU0|LOD0|gen_LOD:18:detector|o_or~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(11),
	datab => \f1|AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\,
	datac => \LF33|shift_register\(12),
	datad => \f1|AU0|LOD0|gen_LOD:18:detector|o_or~0_combout\,
	combout => \f1|AU0|LOD0|gen_LOD:10:detector|o_or~8_combout\);

-- Location: LCCOMB_X58_Y38_N28
\f1|AU0|LOD0|gen_LOD:10:detector|o_or\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:10:detector|o_or~combout\ = (\f1|AU0|LOD0|gen_LOD:10:detector|o_or~9_combout\) # ((\f1|AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\) # ((\f1|AU0|LOD0|gen_LOD:10:detector|o_or~8_combout\) # 
-- (\f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:10:detector|o_or~9_combout\,
	datab => \f1|AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\,
	datac => \f1|AU0|LOD0|gen_LOD:10:detector|o_or~8_combout\,
	datad => \f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\,
	combout => \f1|AU0|LOD0|gen_LOD:10:detector|o_or~combout\);

-- Location: LCCOMB_X59_Y37_N0
\f1|AU0|LOD0|gen_LOD:16:detector|o_or\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:16:detector|o_or~combout\ = (\f1|AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\) # ((\f1|AU0|LOD0|gen_LOD:18:detector|o_or~0_combout\) # ((\f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\) # 
-- (\f1|AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\,
	datab => \f1|AU0|LOD0|gen_LOD:18:detector|o_or~0_combout\,
	datac => \f1|AU0|LOD0|gen_LOD:22:detector|o_or~combout\,
	datad => \f1|AU0|LOD0|gen_LOD:20:detector|o_or~0_combout\,
	combout => \f1|AU0|LOD0|gen_LOD:16:detector|o_or~combout\);

-- Location: LCCOMB_X58_Y38_N2
\f1|AU0|LOD0|gen_LOD:12:detector|o_or\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:12:detector|o_or~combout\ = (\LF33|shift_register\(15)) # ((\f1|AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\) # ((\LF33|shift_register\(16)) # (\f1|AU0|LOD0|gen_LOD:16:detector|o_or~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(15),
	datab => \f1|AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\,
	datac => \LF33|shift_register\(16),
	datad => \f1|AU0|LOD0|gen_LOD:16:detector|o_or~combout\,
	combout => \f1|AU0|LOD0|gen_LOD:12:detector|o_or~combout\);

-- Location: LCCOMB_X58_Y38_N26
\f1|AU0|LOD0|oc0|Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add7~0_combout\ = (!\f1|AU0|LOD0|gen_LOD:10:detector|o_or~combout\ & ((\LF33|shift_register\(10)) # (\LF33|shift_register\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(10),
	datab => \LF33|shift_register\(9),
	datad => \f1|AU0|LOD0|gen_LOD:10:detector|o_or~combout\,
	combout => \f1|AU0|LOD0|oc0|Add7~0_combout\);

-- Location: LCCOMB_X58_Y38_N10
\f1|AU0|LOD0|oc0|Add7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add7~1_combout\ = (!\f1|AU0|LOD0|gen_LOD:10:detector|o_or~combout\ & ((\LF33|shift_register\(10)) # ((!\LF33|shift_register\(9) & \LF33|shift_register\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(10),
	datab => \LF33|shift_register\(9),
	datac => \LF33|shift_register\(8),
	datad => \f1|AU0|LOD0|gen_LOD:10:detector|o_or~combout\,
	combout => \f1|AU0|LOD0|oc0|Add7~1_combout\);

-- Location: LCCOMB_X59_Y37_N24
\f1|AU0|LOD0|gen_LOD:14:detector|o_or~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:14:detector|o_or~0_combout\ = (\LF33|shift_register\(15)) # (\LF33|shift_register\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(15),
	datad => \LF33|shift_register\(16),
	combout => \f1|AU0|LOD0|gen_LOD:14:detector|o_or~0_combout\);

-- Location: LCCOMB_X59_Y37_N18
\f1|AU0|LOD0|oc0|Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add10~0_combout\ = (!\f1|AU0|LOD0|gen_LOD:14:detector|o_or~0_combout\ & (!\f1|AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\ & (\LF33|shift_register\(12) & !\f1|AU0|LOD0|gen_LOD:16:detector|o_or~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:14:detector|o_or~0_combout\,
	datab => \f1|AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\,
	datac => \LF33|shift_register\(12),
	datad => \f1|AU0|LOD0|gen_LOD:16:detector|o_or~combout\,
	combout => \f1|AU0|LOD0|oc0|Add10~0_combout\);

-- Location: LCCOMB_X59_Y38_N12
\f1|AU0|LOD0|oc0|Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add9~0_combout\ = (\f1|AU0|LOD0|oc0|Add7~1_combout\ & (\f1|AU0|LOD0|oc0|Add10~0_combout\ $ (VCC))) # (!\f1|AU0|LOD0|oc0|Add7~1_combout\ & (\f1|AU0|LOD0|oc0|Add10~0_combout\ & VCC))
-- \f1|AU0|LOD0|oc0|Add9~1\ = CARRY((\f1|AU0|LOD0|oc0|Add7~1_combout\ & \f1|AU0|LOD0|oc0|Add10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add7~1_combout\,
	datab => \f1|AU0|LOD0|oc0|Add10~0_combout\,
	datad => VCC,
	combout => \f1|AU0|LOD0|oc0|Add9~0_combout\,
	cout => \f1|AU0|LOD0|oc0|Add9~1\);

-- Location: LCCOMB_X59_Y38_N14
\f1|AU0|LOD0|oc0|Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add9~2_combout\ = (\f1|AU0|LOD0|gen_LOD:12:detector|o_or~combout\ & ((\f1|AU0|LOD0|oc0|Add7~0_combout\ & (\f1|AU0|LOD0|oc0|Add9~1\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add7~0_combout\ & (!\f1|AU0|LOD0|oc0|Add9~1\)))) # 
-- (!\f1|AU0|LOD0|gen_LOD:12:detector|o_or~combout\ & ((\f1|AU0|LOD0|oc0|Add7~0_combout\ & (!\f1|AU0|LOD0|oc0|Add9~1\)) # (!\f1|AU0|LOD0|oc0|Add7~0_combout\ & ((\f1|AU0|LOD0|oc0|Add9~1\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add9~3\ = CARRY((\f1|AU0|LOD0|gen_LOD:12:detector|o_or~combout\ & (!\f1|AU0|LOD0|oc0|Add7~0_combout\ & !\f1|AU0|LOD0|oc0|Add9~1\)) # (!\f1|AU0|LOD0|gen_LOD:12:detector|o_or~combout\ & ((!\f1|AU0|LOD0|oc0|Add9~1\) # 
-- (!\f1|AU0|LOD0|oc0|Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:12:detector|o_or~combout\,
	datab => \f1|AU0|LOD0|oc0|Add7~0_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add9~1\,
	combout => \f1|AU0|LOD0|oc0|Add9~2_combout\,
	cout => \f1|AU0|LOD0|oc0|Add9~3\);

-- Location: LCCOMB_X59_Y38_N16
\f1|AU0|LOD0|oc0|Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add9~4_combout\ = (\f1|AU0|LOD0|gen_LOD:10:detector|o_or~combout\ & (\f1|AU0|LOD0|oc0|Add9~3\ $ (GND))) # (!\f1|AU0|LOD0|gen_LOD:10:detector|o_or~combout\ & (!\f1|AU0|LOD0|oc0|Add9~3\ & VCC))
-- \f1|AU0|LOD0|oc0|Add9~5\ = CARRY((\f1|AU0|LOD0|gen_LOD:10:detector|o_or~combout\ & !\f1|AU0|LOD0|oc0|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|AU0|LOD0|gen_LOD:10:detector|o_or~combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add9~3\,
	combout => \f1|AU0|LOD0|oc0|Add9~4_combout\,
	cout => \f1|AU0|LOD0|oc0|Add9~5\);

-- Location: LCCOMB_X59_Y38_N18
\f1|AU0|LOD0|oc0|Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add9~6_combout\ = \f1|AU0|LOD0|oc0|Add9~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \f1|AU0|LOD0|oc0|Add9~5\,
	combout => \f1|AU0|LOD0|oc0|Add9~6_combout\);

-- Location: LCCOMB_X58_Y38_N14
\f1|AU0|LOD0|gen_LOD:6:detector|o_or~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:6:detector|o_or~0_combout\ = (\LF33|shift_register\(7)) # (\LF33|shift_register\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(7),
	datad => \LF33|shift_register\(8),
	combout => \f1|AU0|LOD0|gen_LOD:6:detector|o_or~0_combout\);

-- Location: LCCOMB_X58_Y38_N6
\f1|AU0|LOD0|gen_LOD:4:detector|o_or~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:4:detector|o_or~6_combout\ = (\LF33|shift_register\(10)) # ((\LF33|shift_register\(9)) # ((\LF33|shift_register\(6)) # (\f1|AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(10),
	datab => \LF33|shift_register\(9),
	datac => \LF33|shift_register\(6),
	datad => \f1|AU0|LOD0|gen_LOD:12:detector|o_or~4_combout\,
	combout => \f1|AU0|LOD0|gen_LOD:4:detector|o_or~6_combout\);

-- Location: LCCOMB_X59_Y37_N22
\f1|AU0|LOD0|gen_LOD:4:detector|o_or~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:4:detector|o_or~4_combout\ = (\f1|AU0|LOD0|gen_LOD:14:detector|o_or~0_combout\) # ((\LF33|shift_register\(12)) # ((\LF33|shift_register\(11)) # (\f1|U_tilde\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:14:detector|o_or~0_combout\,
	datab => \LF33|shift_register\(12),
	datac => \LF33|shift_register\(11),
	datad => \f1|U_tilde\(0),
	combout => \f1|AU0|LOD0|gen_LOD:4:detector|o_or~4_combout\);

-- Location: LCCOMB_X59_Y38_N28
\f1|AU0|LOD0|gen_LOD:4:detector|o_or~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:4:detector|o_or~5_combout\ = (!\f1|AU0|LOD0|gen_LOD:6:detector|o_or~0_combout\ & (!\f1|AU0|LOD0|gen_LOD:4:detector|o_or~6_combout\ & (!\f1|AU0|LOD0|gen_LOD:4:detector|o_or~4_combout\ & 
-- !\f1|AU0|LOD0|gen_LOD:16:detector|o_or~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:6:detector|o_or~0_combout\,
	datab => \f1|AU0|LOD0|gen_LOD:4:detector|o_or~6_combout\,
	datac => \f1|AU0|LOD0|gen_LOD:4:detector|o_or~4_combout\,
	datad => \f1|AU0|LOD0|gen_LOD:16:detector|o_or~combout\,
	combout => \f1|AU0|LOD0|gen_LOD:4:detector|o_or~5_combout\);

-- Location: LCCOMB_X58_Y38_N24
\f1|AU0|LOD0|oc0|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add3~0_combout\ = (\LF33|shift_register\(4)) # (!\f1|AU0|LOD0|gen_LOD:4:detector|o_or~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(4),
	datad => \f1|AU0|LOD0|gen_LOD:4:detector|o_or~5_combout\,
	combout => \f1|AU0|LOD0|oc0|Add3~0_combout\);

-- Location: LCCOMB_X58_Y38_N30
\f1|AU0|LOD0|gen_LOD:8:detector|o_or~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:8:detector|o_or~0_combout\ = (\LF33|shift_register\(10)) # (\LF33|shift_register\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LF33|shift_register\(10),
	datad => \LF33|shift_register\(9),
	combout => \f1|AU0|LOD0|gen_LOD:8:detector|o_or~0_combout\);

-- Location: LCCOMB_X58_Y38_N0
\f1|AU0|LOD0|gen_LOD:6:detector|o_or\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:6:detector|o_or~combout\ = (\LF33|shift_register\(7)) # ((\f1|AU0|LOD0|gen_LOD:8:detector|o_or~0_combout\) # ((\LF33|shift_register\(8)) # (\f1|AU0|LOD0|gen_LOD:10:detector|o_or~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(7),
	datab => \f1|AU0|LOD0|gen_LOD:8:detector|o_or~0_combout\,
	datac => \LF33|shift_register\(8),
	datad => \f1|AU0|LOD0|gen_LOD:10:detector|o_or~combout\,
	combout => \f1|AU0|LOD0|gen_LOD:6:detector|o_or~combout\);

-- Location: LCCOMB_X59_Y38_N2
\f1|AU0|LOD0|oc0|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add3~1_combout\ = (!\LF33|shift_register\(4) & (\f1|AU0|LOD0|gen_LOD:4:detector|o_or~5_combout\ & ((\LF33|shift_register\(3)) # (\LF33|shift_register\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(3),
	datab => \LF33|shift_register\(2),
	datac => \LF33|shift_register\(4),
	datad => \f1|AU0|LOD0|gen_LOD:4:detector|o_or~5_combout\,
	combout => \f1|AU0|LOD0|oc0|Add3~1_combout\);

-- Location: LCCOMB_X59_Y38_N30
\f1|AU0|LOD0|oc0|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add4~0_combout\ = (!\f1|AU0|LOD0|gen_LOD:6:detector|o_or~0_combout\ & (\LF33|shift_register\(6) & (!\f1|AU0|LOD0|gen_LOD:8:detector|o_or~0_combout\ & !\f1|AU0|LOD0|gen_LOD:10:detector|o_or~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:6:detector|o_or~0_combout\,
	datab => \LF33|shift_register\(6),
	datac => \f1|AU0|LOD0|gen_LOD:8:detector|o_or~0_combout\,
	datad => \f1|AU0|LOD0|gen_LOD:10:detector|o_or~combout\,
	combout => \f1|AU0|LOD0|oc0|Add4~0_combout\);

-- Location: LCCOMB_X58_Y38_N8
\f1|AU0|LOD0|oc0|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add1~0_combout\ = (!\LF33|shift_register\(2) & \LF33|shift_register\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(2),
	datab => \LF33|shift_register\(1),
	combout => \f1|AU0|LOD0|oc0|Add1~0_combout\);

-- Location: LCCOMB_X59_Y38_N0
\f1|AU0|LOD0|oc0|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add3~2_combout\ = ((!\LF33|shift_register\(4) & ((\f1|AU0|LOD0|oc0|Add1~0_combout\) # (\LF33|shift_register\(3))))) # (!\f1|AU0|LOD0|gen_LOD:4:detector|o_or~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add1~0_combout\,
	datab => \LF33|shift_register\(4),
	datac => \LF33|shift_register\(3),
	datad => \f1|AU0|LOD0|gen_LOD:4:detector|o_or~5_combout\,
	combout => \f1|AU0|LOD0|oc0|Add3~2_combout\);

-- Location: LCCOMB_X59_Y38_N4
\f1|AU0|LOD0|oc0|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add5~0_combout\ = (\f1|AU0|LOD0|oc0|Add4~0_combout\ & (\f1|AU0|LOD0|oc0|Add3~2_combout\ $ (VCC))) # (!\f1|AU0|LOD0|oc0|Add4~0_combout\ & (\f1|AU0|LOD0|oc0|Add3~2_combout\ & VCC))
-- \f1|AU0|LOD0|oc0|Add5~1\ = CARRY((\f1|AU0|LOD0|oc0|Add4~0_combout\ & \f1|AU0|LOD0|oc0|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add4~0_combout\,
	datab => \f1|AU0|LOD0|oc0|Add3~2_combout\,
	datad => VCC,
	combout => \f1|AU0|LOD0|oc0|Add5~0_combout\,
	cout => \f1|AU0|LOD0|oc0|Add5~1\);

-- Location: LCCOMB_X59_Y38_N6
\f1|AU0|LOD0|oc0|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add5~2_combout\ = (\f1|AU0|LOD0|gen_LOD:6:detector|o_or~combout\ & ((\f1|AU0|LOD0|oc0|Add3~1_combout\ & (\f1|AU0|LOD0|oc0|Add5~1\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add3~1_combout\ & (!\f1|AU0|LOD0|oc0|Add5~1\)))) # 
-- (!\f1|AU0|LOD0|gen_LOD:6:detector|o_or~combout\ & ((\f1|AU0|LOD0|oc0|Add3~1_combout\ & (!\f1|AU0|LOD0|oc0|Add5~1\)) # (!\f1|AU0|LOD0|oc0|Add3~1_combout\ & ((\f1|AU0|LOD0|oc0|Add5~1\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add5~3\ = CARRY((\f1|AU0|LOD0|gen_LOD:6:detector|o_or~combout\ & (!\f1|AU0|LOD0|oc0|Add3~1_combout\ & !\f1|AU0|LOD0|oc0|Add5~1\)) # (!\f1|AU0|LOD0|gen_LOD:6:detector|o_or~combout\ & ((!\f1|AU0|LOD0|oc0|Add5~1\) # 
-- (!\f1|AU0|LOD0|oc0|Add3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:6:detector|o_or~combout\,
	datab => \f1|AU0|LOD0|oc0|Add3~1_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add5~1\,
	combout => \f1|AU0|LOD0|oc0|Add5~2_combout\,
	cout => \f1|AU0|LOD0|oc0|Add5~3\);

-- Location: LCCOMB_X59_Y38_N8
\f1|AU0|LOD0|oc0|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add5~4_combout\ = (\f1|AU0|LOD0|oc0|Add3~0_combout\ & (\f1|AU0|LOD0|oc0|Add5~3\ $ (GND))) # (!\f1|AU0|LOD0|oc0|Add3~0_combout\ & (!\f1|AU0|LOD0|oc0|Add5~3\ & VCC))
-- \f1|AU0|LOD0|oc0|Add5~5\ = CARRY((\f1|AU0|LOD0|oc0|Add3~0_combout\ & !\f1|AU0|LOD0|oc0|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|AU0|LOD0|oc0|Add3~0_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add5~3\,
	combout => \f1|AU0|LOD0|oc0|Add5~4_combout\,
	cout => \f1|AU0|LOD0|oc0|Add5~5\);

-- Location: LCCOMB_X59_Y38_N10
\f1|AU0|LOD0|oc0|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add5~6_combout\ = \f1|AU0|LOD0|oc0|Add5~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \f1|AU0|LOD0|oc0|Add5~5\,
	combout => \f1|AU0|LOD0|oc0|Add5~6_combout\);

-- Location: LCCOMB_X59_Y38_N20
\f1|AU0|LOD0|oc0|Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add11~0_combout\ = (\f1|AU0|LOD0|oc0|Add9~0_combout\ & (\f1|AU0|LOD0|oc0|Add5~0_combout\ $ (VCC))) # (!\f1|AU0|LOD0|oc0|Add9~0_combout\ & (\f1|AU0|LOD0|oc0|Add5~0_combout\ & VCC))
-- \f1|AU0|LOD0|oc0|Add11~1\ = CARRY((\f1|AU0|LOD0|oc0|Add9~0_combout\ & \f1|AU0|LOD0|oc0|Add5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add9~0_combout\,
	datab => \f1|AU0|LOD0|oc0|Add5~0_combout\,
	datad => VCC,
	combout => \f1|AU0|LOD0|oc0|Add11~0_combout\,
	cout => \f1|AU0|LOD0|oc0|Add11~1\);

-- Location: LCCOMB_X59_Y38_N22
\f1|AU0|LOD0|oc0|Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add11~2_combout\ = (\f1|AU0|LOD0|oc0|Add5~2_combout\ & ((\f1|AU0|LOD0|oc0|Add9~2_combout\ & (\f1|AU0|LOD0|oc0|Add11~1\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add9~2_combout\ & (!\f1|AU0|LOD0|oc0|Add11~1\)))) # (!\f1|AU0|LOD0|oc0|Add5~2_combout\ & 
-- ((\f1|AU0|LOD0|oc0|Add9~2_combout\ & (!\f1|AU0|LOD0|oc0|Add11~1\)) # (!\f1|AU0|LOD0|oc0|Add9~2_combout\ & ((\f1|AU0|LOD0|oc0|Add11~1\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add11~3\ = CARRY((\f1|AU0|LOD0|oc0|Add5~2_combout\ & (!\f1|AU0|LOD0|oc0|Add9~2_combout\ & !\f1|AU0|LOD0|oc0|Add11~1\)) # (!\f1|AU0|LOD0|oc0|Add5~2_combout\ & ((!\f1|AU0|LOD0|oc0|Add11~1\) # (!\f1|AU0|LOD0|oc0|Add9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add5~2_combout\,
	datab => \f1|AU0|LOD0|oc0|Add9~2_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add11~1\,
	combout => \f1|AU0|LOD0|oc0|Add11~2_combout\,
	cout => \f1|AU0|LOD0|oc0|Add11~3\);

-- Location: LCCOMB_X59_Y38_N24
\f1|AU0|LOD0|oc0|Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add11~4_combout\ = ((\f1|AU0|LOD0|oc0|Add5~4_combout\ $ (\f1|AU0|LOD0|oc0|Add9~4_combout\ $ (!\f1|AU0|LOD0|oc0|Add11~3\)))) # (GND)
-- \f1|AU0|LOD0|oc0|Add11~5\ = CARRY((\f1|AU0|LOD0|oc0|Add5~4_combout\ & ((\f1|AU0|LOD0|oc0|Add9~4_combout\) # (!\f1|AU0|LOD0|oc0|Add11~3\))) # (!\f1|AU0|LOD0|oc0|Add5~4_combout\ & (\f1|AU0|LOD0|oc0|Add9~4_combout\ & !\f1|AU0|LOD0|oc0|Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add5~4_combout\,
	datab => \f1|AU0|LOD0|oc0|Add9~4_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add11~3\,
	combout => \f1|AU0|LOD0|oc0|Add11~4_combout\,
	cout => \f1|AU0|LOD0|oc0|Add11~5\);

-- Location: LCCOMB_X59_Y38_N26
\f1|AU0|LOD0|oc0|Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add11~6_combout\ = \f1|AU0|LOD0|oc0|Add9~6_combout\ $ (\f1|AU0|LOD0|oc0|Add11~5\ $ (\f1|AU0|LOD0|oc0|Add5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|AU0|LOD0|oc0|Add9~6_combout\,
	datad => \f1|AU0|LOD0|oc0|Add5~6_combout\,
	cin => \f1|AU0|LOD0|oc0|Add11~5\,
	combout => \f1|AU0|LOD0|oc0|Add11~6_combout\);

-- Location: LCCOMB_X60_Y37_N0
\f1|AU0|LOD0|gen_LOD:14:detector|o_or\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:14:detector|o_or~combout\ = (\f1|AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\) # ((\LF33|shift_register\(16)) # ((\f1|AU0|LOD0|gen_LOD:18:detector|o_or~combout\) # (\LF33|shift_register\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:16:detector|o_or~0_combout\,
	datab => \LF33|shift_register\(16),
	datac => \f1|AU0|LOD0|gen_LOD:18:detector|o_or~combout\,
	datad => \LF33|shift_register\(15),
	combout => \f1|AU0|LOD0|gen_LOD:14:detector|o_or~combout\);

-- Location: LCCOMB_X60_Y37_N12
\f1|AU0|LOD0|oc0|Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add12~2_combout\ = (\LF33|shift_register\(14) & (!\LF33|shift_register\(16) & (!\f1|AU0|LOD0|gen_LOD:16:detector|o_or~combout\ & !\LF33|shift_register\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(14),
	datab => \LF33|shift_register\(16),
	datac => \f1|AU0|LOD0|gen_LOD:16:detector|o_or~combout\,
	datad => \LF33|shift_register\(15),
	combout => \f1|AU0|LOD0|oc0|Add12~2_combout\);

-- Location: LCCOMB_X60_Y38_N10
\f1|AU0|LOD0|oc0|Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add13~0_combout\ = (\f1|AU0|LOD0|oc0|Add12~2_combout\ & (\f1|AU0|LOD0|oc0|Add11~0_combout\ $ (VCC))) # (!\f1|AU0|LOD0|oc0|Add12~2_combout\ & (\f1|AU0|LOD0|oc0|Add11~0_combout\ & VCC))
-- \f1|AU0|LOD0|oc0|Add13~1\ = CARRY((\f1|AU0|LOD0|oc0|Add12~2_combout\ & \f1|AU0|LOD0|oc0|Add11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add12~2_combout\,
	datab => \f1|AU0|LOD0|oc0|Add11~0_combout\,
	datad => VCC,
	combout => \f1|AU0|LOD0|oc0|Add13~0_combout\,
	cout => \f1|AU0|LOD0|oc0|Add13~1\);

-- Location: LCCOMB_X60_Y38_N12
\f1|AU0|LOD0|oc0|Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add13~2_combout\ = (\f1|AU0|LOD0|gen_LOD:14:detector|o_or~combout\ & ((\f1|AU0|LOD0|oc0|Add11~2_combout\ & (\f1|AU0|LOD0|oc0|Add13~1\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add11~2_combout\ & (!\f1|AU0|LOD0|oc0|Add13~1\)))) # 
-- (!\f1|AU0|LOD0|gen_LOD:14:detector|o_or~combout\ & ((\f1|AU0|LOD0|oc0|Add11~2_combout\ & (!\f1|AU0|LOD0|oc0|Add13~1\)) # (!\f1|AU0|LOD0|oc0|Add11~2_combout\ & ((\f1|AU0|LOD0|oc0|Add13~1\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add13~3\ = CARRY((\f1|AU0|LOD0|gen_LOD:14:detector|o_or~combout\ & (!\f1|AU0|LOD0|oc0|Add11~2_combout\ & !\f1|AU0|LOD0|oc0|Add13~1\)) # (!\f1|AU0|LOD0|gen_LOD:14:detector|o_or~combout\ & ((!\f1|AU0|LOD0|oc0|Add13~1\) # 
-- (!\f1|AU0|LOD0|oc0|Add11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:14:detector|o_or~combout\,
	datab => \f1|AU0|LOD0|oc0|Add11~2_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add13~1\,
	combout => \f1|AU0|LOD0|oc0|Add13~2_combout\,
	cout => \f1|AU0|LOD0|oc0|Add13~3\);

-- Location: LCCOMB_X60_Y38_N14
\f1|AU0|LOD0|oc0|Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add13~4_combout\ = (\f1|AU0|LOD0|oc0|Add11~4_combout\ & (\f1|AU0|LOD0|oc0|Add13~3\ $ (GND))) # (!\f1|AU0|LOD0|oc0|Add11~4_combout\ & (!\f1|AU0|LOD0|oc0|Add13~3\ & VCC))
-- \f1|AU0|LOD0|oc0|Add13~5\ = CARRY((\f1|AU0|LOD0|oc0|Add11~4_combout\ & !\f1|AU0|LOD0|oc0|Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|AU0|LOD0|oc0|Add11~4_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add13~3\,
	combout => \f1|AU0|LOD0|oc0|Add13~4_combout\,
	cout => \f1|AU0|LOD0|oc0|Add13~5\);

-- Location: LCCOMB_X60_Y38_N16
\f1|AU0|LOD0|oc0|Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add13~6_combout\ = (\f1|AU0|LOD0|oc0|Add11~6_combout\ & (!\f1|AU0|LOD0|oc0|Add13~5\)) # (!\f1|AU0|LOD0|oc0|Add11~6_combout\ & ((\f1|AU0|LOD0|oc0|Add13~5\) # (GND)))
-- \f1|AU0|LOD0|oc0|Add13~7\ = CARRY((!\f1|AU0|LOD0|oc0|Add13~5\) # (!\f1|AU0|LOD0|oc0|Add11~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add11~6_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add13~5\,
	combout => \f1|AU0|LOD0|oc0|Add13~6_combout\,
	cout => \f1|AU0|LOD0|oc0|Add13~7\);

-- Location: LCCOMB_X60_Y38_N0
\f1|AU0|LOD0|oc0|Add27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add27~0_combout\ = (\f1|AU0|LOD0|oc0|Add13~0_combout\ & (\f1|AU0|LOD0|oc0|Add21~0_combout\ $ (VCC))) # (!\f1|AU0|LOD0|oc0|Add13~0_combout\ & (\f1|AU0|LOD0|oc0|Add21~0_combout\ & VCC))
-- \f1|AU0|LOD0|oc0|Add27~1\ = CARRY((\f1|AU0|LOD0|oc0|Add13~0_combout\ & \f1|AU0|LOD0|oc0|Add21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add13~0_combout\,
	datab => \f1|AU0|LOD0|oc0|Add21~0_combout\,
	datad => VCC,
	combout => \f1|AU0|LOD0|oc0|Add27~0_combout\,
	cout => \f1|AU0|LOD0|oc0|Add27~1\);

-- Location: LCCOMB_X60_Y38_N2
\f1|AU0|LOD0|oc0|Add27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add27~2_combout\ = (\f1|AU0|LOD0|oc0|Add13~2_combout\ & ((\f1|AU0|LOD0|oc0|Add21~2_combout\ & (\f1|AU0|LOD0|oc0|Add27~1\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add21~2_combout\ & (!\f1|AU0|LOD0|oc0|Add27~1\)))) # (!\f1|AU0|LOD0|oc0|Add13~2_combout\ 
-- & ((\f1|AU0|LOD0|oc0|Add21~2_combout\ & (!\f1|AU0|LOD0|oc0|Add27~1\)) # (!\f1|AU0|LOD0|oc0|Add21~2_combout\ & ((\f1|AU0|LOD0|oc0|Add27~1\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add27~3\ = CARRY((\f1|AU0|LOD0|oc0|Add13~2_combout\ & (!\f1|AU0|LOD0|oc0|Add21~2_combout\ & !\f1|AU0|LOD0|oc0|Add27~1\)) # (!\f1|AU0|LOD0|oc0|Add13~2_combout\ & ((!\f1|AU0|LOD0|oc0|Add27~1\) # (!\f1|AU0|LOD0|oc0|Add21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add13~2_combout\,
	datab => \f1|AU0|LOD0|oc0|Add21~2_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add27~1\,
	combout => \f1|AU0|LOD0|oc0|Add27~2_combout\,
	cout => \f1|AU0|LOD0|oc0|Add27~3\);

-- Location: LCCOMB_X60_Y38_N4
\f1|AU0|LOD0|oc0|Add27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add27~4_combout\ = ((\f1|AU0|LOD0|oc0|Add21~4_combout\ $ (\f1|AU0|LOD0|oc0|Add13~4_combout\ $ (!\f1|AU0|LOD0|oc0|Add27~3\)))) # (GND)
-- \f1|AU0|LOD0|oc0|Add27~5\ = CARRY((\f1|AU0|LOD0|oc0|Add21~4_combout\ & ((\f1|AU0|LOD0|oc0|Add13~4_combout\) # (!\f1|AU0|LOD0|oc0|Add27~3\))) # (!\f1|AU0|LOD0|oc0|Add21~4_combout\ & (\f1|AU0|LOD0|oc0|Add13~4_combout\ & !\f1|AU0|LOD0|oc0|Add27~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add21~4_combout\,
	datab => \f1|AU0|LOD0|oc0|Add13~4_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add27~3\,
	combout => \f1|AU0|LOD0|oc0|Add27~4_combout\,
	cout => \f1|AU0|LOD0|oc0|Add27~5\);

-- Location: LCCOMB_X60_Y38_N6
\f1|AU0|LOD0|oc0|Add27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add27~6_combout\ = (\f1|AU0|LOD0|oc0|Add21~6_combout\ & ((\f1|AU0|LOD0|oc0|Add13~6_combout\ & (\f1|AU0|LOD0|oc0|Add27~5\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add13~6_combout\ & (!\f1|AU0|LOD0|oc0|Add27~5\)))) # (!\f1|AU0|LOD0|oc0|Add21~6_combout\ 
-- & ((\f1|AU0|LOD0|oc0|Add13~6_combout\ & (!\f1|AU0|LOD0|oc0|Add27~5\)) # (!\f1|AU0|LOD0|oc0|Add13~6_combout\ & ((\f1|AU0|LOD0|oc0|Add27~5\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add27~7\ = CARRY((\f1|AU0|LOD0|oc0|Add21~6_combout\ & (!\f1|AU0|LOD0|oc0|Add13~6_combout\ & !\f1|AU0|LOD0|oc0|Add27~5\)) # (!\f1|AU0|LOD0|oc0|Add21~6_combout\ & ((!\f1|AU0|LOD0|oc0|Add27~5\) # (!\f1|AU0|LOD0|oc0|Add13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add21~6_combout\,
	datab => \f1|AU0|LOD0|oc0|Add13~6_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add27~5\,
	combout => \f1|AU0|LOD0|oc0|Add27~6_combout\,
	cout => \f1|AU0|LOD0|oc0|Add27~7\);

-- Location: LCCOMB_X58_Y38_N16
\f1|AU0|LOD0|oc0|Add32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add32~0_combout\ = (\LF33|shift_register\(9) & (\LF33|shift_register\(7) & \LF33|shift_register\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(9),
	datac => \LF33|shift_register\(7),
	datad => \LF33|shift_register\(6),
	combout => \f1|AU0|LOD0|oc0|Add32~0_combout\);

-- Location: LCCOMB_X59_Y37_N26
\f1|AU0|LOD0|gen_LOD:17:detector|o_and~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:17:detector|o_and~3_combout\ = (\LF33|shift_register\(19) & \LF33|shift_register\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(19),
	datab => \LF33|shift_register\(18),
	combout => \f1|AU0|LOD0|gen_LOD:17:detector|o_and~3_combout\);

-- Location: LCCOMB_X58_Y37_N10
\f1|AU0|LOD0|gen_LOD:17:detector|o_and~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:17:detector|o_and~0_combout\ = (\LF33|shift_register\(25) & (\LF33|shift_register\(24) & (\LF33|shift_register\(23) & \LF33|shift_register\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(25),
	datab => \LF33|shift_register\(24),
	datac => \LF33|shift_register\(23),
	datad => \LF33|shift_register\(22),
	combout => \f1|AU0|LOD0|gen_LOD:17:detector|o_and~0_combout\);

-- Location: LCCOMB_X58_Y37_N6
\f1|AU0|LOD0|gen_LOD:25:detector|o_and~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\ = (\LF33|shift_register\(28) & (\LF33|shift_register\(29) & (\LF33|shift_register\(31) & \LF33|shift_register\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(28),
	datab => \LF33|shift_register\(29),
	datac => \LF33|shift_register\(31),
	datad => \LF33|shift_register\(30),
	combout => \f1|AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\);

-- Location: LCCOMB_X56_Y37_N24
\f1|AU0|LOD0|gen_LOD:25:detector|o_and~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:25:detector|o_and~1_combout\ = (\LF33|shift_register\(27) & \LF33|shift_register\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LF33|shift_register\(27),
	datad => \LF33|shift_register\(26),
	combout => \f1|AU0|LOD0|gen_LOD:25:detector|o_and~1_combout\);

-- Location: LCCOMB_X59_Y37_N4
\f1|AU0|LOD0|gen_LOD:17:detector|o_and~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:17:detector|o_and~1_combout\ = (\LF33|shift_register\(21) & \LF33|shift_register\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(21),
	datad => \LF33|shift_register\(20),
	combout => \f1|AU0|LOD0|gen_LOD:17:detector|o_and~1_combout\);

-- Location: LCCOMB_X59_Y37_N12
\f1|AU0|LOD0|gen_LOD:17:detector|o_and~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:17:detector|o_and~2_combout\ = (\f1|AU0|LOD0|gen_LOD:17:detector|o_and~0_combout\ & (\f1|AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\ & (\f1|AU0|LOD0|gen_LOD:25:detector|o_and~1_combout\ & 
-- \f1|AU0|LOD0|gen_LOD:17:detector|o_and~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:17:detector|o_and~0_combout\,
	datab => \f1|AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\,
	datac => \f1|AU0|LOD0|gen_LOD:25:detector|o_and~1_combout\,
	datad => \f1|AU0|LOD0|gen_LOD:17:detector|o_and~1_combout\,
	combout => \f1|AU0|LOD0|gen_LOD:17:detector|o_and~2_combout\);

-- Location: LCCOMB_X59_Y37_N20
\f1|AU0|LOD0|gen_LOD:13:detector|o_and~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:13:detector|o_and~0_combout\ = (\f1|AU0|LOD0|gen_LOD:17:detector|o_and~3_combout\ & (\LF33|shift_register\(16) & (\LF33|shift_register\(17) & \f1|AU0|LOD0|gen_LOD:17:detector|o_and~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:17:detector|o_and~3_combout\,
	datab => \LF33|shift_register\(16),
	datac => \LF33|shift_register\(17),
	datad => \f1|AU0|LOD0|gen_LOD:17:detector|o_and~2_combout\,
	combout => \f1|AU0|LOD0|gen_LOD:13:detector|o_and~0_combout\);

-- Location: LCCOMB_X59_Y37_N16
\f1|AU0|LOD0|oc0|Add40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add40~0_combout\ = (\LF33|shift_register\(15) & (\LF33|shift_register\(13) & (\LF33|shift_register\(14) & \f1|AU0|LOD0|gen_LOD:13:detector|o_and~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(15),
	datab => \LF33|shift_register\(13),
	datac => \LF33|shift_register\(14),
	datad => \f1|AU0|LOD0|gen_LOD:13:detector|o_and~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add40~0_combout\);

-- Location: LCCOMB_X59_Y37_N10
\f1|AU0|LOD0|oc0|Add39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add39~0_combout\ = (\LF33|shift_register\(11) & (\LF33|shift_register\(12) & (\LF33|shift_register\(10) & \f1|AU0|LOD0|oc0|Add40~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(11),
	datab => \LF33|shift_register\(12),
	datac => \LF33|shift_register\(10),
	datad => \f1|AU0|LOD0|oc0|Add40~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add39~0_combout\);

-- Location: LCCOMB_X58_Y38_N18
\f1|AU0|LOD0|oc0|Add32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add32~1_combout\ = (\LF33|shift_register\(8) & (\f1|AU0|LOD0|oc0|Add32~0_combout\ & (\f1|U_tilde\(0) & \f1|AU0|LOD0|oc0|Add39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(8),
	datab => \f1|AU0|LOD0|oc0|Add32~0_combout\,
	datac => \f1|U_tilde\(0),
	datad => \f1|AU0|LOD0|oc0|Add39~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add32~1_combout\);

-- Location: LCCOMB_X58_Y38_N12
\f1|AU0|LOD0|oc0|Add31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add31~0_combout\ = (\LF33|shift_register\(2) & (\LF33|shift_register\(4) & (\LF33|shift_register\(3) & \f1|AU0|LOD0|oc0|Add32~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(2),
	datab => \LF33|shift_register\(4),
	datac => \LF33|shift_register\(3),
	datad => \f1|AU0|LOD0|oc0|Add32~1_combout\,
	combout => \f1|AU0|LOD0|oc0|Add31~0_combout\);

-- Location: LCCOMB_X57_Y38_N2
\f1|AU0|LOD0|oc0|Add28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add28~0_combout\ = (\LF33|shift_register\(1) & (\f1|AU0|LOD0|oc0|Add31~0_combout\ & ((\LF33|shift_register\(30)) # (\LF33|shift_register\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(30),
	datab => \LF33|shift_register\(1),
	datac => \f1|AU0|LOD0|oc0|Add31~0_combout\,
	datad => \LF33|shift_register\(31),
	combout => \f1|AU0|LOD0|oc0|Add28~0_combout\);

-- Location: LCCOMB_X58_Y38_N20
\f1|AU0|LOD0|oc0|Add28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add28~1_combout\ = (\LF33|shift_register\(1) & (\f1|AU0|LOD0|oc0|Add31~0_combout\ $ (((\LF33|shift_register\(31)) # (\LF33|shift_register\(30)))))) # (!\LF33|shift_register\(1) & ((\LF33|shift_register\(31)) # 
-- ((\LF33|shift_register\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(1),
	datab => \LF33|shift_register\(31),
	datac => \LF33|shift_register\(30),
	datad => \f1|AU0|LOD0|oc0|Add31~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add28~1_combout\);

-- Location: LCCOMB_X60_Y38_N20
\f1|AU0|LOD0|oc0|Add29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add29~0_combout\ = (\f1|AU0|LOD0|oc0|Add28~1_combout\ & (\f1|AU0|LOD0|oc0|Add27~0_combout\ $ (VCC))) # (!\f1|AU0|LOD0|oc0|Add28~1_combout\ & (\f1|AU0|LOD0|oc0|Add27~0_combout\ & VCC))
-- \f1|AU0|LOD0|oc0|Add29~1\ = CARRY((\f1|AU0|LOD0|oc0|Add28~1_combout\ & \f1|AU0|LOD0|oc0|Add27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add28~1_combout\,
	datab => \f1|AU0|LOD0|oc0|Add27~0_combout\,
	datad => VCC,
	combout => \f1|AU0|LOD0|oc0|Add29~0_combout\,
	cout => \f1|AU0|LOD0|oc0|Add29~1\);

-- Location: LCCOMB_X60_Y38_N22
\f1|AU0|LOD0|oc0|Add29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add29~2_combout\ = (\f1|AU0|LOD0|oc0|Add28~0_combout\ & ((\f1|AU0|LOD0|oc0|Add27~2_combout\ & (\f1|AU0|LOD0|oc0|Add29~1\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add27~2_combout\ & (!\f1|AU0|LOD0|oc0|Add29~1\)))) # (!\f1|AU0|LOD0|oc0|Add28~0_combout\ 
-- & ((\f1|AU0|LOD0|oc0|Add27~2_combout\ & (!\f1|AU0|LOD0|oc0|Add29~1\)) # (!\f1|AU0|LOD0|oc0|Add27~2_combout\ & ((\f1|AU0|LOD0|oc0|Add29~1\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add29~3\ = CARRY((\f1|AU0|LOD0|oc0|Add28~0_combout\ & (!\f1|AU0|LOD0|oc0|Add27~2_combout\ & !\f1|AU0|LOD0|oc0|Add29~1\)) # (!\f1|AU0|LOD0|oc0|Add28~0_combout\ & ((!\f1|AU0|LOD0|oc0|Add29~1\) # (!\f1|AU0|LOD0|oc0|Add27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add28~0_combout\,
	datab => \f1|AU0|LOD0|oc0|Add27~2_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add29~1\,
	combout => \f1|AU0|LOD0|oc0|Add29~2_combout\,
	cout => \f1|AU0|LOD0|oc0|Add29~3\);

-- Location: LCCOMB_X60_Y38_N24
\f1|AU0|LOD0|oc0|Add29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add29~4_combout\ = (\f1|AU0|LOD0|oc0|Add27~4_combout\ & (\f1|AU0|LOD0|oc0|Add29~3\ $ (GND))) # (!\f1|AU0|LOD0|oc0|Add27~4_combout\ & (!\f1|AU0|LOD0|oc0|Add29~3\ & VCC))
-- \f1|AU0|LOD0|oc0|Add29~5\ = CARRY((\f1|AU0|LOD0|oc0|Add27~4_combout\ & !\f1|AU0|LOD0|oc0|Add29~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|AU0|LOD0|oc0|Add27~4_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add29~3\,
	combout => \f1|AU0|LOD0|oc0|Add29~4_combout\,
	cout => \f1|AU0|LOD0|oc0|Add29~5\);

-- Location: LCCOMB_X60_Y38_N26
\f1|AU0|LOD0|oc0|Add29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add29~6_combout\ = (\f1|AU0|LOD0|oc0|Add27~6_combout\ & (!\f1|AU0|LOD0|oc0|Add29~5\)) # (!\f1|AU0|LOD0|oc0|Add27~6_combout\ & ((\f1|AU0|LOD0|oc0|Add29~5\) # (GND)))
-- \f1|AU0|LOD0|oc0|Add29~7\ = CARRY((!\f1|AU0|LOD0|oc0|Add29~5\) # (!\f1|AU0|LOD0|oc0|Add27~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add27~6_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add29~5\,
	combout => \f1|AU0|LOD0|oc0|Add29~6_combout\,
	cout => \f1|AU0|LOD0|oc0|Add29~7\);

-- Location: LCCOMB_X56_Y37_N14
\f1|AU0|LOD0|oc0|Add55~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add55~6_combout\ = (\LF33|shift_register\(26) & (\f1|AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\ & \LF33|shift_register\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(26),
	datac => \f1|AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\,
	datad => \LF33|shift_register\(27),
	combout => \f1|AU0|LOD0|oc0|Add55~6_combout\);

-- Location: LCCOMB_X57_Y37_N30
\f1|AU0|LOD0|oc0|Add55~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add55~7_combout\ = (\f1|AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\ & ((!\LF33|shift_register\(26)) # (!\LF33|shift_register\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(27),
	datac => \LF33|shift_register\(26),
	datad => \f1|AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add55~7_combout\);

-- Location: LCCOMB_X56_Y37_N18
\f1|AU0|LOD0|gen_LOD:29:detector|o_and~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\ = (\LF33|shift_register\(31) & \LF33|shift_register\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LF33|shift_register\(31),
	datad => \LF33|shift_register\(30),
	combout => \f1|AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\);

-- Location: LCCOMB_X57_Y37_N12
\f1|AU0|LOD0|oc0|Add58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add58~0_combout\ = (\LF33|shift_register\(31) & !\LF33|shift_register\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(31),
	datad => \LF33|shift_register\(30),
	combout => \f1|AU0|LOD0|oc0|Add58~0_combout\);

-- Location: LCCOMB_X56_Y37_N12
\f1|AU0|LOD0|oc0|Add55~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add55~4_combout\ = ((!\LF33|shift_register\(26) & \LF33|shift_register\(27))) # (!\LF33|shift_register\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(26),
	datac => \LF33|shift_register\(28),
	datad => \LF33|shift_register\(27),
	combout => \f1|AU0|LOD0|oc0|Add55~4_combout\);

-- Location: LCCOMB_X56_Y37_N26
\f1|AU0|LOD0|oc0|Add55~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add55~5_combout\ = (\f1|AU0|LOD0|oc0|Add55~4_combout\ & (\LF33|shift_register\(29) & (\LF33|shift_register\(31) & \LF33|shift_register\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add55~4_combout\,
	datab => \LF33|shift_register\(29),
	datac => \LF33|shift_register\(31),
	datad => \LF33|shift_register\(30),
	combout => \f1|AU0|LOD0|oc0|Add55~5_combout\);

-- Location: LCCOMB_X57_Y37_N14
\f1|AU0|LOD0|oc0|Add57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add57~0_combout\ = (\f1|AU0|LOD0|oc0|Add58~0_combout\ & (\f1|AU0|LOD0|oc0|Add55~5_combout\ $ (VCC))) # (!\f1|AU0|LOD0|oc0|Add58~0_combout\ & (\f1|AU0|LOD0|oc0|Add55~5_combout\ & VCC))
-- \f1|AU0|LOD0|oc0|Add57~1\ = CARRY((\f1|AU0|LOD0|oc0|Add58~0_combout\ & \f1|AU0|LOD0|oc0|Add55~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add58~0_combout\,
	datab => \f1|AU0|LOD0|oc0|Add55~5_combout\,
	datad => VCC,
	combout => \f1|AU0|LOD0|oc0|Add57~0_combout\,
	cout => \f1|AU0|LOD0|oc0|Add57~1\);

-- Location: LCCOMB_X57_Y37_N16
\f1|AU0|LOD0|oc0|Add57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add57~2_combout\ = (\f1|AU0|LOD0|oc0|Add55~7_combout\ & ((\f1|AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\ & (\f1|AU0|LOD0|oc0|Add57~1\ & VCC)) # (!\f1|AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\ & (!\f1|AU0|LOD0|oc0|Add57~1\)))) # 
-- (!\f1|AU0|LOD0|oc0|Add55~7_combout\ & ((\f1|AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\ & (!\f1|AU0|LOD0|oc0|Add57~1\)) # (!\f1|AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\ & ((\f1|AU0|LOD0|oc0|Add57~1\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add57~3\ = CARRY((\f1|AU0|LOD0|oc0|Add55~7_combout\ & (!\f1|AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\ & !\f1|AU0|LOD0|oc0|Add57~1\)) # (!\f1|AU0|LOD0|oc0|Add55~7_combout\ & ((!\f1|AU0|LOD0|oc0|Add57~1\) # 
-- (!\f1|AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add55~7_combout\,
	datab => \f1|AU0|LOD0|gen_LOD:29:detector|o_and~0_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add57~1\,
	combout => \f1|AU0|LOD0|oc0|Add57~2_combout\,
	cout => \f1|AU0|LOD0|oc0|Add57~3\);

-- Location: LCCOMB_X57_Y37_N18
\f1|AU0|LOD0|oc0|Add57~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add57~4_combout\ = (\f1|AU0|LOD0|oc0|Add55~6_combout\ & (\f1|AU0|LOD0|oc0|Add57~3\ $ (GND))) # (!\f1|AU0|LOD0|oc0|Add55~6_combout\ & (!\f1|AU0|LOD0|oc0|Add57~3\ & VCC))
-- \f1|AU0|LOD0|oc0|Add57~5\ = CARRY((\f1|AU0|LOD0|oc0|Add55~6_combout\ & !\f1|AU0|LOD0|oc0|Add57~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add55~6_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add57~3\,
	combout => \f1|AU0|LOD0|oc0|Add57~4_combout\,
	cout => \f1|AU0|LOD0|oc0|Add57~5\);

-- Location: LCCOMB_X57_Y37_N20
\f1|AU0|LOD0|oc0|Add57~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add57~6_combout\ = \f1|AU0|LOD0|oc0|Add57~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \f1|AU0|LOD0|oc0|Add57~5\,
	combout => \f1|AU0|LOD0|oc0|Add57~6_combout\);

-- Location: LCCOMB_X58_Y37_N24
\f1|AU0|LOD0|gen_LOD:21:detector|o_and~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|gen_LOD:21:detector|o_and~0_combout\ = (\f1|AU0|LOD0|gen_LOD:25:detector|o_and~1_combout\ & (\LF33|shift_register\(24) & (\LF33|shift_register\(25) & \f1|AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|gen_LOD:25:detector|o_and~1_combout\,
	datab => \LF33|shift_register\(24),
	datac => \LF33|shift_register\(25),
	datad => \f1|AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\,
	combout => \f1|AU0|LOD0|gen_LOD:21:detector|o_and~0_combout\);

-- Location: LCCOMB_X56_Y37_N16
\f1|AU0|LOD0|oc0|Add51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add51~2_combout\ = (\LF33|shift_register\(23) & (\LF33|shift_register\(22) & \f1|AU0|LOD0|gen_LOD:21:detector|o_and~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(23),
	datac => \LF33|shift_register\(22),
	datad => \f1|AU0|LOD0|gen_LOD:21:detector|o_and~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add51~2_combout\);

-- Location: LCCOMB_X58_Y37_N2
\f1|AU0|LOD0|oc0|Add47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add47~0_combout\ = (\LF33|shift_register\(21) & (\LF33|shift_register\(23) & (\LF33|shift_register\(22) & \f1|AU0|LOD0|gen_LOD:21:detector|o_and~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(21),
	datab => \LF33|shift_register\(23),
	datac => \LF33|shift_register\(22),
	datad => \f1|AU0|LOD0|gen_LOD:21:detector|o_and~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add47~0_combout\);

-- Location: LCCOMB_X58_Y37_N22
\f1|AU0|LOD0|oc0|Add47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add47~1_combout\ = (\LF33|shift_register\(18) & (\f1|AU0|LOD0|oc0|Add47~0_combout\ & (\LF33|shift_register\(20) & \LF33|shift_register\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(18),
	datab => \f1|AU0|LOD0|oc0|Add47~0_combout\,
	datac => \LF33|shift_register\(20),
	datad => \LF33|shift_register\(19),
	combout => \f1|AU0|LOD0|oc0|Add47~1_combout\);

-- Location: LCCOMB_X58_Y37_N4
\f1|AU0|LOD0|oc0|Add47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add47~2_combout\ = (\f1|AU0|LOD0|oc0|Add47~0_combout\ & (\LF33|shift_register\(20) & ((!\LF33|shift_register\(18)) # (!\LF33|shift_register\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(19),
	datab => \f1|AU0|LOD0|oc0|Add47~0_combout\,
	datac => \LF33|shift_register\(18),
	datad => \LF33|shift_register\(20),
	combout => \f1|AU0|LOD0|oc0|Add47~2_combout\);

-- Location: LCCOMB_X58_Y37_N12
\f1|AU0|LOD0|oc0|Add51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add51~3_combout\ = (\f1|AU0|LOD0|gen_LOD:21:detector|o_and~0_combout\ & ((!\LF33|shift_register\(23)) # (!\LF33|shift_register\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(22),
	datac => \LF33|shift_register\(23),
	datad => \f1|AU0|LOD0|gen_LOD:21:detector|o_and~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add51~3_combout\);

-- Location: LCCOMB_X57_Y37_N0
\f1|AU0|LOD0|oc0|Add47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add47~3_combout\ = (\f1|AU0|LOD0|oc0|Add47~0_combout\ & (((!\LF33|shift_register\(18) & \LF33|shift_register\(19))) # (!\LF33|shift_register\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(18),
	datab => \LF33|shift_register\(19),
	datac => \LF33|shift_register\(20),
	datad => \f1|AU0|LOD0|oc0|Add47~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add47~3_combout\);

-- Location: LCCOMB_X58_Y37_N28
\f1|AU0|LOD0|oc0|Add51~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add51~5_combout\ = (\LF33|shift_register\(27) & (\LF33|shift_register\(26) & (\LF33|shift_register\(25) & \f1|AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(27),
	datab => \LF33|shift_register\(26),
	datac => \LF33|shift_register\(25),
	datad => \f1|AU0|LOD0|gen_LOD:25:detector|o_and~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add51~5_combout\);

-- Location: LCCOMB_X58_Y37_N8
\f1|AU0|LOD0|oc0|Add51~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add51~4_combout\ = (\f1|AU0|LOD0|oc0|Add51~5_combout\ & (((\LF33|shift_register\(23) & !\LF33|shift_register\(22))) # (!\LF33|shift_register\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(23),
	datab => \LF33|shift_register\(22),
	datac => \LF33|shift_register\(24),
	datad => \f1|AU0|LOD0|oc0|Add51~5_combout\,
	combout => \f1|AU0|LOD0|oc0|Add51~4_combout\);

-- Location: LCCOMB_X57_Y37_N22
\f1|AU0|LOD0|oc0|Add49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add49~0_combout\ = (\f1|AU0|LOD0|oc0|Add47~3_combout\ & (\f1|AU0|LOD0|oc0|Add51~4_combout\ $ (VCC))) # (!\f1|AU0|LOD0|oc0|Add47~3_combout\ & (\f1|AU0|LOD0|oc0|Add51~4_combout\ & VCC))
-- \f1|AU0|LOD0|oc0|Add49~1\ = CARRY((\f1|AU0|LOD0|oc0|Add47~3_combout\ & \f1|AU0|LOD0|oc0|Add51~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add47~3_combout\,
	datab => \f1|AU0|LOD0|oc0|Add51~4_combout\,
	datad => VCC,
	combout => \f1|AU0|LOD0|oc0|Add49~0_combout\,
	cout => \f1|AU0|LOD0|oc0|Add49~1\);

-- Location: LCCOMB_X57_Y37_N24
\f1|AU0|LOD0|oc0|Add49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add49~2_combout\ = (\f1|AU0|LOD0|oc0|Add47~2_combout\ & ((\f1|AU0|LOD0|oc0|Add51~3_combout\ & (\f1|AU0|LOD0|oc0|Add49~1\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add51~3_combout\ & (!\f1|AU0|LOD0|oc0|Add49~1\)))) # (!\f1|AU0|LOD0|oc0|Add47~2_combout\ 
-- & ((\f1|AU0|LOD0|oc0|Add51~3_combout\ & (!\f1|AU0|LOD0|oc0|Add49~1\)) # (!\f1|AU0|LOD0|oc0|Add51~3_combout\ & ((\f1|AU0|LOD0|oc0|Add49~1\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add49~3\ = CARRY((\f1|AU0|LOD0|oc0|Add47~2_combout\ & (!\f1|AU0|LOD0|oc0|Add51~3_combout\ & !\f1|AU0|LOD0|oc0|Add49~1\)) # (!\f1|AU0|LOD0|oc0|Add47~2_combout\ & ((!\f1|AU0|LOD0|oc0|Add49~1\) # (!\f1|AU0|LOD0|oc0|Add51~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add47~2_combout\,
	datab => \f1|AU0|LOD0|oc0|Add51~3_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add49~1\,
	combout => \f1|AU0|LOD0|oc0|Add49~2_combout\,
	cout => \f1|AU0|LOD0|oc0|Add49~3\);

-- Location: LCCOMB_X57_Y37_N26
\f1|AU0|LOD0|oc0|Add49~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add49~4_combout\ = ((\f1|AU0|LOD0|oc0|Add51~2_combout\ $ (\f1|AU0|LOD0|oc0|Add47~1_combout\ $ (!\f1|AU0|LOD0|oc0|Add49~3\)))) # (GND)
-- \f1|AU0|LOD0|oc0|Add49~5\ = CARRY((\f1|AU0|LOD0|oc0|Add51~2_combout\ & ((\f1|AU0|LOD0|oc0|Add47~1_combout\) # (!\f1|AU0|LOD0|oc0|Add49~3\))) # (!\f1|AU0|LOD0|oc0|Add51~2_combout\ & (\f1|AU0|LOD0|oc0|Add47~1_combout\ & !\f1|AU0|LOD0|oc0|Add49~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add51~2_combout\,
	datab => \f1|AU0|LOD0|oc0|Add47~1_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add49~3\,
	combout => \f1|AU0|LOD0|oc0|Add49~4_combout\,
	cout => \f1|AU0|LOD0|oc0|Add49~5\);

-- Location: LCCOMB_X57_Y37_N28
\f1|AU0|LOD0|oc0|Add49~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add49~6_combout\ = \f1|AU0|LOD0|oc0|Add49~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \f1|AU0|LOD0|oc0|Add49~5\,
	combout => \f1|AU0|LOD0|oc0|Add49~6_combout\);

-- Location: LCCOMB_X57_Y37_N2
\f1|AU0|LOD0|oc0|Add53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add53~0_combout\ = (\f1|AU0|LOD0|oc0|Add49~0_combout\ & (\f1|AU0|LOD0|oc0|Add57~0_combout\ $ (VCC))) # (!\f1|AU0|LOD0|oc0|Add49~0_combout\ & (\f1|AU0|LOD0|oc0|Add57~0_combout\ & VCC))
-- \f1|AU0|LOD0|oc0|Add53~1\ = CARRY((\f1|AU0|LOD0|oc0|Add49~0_combout\ & \f1|AU0|LOD0|oc0|Add57~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add49~0_combout\,
	datab => \f1|AU0|LOD0|oc0|Add57~0_combout\,
	datad => VCC,
	combout => \f1|AU0|LOD0|oc0|Add53~0_combout\,
	cout => \f1|AU0|LOD0|oc0|Add53~1\);

-- Location: LCCOMB_X57_Y37_N4
\f1|AU0|LOD0|oc0|Add53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add53~2_combout\ = (\f1|AU0|LOD0|oc0|Add49~2_combout\ & ((\f1|AU0|LOD0|oc0|Add57~2_combout\ & (\f1|AU0|LOD0|oc0|Add53~1\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add57~2_combout\ & (!\f1|AU0|LOD0|oc0|Add53~1\)))) # (!\f1|AU0|LOD0|oc0|Add49~2_combout\ 
-- & ((\f1|AU0|LOD0|oc0|Add57~2_combout\ & (!\f1|AU0|LOD0|oc0|Add53~1\)) # (!\f1|AU0|LOD0|oc0|Add57~2_combout\ & ((\f1|AU0|LOD0|oc0|Add53~1\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add53~3\ = CARRY((\f1|AU0|LOD0|oc0|Add49~2_combout\ & (!\f1|AU0|LOD0|oc0|Add57~2_combout\ & !\f1|AU0|LOD0|oc0|Add53~1\)) # (!\f1|AU0|LOD0|oc0|Add49~2_combout\ & ((!\f1|AU0|LOD0|oc0|Add53~1\) # (!\f1|AU0|LOD0|oc0|Add57~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add49~2_combout\,
	datab => \f1|AU0|LOD0|oc0|Add57~2_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add53~1\,
	combout => \f1|AU0|LOD0|oc0|Add53~2_combout\,
	cout => \f1|AU0|LOD0|oc0|Add53~3\);

-- Location: LCCOMB_X57_Y37_N6
\f1|AU0|LOD0|oc0|Add53~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add53~4_combout\ = ((\f1|AU0|LOD0|oc0|Add49~4_combout\ $ (\f1|AU0|LOD0|oc0|Add57~4_combout\ $ (!\f1|AU0|LOD0|oc0|Add53~3\)))) # (GND)
-- \f1|AU0|LOD0|oc0|Add53~5\ = CARRY((\f1|AU0|LOD0|oc0|Add49~4_combout\ & ((\f1|AU0|LOD0|oc0|Add57~4_combout\) # (!\f1|AU0|LOD0|oc0|Add53~3\))) # (!\f1|AU0|LOD0|oc0|Add49~4_combout\ & (\f1|AU0|LOD0|oc0|Add57~4_combout\ & !\f1|AU0|LOD0|oc0|Add53~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add49~4_combout\,
	datab => \f1|AU0|LOD0|oc0|Add57~4_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add53~3\,
	combout => \f1|AU0|LOD0|oc0|Add53~4_combout\,
	cout => \f1|AU0|LOD0|oc0|Add53~5\);

-- Location: LCCOMB_X57_Y37_N8
\f1|AU0|LOD0|oc0|Add53~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add53~6_combout\ = (\f1|AU0|LOD0|oc0|Add57~6_combout\ & ((\f1|AU0|LOD0|oc0|Add49~6_combout\ & (\f1|AU0|LOD0|oc0|Add53~5\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add49~6_combout\ & (!\f1|AU0|LOD0|oc0|Add53~5\)))) # (!\f1|AU0|LOD0|oc0|Add57~6_combout\ 
-- & ((\f1|AU0|LOD0|oc0|Add49~6_combout\ & (!\f1|AU0|LOD0|oc0|Add53~5\)) # (!\f1|AU0|LOD0|oc0|Add49~6_combout\ & ((\f1|AU0|LOD0|oc0|Add53~5\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add53~7\ = CARRY((\f1|AU0|LOD0|oc0|Add57~6_combout\ & (!\f1|AU0|LOD0|oc0|Add49~6_combout\ & !\f1|AU0|LOD0|oc0|Add53~5\)) # (!\f1|AU0|LOD0|oc0|Add57~6_combout\ & ((!\f1|AU0|LOD0|oc0|Add53~5\) # (!\f1|AU0|LOD0|oc0|Add49~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add57~6_combout\,
	datab => \f1|AU0|LOD0|oc0|Add49~6_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add53~5\,
	combout => \f1|AU0|LOD0|oc0|Add53~6_combout\,
	cout => \f1|AU0|LOD0|oc0|Add53~7\);

-- Location: LCCOMB_X58_Y38_N22
\f1|AU0|LOD0|oc0|Add36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add36~0_combout\ = (\LF33|shift_register\(9) & \f1|AU0|LOD0|oc0|Add39~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(9),
	datad => \f1|AU0|LOD0|oc0|Add39~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add36~0_combout\);

-- Location: LCCOMB_X57_Y38_N24
\f1|AU0|LOD0|oc0|Add35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add35~0_combout\ = (\LF33|shift_register\(7) & (\LF33|shift_register\(6) & (\LF33|shift_register\(8) & \f1|AU0|LOD0|oc0|Add36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(7),
	datab => \LF33|shift_register\(6),
	datac => \LF33|shift_register\(8),
	datad => \f1|AU0|LOD0|oc0|Add36~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add35~0_combout\);

-- Location: LCCOMB_X57_Y38_N30
\f1|AU0|LOD0|oc0|Add31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add31~1_combout\ = (\LF33|shift_register\(4) & (\f1|AU0|LOD0|oc0|Add32~1_combout\ & ((!\LF33|shift_register\(3)) # (!\LF33|shift_register\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(2),
	datab => \LF33|shift_register\(3),
	datac => \LF33|shift_register\(4),
	datad => \f1|AU0|LOD0|oc0|Add32~1_combout\,
	combout => \f1|AU0|LOD0|oc0|Add31~1_combout\);

-- Location: LCCOMB_X57_Y38_N8
\f1|AU0|LOD0|oc0|Add35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add35~1_combout\ = (\LF33|shift_register\(8) & (\f1|AU0|LOD0|oc0|Add36~0_combout\ & ((!\LF33|shift_register\(6)) # (!\LF33|shift_register\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(7),
	datab => \LF33|shift_register\(8),
	datac => \LF33|shift_register\(6),
	datad => \f1|AU0|LOD0|oc0|Add36~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add35~1_combout\);

-- Location: LCCOMB_X58_Y38_N4
\f1|AU0|LOD0|oc0|Add31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add31~2_combout\ = (\f1|AU0|LOD0|oc0|Add32~1_combout\ & (((!\LF33|shift_register\(2) & \LF33|shift_register\(3))) # (!\LF33|shift_register\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(2),
	datab => \LF33|shift_register\(4),
	datac => \LF33|shift_register\(3),
	datad => \f1|AU0|LOD0|oc0|Add32~1_combout\,
	combout => \f1|AU0|LOD0|oc0|Add31~2_combout\);

-- Location: LCCOMB_X56_Y38_N8
\f1|AU0|LOD0|oc0|Add35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add35~2_combout\ = (\f1|AU0|LOD0|oc0|Add36~0_combout\ & (((!\LF33|shift_register\(6) & \LF33|shift_register\(7))) # (!\LF33|shift_register\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(8),
	datab => \LF33|shift_register\(6),
	datac => \LF33|shift_register\(7),
	datad => \f1|AU0|LOD0|oc0|Add36~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add35~2_combout\);

-- Location: LCCOMB_X56_Y38_N0
\f1|AU0|LOD0|oc0|Add33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add33~0_combout\ = (\f1|AU0|LOD0|oc0|Add31~2_combout\ & (\f1|AU0|LOD0|oc0|Add35~2_combout\ $ (VCC))) # (!\f1|AU0|LOD0|oc0|Add31~2_combout\ & (\f1|AU0|LOD0|oc0|Add35~2_combout\ & VCC))
-- \f1|AU0|LOD0|oc0|Add33~1\ = CARRY((\f1|AU0|LOD0|oc0|Add31~2_combout\ & \f1|AU0|LOD0|oc0|Add35~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add31~2_combout\,
	datab => \f1|AU0|LOD0|oc0|Add35~2_combout\,
	datad => VCC,
	combout => \f1|AU0|LOD0|oc0|Add33~0_combout\,
	cout => \f1|AU0|LOD0|oc0|Add33~1\);

-- Location: LCCOMB_X56_Y38_N2
\f1|AU0|LOD0|oc0|Add33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add33~2_combout\ = (\f1|AU0|LOD0|oc0|Add31~1_combout\ & ((\f1|AU0|LOD0|oc0|Add35~1_combout\ & (\f1|AU0|LOD0|oc0|Add33~1\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add35~1_combout\ & (!\f1|AU0|LOD0|oc0|Add33~1\)))) # (!\f1|AU0|LOD0|oc0|Add31~1_combout\ 
-- & ((\f1|AU0|LOD0|oc0|Add35~1_combout\ & (!\f1|AU0|LOD0|oc0|Add33~1\)) # (!\f1|AU0|LOD0|oc0|Add35~1_combout\ & ((\f1|AU0|LOD0|oc0|Add33~1\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add33~3\ = CARRY((\f1|AU0|LOD0|oc0|Add31~1_combout\ & (!\f1|AU0|LOD0|oc0|Add35~1_combout\ & !\f1|AU0|LOD0|oc0|Add33~1\)) # (!\f1|AU0|LOD0|oc0|Add31~1_combout\ & ((!\f1|AU0|LOD0|oc0|Add33~1\) # (!\f1|AU0|LOD0|oc0|Add35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add31~1_combout\,
	datab => \f1|AU0|LOD0|oc0|Add35~1_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add33~1\,
	combout => \f1|AU0|LOD0|oc0|Add33~2_combout\,
	cout => \f1|AU0|LOD0|oc0|Add33~3\);

-- Location: LCCOMB_X56_Y38_N4
\f1|AU0|LOD0|oc0|Add33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add33~4_combout\ = ((\f1|AU0|LOD0|oc0|Add31~0_combout\ $ (\f1|AU0|LOD0|oc0|Add35~0_combout\ $ (!\f1|AU0|LOD0|oc0|Add33~3\)))) # (GND)
-- \f1|AU0|LOD0|oc0|Add33~5\ = CARRY((\f1|AU0|LOD0|oc0|Add31~0_combout\ & ((\f1|AU0|LOD0|oc0|Add35~0_combout\) # (!\f1|AU0|LOD0|oc0|Add33~3\))) # (!\f1|AU0|LOD0|oc0|Add31~0_combout\ & (\f1|AU0|LOD0|oc0|Add35~0_combout\ & !\f1|AU0|LOD0|oc0|Add33~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add31~0_combout\,
	datab => \f1|AU0|LOD0|oc0|Add35~0_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add33~3\,
	combout => \f1|AU0|LOD0|oc0|Add33~4_combout\,
	cout => \f1|AU0|LOD0|oc0|Add33~5\);

-- Location: LCCOMB_X56_Y38_N6
\f1|AU0|LOD0|oc0|Add33~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add33~6_combout\ = \f1|AU0|LOD0|oc0|Add33~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \f1|AU0|LOD0|oc0|Add33~5\,
	combout => \f1|AU0|LOD0|oc0|Add33~6_combout\);

-- Location: LCCOMB_X60_Y37_N2
\f1|AU0|LOD0|oc0|Add43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add43~2_combout\ = (\LF33|shift_register\(15) & (\LF33|shift_register\(14) & \f1|AU0|LOD0|gen_LOD:13:detector|o_and~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(15),
	datac => \LF33|shift_register\(14),
	datad => \f1|AU0|LOD0|gen_LOD:13:detector|o_and~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add43~2_combout\);

-- Location: LCCOMB_X60_Y37_N22
\f1|AU0|LOD0|oc0|Add43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add43~3_combout\ = (\f1|AU0|LOD0|gen_LOD:13:detector|o_and~0_combout\ & ((!\LF33|shift_register\(14)) # (!\LF33|shift_register\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(15),
	datac => \LF33|shift_register\(14),
	datad => \f1|AU0|LOD0|gen_LOD:13:detector|o_and~0_combout\,
	combout => \f1|AU0|LOD0|oc0|Add43~3_combout\);

-- Location: LCCOMB_X60_Y37_N16
\f1|AU0|LOD0|oc0|Add39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add39~1_combout\ = (\LF33|shift_register\(12) & (\f1|AU0|LOD0|oc0|Add40~0_combout\ & ((!\LF33|shift_register\(10)) # (!\LF33|shift_register\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(12),
	datab => \LF33|shift_register\(11),
	datac => \f1|AU0|LOD0|oc0|Add40~0_combout\,
	datad => \LF33|shift_register\(10),
	combout => \f1|AU0|LOD0|oc0|Add39~1_combout\);

-- Location: LCCOMB_X60_Y37_N18
\f1|AU0|LOD0|oc0|Add43~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add43~5_combout\ = (\LF33|shift_register\(17) & (\LF33|shift_register\(18) & (\LF33|shift_register\(19) & \f1|AU0|LOD0|gen_LOD:17:detector|o_and~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(17),
	datab => \LF33|shift_register\(18),
	datac => \LF33|shift_register\(19),
	datad => \f1|AU0|LOD0|gen_LOD:17:detector|o_and~2_combout\,
	combout => \f1|AU0|LOD0|oc0|Add43~5_combout\);

-- Location: LCCOMB_X60_Y37_N10
\f1|AU0|LOD0|oc0|Add43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add43~4_combout\ = (\f1|AU0|LOD0|oc0|Add43~5_combout\ & (((!\LF33|shift_register\(14) & \LF33|shift_register\(15))) # (!\LF33|shift_register\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(14),
	datab => \LF33|shift_register\(15),
	datac => \LF33|shift_register\(16),
	datad => \f1|AU0|LOD0|oc0|Add43~5_combout\,
	combout => \f1|AU0|LOD0|oc0|Add43~4_combout\);

-- Location: LCCOMB_X60_Y37_N8
\f1|AU0|LOD0|oc0|Add39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add39~2_combout\ = (\f1|AU0|LOD0|oc0|Add40~0_combout\ & (((\LF33|shift_register\(11) & !\LF33|shift_register\(10))) # (!\LF33|shift_register\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(12),
	datab => \LF33|shift_register\(11),
	datac => \f1|AU0|LOD0|oc0|Add40~0_combout\,
	datad => \LF33|shift_register\(10),
	combout => \f1|AU0|LOD0|oc0|Add39~2_combout\);

-- Location: LCCOMB_X60_Y37_N24
\f1|AU0|LOD0|oc0|Add41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add41~0_combout\ = (\f1|AU0|LOD0|oc0|Add43~4_combout\ & (\f1|AU0|LOD0|oc0|Add39~2_combout\ $ (VCC))) # (!\f1|AU0|LOD0|oc0|Add43~4_combout\ & (\f1|AU0|LOD0|oc0|Add39~2_combout\ & VCC))
-- \f1|AU0|LOD0|oc0|Add41~1\ = CARRY((\f1|AU0|LOD0|oc0|Add43~4_combout\ & \f1|AU0|LOD0|oc0|Add39~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add43~4_combout\,
	datab => \f1|AU0|LOD0|oc0|Add39~2_combout\,
	datad => VCC,
	combout => \f1|AU0|LOD0|oc0|Add41~0_combout\,
	cout => \f1|AU0|LOD0|oc0|Add41~1\);

-- Location: LCCOMB_X60_Y37_N26
\f1|AU0|LOD0|oc0|Add41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add41~2_combout\ = (\f1|AU0|LOD0|oc0|Add43~3_combout\ & ((\f1|AU0|LOD0|oc0|Add39~1_combout\ & (\f1|AU0|LOD0|oc0|Add41~1\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add39~1_combout\ & (!\f1|AU0|LOD0|oc0|Add41~1\)))) # (!\f1|AU0|LOD0|oc0|Add43~3_combout\ 
-- & ((\f1|AU0|LOD0|oc0|Add39~1_combout\ & (!\f1|AU0|LOD0|oc0|Add41~1\)) # (!\f1|AU0|LOD0|oc0|Add39~1_combout\ & ((\f1|AU0|LOD0|oc0|Add41~1\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add41~3\ = CARRY((\f1|AU0|LOD0|oc0|Add43~3_combout\ & (!\f1|AU0|LOD0|oc0|Add39~1_combout\ & !\f1|AU0|LOD0|oc0|Add41~1\)) # (!\f1|AU0|LOD0|oc0|Add43~3_combout\ & ((!\f1|AU0|LOD0|oc0|Add41~1\) # (!\f1|AU0|LOD0|oc0|Add39~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add43~3_combout\,
	datab => \f1|AU0|LOD0|oc0|Add39~1_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add41~1\,
	combout => \f1|AU0|LOD0|oc0|Add41~2_combout\,
	cout => \f1|AU0|LOD0|oc0|Add41~3\);

-- Location: LCCOMB_X60_Y37_N28
\f1|AU0|LOD0|oc0|Add41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add41~4_combout\ = ((\f1|AU0|LOD0|oc0|Add39~0_combout\ $ (\f1|AU0|LOD0|oc0|Add43~2_combout\ $ (!\f1|AU0|LOD0|oc0|Add41~3\)))) # (GND)
-- \f1|AU0|LOD0|oc0|Add41~5\ = CARRY((\f1|AU0|LOD0|oc0|Add39~0_combout\ & ((\f1|AU0|LOD0|oc0|Add43~2_combout\) # (!\f1|AU0|LOD0|oc0|Add41~3\))) # (!\f1|AU0|LOD0|oc0|Add39~0_combout\ & (\f1|AU0|LOD0|oc0|Add43~2_combout\ & !\f1|AU0|LOD0|oc0|Add41~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add39~0_combout\,
	datab => \f1|AU0|LOD0|oc0|Add43~2_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add41~3\,
	combout => \f1|AU0|LOD0|oc0|Add41~4_combout\,
	cout => \f1|AU0|LOD0|oc0|Add41~5\);

-- Location: LCCOMB_X60_Y37_N30
\f1|AU0|LOD0|oc0|Add41~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add41~6_combout\ = \f1|AU0|LOD0|oc0|Add41~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \f1|AU0|LOD0|oc0|Add41~5\,
	combout => \f1|AU0|LOD0|oc0|Add41~6_combout\);

-- Location: LCCOMB_X56_Y38_N22
\f1|AU0|LOD0|oc0|Add37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add37~0_combout\ = (\f1|AU0|LOD0|oc0|Add41~0_combout\ & (\f1|AU0|LOD0|oc0|Add33~0_combout\ $ (VCC))) # (!\f1|AU0|LOD0|oc0|Add41~0_combout\ & (\f1|AU0|LOD0|oc0|Add33~0_combout\ & VCC))
-- \f1|AU0|LOD0|oc0|Add37~1\ = CARRY((\f1|AU0|LOD0|oc0|Add41~0_combout\ & \f1|AU0|LOD0|oc0|Add33~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add41~0_combout\,
	datab => \f1|AU0|LOD0|oc0|Add33~0_combout\,
	datad => VCC,
	combout => \f1|AU0|LOD0|oc0|Add37~0_combout\,
	cout => \f1|AU0|LOD0|oc0|Add37~1\);

-- Location: LCCOMB_X56_Y38_N24
\f1|AU0|LOD0|oc0|Add37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add37~2_combout\ = (\f1|AU0|LOD0|oc0|Add41~2_combout\ & ((\f1|AU0|LOD0|oc0|Add33~2_combout\ & (\f1|AU0|LOD0|oc0|Add37~1\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add33~2_combout\ & (!\f1|AU0|LOD0|oc0|Add37~1\)))) # (!\f1|AU0|LOD0|oc0|Add41~2_combout\ 
-- & ((\f1|AU0|LOD0|oc0|Add33~2_combout\ & (!\f1|AU0|LOD0|oc0|Add37~1\)) # (!\f1|AU0|LOD0|oc0|Add33~2_combout\ & ((\f1|AU0|LOD0|oc0|Add37~1\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add37~3\ = CARRY((\f1|AU0|LOD0|oc0|Add41~2_combout\ & (!\f1|AU0|LOD0|oc0|Add33~2_combout\ & !\f1|AU0|LOD0|oc0|Add37~1\)) # (!\f1|AU0|LOD0|oc0|Add41~2_combout\ & ((!\f1|AU0|LOD0|oc0|Add37~1\) # (!\f1|AU0|LOD0|oc0|Add33~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add41~2_combout\,
	datab => \f1|AU0|LOD0|oc0|Add33~2_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add37~1\,
	combout => \f1|AU0|LOD0|oc0|Add37~2_combout\,
	cout => \f1|AU0|LOD0|oc0|Add37~3\);

-- Location: LCCOMB_X56_Y38_N26
\f1|AU0|LOD0|oc0|Add37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add37~4_combout\ = ((\f1|AU0|LOD0|oc0|Add41~4_combout\ $ (\f1|AU0|LOD0|oc0|Add33~4_combout\ $ (!\f1|AU0|LOD0|oc0|Add37~3\)))) # (GND)
-- \f1|AU0|LOD0|oc0|Add37~5\ = CARRY((\f1|AU0|LOD0|oc0|Add41~4_combout\ & ((\f1|AU0|LOD0|oc0|Add33~4_combout\) # (!\f1|AU0|LOD0|oc0|Add37~3\))) # (!\f1|AU0|LOD0|oc0|Add41~4_combout\ & (\f1|AU0|LOD0|oc0|Add33~4_combout\ & !\f1|AU0|LOD0|oc0|Add37~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add41~4_combout\,
	datab => \f1|AU0|LOD0|oc0|Add33~4_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add37~3\,
	combout => \f1|AU0|LOD0|oc0|Add37~4_combout\,
	cout => \f1|AU0|LOD0|oc0|Add37~5\);

-- Location: LCCOMB_X56_Y38_N28
\f1|AU0|LOD0|oc0|Add37~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add37~6_combout\ = (\f1|AU0|LOD0|oc0|Add33~6_combout\ & ((\f1|AU0|LOD0|oc0|Add41~6_combout\ & (\f1|AU0|LOD0|oc0|Add37~5\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add41~6_combout\ & (!\f1|AU0|LOD0|oc0|Add37~5\)))) # (!\f1|AU0|LOD0|oc0|Add33~6_combout\ 
-- & ((\f1|AU0|LOD0|oc0|Add41~6_combout\ & (!\f1|AU0|LOD0|oc0|Add37~5\)) # (!\f1|AU0|LOD0|oc0|Add41~6_combout\ & ((\f1|AU0|LOD0|oc0|Add37~5\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add37~7\ = CARRY((\f1|AU0|LOD0|oc0|Add33~6_combout\ & (!\f1|AU0|LOD0|oc0|Add41~6_combout\ & !\f1|AU0|LOD0|oc0|Add37~5\)) # (!\f1|AU0|LOD0|oc0|Add33~6_combout\ & ((!\f1|AU0|LOD0|oc0|Add37~5\) # (!\f1|AU0|LOD0|oc0|Add41~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add33~6_combout\,
	datab => \f1|AU0|LOD0|oc0|Add41~6_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add37~5\,
	combout => \f1|AU0|LOD0|oc0|Add37~6_combout\,
	cout => \f1|AU0|LOD0|oc0|Add37~7\);

-- Location: LCCOMB_X56_Y38_N10
\f1|AU0|LOD0|oc0|Add45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add45~0_combout\ = (\f1|AU0|LOD0|oc0|Add37~0_combout\ & (\f1|AU0|LOD0|oc0|Add53~0_combout\ $ (VCC))) # (!\f1|AU0|LOD0|oc0|Add37~0_combout\ & (\f1|AU0|LOD0|oc0|Add53~0_combout\ & VCC))
-- \f1|AU0|LOD0|oc0|Add45~1\ = CARRY((\f1|AU0|LOD0|oc0|Add37~0_combout\ & \f1|AU0|LOD0|oc0|Add53~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add37~0_combout\,
	datab => \f1|AU0|LOD0|oc0|Add53~0_combout\,
	datad => VCC,
	combout => \f1|AU0|LOD0|oc0|Add45~0_combout\,
	cout => \f1|AU0|LOD0|oc0|Add45~1\);

-- Location: LCCOMB_X56_Y38_N12
\f1|AU0|LOD0|oc0|Add45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add45~2_combout\ = (\f1|AU0|LOD0|oc0|Add53~2_combout\ & ((\f1|AU0|LOD0|oc0|Add37~2_combout\ & (\f1|AU0|LOD0|oc0|Add45~1\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add37~2_combout\ & (!\f1|AU0|LOD0|oc0|Add45~1\)))) # (!\f1|AU0|LOD0|oc0|Add53~2_combout\ 
-- & ((\f1|AU0|LOD0|oc0|Add37~2_combout\ & (!\f1|AU0|LOD0|oc0|Add45~1\)) # (!\f1|AU0|LOD0|oc0|Add37~2_combout\ & ((\f1|AU0|LOD0|oc0|Add45~1\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add45~3\ = CARRY((\f1|AU0|LOD0|oc0|Add53~2_combout\ & (!\f1|AU0|LOD0|oc0|Add37~2_combout\ & !\f1|AU0|LOD0|oc0|Add45~1\)) # (!\f1|AU0|LOD0|oc0|Add53~2_combout\ & ((!\f1|AU0|LOD0|oc0|Add45~1\) # (!\f1|AU0|LOD0|oc0|Add37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add53~2_combout\,
	datab => \f1|AU0|LOD0|oc0|Add37~2_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add45~1\,
	combout => \f1|AU0|LOD0|oc0|Add45~2_combout\,
	cout => \f1|AU0|LOD0|oc0|Add45~3\);

-- Location: LCCOMB_X56_Y38_N14
\f1|AU0|LOD0|oc0|Add45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add45~4_combout\ = ((\f1|AU0|LOD0|oc0|Add37~4_combout\ $ (\f1|AU0|LOD0|oc0|Add53~4_combout\ $ (!\f1|AU0|LOD0|oc0|Add45~3\)))) # (GND)
-- \f1|AU0|LOD0|oc0|Add45~5\ = CARRY((\f1|AU0|LOD0|oc0|Add37~4_combout\ & ((\f1|AU0|LOD0|oc0|Add53~4_combout\) # (!\f1|AU0|LOD0|oc0|Add45~3\))) # (!\f1|AU0|LOD0|oc0|Add37~4_combout\ & (\f1|AU0|LOD0|oc0|Add53~4_combout\ & !\f1|AU0|LOD0|oc0|Add45~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add37~4_combout\,
	datab => \f1|AU0|LOD0|oc0|Add53~4_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add45~3\,
	combout => \f1|AU0|LOD0|oc0|Add45~4_combout\,
	cout => \f1|AU0|LOD0|oc0|Add45~5\);

-- Location: LCCOMB_X56_Y38_N16
\f1|AU0|LOD0|oc0|Add45~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add45~6_combout\ = (\f1|AU0|LOD0|oc0|Add53~6_combout\ & ((\f1|AU0|LOD0|oc0|Add37~6_combout\ & (\f1|AU0|LOD0|oc0|Add45~5\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add37~6_combout\ & (!\f1|AU0|LOD0|oc0|Add45~5\)))) # (!\f1|AU0|LOD0|oc0|Add53~6_combout\ 
-- & ((\f1|AU0|LOD0|oc0|Add37~6_combout\ & (!\f1|AU0|LOD0|oc0|Add45~5\)) # (!\f1|AU0|LOD0|oc0|Add37~6_combout\ & ((\f1|AU0|LOD0|oc0|Add45~5\) # (GND)))))
-- \f1|AU0|LOD0|oc0|Add45~7\ = CARRY((\f1|AU0|LOD0|oc0|Add53~6_combout\ & (!\f1|AU0|LOD0|oc0|Add37~6_combout\ & !\f1|AU0|LOD0|oc0|Add45~5\)) # (!\f1|AU0|LOD0|oc0|Add53~6_combout\ & ((!\f1|AU0|LOD0|oc0|Add45~5\) # (!\f1|AU0|LOD0|oc0|Add37~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add53~6_combout\,
	datab => \f1|AU0|LOD0|oc0|Add37~6_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add45~5\,
	combout => \f1|AU0|LOD0|oc0|Add45~6_combout\,
	cout => \f1|AU0|LOD0|oc0|Add45~7\);

-- Location: LCCOMB_X61_Y38_N16
\f1|AU0|LOD0|oc0|sum[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|sum[0]~0_combout\ = (\f1|AU0|LOD0|oc0|Add45~0_combout\ & (\f1|AU0|LOD0|oc0|Add29~0_combout\ $ (VCC))) # (!\f1|AU0|LOD0|oc0|Add45~0_combout\ & (\f1|AU0|LOD0|oc0|Add29~0_combout\ & VCC))
-- \f1|AU0|LOD0|oc0|sum[0]~1\ = CARRY((\f1|AU0|LOD0|oc0|Add45~0_combout\ & \f1|AU0|LOD0|oc0|Add29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add45~0_combout\,
	datab => \f1|AU0|LOD0|oc0|Add29~0_combout\,
	datad => VCC,
	combout => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	cout => \f1|AU0|LOD0|oc0|sum[0]~1\);

-- Location: LCCOMB_X61_Y38_N18
\f1|AU0|LOD0|oc0|sum[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|sum[1]~2_combout\ = (\f1|AU0|LOD0|oc0|Add45~2_combout\ & ((\f1|AU0|LOD0|oc0|Add29~2_combout\ & (\f1|AU0|LOD0|oc0|sum[0]~1\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add29~2_combout\ & (!\f1|AU0|LOD0|oc0|sum[0]~1\)))) # 
-- (!\f1|AU0|LOD0|oc0|Add45~2_combout\ & ((\f1|AU0|LOD0|oc0|Add29~2_combout\ & (!\f1|AU0|LOD0|oc0|sum[0]~1\)) # (!\f1|AU0|LOD0|oc0|Add29~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~1\) # (GND)))))
-- \f1|AU0|LOD0|oc0|sum[1]~3\ = CARRY((\f1|AU0|LOD0|oc0|Add45~2_combout\ & (!\f1|AU0|LOD0|oc0|Add29~2_combout\ & !\f1|AU0|LOD0|oc0|sum[0]~1\)) # (!\f1|AU0|LOD0|oc0|Add45~2_combout\ & ((!\f1|AU0|LOD0|oc0|sum[0]~1\) # (!\f1|AU0|LOD0|oc0|Add29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add45~2_combout\,
	datab => \f1|AU0|LOD0|oc0|Add29~2_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|sum[0]~1\,
	combout => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	cout => \f1|AU0|LOD0|oc0|sum[1]~3\);

-- Location: LCCOMB_X61_Y38_N20
\f1|AU0|LOD0|oc0|sum[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|sum[2]~4_combout\ = ((\f1|AU0|LOD0|oc0|Add45~4_combout\ $ (\f1|AU0|LOD0|oc0|Add29~4_combout\ $ (!\f1|AU0|LOD0|oc0|sum[1]~3\)))) # (GND)
-- \f1|AU0|LOD0|oc0|sum[2]~5\ = CARRY((\f1|AU0|LOD0|oc0|Add45~4_combout\ & ((\f1|AU0|LOD0|oc0|Add29~4_combout\) # (!\f1|AU0|LOD0|oc0|sum[1]~3\))) # (!\f1|AU0|LOD0|oc0|Add45~4_combout\ & (\f1|AU0|LOD0|oc0|Add29~4_combout\ & !\f1|AU0|LOD0|oc0|sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add45~4_combout\,
	datab => \f1|AU0|LOD0|oc0|Add29~4_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|sum[1]~3\,
	combout => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	cout => \f1|AU0|LOD0|oc0|sum[2]~5\);

-- Location: LCCOMB_X61_Y38_N22
\f1|AU0|LOD0|oc0|sum[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|sum[3]~6_combout\ = (\f1|AU0|LOD0|oc0|Add29~6_combout\ & ((\f1|AU0|LOD0|oc0|Add45~6_combout\ & (\f1|AU0|LOD0|oc0|sum[2]~5\ & VCC)) # (!\f1|AU0|LOD0|oc0|Add45~6_combout\ & (!\f1|AU0|LOD0|oc0|sum[2]~5\)))) # 
-- (!\f1|AU0|LOD0|oc0|Add29~6_combout\ & ((\f1|AU0|LOD0|oc0|Add45~6_combout\ & (!\f1|AU0|LOD0|oc0|sum[2]~5\)) # (!\f1|AU0|LOD0|oc0|Add45~6_combout\ & ((\f1|AU0|LOD0|oc0|sum[2]~5\) # (GND)))))
-- \f1|AU0|LOD0|oc0|sum[3]~7\ = CARRY((\f1|AU0|LOD0|oc0|Add29~6_combout\ & (!\f1|AU0|LOD0|oc0|Add45~6_combout\ & !\f1|AU0|LOD0|oc0|sum[2]~5\)) # (!\f1|AU0|LOD0|oc0|Add29~6_combout\ & ((!\f1|AU0|LOD0|oc0|sum[2]~5\) # (!\f1|AU0|LOD0|oc0|Add45~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add29~6_combout\,
	datab => \f1|AU0|LOD0|oc0|Add45~6_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|sum[2]~5\,
	combout => \f1|AU0|LOD0|oc0|sum[3]~6_combout\,
	cout => \f1|AU0|LOD0|oc0|sum[3]~7\);

-- Location: LCCOMB_X62_Y36_N28
\f1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~2_combout\ = \LF33|shift_register\(31) $ (\f1|AU0|LOD0|oc0|sum[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(31),
	datad => \f1|AU0|LOD0|oc0|sum[3]~6_combout\,
	combout => \f1|Add0~2_combout\);

-- Location: LCCOMB_X62_Y36_N14
\f1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~1_combout\ = \f1|AU0|LOD0|oc0|sum[2]~4_combout\ $ (\LF33|shift_register\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datad => \LF33|shift_register\(31),
	combout => \f1|Add0~1_combout\);

-- Location: LCCOMB_X62_Y36_N16
\f1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~0_combout\ = \f1|AU0|LOD0|oc0|sum[1]~2_combout\ $ (\LF33|shift_register\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datad => \LF33|shift_register\(31),
	combout => \f1|Add0~0_combout\);

-- Location: LCCOMB_X62_Y36_N0
\f1|shift_num[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|shift_num[0]~6_combout\ = \LF33|shift_register\(31) $ (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ $ (GND))
-- \f1|shift_num[0]~7\ = CARRY(\LF33|shift_register\(31) $ (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(31),
	datab => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => VCC,
	combout => \f1|shift_num[0]~6_combout\,
	cout => \f1|shift_num[0]~7\);

-- Location: LCCOMB_X62_Y36_N2
\f1|shift_num[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|shift_num[1]~8_combout\ = (\LF33|shift_register\(31) & ((\f1|Add0~0_combout\ & ((\f1|shift_num[0]~7\) # (GND))) # (!\f1|Add0~0_combout\ & (!\f1|shift_num[0]~7\)))) # (!\LF33|shift_register\(31) & ((\f1|Add0~0_combout\ & (!\f1|shift_num[0]~7\)) # 
-- (!\f1|Add0~0_combout\ & (\f1|shift_num[0]~7\ & VCC))))
-- \f1|shift_num[1]~9\ = CARRY((\LF33|shift_register\(31) & ((\f1|Add0~0_combout\) # (!\f1|shift_num[0]~7\))) # (!\LF33|shift_register\(31) & (\f1|Add0~0_combout\ & !\f1|shift_num[0]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(31),
	datab => \f1|Add0~0_combout\,
	datad => VCC,
	cin => \f1|shift_num[0]~7\,
	combout => \f1|shift_num[1]~8_combout\,
	cout => \f1|shift_num[1]~9\);

-- Location: LCCOMB_X62_Y36_N4
\f1|shift_num[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|shift_num[2]~10_combout\ = ((\LF33|shift_register\(31) $ (\f1|Add0~1_combout\ $ (!\f1|shift_num[1]~9\)))) # (GND)
-- \f1|shift_num[2]~11\ = CARRY((\LF33|shift_register\(31) & (!\f1|Add0~1_combout\ & !\f1|shift_num[1]~9\)) # (!\LF33|shift_register\(31) & ((!\f1|shift_num[1]~9\) # (!\f1|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(31),
	datab => \f1|Add0~1_combout\,
	datad => VCC,
	cin => \f1|shift_num[1]~9\,
	combout => \f1|shift_num[2]~10_combout\,
	cout => \f1|shift_num[2]~11\);

-- Location: LCCOMB_X62_Y36_N6
\f1|shift_num[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|shift_num[3]~12_combout\ = (\LF33|shift_register\(31) & ((\f1|Add0~2_combout\ & ((\f1|shift_num[2]~11\) # (GND))) # (!\f1|Add0~2_combout\ & (!\f1|shift_num[2]~11\)))) # (!\LF33|shift_register\(31) & ((\f1|Add0~2_combout\ & (!\f1|shift_num[2]~11\)) # 
-- (!\f1|Add0~2_combout\ & (\f1|shift_num[2]~11\ & VCC))))
-- \f1|shift_num[3]~13\ = CARRY((\LF33|shift_register\(31) & ((\f1|Add0~2_combout\) # (!\f1|shift_num[2]~11\))) # (!\LF33|shift_register\(31) & (\f1|Add0~2_combout\ & !\f1|shift_num[2]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(31),
	datab => \f1|Add0~2_combout\,
	datad => VCC,
	cin => \f1|shift_num[2]~11\,
	combout => \f1|shift_num[3]~12_combout\,
	cout => \f1|shift_num[3]~13\);

-- Location: FF_X62_Y36_N7
\f1|shift_num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|shift_num[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|shift_num\(3));

-- Location: LCCOMB_X56_Y38_N30
\f1|AU0|LOD0|oc0|Add37~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add37~8_combout\ = !\f1|AU0|LOD0|oc0|Add37~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \f1|AU0|LOD0|oc0|Add37~7\,
	combout => \f1|AU0|LOD0|oc0|Add37~8_combout\);

-- Location: LCCOMB_X57_Y37_N10
\f1|AU0|LOD0|oc0|Add53~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add53~8_combout\ = !\f1|AU0|LOD0|oc0|Add53~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \f1|AU0|LOD0|oc0|Add53~7\,
	combout => \f1|AU0|LOD0|oc0|Add53~8_combout\);

-- Location: LCCOMB_X56_Y38_N18
\f1|AU0|LOD0|oc0|Add45~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add45~8_combout\ = ((\f1|AU0|LOD0|oc0|Add37~8_combout\ $ (\f1|AU0|LOD0|oc0|Add53~8_combout\ $ (!\f1|AU0|LOD0|oc0|Add45~7\)))) # (GND)
-- \f1|AU0|LOD0|oc0|Add45~9\ = CARRY((\f1|AU0|LOD0|oc0|Add37~8_combout\ & ((\f1|AU0|LOD0|oc0|Add53~8_combout\) # (!\f1|AU0|LOD0|oc0|Add45~7\))) # (!\f1|AU0|LOD0|oc0|Add37~8_combout\ & (\f1|AU0|LOD0|oc0|Add53~8_combout\ & !\f1|AU0|LOD0|oc0|Add45~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add37~8_combout\,
	datab => \f1|AU0|LOD0|oc0|Add53~8_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add45~7\,
	combout => \f1|AU0|LOD0|oc0|Add45~8_combout\,
	cout => \f1|AU0|LOD0|oc0|Add45~9\);

-- Location: LCCOMB_X61_Y37_N12
\f1|AU0|LOD0|oc0|Add21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add21~8_combout\ = !\f1|AU0|LOD0|oc0|Add21~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \f1|AU0|LOD0|oc0|Add21~7\,
	combout => \f1|AU0|LOD0|oc0|Add21~8_combout\);

-- Location: LCCOMB_X60_Y38_N18
\f1|AU0|LOD0|oc0|Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add13~8_combout\ = !\f1|AU0|LOD0|oc0|Add13~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \f1|AU0|LOD0|oc0|Add13~7\,
	combout => \f1|AU0|LOD0|oc0|Add13~8_combout\);

-- Location: LCCOMB_X60_Y38_N8
\f1|AU0|LOD0|oc0|Add27~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add27~8_combout\ = \f1|AU0|LOD0|oc0|Add21~8_combout\ $ (\f1|AU0|LOD0|oc0|Add27~7\ $ (!\f1|AU0|LOD0|oc0|Add13~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|AU0|LOD0|oc0|Add21~8_combout\,
	datad => \f1|AU0|LOD0|oc0|Add13~8_combout\,
	cin => \f1|AU0|LOD0|oc0|Add27~7\,
	combout => \f1|AU0|LOD0|oc0|Add27~8_combout\);

-- Location: LCCOMB_X60_Y38_N28
\f1|AU0|LOD0|oc0|Add29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add29~8_combout\ = (\f1|AU0|LOD0|oc0|Add27~8_combout\ & (\f1|AU0|LOD0|oc0|Add29~7\ $ (GND))) # (!\f1|AU0|LOD0|oc0|Add27~8_combout\ & (!\f1|AU0|LOD0|oc0|Add29~7\ & VCC))
-- \f1|AU0|LOD0|oc0|Add29~9\ = CARRY((\f1|AU0|LOD0|oc0|Add27~8_combout\ & !\f1|AU0|LOD0|oc0|Add29~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \f1|AU0|LOD0|oc0|Add27~8_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|Add29~7\,
	combout => \f1|AU0|LOD0|oc0|Add29~8_combout\,
	cout => \f1|AU0|LOD0|oc0|Add29~9\);

-- Location: LCCOMB_X61_Y38_N24
\f1|AU0|LOD0|oc0|sum[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|sum[4]~8_combout\ = ((\f1|AU0|LOD0|oc0|Add45~8_combout\ $ (\f1|AU0|LOD0|oc0|Add29~8_combout\ $ (!\f1|AU0|LOD0|oc0|sum[3]~7\)))) # (GND)
-- \f1|AU0|LOD0|oc0|sum[4]~9\ = CARRY((\f1|AU0|LOD0|oc0|Add45~8_combout\ & ((\f1|AU0|LOD0|oc0|Add29~8_combout\) # (!\f1|AU0|LOD0|oc0|sum[3]~7\))) # (!\f1|AU0|LOD0|oc0|Add45~8_combout\ & (\f1|AU0|LOD0|oc0|Add29~8_combout\ & !\f1|AU0|LOD0|oc0|sum[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add45~8_combout\,
	datab => \f1|AU0|LOD0|oc0|Add29~8_combout\,
	datad => VCC,
	cin => \f1|AU0|LOD0|oc0|sum[3]~7\,
	combout => \f1|AU0|LOD0|oc0|sum[4]~8_combout\,
	cout => \f1|AU0|LOD0|oc0|sum[4]~9\);

-- Location: LCCOMB_X62_Y36_N18
\f1|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~3_combout\ = \f1|AU0|LOD0|oc0|sum[4]~8_combout\ $ (\LF33|shift_register\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|AU0|LOD0|oc0|sum[4]~8_combout\,
	datad => \LF33|shift_register\(31),
	combout => \f1|Add0~3_combout\);

-- Location: LCCOMB_X62_Y36_N8
\f1|shift_num[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|shift_num[4]~14_combout\ = ((\LF33|shift_register\(31) $ (\f1|Add0~3_combout\ $ (!\f1|shift_num[3]~13\)))) # (GND)
-- \f1|shift_num[4]~15\ = CARRY((\LF33|shift_register\(31) & (!\f1|Add0~3_combout\ & !\f1|shift_num[3]~13\)) # (!\LF33|shift_register\(31) & ((!\f1|shift_num[3]~13\) # (!\f1|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(31),
	datab => \f1|Add0~3_combout\,
	datad => VCC,
	cin => \f1|shift_num[3]~13\,
	combout => \f1|shift_num[4]~14_combout\,
	cout => \f1|shift_num[4]~15\);

-- Location: FF_X62_Y36_N9
\f1|shift_num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|shift_num[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|shift_num\(4));

-- Location: LCCOMB_X68_Y36_N28
\f1|ShiftLeft0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~37_combout\ = (!\f1|shift_num\(3) & \f1|shift_num\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(3),
	datac => \f1|shift_num\(4),
	combout => \f1|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X65_Y37_N2
\f1|U_tilde[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[1]~34_combout\ = (\LF33|shift_register\(1) & ((\f1|U_tilde[0]~33\) # (GND))) # (!\LF33|shift_register\(1) & (!\f1|U_tilde[0]~33\))
-- \f1|U_tilde[1]~35\ = CARRY((\LF33|shift_register\(1)) # (!\f1|U_tilde[0]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(1),
	datad => VCC,
	cin => \f1|U_tilde[0]~33\,
	combout => \f1|U_tilde[1]~34_combout\,
	cout => \f1|U_tilde[1]~35\);

-- Location: FF_X65_Y37_N3
\f1|U_tilde[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[1]~34_combout\,
	asdata => \LF33|shift_register\(1),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(1));

-- Location: FF_X62_Y36_N1
\f1|shift_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|shift_num[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|shift_num\(0));

-- Location: FF_X62_Y36_N5
\f1|shift_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|shift_num[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|shift_num\(2));

-- Location: FF_X62_Y36_N3
\f1|shift_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|shift_num[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|shift_num\(1));

-- Location: LCCOMB_X68_Y36_N6
\f1|shift1[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|shift1[14]~0_combout\ = (\f1|shift_num\(2)) # (\f1|shift_num\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|shift_num\(2),
	datad => \f1|shift_num\(1),
	combout => \f1|shift1[14]~0_combout\);

-- Location: LCCOMB_X68_Y36_N22
\f1|ShiftLeft0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~136_combout\ = (!\f1|shift1[14]~0_combout\ & ((\f1|shift_num\(0) & (\f1|U_tilde\(0))) # (!\f1|shift_num\(0) & ((\f1|U_tilde\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|U_tilde\(0),
	datab => \f1|U_tilde\(1),
	datac => \f1|shift_num\(0),
	datad => \f1|shift1[14]~0_combout\,
	combout => \f1|ShiftLeft0~136_combout\);

-- Location: LCCOMB_X56_Y38_N20
\f1|AU0|LOD0|oc0|Add45~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add45~10_combout\ = \f1|AU0|LOD0|oc0|Add45~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \f1|AU0|LOD0|oc0|Add45~9\,
	combout => \f1|AU0|LOD0|oc0|Add45~10_combout\);

-- Location: LCCOMB_X60_Y38_N30
\f1|AU0|LOD0|oc0|Add29~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|Add29~10_combout\ = \f1|AU0|LOD0|oc0|Add29~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \f1|AU0|LOD0|oc0|Add29~9\,
	combout => \f1|AU0|LOD0|oc0|Add29~10_combout\);

-- Location: LCCOMB_X61_Y38_N26
\f1|AU0|LOD0|oc0|sum[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|LOD0|oc0|sum[5]~10_combout\ = \f1|AU0|LOD0|oc0|Add45~10_combout\ $ (\f1|AU0|LOD0|oc0|sum[4]~9\ $ (\f1|AU0|LOD0|oc0|Add29~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|Add45~10_combout\,
	datad => \f1|AU0|LOD0|oc0|Add29~10_combout\,
	cin => \f1|AU0|LOD0|oc0|sum[4]~9\,
	combout => \f1|AU0|LOD0|oc0|sum[5]~10_combout\);

-- Location: LCCOMB_X62_Y36_N24
\f1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|Add0~4_combout\ = \f1|AU0|LOD0|oc0|sum[5]~10_combout\ $ (\LF33|shift_register\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|AU0|LOD0|oc0|sum[5]~10_combout\,
	datad => \LF33|shift_register\(31),
	combout => \f1|Add0~4_combout\);

-- Location: LCCOMB_X62_Y36_N10
\f1|shift_num[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|shift_num[5]~16_combout\ = \LF33|shift_register\(31) $ (\f1|shift_num[4]~15\ $ (!\f1|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(31),
	datad => \f1|Add0~4_combout\,
	cin => \f1|shift_num[4]~15\,
	combout => \f1|shift_num[5]~16_combout\);

-- Location: FF_X62_Y36_N11
\f1|shift_num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|shift_num[5]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|shift_num\(5));

-- Location: LCCOMB_X65_Y37_N4
\f1|U_tilde[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[2]~36_combout\ = (\LF33|shift_register\(2) & (!\f1|U_tilde[1]~35\ & VCC)) # (!\LF33|shift_register\(2) & (\f1|U_tilde[1]~35\ $ (GND)))
-- \f1|U_tilde[2]~37\ = CARRY((!\LF33|shift_register\(2) & !\f1|U_tilde[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(2),
	datad => VCC,
	cin => \f1|U_tilde[1]~35\,
	combout => \f1|U_tilde[2]~36_combout\,
	cout => \f1|U_tilde[2]~37\);

-- Location: LCCOMB_X65_Y37_N6
\f1|U_tilde[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[3]~38_combout\ = (\LF33|shift_register\(3) & ((\f1|U_tilde[2]~37\) # (GND))) # (!\LF33|shift_register\(3) & (!\f1|U_tilde[2]~37\))
-- \f1|U_tilde[3]~39\ = CARRY((\LF33|shift_register\(3)) # (!\f1|U_tilde[2]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(3),
	datad => VCC,
	cin => \f1|U_tilde[2]~37\,
	combout => \f1|U_tilde[3]~38_combout\,
	cout => \f1|U_tilde[3]~39\);

-- Location: LCCOMB_X65_Y37_N8
\f1|U_tilde[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[4]~40_combout\ = (\LF33|shift_register\(4) & (!\f1|U_tilde[3]~39\ & VCC)) # (!\LF33|shift_register\(4) & (\f1|U_tilde[3]~39\ $ (GND)))
-- \f1|U_tilde[4]~41\ = CARRY((!\LF33|shift_register\(4) & !\f1|U_tilde[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(4),
	datad => VCC,
	cin => \f1|U_tilde[3]~39\,
	combout => \f1|U_tilde[4]~40_combout\,
	cout => \f1|U_tilde[4]~41\);

-- Location: LCCOMB_X65_Y37_N10
\f1|U_tilde[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[5]~42_combout\ = (\f1|U_tilde\(0) & ((\f1|U_tilde[4]~41\) # (GND))) # (!\f1|U_tilde\(0) & (!\f1|U_tilde[4]~41\))
-- \f1|U_tilde[5]~43\ = CARRY((\f1|U_tilde\(0)) # (!\f1|U_tilde[4]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|U_tilde\(0),
	datad => VCC,
	cin => \f1|U_tilde[4]~41\,
	combout => \f1|U_tilde[5]~42_combout\,
	cout => \f1|U_tilde[5]~43\);

-- Location: LCCOMB_X65_Y37_N12
\f1|U_tilde[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[6]~44_combout\ = (\LF33|shift_register\(6) & (!\f1|U_tilde[5]~43\ & VCC)) # (!\LF33|shift_register\(6) & (\f1|U_tilde[5]~43\ $ (GND)))
-- \f1|U_tilde[6]~45\ = CARRY((!\LF33|shift_register\(6) & !\f1|U_tilde[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(6),
	datad => VCC,
	cin => \f1|U_tilde[5]~43\,
	combout => \f1|U_tilde[6]~44_combout\,
	cout => \f1|U_tilde[6]~45\);

-- Location: LCCOMB_X65_Y37_N14
\f1|U_tilde[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[7]~46_combout\ = (\LF33|shift_register\(7) & ((\f1|U_tilde[6]~45\) # (GND))) # (!\LF33|shift_register\(7) & (!\f1|U_tilde[6]~45\))
-- \f1|U_tilde[7]~47\ = CARRY((\LF33|shift_register\(7)) # (!\f1|U_tilde[6]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(7),
	datad => VCC,
	cin => \f1|U_tilde[6]~45\,
	combout => \f1|U_tilde[7]~46_combout\,
	cout => \f1|U_tilde[7]~47\);

-- Location: LCCOMB_X65_Y37_N16
\f1|U_tilde[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[8]~48_combout\ = (\LF33|shift_register\(8) & (!\f1|U_tilde[7]~47\ & VCC)) # (!\LF33|shift_register\(8) & (\f1|U_tilde[7]~47\ $ (GND)))
-- \f1|U_tilde[8]~49\ = CARRY((!\LF33|shift_register\(8) & !\f1|U_tilde[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(8),
	datad => VCC,
	cin => \f1|U_tilde[7]~47\,
	combout => \f1|U_tilde[8]~48_combout\,
	cout => \f1|U_tilde[8]~49\);

-- Location: LCCOMB_X65_Y37_N18
\f1|U_tilde[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[9]~50_combout\ = (\LF33|shift_register\(9) & ((\f1|U_tilde[8]~49\) # (GND))) # (!\LF33|shift_register\(9) & (!\f1|U_tilde[8]~49\))
-- \f1|U_tilde[9]~51\ = CARRY((\LF33|shift_register\(9)) # (!\f1|U_tilde[8]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(9),
	datad => VCC,
	cin => \f1|U_tilde[8]~49\,
	combout => \f1|U_tilde[9]~50_combout\,
	cout => \f1|U_tilde[9]~51\);

-- Location: LCCOMB_X65_Y37_N20
\f1|U_tilde[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[10]~52_combout\ = (\LF33|shift_register\(10) & (!\f1|U_tilde[9]~51\ & VCC)) # (!\LF33|shift_register\(10) & (\f1|U_tilde[9]~51\ $ (GND)))
-- \f1|U_tilde[10]~53\ = CARRY((!\LF33|shift_register\(10) & !\f1|U_tilde[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(10),
	datad => VCC,
	cin => \f1|U_tilde[9]~51\,
	combout => \f1|U_tilde[10]~52_combout\,
	cout => \f1|U_tilde[10]~53\);

-- Location: LCCOMB_X65_Y37_N22
\f1|U_tilde[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[11]~54_combout\ = (\LF33|shift_register\(11) & ((\f1|U_tilde[10]~53\) # (GND))) # (!\LF33|shift_register\(11) & (!\f1|U_tilde[10]~53\))
-- \f1|U_tilde[11]~55\ = CARRY((\LF33|shift_register\(11)) # (!\f1|U_tilde[10]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(11),
	datad => VCC,
	cin => \f1|U_tilde[10]~53\,
	combout => \f1|U_tilde[11]~54_combout\,
	cout => \f1|U_tilde[11]~55\);

-- Location: LCCOMB_X65_Y37_N24
\f1|U_tilde[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[12]~56_combout\ = (\LF33|shift_register\(12) & (!\f1|U_tilde[11]~55\ & VCC)) # (!\LF33|shift_register\(12) & (\f1|U_tilde[11]~55\ $ (GND)))
-- \f1|U_tilde[12]~57\ = CARRY((!\LF33|shift_register\(12) & !\f1|U_tilde[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(12),
	datad => VCC,
	cin => \f1|U_tilde[11]~55\,
	combout => \f1|U_tilde[12]~56_combout\,
	cout => \f1|U_tilde[12]~57\);

-- Location: LCCOMB_X65_Y37_N26
\f1|U_tilde[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[13]~58_combout\ = (\LF33|shift_register\(13) & ((\f1|U_tilde[12]~57\) # (GND))) # (!\LF33|shift_register\(13) & (!\f1|U_tilde[12]~57\))
-- \f1|U_tilde[13]~59\ = CARRY((\LF33|shift_register\(13)) # (!\f1|U_tilde[12]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(13),
	datad => VCC,
	cin => \f1|U_tilde[12]~57\,
	combout => \f1|U_tilde[13]~58_combout\,
	cout => \f1|U_tilde[13]~59\);

-- Location: LCCOMB_X65_Y37_N28
\f1|U_tilde[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[14]~60_combout\ = (\LF33|shift_register\(14) & (!\f1|U_tilde[13]~59\ & VCC)) # (!\LF33|shift_register\(14) & (\f1|U_tilde[13]~59\ $ (GND)))
-- \f1|U_tilde[14]~61\ = CARRY((!\LF33|shift_register\(14) & !\f1|U_tilde[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(14),
	datad => VCC,
	cin => \f1|U_tilde[13]~59\,
	combout => \f1|U_tilde[14]~60_combout\,
	cout => \f1|U_tilde[14]~61\);

-- Location: LCCOMB_X65_Y37_N30
\f1|U_tilde[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[15]~62_combout\ = (\LF33|shift_register\(15) & ((\f1|U_tilde[14]~61\) # (GND))) # (!\LF33|shift_register\(15) & (!\f1|U_tilde[14]~61\))
-- \f1|U_tilde[15]~63\ = CARRY((\LF33|shift_register\(15)) # (!\f1|U_tilde[14]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(15),
	datad => VCC,
	cin => \f1|U_tilde[14]~61\,
	combout => \f1|U_tilde[15]~62_combout\,
	cout => \f1|U_tilde[15]~63\);

-- Location: LCCOMB_X65_Y36_N0
\f1|U_tilde[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[16]~64_combout\ = (\LF33|shift_register\(16) & (!\f1|U_tilde[15]~63\ & VCC)) # (!\LF33|shift_register\(16) & (\f1|U_tilde[15]~63\ $ (GND)))
-- \f1|U_tilde[16]~65\ = CARRY((!\LF33|shift_register\(16) & !\f1|U_tilde[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(16),
	datad => VCC,
	cin => \f1|U_tilde[15]~63\,
	combout => \f1|U_tilde[16]~64_combout\,
	cout => \f1|U_tilde[16]~65\);

-- Location: LCCOMB_X65_Y36_N2
\f1|U_tilde[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[17]~66_combout\ = (\LF33|shift_register\(17) & ((\f1|U_tilde[16]~65\) # (GND))) # (!\LF33|shift_register\(17) & (!\f1|U_tilde[16]~65\))
-- \f1|U_tilde[17]~67\ = CARRY((\LF33|shift_register\(17)) # (!\f1|U_tilde[16]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(17),
	datad => VCC,
	cin => \f1|U_tilde[16]~65\,
	combout => \f1|U_tilde[17]~66_combout\,
	cout => \f1|U_tilde[17]~67\);

-- Location: FF_X65_Y36_N3
\f1|U_tilde[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[17]~66_combout\,
	asdata => \LF33|shift_register\(17),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(17));

-- Location: FF_X65_Y37_N31
\f1|U_tilde[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[15]~62_combout\,
	asdata => \LF33|shift_register\(15),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(15));

-- Location: LCCOMB_X66_Y37_N10
\f1|ShiftLeft0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~33_combout\ = (\f1|shift_num\(1) & ((\f1|U_tilde\(15)))) # (!\f1|shift_num\(1) & (\f1|U_tilde\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|U_tilde\(17),
	datac => \f1|shift_num\(1),
	datad => \f1|U_tilde\(15),
	combout => \f1|ShiftLeft0~33_combout\);

-- Location: FF_X65_Y36_N1
\f1|U_tilde[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[16]~64_combout\,
	asdata => \LF33|shift_register\(16),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(16));

-- Location: FF_X65_Y37_N29
\f1|U_tilde[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[14]~60_combout\,
	asdata => \LF33|shift_register\(14),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(14));

-- Location: LCCOMB_X66_Y37_N8
\f1|ShiftLeft0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~19_combout\ = (\f1|shift_num\(1) & ((\f1|U_tilde\(14)))) # (!\f1|shift_num\(1) & (\f1|U_tilde\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|U_tilde\(16),
	datac => \f1|shift_num\(1),
	datad => \f1|U_tilde\(14),
	combout => \f1|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X66_Y37_N0
\f1|ShiftLeft0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~34_combout\ = (\f1|shift_num\(0) & ((\f1|ShiftLeft0~19_combout\))) # (!\f1|shift_num\(0) & (\f1|ShiftLeft0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~33_combout\,
	datab => \f1|ShiftLeft0~19_combout\,
	datac => \f1|shift_num\(0),
	combout => \f1|ShiftLeft0~34_combout\);

-- Location: FF_X65_Y37_N27
\f1|U_tilde[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[13]~58_combout\,
	asdata => \LF33|shift_register\(13),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(13));

-- Location: FF_X65_Y37_N23
\f1|U_tilde[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[11]~54_combout\,
	asdata => \LF33|shift_register\(11),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(11));

-- Location: LCCOMB_X66_Y37_N16
\f1|ShiftLeft0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~31_combout\ = (\f1|shift_num\(1) & ((\f1|U_tilde\(11)))) # (!\f1|shift_num\(1) & (\f1|U_tilde\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(1),
	datac => \f1|U_tilde\(13),
	datad => \f1|U_tilde\(11),
	combout => \f1|ShiftLeft0~31_combout\);

-- Location: FF_X65_Y37_N25
\f1|U_tilde[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[12]~56_combout\,
	asdata => \LF33|shift_register\(12),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(12));

-- Location: FF_X65_Y37_N21
\f1|U_tilde[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[10]~52_combout\,
	asdata => \LF33|shift_register\(10),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(10));

-- Location: LCCOMB_X66_Y37_N20
\f1|ShiftLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~16_combout\ = (\f1|shift_num\(1) & ((\f1|U_tilde\(10)))) # (!\f1|shift_num\(1) & (\f1|U_tilde\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|U_tilde\(12),
	datac => \f1|shift_num\(1),
	datad => \f1|U_tilde\(10),
	combout => \f1|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X67_Y37_N20
\f1|ShiftLeft0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~32_combout\ = (\f1|shift_num\(0) & ((\f1|ShiftLeft0~16_combout\))) # (!\f1|shift_num\(0) & (\f1|ShiftLeft0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|shift_num\(0),
	datac => \f1|ShiftLeft0~31_combout\,
	datad => \f1|ShiftLeft0~16_combout\,
	combout => \f1|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X68_Y37_N10
\f1|ShiftLeft0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~35_combout\ = (\f1|shift_num\(2) & ((\f1|ShiftLeft0~32_combout\))) # (!\f1|shift_num\(2) & (\f1|ShiftLeft0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~34_combout\,
	datac => \f1|shift_num\(2),
	datad => \f1|ShiftLeft0~32_combout\,
	combout => \f1|ShiftLeft0~35_combout\);

-- Location: FF_X65_Y37_N19
\f1|U_tilde[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[9]~50_combout\,
	asdata => \LF33|shift_register\(9),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(9));

-- Location: FF_X65_Y37_N15
\f1|U_tilde[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[7]~46_combout\,
	asdata => \LF33|shift_register\(7),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(7));

-- Location: LCCOMB_X66_Y37_N6
\f1|ShiftLeft0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~28_combout\ = (\f1|shift_num\(1) & ((\f1|U_tilde\(7)))) # (!\f1|shift_num\(1) & (\f1|U_tilde\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|U_tilde\(9),
	datac => \f1|shift_num\(1),
	datad => \f1|U_tilde\(7),
	combout => \f1|ShiftLeft0~28_combout\);

-- Location: FF_X65_Y37_N17
\f1|U_tilde[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[8]~48_combout\,
	asdata => \LF33|shift_register\(8),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(8));

-- Location: FF_X65_Y37_N13
\f1|U_tilde[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[6]~44_combout\,
	asdata => \LF33|shift_register\(6),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(6));

-- Location: LCCOMB_X66_Y37_N12
\f1|ShiftLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~12_combout\ = (\f1|shift_num\(1) & ((\f1|U_tilde\(6)))) # (!\f1|shift_num\(1) & (\f1|U_tilde\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|U_tilde\(8),
	datac => \f1|shift_num\(1),
	datad => \f1|U_tilde\(6),
	combout => \f1|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X67_Y37_N14
\f1|ShiftLeft0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~29_combout\ = (\f1|shift_num\(0) & ((\f1|ShiftLeft0~12_combout\))) # (!\f1|shift_num\(0) & (\f1|ShiftLeft0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|shift_num\(0),
	datac => \f1|ShiftLeft0~28_combout\,
	datad => \f1|ShiftLeft0~12_combout\,
	combout => \f1|ShiftLeft0~29_combout\);

-- Location: FF_X65_Y37_N7
\f1|U_tilde[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[3]~38_combout\,
	asdata => \LF33|shift_register\(3),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(3));

-- Location: FF_X65_Y37_N11
\f1|U_tilde[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[5]~42_combout\,
	asdata => \f1|U_tilde\(0),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(5));

-- Location: LCCOMB_X66_Y37_N4
\f1|ShiftLeft0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~26_combout\ = (\f1|shift_num\(1) & (\f1|U_tilde\(3))) # (!\f1|shift_num\(1) & ((\f1|U_tilde\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(1),
	datac => \f1|U_tilde\(3),
	datad => \f1|U_tilde\(5),
	combout => \f1|ShiftLeft0~26_combout\);

-- Location: FF_X65_Y37_N5
\f1|U_tilde[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[2]~36_combout\,
	asdata => \LF33|shift_register\(2),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(2));

-- Location: FF_X65_Y37_N9
\f1|U_tilde[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[4]~40_combout\,
	asdata => \LF33|shift_register\(4),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(4));

-- Location: LCCOMB_X66_Y37_N24
\f1|ShiftLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~9_combout\ = (\f1|shift_num\(1) & (\f1|U_tilde\(2))) # (!\f1|shift_num\(1) & ((\f1|U_tilde\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|U_tilde\(2),
	datac => \f1|shift_num\(1),
	datad => \f1|U_tilde\(4),
	combout => \f1|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X67_Y37_N24
\f1|ShiftLeft0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~27_combout\ = (\f1|shift_num\(0) & ((\f1|ShiftLeft0~9_combout\))) # (!\f1|shift_num\(0) & (\f1|ShiftLeft0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|shift_num\(0),
	datac => \f1|ShiftLeft0~26_combout\,
	datad => \f1|ShiftLeft0~9_combout\,
	combout => \f1|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X68_Y37_N28
\f1|ShiftLeft0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~30_combout\ = (\f1|shift_num\(2) & ((\f1|ShiftLeft0~27_combout\))) # (!\f1|shift_num\(2) & (\f1|ShiftLeft0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~29_combout\,
	datac => \f1|shift_num\(2),
	datad => \f1|ShiftLeft0~27_combout\,
	combout => \f1|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X68_Y37_N16
\f1|ShiftLeft0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~36_combout\ = (!\f1|shift_num\(4) & ((\f1|shift_num\(3) & ((\f1|ShiftLeft0~30_combout\))) # (!\f1|shift_num\(3) & (\f1|ShiftLeft0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~35_combout\,
	datab => \f1|ShiftLeft0~30_combout\,
	datac => \f1|shift_num\(3),
	datad => \f1|shift_num\(4),
	combout => \f1|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X68_Y37_N6
\f1|ShiftLeft0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~39_combout\ = (!\f1|shift_num\(5) & ((\f1|ShiftLeft0~36_combout\) # ((\f1|ShiftLeft0~37_combout\ & \f1|ShiftLeft0~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~37_combout\,
	datab => \f1|ShiftLeft0~136_combout\,
	datac => \f1|shift_num\(5),
	datad => \f1|ShiftLeft0~36_combout\,
	combout => \f1|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X68_Y38_N22
\f1|ShiftLeft0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~23_combout\ = (!\f1|shift_num\(3) & (!\f1|shift_num\(2) & \f1|shift_num\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|shift_num\(3),
	datac => \f1|shift_num\(2),
	datad => \f1|shift_num\(4),
	combout => \f1|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X67_Y37_N2
\f1|ShiftLeft0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~51_combout\ = (!\f1|shift_num\(0) & ((\f1|shift_num\(1) & (\f1|U_tilde\(0))) # (!\f1|shift_num\(1) & ((\f1|U_tilde\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(1),
	datab => \f1|U_tilde\(0),
	datac => \f1|U_tilde\(2),
	datad => \f1|shift_num\(0),
	combout => \f1|ShiftLeft0~51_combout\);

-- Location: LCCOMB_X68_Y36_N18
\f1|ShiftLeft0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~52_combout\ = (\f1|ShiftLeft0~51_combout\) # ((\f1|U_tilde\(1) & (\f1|shift_num\(0) & !\f1|shift_num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~51_combout\,
	datab => \f1|U_tilde\(1),
	datac => \f1|shift_num\(0),
	datad => \f1|shift_num\(1),
	combout => \f1|ShiftLeft0~52_combout\);

-- Location: LCCOMB_X65_Y36_N4
\f1|U_tilde[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[18]~68_combout\ = (\LF33|shift_register\(18) & (!\f1|U_tilde[17]~67\ & VCC)) # (!\LF33|shift_register\(18) & (\f1|U_tilde[17]~67\ $ (GND)))
-- \f1|U_tilde[18]~69\ = CARRY((!\LF33|shift_register\(18) & !\f1|U_tilde[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(18),
	datad => VCC,
	cin => \f1|U_tilde[17]~67\,
	combout => \f1|U_tilde[18]~68_combout\,
	cout => \f1|U_tilde[18]~69\);

-- Location: FF_X65_Y36_N5
\f1|U_tilde[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[18]~68_combout\,
	asdata => \LF33|shift_register\(18),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(18));

-- Location: LCCOMB_X66_Y36_N16
\f1|ShiftLeft0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~47_combout\ = (\f1|shift_num\(1) & ((\f1|U_tilde\(16)))) # (!\f1|shift_num\(1) & (\f1|U_tilde\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|U_tilde\(18),
	datac => \f1|U_tilde\(16),
	datad => \f1|shift_num\(1),
	combout => \f1|ShiftLeft0~47_combout\);

-- Location: LCCOMB_X66_Y36_N22
\f1|ShiftLeft0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~48_combout\ = (\f1|shift_num\(0) & (\f1|ShiftLeft0~33_combout\)) # (!\f1|shift_num\(0) & ((\f1|ShiftLeft0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(0),
	datac => \f1|ShiftLeft0~33_combout\,
	datad => \f1|ShiftLeft0~47_combout\,
	combout => \f1|ShiftLeft0~48_combout\);

-- Location: LCCOMB_X66_Y37_N30
\f1|ShiftLeft0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~45_combout\ = (\f1|shift_num\(1) & (\f1|U_tilde\(12))) # (!\f1|shift_num\(1) & ((\f1|U_tilde\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|U_tilde\(12),
	datac => \f1|shift_num\(1),
	datad => \f1|U_tilde\(14),
	combout => \f1|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X67_Y37_N12
\f1|ShiftLeft0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~46_combout\ = (\f1|shift_num\(0) & (\f1|ShiftLeft0~31_combout\)) # (!\f1|shift_num\(0) & ((\f1|ShiftLeft0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|shift_num\(0),
	datac => \f1|ShiftLeft0~31_combout\,
	datad => \f1|ShiftLeft0~45_combout\,
	combout => \f1|ShiftLeft0~46_combout\);

-- Location: LCCOMB_X67_Y36_N28
\f1|ShiftLeft0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~49_combout\ = (\f1|shift_num\(2) & ((\f1|ShiftLeft0~46_combout\))) # (!\f1|shift_num\(2) & (\f1|ShiftLeft0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|ShiftLeft0~48_combout\,
	datac => \f1|shift_num\(2),
	datad => \f1|ShiftLeft0~46_combout\,
	combout => \f1|ShiftLeft0~49_combout\);

-- Location: LCCOMB_X66_Y37_N28
\f1|ShiftLeft0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~42_combout\ = (\f1|shift_num\(1) & (\f1|U_tilde\(8))) # (!\f1|shift_num\(1) & ((\f1|U_tilde\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(1),
	datac => \f1|U_tilde\(8),
	datad => \f1|U_tilde\(10),
	combout => \f1|ShiftLeft0~42_combout\);

-- Location: LCCOMB_X67_Y37_N30
\f1|ShiftLeft0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~43_combout\ = (\f1|shift_num\(0) & (\f1|ShiftLeft0~28_combout\)) # (!\f1|shift_num\(0) & ((\f1|ShiftLeft0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|shift_num\(0),
	datac => \f1|ShiftLeft0~28_combout\,
	datad => \f1|ShiftLeft0~42_combout\,
	combout => \f1|ShiftLeft0~43_combout\);

-- Location: LCCOMB_X66_Y37_N18
\f1|ShiftLeft0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~40_combout\ = (\f1|shift_num\(1) & (\f1|U_tilde\(4))) # (!\f1|shift_num\(1) & ((\f1|U_tilde\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|U_tilde\(4),
	datac => \f1|shift_num\(1),
	datad => \f1|U_tilde\(6),
	combout => \f1|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X67_Y37_N8
\f1|ShiftLeft0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~41_combout\ = (\f1|shift_num\(0) & (\f1|ShiftLeft0~26_combout\)) # (!\f1|shift_num\(0) & ((\f1|ShiftLeft0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|shift_num\(0),
	datac => \f1|ShiftLeft0~26_combout\,
	datad => \f1|ShiftLeft0~40_combout\,
	combout => \f1|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X67_Y36_N18
\f1|ShiftLeft0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~44_combout\ = (\f1|shift_num\(2) & ((\f1|ShiftLeft0~41_combout\))) # (!\f1|shift_num\(2) & (\f1|ShiftLeft0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|ShiftLeft0~43_combout\,
	datac => \f1|shift_num\(2),
	datad => \f1|ShiftLeft0~41_combout\,
	combout => \f1|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X68_Y36_N12
\f1|ShiftLeft0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~50_combout\ = (!\f1|shift_num\(4) & ((\f1|shift_num\(3) & ((\f1|ShiftLeft0~44_combout\))) # (!\f1|shift_num\(3) & (\f1|ShiftLeft0~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(3),
	datab => \f1|ShiftLeft0~49_combout\,
	datac => \f1|shift_num\(4),
	datad => \f1|ShiftLeft0~44_combout\,
	combout => \f1|ShiftLeft0~50_combout\);

-- Location: LCCOMB_X68_Y38_N2
\f1|ShiftLeft0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~53_combout\ = (!\f1|shift_num\(5) & ((\f1|ShiftLeft0~50_combout\) # ((\f1|ShiftLeft0~23_combout\ & \f1|ShiftLeft0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~23_combout\,
	datab => \f1|ShiftLeft0~52_combout\,
	datac => \f1|shift_num\(5),
	datad => \f1|ShiftLeft0~50_combout\,
	combout => \f1|ShiftLeft0~53_combout\);

-- Location: LCCOMB_X66_Y37_N26
\f1|ShiftLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~15_combout\ = (\f1|shift_num\(1) & ((\f1|U_tilde\(9)))) # (!\f1|shift_num\(1) & (\f1|U_tilde\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|U_tilde\(11),
	datac => \f1|shift_num\(1),
	datad => \f1|U_tilde\(9),
	combout => \f1|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X67_Y37_N22
\f1|ShiftLeft0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~55_combout\ = (\f1|shift_num\(0) & ((\f1|ShiftLeft0~42_combout\))) # (!\f1|shift_num\(0) & (\f1|ShiftLeft0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|shift_num\(0),
	datac => \f1|ShiftLeft0~15_combout\,
	datad => \f1|ShiftLeft0~42_combout\,
	combout => \f1|ShiftLeft0~55_combout\);

-- Location: LCCOMB_X66_Y37_N14
\f1|ShiftLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~11_combout\ = (\f1|shift_num\(1) & (\f1|U_tilde\(5))) # (!\f1|shift_num\(1) & ((\f1|U_tilde\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|U_tilde\(5),
	datac => \f1|shift_num\(1),
	datad => \f1|U_tilde\(7),
	combout => \f1|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X67_Y37_N0
\f1|ShiftLeft0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~54_combout\ = (\f1|shift_num\(0) & ((\f1|ShiftLeft0~40_combout\))) # (!\f1|shift_num\(0) & (\f1|ShiftLeft0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~11_combout\,
	datab => \f1|ShiftLeft0~40_combout\,
	datad => \f1|shift_num\(0),
	combout => \f1|ShiftLeft0~54_combout\);

-- Location: LCCOMB_X67_Y38_N2
\f1|ShiftLeft0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~56_combout\ = (\f1|shift_num\(2) & ((\f1|ShiftLeft0~54_combout\))) # (!\f1|shift_num\(2) & (\f1|ShiftLeft0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|ShiftLeft0~55_combout\,
	datac => \f1|shift_num\(2),
	datad => \f1|ShiftLeft0~54_combout\,
	combout => \f1|ShiftLeft0~56_combout\);

-- Location: LCCOMB_X65_Y36_N6
\f1|U_tilde[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[19]~70_combout\ = (\LF33|shift_register\(19) & ((\f1|U_tilde[18]~69\) # (GND))) # (!\LF33|shift_register\(19) & (!\f1|U_tilde[18]~69\))
-- \f1|U_tilde[19]~71\ = CARRY((\LF33|shift_register\(19)) # (!\f1|U_tilde[18]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(19),
	datad => VCC,
	cin => \f1|U_tilde[18]~69\,
	combout => \f1|U_tilde[19]~70_combout\,
	cout => \f1|U_tilde[19]~71\);

-- Location: FF_X65_Y36_N7
\f1|U_tilde[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[19]~70_combout\,
	asdata => \LF33|shift_register\(19),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(19));

-- Location: LCCOMB_X66_Y36_N12
\f1|ShiftLeft0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~58_combout\ = (\f1|shift_num\(1) & ((\f1|U_tilde\(17)))) # (!\f1|shift_num\(1) & (\f1|U_tilde\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(1),
	datac => \f1|U_tilde\(19),
	datad => \f1|U_tilde\(17),
	combout => \f1|ShiftLeft0~58_combout\);

-- Location: LCCOMB_X66_Y36_N10
\f1|ShiftLeft0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~59_combout\ = (\f1|shift_num\(0) & ((\f1|ShiftLeft0~47_combout\))) # (!\f1|shift_num\(0) & (\f1|ShiftLeft0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~58_combout\,
	datab => \f1|ShiftLeft0~47_combout\,
	datad => \f1|shift_num\(0),
	combout => \f1|ShiftLeft0~59_combout\);

-- Location: LCCOMB_X66_Y37_N2
\f1|ShiftLeft0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~18_combout\ = (\f1|shift_num\(1) & (\f1|U_tilde\(13))) # (!\f1|shift_num\(1) & ((\f1|U_tilde\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|U_tilde\(13),
	datac => \f1|shift_num\(1),
	datad => \f1|U_tilde\(15),
	combout => \f1|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X67_Y37_N16
\f1|ShiftLeft0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~57_combout\ = (\f1|shift_num\(0) & ((\f1|ShiftLeft0~45_combout\))) # (!\f1|shift_num\(0) & (\f1|ShiftLeft0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~18_combout\,
	datab => \f1|ShiftLeft0~45_combout\,
	datad => \f1|shift_num\(0),
	combout => \f1|ShiftLeft0~57_combout\);

-- Location: LCCOMB_X67_Y38_N0
\f1|ShiftLeft0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~60_combout\ = (\f1|shift_num\(2) & ((\f1|ShiftLeft0~57_combout\))) # (!\f1|shift_num\(2) & (\f1|ShiftLeft0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~59_combout\,
	datac => \f1|shift_num\(2),
	datad => \f1|ShiftLeft0~57_combout\,
	combout => \f1|ShiftLeft0~60_combout\);

-- Location: LCCOMB_X67_Y38_N22
\f1|ShiftLeft0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~61_combout\ = (!\f1|shift_num\(4) & ((\f1|shift_num\(3) & (\f1|ShiftLeft0~56_combout\)) # (!\f1|shift_num\(3) & ((\f1|ShiftLeft0~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(3),
	datab => \f1|ShiftLeft0~56_combout\,
	datac => \f1|shift_num\(4),
	datad => \f1|ShiftLeft0~60_combout\,
	combout => \f1|ShiftLeft0~61_combout\);

-- Location: LCCOMB_X67_Y37_N10
\f1|ShiftLeft0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~38_combout\ = (\f1|shift_num\(0) & (\f1|U_tilde\(0))) # (!\f1|shift_num\(0) & ((\f1|U_tilde\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|U_tilde\(0),
	datac => \f1|shift_num\(0),
	datad => \f1|U_tilde\(1),
	combout => \f1|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X67_Y37_N6
\f1|ShiftLeft0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~62_combout\ = (!\f1|shift_num\(1) & ((\f1|shift_num\(0) & (\f1|U_tilde\(2))) # (!\f1|shift_num\(0) & ((\f1|U_tilde\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(1),
	datab => \f1|shift_num\(0),
	datac => \f1|U_tilde\(2),
	datad => \f1|U_tilde\(3),
	combout => \f1|ShiftLeft0~62_combout\);

-- Location: LCCOMB_X68_Y37_N0
\f1|ShiftLeft0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~63_combout\ = (\f1|ShiftLeft0~62_combout\) # ((\f1|ShiftLeft0~38_combout\ & \f1|shift_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~38_combout\,
	datab => \f1|ShiftLeft0~62_combout\,
	datac => \f1|shift_num\(1),
	combout => \f1|ShiftLeft0~63_combout\);

-- Location: LCCOMB_X67_Y38_N24
\f1|ShiftLeft0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~64_combout\ = (!\f1|shift_num\(5) & ((\f1|ShiftLeft0~61_combout\) # ((\f1|ShiftLeft0~23_combout\ & \f1|ShiftLeft0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~61_combout\,
	datab => \f1|ShiftLeft0~23_combout\,
	datac => \f1|shift_num\(5),
	datad => \f1|ShiftLeft0~63_combout\,
	combout => \f1|ShiftLeft0~64_combout\);

-- Location: LCCOMB_X65_Y36_N8
\f1|U_tilde[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[20]~72_combout\ = (\LF33|shift_register\(20) & (!\f1|U_tilde[19]~71\ & VCC)) # (!\LF33|shift_register\(20) & (\f1|U_tilde[19]~71\ $ (GND)))
-- \f1|U_tilde[20]~73\ = CARRY((!\LF33|shift_register\(20) & !\f1|U_tilde[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(20),
	datad => VCC,
	cin => \f1|U_tilde[19]~71\,
	combout => \f1|U_tilde[20]~72_combout\,
	cout => \f1|U_tilde[20]~73\);

-- Location: FF_X65_Y36_N9
\f1|U_tilde[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[20]~72_combout\,
	asdata => \LF33|shift_register\(20),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(20));

-- Location: LCCOMB_X66_Y36_N28
\f1|ShiftLeft0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~66_combout\ = (\f1|shift_num\(1) & (\f1|U_tilde\(18))) # (!\f1|shift_num\(1) & ((\f1|U_tilde\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(1),
	datac => \f1|U_tilde\(18),
	datad => \f1|U_tilde\(20),
	combout => \f1|ShiftLeft0~66_combout\);

-- Location: LCCOMB_X66_Y36_N26
\f1|ShiftLeft0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~67_combout\ = (\f1|shift_num\(0) & (\f1|ShiftLeft0~58_combout\)) # (!\f1|shift_num\(0) & ((\f1|ShiftLeft0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~58_combout\,
	datab => \f1|ShiftLeft0~66_combout\,
	datad => \f1|shift_num\(0),
	combout => \f1|ShiftLeft0~67_combout\);

-- Location: LCCOMB_X66_Y37_N22
\f1|ShiftLeft0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~20_combout\ = (\f1|shift_num\(0) & ((\f1|ShiftLeft0~18_combout\))) # (!\f1|shift_num\(0) & (\f1|ShiftLeft0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|shift_num\(0),
	datac => \f1|ShiftLeft0~19_combout\,
	datad => \f1|ShiftLeft0~18_combout\,
	combout => \f1|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X67_Y36_N14
\f1|ShiftLeft0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~68_combout\ = (\f1|shift_num\(2) & ((\f1|ShiftLeft0~20_combout\))) # (!\f1|shift_num\(2) & (\f1|ShiftLeft0~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~67_combout\,
	datac => \f1|shift_num\(2),
	datad => \f1|ShiftLeft0~20_combout\,
	combout => \f1|ShiftLeft0~68_combout\);

-- Location: LCCOMB_X67_Y37_N28
\f1|ShiftLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~13_combout\ = (\f1|shift_num\(0) & ((\f1|ShiftLeft0~11_combout\))) # (!\f1|shift_num\(0) & (\f1|ShiftLeft0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~12_combout\,
	datac => \f1|shift_num\(0),
	datad => \f1|ShiftLeft0~11_combout\,
	combout => \f1|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X67_Y37_N18
\f1|ShiftLeft0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~17_combout\ = (\f1|shift_num\(0) & (\f1|ShiftLeft0~15_combout\)) # (!\f1|shift_num\(0) & ((\f1|ShiftLeft0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|shift_num\(0),
	datac => \f1|ShiftLeft0~15_combout\,
	datad => \f1|ShiftLeft0~16_combout\,
	combout => \f1|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X68_Y38_N24
\f1|ShiftLeft0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~65_combout\ = (\f1|shift_num\(2) & (\f1|ShiftLeft0~13_combout\)) # (!\f1|shift_num\(2) & ((\f1|ShiftLeft0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|ShiftLeft0~13_combout\,
	datac => \f1|shift_num\(2),
	datad => \f1|ShiftLeft0~17_combout\,
	combout => \f1|ShiftLeft0~65_combout\);

-- Location: LCCOMB_X67_Y38_N14
\f1|ShiftLeft0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~69_combout\ = (!\f1|shift_num\(4) & ((\f1|shift_num\(3) & ((\f1|ShiftLeft0~65_combout\))) # (!\f1|shift_num\(3) & (\f1|ShiftLeft0~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~68_combout\,
	datab => \f1|ShiftLeft0~65_combout\,
	datac => \f1|shift_num\(4),
	datad => \f1|shift_num\(3),
	combout => \f1|ShiftLeft0~69_combout\);

-- Location: LCCOMB_X68_Y36_N14
\f1|ShiftLeft0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~24_combout\ = (\f1|U_tilde\(0) & (!\f1|shift_num\(0) & !\f1|shift_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|U_tilde\(0),
	datac => \f1|shift_num\(0),
	datad => \f1|shift_num\(1),
	combout => \f1|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X67_Y37_N4
\f1|ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~8_combout\ = (\f1|shift_num\(0) & ((\f1|shift_num\(1) & (\f1|U_tilde\(1))) # (!\f1|shift_num\(1) & ((\f1|U_tilde\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|U_tilde\(1),
	datab => \f1|shift_num\(0),
	datac => \f1|shift_num\(1),
	datad => \f1|U_tilde\(3),
	combout => \f1|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X67_Y37_N26
\f1|ShiftLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~10_combout\ = (\f1|ShiftLeft0~8_combout\) # ((!\f1|shift_num\(0) & \f1|ShiftLeft0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|shift_num\(0),
	datac => \f1|ShiftLeft0~8_combout\,
	datad => \f1|ShiftLeft0~9_combout\,
	combout => \f1|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X68_Y38_N10
\f1|ShiftLeft0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~70_combout\ = (\f1|shift_num\(2) & (\f1|ShiftLeft0~24_combout\)) # (!\f1|shift_num\(2) & ((\f1|ShiftLeft0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~24_combout\,
	datac => \f1|shift_num\(2),
	datad => \f1|ShiftLeft0~10_combout\,
	combout => \f1|ShiftLeft0~70_combout\);

-- Location: LCCOMB_X68_Y38_N16
\f1|ShiftLeft0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~71_combout\ = (!\f1|shift_num\(5) & ((\f1|ShiftLeft0~69_combout\) # ((\f1|ShiftLeft0~37_combout\ & \f1|ShiftLeft0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~69_combout\,
	datab => \f1|ShiftLeft0~37_combout\,
	datac => \f1|shift_num\(5),
	datad => \f1|ShiftLeft0~70_combout\,
	combout => \f1|ShiftLeft0~71_combout\);

-- Location: LCCOMB_X65_Y36_N10
\f1|U_tilde[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[21]~74_combout\ = (\LF33|shift_register\(21) & ((\f1|U_tilde[20]~73\) # (GND))) # (!\LF33|shift_register\(21) & (!\f1|U_tilde[20]~73\))
-- \f1|U_tilde[21]~75\ = CARRY((\LF33|shift_register\(21)) # (!\f1|U_tilde[20]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(21),
	datad => VCC,
	cin => \f1|U_tilde[20]~73\,
	combout => \f1|U_tilde[21]~74_combout\,
	cout => \f1|U_tilde[21]~75\);

-- Location: FF_X65_Y36_N11
\f1|U_tilde[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[21]~74_combout\,
	asdata => \LF33|shift_register\(21),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(21));

-- Location: LCCOMB_X66_Y36_N8
\f1|ShiftLeft0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~73_combout\ = (\f1|shift_num\(1) & (\f1|U_tilde\(19))) # (!\f1|shift_num\(1) & ((\f1|U_tilde\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(1),
	datac => \f1|U_tilde\(19),
	datad => \f1|U_tilde\(21),
	combout => \f1|ShiftLeft0~73_combout\);

-- Location: LCCOMB_X66_Y36_N2
\f1|ShiftLeft0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~74_combout\ = (\f1|shift_num\(0) & ((\f1|ShiftLeft0~66_combout\))) # (!\f1|shift_num\(0) & (\f1|ShiftLeft0~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(0),
	datac => \f1|ShiftLeft0~73_combout\,
	datad => \f1|ShiftLeft0~66_combout\,
	combout => \f1|ShiftLeft0~74_combout\);

-- Location: LCCOMB_X68_Y37_N20
\f1|ShiftLeft0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~75_combout\ = (\f1|shift_num\(2) & ((\f1|ShiftLeft0~34_combout\))) # (!\f1|shift_num\(2) & (\f1|ShiftLeft0~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|ShiftLeft0~74_combout\,
	datac => \f1|shift_num\(2),
	datad => \f1|ShiftLeft0~34_combout\,
	combout => \f1|ShiftLeft0~75_combout\);

-- Location: LCCOMB_X68_Y37_N18
\f1|ShiftLeft0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~72_combout\ = (\f1|shift_num\(2) & ((\f1|ShiftLeft0~29_combout\))) # (!\f1|shift_num\(2) & (\f1|ShiftLeft0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|ShiftLeft0~32_combout\,
	datac => \f1|shift_num\(2),
	datad => \f1|ShiftLeft0~29_combout\,
	combout => \f1|ShiftLeft0~72_combout\);

-- Location: LCCOMB_X68_Y37_N14
\f1|ShiftLeft0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~76_combout\ = (!\f1|shift_num\(4) & ((\f1|shift_num\(3) & ((\f1|ShiftLeft0~72_combout\))) # (!\f1|shift_num\(3) & (\f1|ShiftLeft0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~75_combout\,
	datab => \f1|shift_num\(4),
	datac => \f1|shift_num\(3),
	datad => \f1|ShiftLeft0~72_combout\,
	combout => \f1|ShiftLeft0~76_combout\);

-- Location: LCCOMB_X68_Y37_N12
\f1|ShiftLeft0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~77_combout\ = (\f1|shift_num\(2) & (\f1|ShiftLeft0~38_combout\ & (!\f1|shift_num\(1)))) # (!\f1|shift_num\(2) & (((\f1|ShiftLeft0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~38_combout\,
	datab => \f1|shift_num\(2),
	datac => \f1|shift_num\(1),
	datad => \f1|ShiftLeft0~27_combout\,
	combout => \f1|ShiftLeft0~77_combout\);

-- Location: LCCOMB_X68_Y37_N30
\f1|ShiftLeft0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~78_combout\ = (!\f1|shift_num\(5) & ((\f1|ShiftLeft0~76_combout\) # ((\f1|ShiftLeft0~37_combout\ & \f1|ShiftLeft0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~37_combout\,
	datab => \f1|ShiftLeft0~76_combout\,
	datac => \f1|shift_num\(5),
	datad => \f1|ShiftLeft0~77_combout\,
	combout => \f1|ShiftLeft0~78_combout\);

-- Location: LCCOMB_X68_Y36_N2
\f1|ShiftLeft0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~84_combout\ = (\f1|shift_num\(2) & ((\f1|ShiftLeft0~52_combout\))) # (!\f1|shift_num\(2) & (\f1|ShiftLeft0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|ShiftLeft0~41_combout\,
	datac => \f1|shift_num\(2),
	datad => \f1|ShiftLeft0~52_combout\,
	combout => \f1|ShiftLeft0~84_combout\);

-- Location: LCCOMB_X65_Y36_N12
\f1|U_tilde[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[22]~76_combout\ = (\LF33|shift_register\(22) & (!\f1|U_tilde[21]~75\ & VCC)) # (!\LF33|shift_register\(22) & (\f1|U_tilde[21]~75\ $ (GND)))
-- \f1|U_tilde[22]~77\ = CARRY((!\LF33|shift_register\(22) & !\f1|U_tilde[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(22),
	datad => VCC,
	cin => \f1|U_tilde[21]~75\,
	combout => \f1|U_tilde[22]~76_combout\,
	cout => \f1|U_tilde[22]~77\);

-- Location: FF_X65_Y36_N13
\f1|U_tilde[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[22]~76_combout\,
	asdata => \LF33|shift_register\(22),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(22));

-- Location: LCCOMB_X66_Y36_N4
\f1|ShiftLeft0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~80_combout\ = (\f1|shift_num\(1) & (\f1|U_tilde\(20))) # (!\f1|shift_num\(1) & ((\f1|U_tilde\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(1),
	datac => \f1|U_tilde\(20),
	datad => \f1|U_tilde\(22),
	combout => \f1|ShiftLeft0~80_combout\);

-- Location: LCCOMB_X66_Y36_N18
\f1|ShiftLeft0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~81_combout\ = (\f1|shift_num\(0) & (\f1|ShiftLeft0~73_combout\)) # (!\f1|shift_num\(0) & ((\f1|ShiftLeft0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(0),
	datab => \f1|ShiftLeft0~73_combout\,
	datac => \f1|ShiftLeft0~80_combout\,
	combout => \f1|ShiftLeft0~81_combout\);

-- Location: LCCOMB_X67_Y36_N30
\f1|ShiftLeft0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~82_combout\ = (\f1|shift_num\(2) & ((\f1|ShiftLeft0~48_combout\))) # (!\f1|shift_num\(2) & (\f1|ShiftLeft0~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|ShiftLeft0~81_combout\,
	datac => \f1|shift_num\(2),
	datad => \f1|ShiftLeft0~48_combout\,
	combout => \f1|ShiftLeft0~82_combout\);

-- Location: LCCOMB_X67_Y36_N8
\f1|ShiftLeft0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~79_combout\ = (\f1|shift_num\(2) & (\f1|ShiftLeft0~43_combout\)) # (!\f1|shift_num\(2) & ((\f1|ShiftLeft0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|shift_num\(2),
	datac => \f1|ShiftLeft0~43_combout\,
	datad => \f1|ShiftLeft0~46_combout\,
	combout => \f1|ShiftLeft0~79_combout\);

-- Location: LCCOMB_X68_Y36_N20
\f1|ShiftLeft0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~83_combout\ = (!\f1|shift_num\(4) & ((\f1|shift_num\(3) & ((\f1|ShiftLeft0~79_combout\))) # (!\f1|shift_num\(3) & (\f1|ShiftLeft0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(3),
	datab => \f1|ShiftLeft0~82_combout\,
	datac => \f1|shift_num\(4),
	datad => \f1|ShiftLeft0~79_combout\,
	combout => \f1|ShiftLeft0~83_combout\);

-- Location: LCCOMB_X68_Y36_N8
\f1|ShiftLeft0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~85_combout\ = (!\f1|shift_num\(5) & ((\f1|ShiftLeft0~83_combout\) # ((\f1|ShiftLeft0~37_combout\ & \f1|ShiftLeft0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~37_combout\,
	datab => \f1|ShiftLeft0~84_combout\,
	datac => \f1|shift_num\(5),
	datad => \f1|ShiftLeft0~83_combout\,
	combout => \f1|ShiftLeft0~85_combout\);

-- Location: LCCOMB_X65_Y36_N14
\f1|U_tilde[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[23]~78_combout\ = (\LF33|shift_register\(23) & ((\f1|U_tilde[22]~77\) # (GND))) # (!\LF33|shift_register\(23) & (!\f1|U_tilde[22]~77\))
-- \f1|U_tilde[23]~79\ = CARRY((\LF33|shift_register\(23)) # (!\f1|U_tilde[22]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(23),
	datad => VCC,
	cin => \f1|U_tilde[22]~77\,
	combout => \f1|U_tilde[23]~78_combout\,
	cout => \f1|U_tilde[23]~79\);

-- Location: FF_X65_Y36_N15
\f1|U_tilde[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[23]~78_combout\,
	asdata => \LF33|shift_register\(23),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(23));

-- Location: LCCOMB_X66_Y36_N20
\f1|ShiftLeft0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~87_combout\ = (\f1|shift_num\(1) & ((\f1|U_tilde\(21)))) # (!\f1|shift_num\(1) & (\f1|U_tilde\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(1),
	datac => \f1|U_tilde\(23),
	datad => \f1|U_tilde\(21),
	combout => \f1|ShiftLeft0~87_combout\);

-- Location: LCCOMB_X66_Y36_N14
\f1|ShiftLeft0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~88_combout\ = (\f1|shift_num\(0) & (\f1|ShiftLeft0~80_combout\)) # (!\f1|shift_num\(0) & ((\f1|ShiftLeft0~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(0),
	datac => \f1|ShiftLeft0~80_combout\,
	datad => \f1|ShiftLeft0~87_combout\,
	combout => \f1|ShiftLeft0~88_combout\);

-- Location: LCCOMB_X66_Y36_N24
\f1|ShiftLeft0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~89_combout\ = (\f1|shift_num\(2) & (\f1|ShiftLeft0~59_combout\)) # (!\f1|shift_num\(2) & ((\f1|ShiftLeft0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~59_combout\,
	datab => \f1|ShiftLeft0~88_combout\,
	datac => \f1|shift_num\(2),
	combout => \f1|ShiftLeft0~89_combout\);

-- Location: LCCOMB_X67_Y38_N4
\f1|ShiftLeft0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~86_combout\ = (\f1|shift_num\(2) & (\f1|ShiftLeft0~55_combout\)) # (!\f1|shift_num\(2) & ((\f1|ShiftLeft0~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|ShiftLeft0~55_combout\,
	datac => \f1|shift_num\(2),
	datad => \f1|ShiftLeft0~57_combout\,
	combout => \f1|ShiftLeft0~86_combout\);

-- Location: LCCOMB_X67_Y38_N26
\f1|ShiftLeft0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~90_combout\ = (!\f1|shift_num\(4) & ((\f1|shift_num\(3) & ((\f1|ShiftLeft0~86_combout\))) # (!\f1|shift_num\(3) & (\f1|ShiftLeft0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(3),
	datab => \f1|ShiftLeft0~89_combout\,
	datac => \f1|ShiftLeft0~86_combout\,
	datad => \f1|shift_num\(4),
	combout => \f1|ShiftLeft0~90_combout\);

-- Location: LCCOMB_X67_Y38_N20
\f1|ShiftLeft0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~91_combout\ = (\f1|shift_num\(2) & ((\f1|ShiftLeft0~63_combout\))) # (!\f1|shift_num\(2) & (\f1|ShiftLeft0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|ShiftLeft0~54_combout\,
	datac => \f1|shift_num\(2),
	datad => \f1|ShiftLeft0~63_combout\,
	combout => \f1|ShiftLeft0~91_combout\);

-- Location: LCCOMB_X68_Y38_N14
\f1|ShiftLeft0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~92_combout\ = (!\f1|shift_num\(5) & ((\f1|ShiftLeft0~90_combout\) # ((\f1|ShiftLeft0~37_combout\ & \f1|ShiftLeft0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~90_combout\,
	datab => \f1|ShiftLeft0~37_combout\,
	datac => \f1|shift_num\(5),
	datad => \f1|ShiftLeft0~91_combout\,
	combout => \f1|ShiftLeft0~92_combout\);

-- Location: LCCOMB_X68_Y36_N26
\f1|shift1[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|shift1[8]~1_combout\ = (\f1|shift_num\(4)) # ((\f1|shift_num\(2) & !\f1|shift_num\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|shift_num\(4),
	datac => \f1|shift_num\(2),
	datad => \f1|shift_num\(3),
	combout => \f1|shift1[8]~1_combout\);

-- Location: LCCOMB_X65_Y36_N16
\f1|U_tilde[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[24]~80_combout\ = (\LF33|shift_register\(24) & (!\f1|U_tilde[23]~79\ & VCC)) # (!\LF33|shift_register\(24) & (\f1|U_tilde[23]~79\ $ (GND)))
-- \f1|U_tilde[24]~81\ = CARRY((!\LF33|shift_register\(24) & !\f1|U_tilde[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(24),
	datad => VCC,
	cin => \f1|U_tilde[23]~79\,
	combout => \f1|U_tilde[24]~80_combout\,
	cout => \f1|U_tilde[24]~81\);

-- Location: FF_X65_Y36_N17
\f1|U_tilde[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[24]~80_combout\,
	asdata => \LF33|shift_register\(24),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(24));

-- Location: LCCOMB_X66_Y36_N30
\f1|ShiftLeft0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~93_combout\ = (\f1|shift_num\(1) & ((\f1|U_tilde\(22)))) # (!\f1|shift_num\(1) & (\f1|U_tilde\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(1),
	datac => \f1|U_tilde\(24),
	datad => \f1|U_tilde\(22),
	combout => \f1|ShiftLeft0~93_combout\);

-- Location: LCCOMB_X66_Y36_N0
\f1|ShiftLeft0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~94_combout\ = (\f1|shift_num\(0) & ((\f1|ShiftLeft0~87_combout\))) # (!\f1|shift_num\(0) & (\f1|ShiftLeft0~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(0),
	datac => \f1|ShiftLeft0~93_combout\,
	datad => \f1|ShiftLeft0~87_combout\,
	combout => \f1|ShiftLeft0~94_combout\);

-- Location: LCCOMB_X68_Y37_N24
\f1|shift1[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|shift1[8]~2_combout\ = (\f1|shift_num\(3)) # (\f1|shift_num\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|shift_num\(3),
	datad => \f1|shift_num\(4),
	combout => \f1|shift1[8]~2_combout\);

-- Location: LCCOMB_X67_Y36_N24
\f1|ShiftLeft0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~21_combout\ = (\f1|shift_num\(2) & ((\f1|ShiftLeft0~17_combout\))) # (!\f1|shift_num\(2) & (\f1|ShiftLeft0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~20_combout\,
	datac => \f1|shift_num\(2),
	datad => \f1|ShiftLeft0~17_combout\,
	combout => \f1|ShiftLeft0~21_combout\);

-- Location: LCCOMB_X67_Y36_N16
\f1|ShiftLeft0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~95_combout\ = (\f1|shift1[8]~1_combout\ & (((\f1|shift1[8]~2_combout\)))) # (!\f1|shift1[8]~1_combout\ & ((\f1|shift1[8]~2_combout\ & ((\f1|ShiftLeft0~21_combout\))) # (!\f1|shift1[8]~2_combout\ & (\f1|ShiftLeft0~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~94_combout\,
	datab => \f1|shift1[8]~1_combout\,
	datac => \f1|shift1[8]~2_combout\,
	datad => \f1|ShiftLeft0~21_combout\,
	combout => \f1|ShiftLeft0~95_combout\);

-- Location: LCCOMB_X68_Y38_N8
\f1|ShiftLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~14_combout\ = (\f1|shift_num\(2) & ((\f1|ShiftLeft0~10_combout\))) # (!\f1|shift_num\(2) & (\f1|ShiftLeft0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|shift_num\(2),
	datac => \f1|ShiftLeft0~13_combout\,
	datad => \f1|ShiftLeft0~10_combout\,
	combout => \f1|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X68_Y36_N16
\f1|ShiftLeft0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~96_combout\ = (\f1|shift1[8]~1_combout\ & ((\f1|ShiftLeft0~95_combout\ & ((\f1|ShiftLeft0~14_combout\))) # (!\f1|ShiftLeft0~95_combout\ & (\f1|ShiftLeft0~67_combout\)))) # (!\f1|shift1[8]~1_combout\ & (((\f1|ShiftLeft0~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift1[8]~1_combout\,
	datab => \f1|ShiftLeft0~67_combout\,
	datac => \f1|ShiftLeft0~95_combout\,
	datad => \f1|ShiftLeft0~14_combout\,
	combout => \f1|ShiftLeft0~96_combout\);

-- Location: LCCOMB_X68_Y37_N2
\f1|shift1[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|shift1[8]~3_combout\ = (\f1|shift_num\(3) & \f1|shift_num\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|shift_num\(3),
	datad => \f1|shift_num\(4),
	combout => \f1|shift1[8]~3_combout\);

-- Location: LCCOMB_X68_Y38_N0
\f1|ShiftLeft0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~97_combout\ = (\f1|shift1[8]~3_combout\ & (\f1|ShiftLeft0~24_combout\ & (!\f1|shift_num\(2)))) # (!\f1|shift1[8]~3_combout\ & (((\f1|ShiftLeft0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~24_combout\,
	datab => \f1|shift_num\(2),
	datac => \f1|ShiftLeft0~96_combout\,
	datad => \f1|shift1[8]~3_combout\,
	combout => \f1|ShiftLeft0~97_combout\);

-- Location: LCCOMB_X68_Y38_N18
\f1|ShiftLeft0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~98_combout\ = (!\f1|shift_num\(5) & \f1|ShiftLeft0~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|shift_num\(5),
	datad => \f1|ShiftLeft0~97_combout\,
	combout => \f1|ShiftLeft0~98_combout\);

-- Location: LCCOMB_X65_Y36_N18
\f1|U_tilde[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[25]~82_combout\ = (\LF33|shift_register\(25) & ((\f1|U_tilde[24]~81\) # (GND))) # (!\LF33|shift_register\(25) & (!\f1|U_tilde[24]~81\))
-- \f1|U_tilde[25]~83\ = CARRY((\LF33|shift_register\(25)) # (!\f1|U_tilde[24]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(25),
	datad => VCC,
	cin => \f1|U_tilde[24]~81\,
	combout => \f1|U_tilde[25]~82_combout\,
	cout => \f1|U_tilde[25]~83\);

-- Location: FF_X65_Y36_N19
\f1|U_tilde[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[25]~82_combout\,
	asdata => \LF33|shift_register\(25),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(25));

-- Location: LCCOMB_X63_Y36_N28
\f1|ShiftLeft0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~99_combout\ = (!\f1|shift_num\(0) & ((\f1|shift_num\(1) & (\f1|U_tilde\(23))) # (!\f1|shift_num\(1) & ((\f1|U_tilde\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(0),
	datab => \f1|U_tilde\(23),
	datac => \f1|U_tilde\(25),
	datad => \f1|shift_num\(1),
	combout => \f1|ShiftLeft0~99_combout\);

-- Location: LCCOMB_X66_Y36_N6
\f1|ShiftLeft0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~100_combout\ = (\f1|ShiftLeft0~99_combout\) # ((\f1|shift_num\(0) & \f1|ShiftLeft0~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(0),
	datac => \f1|ShiftLeft0~93_combout\,
	datad => \f1|ShiftLeft0~99_combout\,
	combout => \f1|ShiftLeft0~100_combout\);

-- Location: LCCOMB_X67_Y36_N2
\f1|ShiftLeft0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~101_combout\ = (\f1|shift1[8]~2_combout\ & (((\f1|shift1[8]~1_combout\)))) # (!\f1|shift1[8]~2_combout\ & ((\f1|shift1[8]~1_combout\ & (\f1|ShiftLeft0~74_combout\)) # (!\f1|shift1[8]~1_combout\ & ((\f1|ShiftLeft0~100_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~74_combout\,
	datab => \f1|ShiftLeft0~100_combout\,
	datac => \f1|shift1[8]~2_combout\,
	datad => \f1|shift1[8]~1_combout\,
	combout => \f1|ShiftLeft0~101_combout\);

-- Location: LCCOMB_X68_Y37_N8
\f1|ShiftLeft0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~102_combout\ = (\f1|shift1[8]~2_combout\ & ((\f1|ShiftLeft0~101_combout\ & ((\f1|ShiftLeft0~30_combout\))) # (!\f1|ShiftLeft0~101_combout\ & (\f1|ShiftLeft0~35_combout\)))) # (!\f1|shift1[8]~2_combout\ & (((\f1|ShiftLeft0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~35_combout\,
	datab => \f1|shift1[8]~2_combout\,
	datac => \f1|ShiftLeft0~101_combout\,
	datad => \f1|ShiftLeft0~30_combout\,
	combout => \f1|ShiftLeft0~102_combout\);

-- Location: LCCOMB_X68_Y37_N22
\f1|ShiftLeft0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~103_combout\ = (!\f1|shift_num\(5) & ((\f1|shift1[8]~3_combout\ & (\f1|ShiftLeft0~136_combout\)) # (!\f1|shift1[8]~3_combout\ & ((\f1|ShiftLeft0~102_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(5),
	datab => \f1|ShiftLeft0~136_combout\,
	datac => \f1|ShiftLeft0~102_combout\,
	datad => \f1|shift1[8]~3_combout\,
	combout => \f1|ShiftLeft0~103_combout\);

-- Location: LCCOMB_X65_Y36_N20
\f1|U_tilde[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[26]~84_combout\ = (\LF33|shift_register\(26) & (!\f1|U_tilde[25]~83\ & VCC)) # (!\LF33|shift_register\(26) & (\f1|U_tilde[25]~83\ $ (GND)))
-- \f1|U_tilde[26]~85\ = CARRY((!\LF33|shift_register\(26) & !\f1|U_tilde[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(26),
	datad => VCC,
	cin => \f1|U_tilde[25]~83\,
	combout => \f1|U_tilde[26]~84_combout\,
	cout => \f1|U_tilde[26]~85\);

-- Location: FF_X65_Y36_N21
\f1|U_tilde[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[26]~84_combout\,
	asdata => \LF33|shift_register\(26),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(26));

-- Location: LCCOMB_X63_Y36_N24
\f1|ShiftLeft0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~105_combout\ = (\f1|shift_num\(0) & ((\f1|U_tilde\(25)))) # (!\f1|shift_num\(0) & (\f1|U_tilde\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|U_tilde\(26),
	datac => \f1|U_tilde\(25),
	datad => \f1|shift_num\(0),
	combout => \f1|ShiftLeft0~105_combout\);

-- Location: LCCOMB_X63_Y36_N6
\f1|ShiftLeft0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~104_combout\ = (\f1|shift_num\(1) & ((\f1|shift_num\(0) & (\f1|U_tilde\(23))) # (!\f1|shift_num\(0) & ((\f1|U_tilde\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|U_tilde\(23),
	datab => \f1|U_tilde\(24),
	datac => \f1|shift_num\(0),
	datad => \f1|shift_num\(1),
	combout => \f1|ShiftLeft0~104_combout\);

-- Location: LCCOMB_X63_Y36_N18
\f1|ShiftLeft0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~106_combout\ = (\f1|ShiftLeft0~104_combout\) # ((!\f1|shift_num\(1) & \f1|ShiftLeft0~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(1),
	datab => \f1|ShiftLeft0~105_combout\,
	datad => \f1|ShiftLeft0~104_combout\,
	combout => \f1|ShiftLeft0~106_combout\);

-- Location: LCCOMB_X67_Y36_N4
\f1|ShiftLeft0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~107_combout\ = (\f1|shift1[8]~2_combout\ & (((\f1|ShiftLeft0~49_combout\) # (\f1|shift1[8]~1_combout\)))) # (!\f1|shift1[8]~2_combout\ & (\f1|ShiftLeft0~106_combout\ & ((!\f1|shift1[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~106_combout\,
	datab => \f1|ShiftLeft0~49_combout\,
	datac => \f1|shift1[8]~2_combout\,
	datad => \f1|shift1[8]~1_combout\,
	combout => \f1|ShiftLeft0~107_combout\);

-- Location: LCCOMB_X67_Y36_N26
\f1|ShiftLeft0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~108_combout\ = (\f1|ShiftLeft0~107_combout\ & ((\f1|ShiftLeft0~44_combout\) # ((!\f1|shift1[8]~1_combout\)))) # (!\f1|ShiftLeft0~107_combout\ & (((\f1|ShiftLeft0~81_combout\ & \f1|shift1[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~44_combout\,
	datab => \f1|ShiftLeft0~81_combout\,
	datac => \f1|ShiftLeft0~107_combout\,
	datad => \f1|shift1[8]~1_combout\,
	combout => \f1|ShiftLeft0~108_combout\);

-- Location: LCCOMB_X68_Y38_N6
\f1|ShiftLeft0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~137_combout\ = (\f1|shift_num\(4) & (!\f1|shift_num\(2) & (\f1|ShiftLeft0~52_combout\ & \f1|shift_num\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(4),
	datab => \f1|shift_num\(2),
	datac => \f1|ShiftLeft0~52_combout\,
	datad => \f1|shift_num\(3),
	combout => \f1|ShiftLeft0~137_combout\);

-- Location: LCCOMB_X68_Y38_N28
\f1|ShiftLeft0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~109_combout\ = (!\f1|shift_num\(5) & ((\f1|ShiftLeft0~137_combout\) # ((\f1|ShiftLeft0~108_combout\ & !\f1|shift1[8]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~108_combout\,
	datab => \f1|shift1[8]~3_combout\,
	datac => \f1|shift_num\(5),
	datad => \f1|ShiftLeft0~137_combout\,
	combout => \f1|ShiftLeft0~109_combout\);

-- Location: LCCOMB_X67_Y38_N16
\f1|ShiftLeft0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~138_combout\ = (\f1|shift_num\(3) & (\f1|shift_num\(4) & (!\f1|shift_num\(2) & \f1|ShiftLeft0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(3),
	datab => \f1|shift_num\(4),
	datac => \f1|shift_num\(2),
	datad => \f1|ShiftLeft0~63_combout\,
	combout => \f1|ShiftLeft0~138_combout\);

-- Location: LCCOMB_X63_Y36_N8
\f1|ShiftLeft0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~110_combout\ = (\f1|shift_num\(1) & ((\f1|shift_num\(0) & (\f1|U_tilde\(24))) # (!\f1|shift_num\(0) & ((\f1|U_tilde\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(0),
	datab => \f1|U_tilde\(24),
	datac => \f1|U_tilde\(25),
	datad => \f1|shift_num\(1),
	combout => \f1|ShiftLeft0~110_combout\);

-- Location: LCCOMB_X65_Y36_N22
\f1|U_tilde[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[27]~86_combout\ = (\LF33|shift_register\(27) & ((\f1|U_tilde[26]~85\) # (GND))) # (!\LF33|shift_register\(27) & (!\f1|U_tilde[26]~85\))
-- \f1|U_tilde[27]~87\ = CARRY((\LF33|shift_register\(27)) # (!\f1|U_tilde[26]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(27),
	datad => VCC,
	cin => \f1|U_tilde[26]~85\,
	combout => \f1|U_tilde[27]~86_combout\,
	cout => \f1|U_tilde[27]~87\);

-- Location: FF_X65_Y36_N23
\f1|U_tilde[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[27]~86_combout\,
	asdata => \LF33|shift_register\(27),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(27));

-- Location: LCCOMB_X63_Y36_N10
\f1|ShiftLeft0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~111_combout\ = (\f1|shift_num\(0) & (\f1|U_tilde\(26))) # (!\f1|shift_num\(0) & ((\f1|U_tilde\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|U_tilde\(26),
	datac => \f1|shift_num\(0),
	datad => \f1|U_tilde\(27),
	combout => \f1|ShiftLeft0~111_combout\);

-- Location: LCCOMB_X63_Y36_N4
\f1|ShiftLeft0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~112_combout\ = (\f1|ShiftLeft0~110_combout\) # ((!\f1|shift_num\(1) & \f1|ShiftLeft0~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(1),
	datac => \f1|ShiftLeft0~110_combout\,
	datad => \f1|ShiftLeft0~111_combout\,
	combout => \f1|ShiftLeft0~112_combout\);

-- Location: LCCOMB_X67_Y36_N0
\f1|ShiftLeft0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~113_combout\ = (\f1|shift1[8]~2_combout\ & (((\f1|shift1[8]~1_combout\)))) # (!\f1|shift1[8]~2_combout\ & ((\f1|shift1[8]~1_combout\ & (\f1|ShiftLeft0~88_combout\)) # (!\f1|shift1[8]~1_combout\ & ((\f1|ShiftLeft0~112_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~88_combout\,
	datab => \f1|ShiftLeft0~112_combout\,
	datac => \f1|shift1[8]~2_combout\,
	datad => \f1|shift1[8]~1_combout\,
	combout => \f1|ShiftLeft0~113_combout\);

-- Location: LCCOMB_X67_Y38_N18
\f1|ShiftLeft0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~114_combout\ = (\f1|shift1[8]~2_combout\ & ((\f1|ShiftLeft0~113_combout\ & (\f1|ShiftLeft0~56_combout\)) # (!\f1|ShiftLeft0~113_combout\ & ((\f1|ShiftLeft0~60_combout\))))) # (!\f1|shift1[8]~2_combout\ & (((\f1|ShiftLeft0~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift1[8]~2_combout\,
	datab => \f1|ShiftLeft0~56_combout\,
	datac => \f1|ShiftLeft0~113_combout\,
	datad => \f1|ShiftLeft0~60_combout\,
	combout => \f1|ShiftLeft0~114_combout\);

-- Location: LCCOMB_X68_Y38_N26
\f1|ShiftLeft0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~115_combout\ = (!\f1|shift_num\(5) & ((\f1|ShiftLeft0~138_combout\) # ((!\f1|shift1[8]~3_combout\ & \f1|ShiftLeft0~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~138_combout\,
	datab => \f1|shift1[8]~3_combout\,
	datac => \f1|shift_num\(5),
	datad => \f1|ShiftLeft0~114_combout\,
	combout => \f1|ShiftLeft0~115_combout\);

-- Location: LCCOMB_X65_Y36_N24
\f1|U_tilde[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[28]~88_combout\ = (\LF33|shift_register\(28) & (!\f1|U_tilde[27]~87\ & VCC)) # (!\LF33|shift_register\(28) & (\f1|U_tilde[27]~87\ $ (GND)))
-- \f1|U_tilde[28]~89\ = CARRY((!\LF33|shift_register\(28) & !\f1|U_tilde[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(28),
	datad => VCC,
	cin => \f1|U_tilde[27]~87\,
	combout => \f1|U_tilde[28]~88_combout\,
	cout => \f1|U_tilde[28]~89\);

-- Location: FF_X65_Y36_N25
\f1|U_tilde[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[28]~88_combout\,
	asdata => \LF33|shift_register\(28),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(28));

-- Location: LCCOMB_X63_Y36_N26
\f1|ShiftLeft0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~117_combout\ = (\f1|shift_num\(0) & ((\f1|U_tilde\(27)))) # (!\f1|shift_num\(0) & (\f1|U_tilde\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|U_tilde\(28),
	datac => \f1|shift_num\(0),
	datad => \f1|U_tilde\(27),
	combout => \f1|ShiftLeft0~117_combout\);

-- Location: LCCOMB_X63_Y36_N16
\f1|shift1[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|shift1[12]~5_combout\ = (\f1|shift_num\(2)) # (\f1|shift_num\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|shift_num\(2),
	datac => \f1|shift_num\(3),
	combout => \f1|shift1[12]~5_combout\);

-- Location: LCCOMB_X63_Y36_N22
\f1|shift1[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|shift1[12]~4_combout\ = (\f1|shift_num\(3)) # ((!\f1|shift_num\(2) & \f1|shift_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|shift_num\(2),
	datac => \f1|shift_num\(3),
	datad => \f1|shift_num\(1),
	combout => \f1|shift1[12]~4_combout\);

-- Location: LCCOMB_X63_Y36_N12
\f1|ShiftLeft0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~118_combout\ = (\f1|shift1[12]~5_combout\ & (((\f1|shift1[12]~4_combout\) # (\f1|ShiftLeft0~94_combout\)))) # (!\f1|shift1[12]~5_combout\ & (\f1|ShiftLeft0~117_combout\ & (!\f1|shift1[12]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~117_combout\,
	datab => \f1|shift1[12]~5_combout\,
	datac => \f1|shift1[12]~4_combout\,
	datad => \f1|ShiftLeft0~94_combout\,
	combout => \f1|ShiftLeft0~118_combout\);

-- Location: LCCOMB_X63_Y36_N14
\f1|ShiftLeft0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~119_combout\ = (\f1|ShiftLeft0~118_combout\ & (((\f1|ShiftLeft0~68_combout\) # (!\f1|shift1[12]~4_combout\)))) # (!\f1|ShiftLeft0~118_combout\ & (\f1|ShiftLeft0~105_combout\ & (\f1|shift1[12]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~118_combout\,
	datab => \f1|ShiftLeft0~105_combout\,
	datac => \f1|shift1[12]~4_combout\,
	datad => \f1|ShiftLeft0~68_combout\,
	combout => \f1|ShiftLeft0~119_combout\);

-- Location: LCCOMB_X68_Y38_N4
\f1|ShiftLeft0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~116_combout\ = (\f1|shift_num\(4) & ((\f1|shift_num\(3) & (\f1|ShiftLeft0~70_combout\)) # (!\f1|shift_num\(3) & ((\f1|ShiftLeft0~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~70_combout\,
	datab => \f1|ShiftLeft0~65_combout\,
	datac => \f1|shift_num\(3),
	datad => \f1|shift_num\(4),
	combout => \f1|ShiftLeft0~116_combout\);

-- Location: LCCOMB_X67_Y38_N8
\f1|ShiftLeft0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~120_combout\ = (!\f1|shift_num\(5) & ((\f1|ShiftLeft0~116_combout\) # ((\f1|ShiftLeft0~119_combout\ & !\f1|shift_num\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~119_combout\,
	datab => \f1|shift_num\(4),
	datac => \f1|shift_num\(5),
	datad => \f1|ShiftLeft0~116_combout\,
	combout => \f1|ShiftLeft0~120_combout\);

-- Location: LCCOMB_X68_Y37_N4
\f1|ShiftLeft0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~121_combout\ = (\f1|shift_num\(4) & ((\f1|shift_num\(3) & (\f1|ShiftLeft0~77_combout\)) # (!\f1|shift_num\(3) & ((\f1|ShiftLeft0~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~77_combout\,
	datab => \f1|ShiftLeft0~72_combout\,
	datac => \f1|shift_num\(3),
	datad => \f1|shift_num\(4),
	combout => \f1|ShiftLeft0~121_combout\);

-- Location: LCCOMB_X65_Y36_N26
\f1|U_tilde[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[29]~90_combout\ = (\LF33|shift_register\(29) & ((\f1|U_tilde[28]~89\) # (GND))) # (!\LF33|shift_register\(29) & (!\f1|U_tilde[28]~89\))
-- \f1|U_tilde[29]~91\ = CARRY((\LF33|shift_register\(29)) # (!\f1|U_tilde[28]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(29),
	datad => VCC,
	cin => \f1|U_tilde[28]~89\,
	combout => \f1|U_tilde[29]~90_combout\,
	cout => \f1|U_tilde[29]~91\);

-- Location: FF_X65_Y36_N27
\f1|U_tilde[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[29]~90_combout\,
	asdata => \LF33|shift_register\(29),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(29));

-- Location: LCCOMB_X63_Y36_N20
\f1|ShiftLeft0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~122_combout\ = (\f1|shift_num\(0) & (\f1|U_tilde\(28))) # (!\f1|shift_num\(0) & ((\f1|U_tilde\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|U_tilde\(28),
	datac => \f1|shift_num\(0),
	datad => \f1|U_tilde\(29),
	combout => \f1|ShiftLeft0~122_combout\);

-- Location: LCCOMB_X63_Y36_N30
\f1|ShiftLeft0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~123_combout\ = (\f1|shift1[12]~4_combout\ & ((\f1|ShiftLeft0~111_combout\) # ((\f1|shift1[12]~5_combout\)))) # (!\f1|shift1[12]~4_combout\ & (((\f1|ShiftLeft0~122_combout\ & !\f1|shift1[12]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~111_combout\,
	datab => \f1|ShiftLeft0~122_combout\,
	datac => \f1|shift1[12]~4_combout\,
	datad => \f1|shift1[12]~5_combout\,
	combout => \f1|ShiftLeft0~123_combout\);

-- Location: LCCOMB_X67_Y36_N10
\f1|ShiftLeft0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~124_combout\ = (\f1|ShiftLeft0~123_combout\ & (((\f1|ShiftLeft0~75_combout\)) # (!\f1|shift1[12]~5_combout\))) # (!\f1|ShiftLeft0~123_combout\ & (\f1|shift1[12]~5_combout\ & (\f1|ShiftLeft0~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~123_combout\,
	datab => \f1|shift1[12]~5_combout\,
	datac => \f1|ShiftLeft0~100_combout\,
	datad => \f1|ShiftLeft0~75_combout\,
	combout => \f1|ShiftLeft0~124_combout\);

-- Location: LCCOMB_X68_Y37_N26
\f1|ShiftLeft0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~125_combout\ = (!\f1|shift_num\(5) & ((\f1|ShiftLeft0~121_combout\) # ((!\f1|shift_num\(4) & \f1|ShiftLeft0~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(5),
	datab => \f1|shift_num\(4),
	datac => \f1|ShiftLeft0~121_combout\,
	datad => \f1|ShiftLeft0~124_combout\,
	combout => \f1|ShiftLeft0~125_combout\);

-- Location: LCCOMB_X68_Y36_N30
\f1|shift1[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|shift1[14]~6_combout\ = (\f1|shift_num\(2)) # ((!\f1|shift_num\(1) & \f1|shift_num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(1),
	datac => \f1|shift_num\(0),
	datad => \f1|shift_num\(2),
	combout => \f1|shift1[14]~6_combout\);

-- Location: LCCOMB_X65_Y36_N28
\f1|U_tilde[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[30]~92_combout\ = (\LF33|shift_register\(30) & (!\f1|U_tilde[29]~91\ & VCC)) # (!\LF33|shift_register\(30) & (\f1|U_tilde[29]~91\ $ (GND)))
-- \f1|U_tilde[30]~93\ = CARRY((!\LF33|shift_register\(30) & !\f1|U_tilde[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(30),
	datad => VCC,
	cin => \f1|U_tilde[29]~91\,
	combout => \f1|U_tilde[30]~92_combout\,
	cout => \f1|U_tilde[30]~93\);

-- Location: FF_X65_Y36_N29
\f1|U_tilde[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[30]~92_combout\,
	asdata => \LF33|shift_register\(30),
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(30));

-- Location: LCCOMB_X67_Y36_N12
\f1|ShiftLeft0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~126_combout\ = (\f1|shift1[14]~6_combout\ & ((\f1|U_tilde\(29)) # ((\f1|shift1[14]~0_combout\)))) # (!\f1|shift1[14]~6_combout\ & (((\f1|U_tilde\(30) & !\f1|shift1[14]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift1[14]~6_combout\,
	datab => \f1|U_tilde\(29),
	datac => \f1|U_tilde\(30),
	datad => \f1|shift1[14]~0_combout\,
	combout => \f1|ShiftLeft0~126_combout\);

-- Location: LCCOMB_X67_Y36_N22
\f1|ShiftLeft0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~127_combout\ = (\f1|ShiftLeft0~126_combout\ & ((\f1|ShiftLeft0~106_combout\) # ((!\f1|shift1[14]~0_combout\)))) # (!\f1|ShiftLeft0~126_combout\ & (((\f1|ShiftLeft0~117_combout\ & \f1|shift1[14]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~126_combout\,
	datab => \f1|ShiftLeft0~106_combout\,
	datac => \f1|ShiftLeft0~117_combout\,
	datad => \f1|shift1[14]~0_combout\,
	combout => \f1|ShiftLeft0~127_combout\);

-- Location: LCCOMB_X68_Y36_N4
\f1|ShiftLeft0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~128_combout\ = (\f1|shift_num\(3) & (((\f1|shift_num\(4)) # (\f1|ShiftLeft0~82_combout\)))) # (!\f1|shift_num\(3) & (\f1|ShiftLeft0~127_combout\ & (!\f1|shift_num\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(3),
	datab => \f1|ShiftLeft0~127_combout\,
	datac => \f1|shift_num\(4),
	datad => \f1|ShiftLeft0~82_combout\,
	combout => \f1|ShiftLeft0~128_combout\);

-- Location: LCCOMB_X68_Y36_N10
\f1|ShiftLeft0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~129_combout\ = (\f1|shift_num\(4) & ((\f1|ShiftLeft0~128_combout\ & ((\f1|ShiftLeft0~84_combout\))) # (!\f1|ShiftLeft0~128_combout\ & (\f1|ShiftLeft0~79_combout\)))) # (!\f1|shift_num\(4) & (((\f1|ShiftLeft0~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~79_combout\,
	datab => \f1|shift_num\(4),
	datac => \f1|ShiftLeft0~128_combout\,
	datad => \f1|ShiftLeft0~84_combout\,
	combout => \f1|ShiftLeft0~129_combout\);

-- Location: LCCOMB_X68_Y36_N0
\f1|ShiftLeft0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~130_combout\ = (!\f1|shift_num\(5) & \f1|ShiftLeft0~129_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|shift_num\(5),
	datad => \f1|ShiftLeft0~129_combout\,
	combout => \f1|ShiftLeft0~130_combout\);

-- Location: LCCOMB_X65_Y36_N30
\f1|U_tilde[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|U_tilde[31]~94_combout\ = \f1|U_tilde[30]~93\ $ (!\LF33|shift_register\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LF33|shift_register\(31),
	cin => \f1|U_tilde[30]~93\,
	combout => \f1|U_tilde[31]~94_combout\);

-- Location: LCCOMB_X65_Y32_N16
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

-- Location: FF_X65_Y36_N31
\f1|U_tilde[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \f1|U_tilde[31]~94_combout\,
	asdata => \~GND~combout\,
	sload => \LF33|ALT_INV_shift_register\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \f1|U_tilde\(31));

-- Location: LCCOMB_X67_Y36_N20
\f1|ShiftLeft0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~131_combout\ = (\f1|shift1[14]~6_combout\ & (((\f1|shift1[14]~0_combout\)))) # (!\f1|shift1[14]~6_combout\ & ((\f1|shift1[14]~0_combout\ & ((\f1|ShiftLeft0~122_combout\))) # (!\f1|shift1[14]~0_combout\ & (\f1|U_tilde\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift1[14]~6_combout\,
	datab => \f1|U_tilde\(31),
	datac => \f1|ShiftLeft0~122_combout\,
	datad => \f1|shift1[14]~0_combout\,
	combout => \f1|ShiftLeft0~131_combout\);

-- Location: LCCOMB_X67_Y36_N6
\f1|ShiftLeft0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~132_combout\ = (\f1|shift1[14]~6_combout\ & ((\f1|ShiftLeft0~131_combout\ & ((\f1|ShiftLeft0~112_combout\))) # (!\f1|ShiftLeft0~131_combout\ & (\f1|U_tilde\(30))))) # (!\f1|shift1[14]~6_combout\ & (((\f1|ShiftLeft0~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|U_tilde\(30),
	datab => \f1|ShiftLeft0~112_combout\,
	datac => \f1|shift1[14]~6_combout\,
	datad => \f1|ShiftLeft0~131_combout\,
	combout => \f1|ShiftLeft0~132_combout\);

-- Location: LCCOMB_X67_Y38_N30
\f1|ShiftLeft0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~133_combout\ = (\f1|shift_num\(3) & ((\f1|ShiftLeft0~89_combout\) # ((\f1|shift_num\(4))))) # (!\f1|shift_num\(3) & (((!\f1|shift_num\(4) & \f1|ShiftLeft0~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(3),
	datab => \f1|ShiftLeft0~89_combout\,
	datac => \f1|shift_num\(4),
	datad => \f1|ShiftLeft0~132_combout\,
	combout => \f1|ShiftLeft0~133_combout\);

-- Location: LCCOMB_X67_Y38_N28
\f1|ShiftLeft0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~134_combout\ = (\f1|ShiftLeft0~133_combout\ & (((\f1|ShiftLeft0~91_combout\)) # (!\f1|shift_num\(4)))) # (!\f1|ShiftLeft0~133_combout\ & (\f1|shift_num\(4) & (\f1|ShiftLeft0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~133_combout\,
	datab => \f1|shift_num\(4),
	datac => \f1|ShiftLeft0~86_combout\,
	datad => \f1|ShiftLeft0~91_combout\,
	combout => \f1|ShiftLeft0~134_combout\);

-- Location: LCCOMB_X67_Y38_N6
\f1|ShiftLeft0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~135_combout\ = (!\f1|shift_num\(5) & \f1|ShiftLeft0~134_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|shift_num\(5),
	datad => \f1|ShiftLeft0~134_combout\,
	combout => \f1|ShiftLeft0~135_combout\);

-- Location: LCCOMB_X65_Y38_N2
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~21_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(17)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(16),
	datac => \LF33|shift_register\(17),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~21_combout\);

-- Location: LCCOMB_X65_Y38_N12
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~22_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(15))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(15),
	datac => \LF33|shift_register\(14),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~22_combout\);

-- Location: LCCOMB_X65_Y38_N10
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~23_combout\ = (!\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & ((\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & (\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~21_combout\)) # 
-- (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~21_combout\,
	datac => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~22_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~23_combout\);

-- Location: LCCOMB_X65_Y38_N20
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~18_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(21)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(20),
	datac => \LF33|shift_register\(21),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~18_combout\);

-- Location: LCCOMB_X65_Y38_N22
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~19_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(19))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(19),
	datac => \LF33|shift_register\(18),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~19_combout\);

-- Location: LCCOMB_X65_Y38_N24
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~20_combout\ = (\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & ((\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & (\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~18_combout\)) # 
-- (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~18_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~19_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~20_combout\);

-- Location: LCCOMB_X65_Y38_N18
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~15_combout\ = (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(23))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(23),
	datab => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datac => \LF33|shift_register\(22),
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~15_combout\);

-- Location: LCCOMB_X65_Y38_N8
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~16_combout\ = (\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(25))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(25),
	datab => \LF33|shift_register\(24),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~16_combout\);

-- Location: LCCOMB_X65_Y38_N30
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~13_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(27)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(26),
	datac => \LF33|shift_register\(27),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~13_combout\);

-- Location: LCCOMB_X65_Y38_N16
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~14_combout\ = (\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & ((\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & (\LF33|shift_register\(28))) # (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & 
-- ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datab => \LF33|shift_register\(28),
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~13_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~14_combout\);

-- Location: LCCOMB_X65_Y38_N26
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~17_combout\ = (\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~14_combout\) # ((!\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & 
-- ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~15_combout\) # (\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~15_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~16_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~14_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~17_combout\);

-- Location: LCCOMB_X65_Y38_N28
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~24_combout\ = (\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & (((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~17_combout\)))) # (!\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & 
-- ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~23_combout\) # ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~23_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~20_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~17_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[3]~6_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~24_combout\);

-- Location: LCCOMB_X62_Y38_N14
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~18_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (((\f1|AU0|LOD0|oc0|sum[1]~2_combout\)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & (\LF33|shift_register\(21))) # 
-- (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\LF33|shift_register\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(21),
	datab => \LF33|shift_register\(23),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~18_combout\);

-- Location: LCCOMB_X62_Y38_N4
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~19_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~18_combout\ & (\LF33|shift_register\(20))) # 
-- (!\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~18_combout\ & ((\LF33|shift_register\(22)))))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(20),
	datab => \LF33|shift_register\(22),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~18_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~19_combout\);

-- Location: LCCOMB_X65_Y38_N6
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~16_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (((\f1|AU0|LOD0|oc0|sum[1]~2_combout\)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & (\LF33|shift_register\(25))) # 
-- (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\LF33|shift_register\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(25),
	datab => \LF33|shift_register\(27),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~16_combout\);

-- Location: LCCOMB_X65_Y38_N0
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~17_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~16_combout\ & ((\LF33|shift_register\(24)))) # 
-- (!\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~16_combout\ & (\LF33|shift_register\(26))))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(26),
	datab => \LF33|shift_register\(24),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~16_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~17_combout\);

-- Location: LCCOMB_X62_Y38_N30
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~20_combout\ = (\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~19_combout\)) # (!\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & 
-- ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~19_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~17_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~20_combout\);

-- Location: LCCOMB_X57_Y38_N4
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~11_combout\ = (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(18)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(19),
	datab => \LF33|shift_register\(18),
	datac => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~11_combout\);

-- Location: LCCOMB_X65_Y38_N4
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~10_combout\ = (\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(16)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(17),
	datab => \LF33|shift_register\(16),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~10_combout\);

-- Location: LCCOMB_X66_Y38_N26
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~13_combout\ = (\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\LF33|shift_register\(13)) # (\f1|AU0|LOD0|oc0|sum[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(13),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~13_combout\);

-- Location: LCCOMB_X66_Y38_N28
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~12_combout\ = (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(14))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(14),
	datab => \LF33|shift_register\(15),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~12_combout\);

-- Location: LCCOMB_X66_Y38_N16
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~14_combout\ = (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~12_combout\) # ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~13_combout\ & ((\LF33|shift_register\(12)) # 
-- (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datab => \LF33|shift_register\(12),
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~13_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~12_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~14_combout\);

-- Location: LCCOMB_X62_Y38_N28
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~15_combout\ = (\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & (((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~14_combout\)))) # (!\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & 
-- ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~11_combout\) # ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~11_combout\,
	datab => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~10_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~14_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~15_combout\);

-- Location: LCCOMB_X62_Y38_N16
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~21_combout\ = (\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~15_combout\))) # (!\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & 
-- (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|AU0|LOD0|oc0|sum[3]~6_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~20_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~15_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~21_combout\);

-- Location: LCCOMB_X62_Y38_N6
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~22_combout\ = (\f1|AU0|LOD0|oc0|sum[5]~10_combout\ & ((\f1|AU0|LOD0|oc0|sum[4]~8_combout\) # (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|AU0|LOD0|oc0|sum[4]~8_combout\,
	datac => \f1|AU0|LOD0|oc0|sum[5]~10_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~21_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~22_combout\);

-- Location: LCCOMB_X66_Y38_N0
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~8_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(11))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(11),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \LF33|shift_register\(10),
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~8_combout\);

-- Location: LCCOMB_X66_Y38_N14
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(13)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(12),
	datab => \LF33|shift_register\(13),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~7_combout\);

-- Location: LCCOMB_X66_Y38_N6
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~9_combout\ = (\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & ((\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~7_combout\))) # 
-- (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & (\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~8_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~9_combout\);

-- Location: LCCOMB_X66_Y38_N12
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~1_combout\ = (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(3))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(3),
	datab => \LF33|shift_register\(2),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~1_combout\);

-- Location: LCCOMB_X66_Y38_N2
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~2_combout\ = (\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\f1|U_tilde\(0)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(4),
	datab => \f1|U_tilde\(0),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~2_combout\);

-- Location: LCCOMB_X66_Y38_N30
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~0_combout\ = (\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(1)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(0),
	datab => \LF33|shift_register\(1),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X66_Y38_N24
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ = (\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~1_combout\) # 
-- ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~2_combout\)))) # (!\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & (((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~1_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~2_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~3_combout\);

-- Location: LCCOMB_X66_Y38_N18
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~5_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(7))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(7),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \LF33|shift_register\(6),
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~5_combout\);

-- Location: LCCOMB_X67_Y38_N12
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~4_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(9))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(9),
	datac => \LF33|shift_register\(8),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~4_combout\);

-- Location: LCCOMB_X66_Y38_N4
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~6_combout\ = (!\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & ((\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~4_combout\))) # 
-- (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & (\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~5_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~4_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~6_combout\);

-- Location: LCCOMB_X66_Y38_N20
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~10_combout\ = (\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~9_combout\) # 
-- ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~6_combout\)))) # (!\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & (((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~9_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~3_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~6_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[3]~6_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~10_combout\);

-- Location: LCCOMB_X62_Y39_N8
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~0_combout\ = (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(6)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(7),
	datab => \LF33|shift_register\(6),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X62_Y39_N14
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~1_combout\ = (\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(4))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\f1|U_tilde\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(4),
	datab => \f1|U_tilde\(0),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~1_combout\);

-- Location: LCCOMB_X62_Y39_N20
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~2_combout\ = (\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & (!\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~0_combout\) # 
-- (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~0_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~1_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[3]~6_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~2_combout\);

-- Location: LCCOMB_X63_Y38_N22
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~6_combout\ = (\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(8)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(9),
	datab => \LF33|shift_register\(8),
	datac => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~6_combout\);

-- Location: LCCOMB_X63_Y38_N8
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~7_combout\ = (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(10)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(11),
	datab => \LF33|shift_register\(10),
	datac => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~7_combout\);

-- Location: LCCOMB_X62_Y37_N12
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~3_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(0)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(1),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \LF33|shift_register\(0),
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~3_combout\);

-- Location: LCCOMB_X62_Y37_N10
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~4_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(2)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(3),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \LF33|shift_register\(2),
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~4_combout\);

-- Location: LCCOMB_X63_Y38_N16
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~5_combout\ = (\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & ((\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~3_combout\)) # (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & 
-- ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~3_combout\,
	datab => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~4_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[3]~6_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~5_combout\);

-- Location: LCCOMB_X63_Y38_N18
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~8_combout\ = (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~5_combout\) # ((!\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~6_combout\) # 
-- (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~6_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~7_combout\,
	datac => \f1|AU0|LOD0|oc0|sum[3]~6_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~5_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~8_combout\);

-- Location: LCCOMB_X63_Y38_N4
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~9_combout\ = ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~2_combout\) # ((!\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~8_combout\))) # 
-- (!\f1|AU0|LOD0|oc0|sum[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[4]~8_combout\,
	datab => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~2_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~8_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~9_combout\);

-- Location: LCCOMB_X61_Y38_N4
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~11_combout\ = (!\f1|AU0|LOD0|oc0|sum[5]~10_combout\ & !\f1|AU0|LOD0|oc0|sum[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|AU0|LOD0|oc0|sum[5]~10_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[4]~8_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~11_combout\);

-- Location: LCCOMB_X63_Y38_N6
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~12_combout\ = (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~9_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~22_combout\) # 
-- ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~10_combout\ & \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~10_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~9_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~22_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~11_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~12_combout\);

-- Location: LCCOMB_X63_Y38_N24
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~25_combout\ = (\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~12_combout\) # ((\f1|AU0|LOD0|oc0|sum[4]~8_combout\ & 
-- (\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~24_combout\ & !\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[4]~8_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~24_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~22_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~12_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~25_combout\);

-- Location: LCCOMB_X62_Y39_N18
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~47_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(18))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(18),
	datac => \LF33|shift_register\(17),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~47_combout\);

-- Location: LCCOMB_X62_Y39_N12
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~48_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(16))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(16),
	datac => \LF33|shift_register\(15),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~48_combout\);

-- Location: LCCOMB_X62_Y39_N6
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~49_combout\ = (!\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & ((\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & (\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~47_combout\)) # 
-- (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~47_combout\,
	datac => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~48_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~49_combout\);

-- Location: LCCOMB_X62_Y39_N22
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~45_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(20)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(19),
	datab => \LF33|shift_register\(20),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~45_combout\);

-- Location: LCCOMB_X62_Y39_N16
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~44_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(22)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(21),
	datac => \LF33|shift_register\(22),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~44_combout\);

-- Location: LCCOMB_X62_Y39_N4
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~46_combout\ = (\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & ((\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~44_combout\))) # 
-- (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & (\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~45_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~44_combout\,
	datac => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~46_combout\);

-- Location: LCCOMB_X62_Y39_N0
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~42_combout\ = (\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(26)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(25),
	datab => \LF33|shift_register\(26),
	datac => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~42_combout\);

-- Location: LCCOMB_X62_Y39_N26
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~41_combout\ = (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(24)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(23),
	datab => \LF33|shift_register\(24),
	datac => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~41_combout\);

-- Location: LCCOMB_X62_Y39_N2
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~39_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(28))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(28),
	datac => \LF33|shift_register\(27),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~39_combout\);

-- Location: LCCOMB_X62_Y39_N28
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~40_combout\ = (\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & ((\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & (\LF33|shift_register\(29))) # (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & 
-- ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(29),
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~39_combout\,
	datac => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~40_combout\);

-- Location: LCCOMB_X62_Y39_N10
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~43_combout\ = (\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~40_combout\) # ((!\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & 
-- ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~42_combout\) # (\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~42_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~41_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~40_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~43_combout\);

-- Location: LCCOMB_X62_Y39_N24
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~50_combout\ = (\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & (((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~43_combout\)))) # (!\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & 
-- ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~49_combout\) # ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~49_combout\,
	datab => \f1|AU0|LOD0|oc0|sum[3]~6_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~46_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~43_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~50_combout\);

-- Location: LCCOMB_X61_Y38_N28
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~51_combout\ = (!\f1|AU0|LOD0|oc0|sum[5]~10_combout\ & \f1|AU0|LOD0|oc0|sum[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f1|AU0|LOD0|oc0|sum[5]~10_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[4]~8_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~51_combout\);

-- Location: LCCOMB_X61_Y38_N0
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~39_combout\ = (\LF33|shift_register\(31) & (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & \f1|AU0|LOD0|oc0|sum[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(31),
	datab => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datac => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~39_combout\);

-- Location: LCCOMB_X57_Y38_N16
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~43_combout\ = (\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\f1|U_tilde\(0))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|U_tilde\(0),
	datab => \LF33|shift_register\(6),
	datac => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~43_combout\);

-- Location: LCCOMB_X62_Y39_N30
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~44_combout\ = (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(7))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(7),
	datab => \LF33|shift_register\(8),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~44_combout\);

-- Location: LCCOMB_X63_Y38_N26
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~40_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(9)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(10),
	datac => \LF33|shift_register\(9),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~40_combout\);

-- Location: LCCOMB_X63_Y38_N0
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~41_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(11))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(11),
	datab => \LF33|shift_register\(12),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~41_combout\);

-- Location: LCCOMB_X63_Y38_N10
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~42_combout\ = (!\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & ((\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~40_combout\)) # (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & 
-- ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~40_combout\,
	datab => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datac => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~41_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~42_combout\);

-- Location: LCCOMB_X61_Y38_N30
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~45_combout\ = (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~42_combout\) # ((\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~43_combout\) # 
-- (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~43_combout\,
	datab => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~44_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~42_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~45_combout\);

-- Location: LCCOMB_X63_Y38_N2
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~36_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (((\LF33|shift_register\(1)) # (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(2) & 
-- ((\f1|AU0|LOD0|oc0|sum[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(2),
	datab => \LF33|shift_register\(1),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~36_combout\);

-- Location: LCCOMB_X63_Y38_N28
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~37_combout\ = (\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & (((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~36_combout\)))) # (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & 
-- ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~36_combout\ & ((\LF33|shift_register\(3)))) # (!\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~36_combout\ & (\LF33|shift_register\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(4),
	datab => \LF33|shift_register\(3),
	datac => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~36_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~37_combout\);

-- Location: LCCOMB_X61_Y38_N2
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~38_combout\ = ((\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & (!\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~37_combout\))) # (!\f1|AU0|LOD0|oc0|sum[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[3]~6_combout\,
	datab => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~37_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[4]~8_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~38_combout\);

-- Location: LCCOMB_X61_Y38_N8
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~46_combout\ = (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~38_combout\) # ((\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~39_combout\)) # 
-- (!\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[3]~6_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~39_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~45_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~38_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~46_combout\);

-- Location: LCCOMB_X57_Y38_N12
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~35_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(2))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(2),
	datac => \LF33|shift_register\(1),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~35_combout\);

-- Location: LCCOMB_X57_Y38_N14
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~36_combout\ = (\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & (((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~35_combout\)))) # (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & 
-- (\LF33|shift_register\(31) & (\f1|AU0|LOD0|oc0|sum[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(31),
	datab => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datac => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~35_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~36_combout\);

-- Location: LCCOMB_X63_Y38_N12
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~32_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(10))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(10),
	datac => \LF33|shift_register\(9),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~32_combout\);

-- Location: LCCOMB_X63_Y38_N14
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~33_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(8)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(7),
	datab => \LF33|shift_register\(8),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~33_combout\);

-- Location: LCCOMB_X63_Y38_N20
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~34_combout\ = (\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & ((\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & (\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~32_combout\)) # 
-- (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~32_combout\,
	datab => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~33_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[3]~6_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~34_combout\);

-- Location: LCCOMB_X61_Y38_N12
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~37_combout\ = (!\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~34_combout\) # ((!\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & 
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[3]~6_combout\,
	datab => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~36_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~34_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~37_combout\);

-- Location: LCCOMB_X66_Y38_N8
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~29_combout\ = (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(12))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(12),
	datab => \LF33|shift_register\(11),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~29_combout\);

-- Location: LCCOMB_X66_Y38_N10
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~30_combout\ = (\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~29_combout\) # ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~13_combout\ & ((\LF33|shift_register\(14)) # 
-- (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~13_combout\,
	datab => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~29_combout\,
	datad => \LF33|shift_register\(14),
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~30_combout\);

-- Location: LCCOMB_X57_Y38_N20
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~27_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(4)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(3),
	datac => \LF33|shift_register\(4),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~27_combout\);

-- Location: LCCOMB_X57_Y38_N22
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~26_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(6))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\f1|U_tilde\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LF33|shift_register\(6),
	datac => \f1|U_tilde\(0),
	datad => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~26_combout\);

-- Location: LCCOMB_X57_Y38_N6
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~28_combout\ = (!\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & ((\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~26_combout\))) # 
-- (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & (\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~27_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~26_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[3]~6_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~28_combout\);

-- Location: LCCOMB_X61_Y38_N14
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~31_combout\ = (\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~28_combout\) # ((\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & 
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[3]~6_combout\,
	datab => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~30_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~28_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~31_combout\);

-- Location: LCCOMB_X62_Y38_N8
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~25_combout\ = (\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(21)) # ((!\f1|AU0|LOD0|oc0|sum[1]~2_combout\)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (((\LF33|shift_register\(22) & 
-- \f1|AU0|LOD0|oc0|sum[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(21),
	datab => \LF33|shift_register\(22),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~25_combout\);

-- Location: LCCOMB_X62_Y38_N10
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~26_combout\ = (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~25_combout\ & (((\LF33|shift_register\(23)) # (\f1|AU0|LOD0|oc0|sum[1]~2_combout\)))) # 
-- (!\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~25_combout\ & (\LF33|shift_register\(24) & ((!\f1|AU0|LOD0|oc0|sum[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(24),
	datab => \LF33|shift_register\(23),
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~25_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~26_combout\);

-- Location: LCCOMB_X63_Y38_N30
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~23_combout\ = (\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(25)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(26),
	datab => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datac => \LF33|shift_register\(25),
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~23_combout\);

-- Location: LCCOMB_X65_Y38_N14
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~24_combout\ = (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(27)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(28),
	datab => \LF33|shift_register\(27),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~24_combout\);

-- Location: LCCOMB_X62_Y38_N20
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~27_combout\ = (\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~26_combout\)) # (!\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & 
-- (((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~23_combout\) # (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~26_combout\,
	datab => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~23_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~24_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~27_combout\);

-- Location: LCCOMB_X66_Y38_N22
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~28_combout\ = (\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(13)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(14),
	datab => \LF33|shift_register\(13),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~28_combout\);

-- Location: LCCOMB_X62_Y38_N12
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~30_combout\ = (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(19)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(20),
	datab => \LF33|shift_register\(19),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~30_combout\);

-- Location: LCCOMB_X62_Y38_N18
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~29_combout\ = (!\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(15)))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(16),
	datab => \LF33|shift_register\(15),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~29_combout\);

-- Location: LCCOMB_X62_Y38_N22
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~31_combout\ = (\f1|AU0|LOD0|oc0|sum[1]~2_combout\ & ((\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & (\LF33|shift_register\(17))) # (!\f1|AU0|LOD0|oc0|sum[0]~0_combout\ & ((\LF33|shift_register\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF33|shift_register\(17),
	datab => \LF33|shift_register\(18),
	datac => \f1|AU0|LOD0|oc0|sum[0]~0_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[1]~2_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~31_combout\);

-- Location: LCCOMB_X62_Y38_N0
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~32_combout\ = (\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & (((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~29_combout\)))) # (!\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & 
-- ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~30_combout\) # ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~30_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~29_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~31_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~32_combout\);

-- Location: LCCOMB_X62_Y38_N26
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~33_combout\ = (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~32_combout\) # ((\f1|AU0|LOD0|oc0|sum[2]~4_combout\ & \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|AU0|LOD0|oc0|sum[2]~4_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~28_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~32_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~33_combout\);

-- Location: LCCOMB_X62_Y38_N24
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~34_combout\ = (\f1|AU0|LOD0|oc0|sum[4]~8_combout\) # ((\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f1|AU0|LOD0|oc0|sum[3]~6_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~33_combout\,
	datad => \f1|AU0|LOD0|oc0|sum[4]~8_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~34_combout\);

-- Location: LCCOMB_X62_Y38_N2
\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~35_combout\ = (\f1|AU0|LOD0|oc0|sum[5]~10_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~34_combout\) # ((!\f1|AU0|LOD0|oc0|sum[3]~6_combout\ & 
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|LOD0|oc0|sum[3]~6_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~27_combout\,
	datac => \f1|AU0|LOD0|oc0|sum[5]~10_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~34_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~35_combout\);

-- Location: LCCOMB_X61_Y38_N6
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~38_combout\ = (\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~35_combout\) # ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~11_combout\ & 
-- ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~37_combout\) # (\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~37_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[0]~11_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~31_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~35_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~38_combout\);

-- Location: LCCOMB_X61_Y38_N10
\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~52_combout\ = (\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~50_combout\ & ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~51_combout\) # 
-- ((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~46_combout\ & \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~38_combout\)))) # (!\f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~50_combout\ & 
-- (((\f1|AU0|mux0|LPM_MUX_component|auto_generated|_~46_combout\ & \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~50_combout\,
	datab => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~51_combout\,
	datac => \f1|AU0|mux0|LPM_MUX_component|auto_generated|_~46_combout\,
	datad => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~38_combout\,
	combout => \f1|AU0|mux0|LPM_MUX_component|auto_generated|result_node[1]~52_combout\);

-- Location: M9K_X64_Y38_N0
\f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
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
	logical_ram_name => "f_block:f1|f_a_lut:LUT_a|altsyncram:altsyncram_component|altsyncram_g3s3:auto_generated|ALTSYNCRAM",
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
	clk0 => \gclk~inputclkctrl_outclk\,
	portaaddr => \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \f1|LUT_a|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X68_Y36_N24
\f1|ShiftLeft0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~22_combout\ = (!\f1|shift_num\(4) & ((\f1|shift_num\(3) & ((\f1|ShiftLeft0~14_combout\))) # (!\f1|shift_num\(3) & (\f1|ShiftLeft0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|shift_num\(3),
	datab => \f1|ShiftLeft0~21_combout\,
	datac => \f1|shift_num\(4),
	datad => \f1|ShiftLeft0~14_combout\,
	combout => \f1|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X68_Y38_N20
\f1|ShiftLeft0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|ShiftLeft0~25_combout\ = (!\f1|shift_num\(5) & ((\f1|ShiftLeft0~22_combout\) # ((\f1|ShiftLeft0~24_combout\ & \f1|ShiftLeft0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|ShiftLeft0~24_combout\,
	datab => \f1|shift_num\(5),
	datac => \f1|ShiftLeft0~23_combout\,
	datad => \f1|ShiftLeft0~22_combout\,
	combout => \f1|ShiftLeft0~25_combout\);

-- Location: DSPMULT_X71_Y38_N0
\f1|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \gclk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \f1|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \f1|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \f1|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X71_Y38_N2
\f1|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \f1|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X70_Y35_N16
\f1|f_res[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f_res[0]~17_cout\ = CARRY((\f1|Mult0|auto_generated|mac_out2~DATAOUT17\ & \f1|LUT_b|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datab => \f1|LUT_b|altsyncram_component|auto_generated|q_a\(0),
	datad => VCC,
	cout => \f1|f_res[0]~17_cout\);

-- Location: LCCOMB_X70_Y35_N18
\f1|f_res[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f_res[0]~18_combout\ = (\f1|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(1) & (\f1|f_res[0]~17_cout\ & VCC)) # (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(1) & (!\f1|f_res[0]~17_cout\)))) # 
-- (!\f1|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(1) & (!\f1|f_res[0]~17_cout\)) # (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(1) & ((\f1|f_res[0]~17_cout\) # (GND)))))
-- \f1|f_res[0]~19\ = CARRY((\f1|Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(1) & !\f1|f_res[0]~17_cout\)) # (!\f1|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((!\f1|f_res[0]~17_cout\) # 
-- (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \f1|LUT_b|altsyncram_component|auto_generated|q_a\(1),
	datad => VCC,
	cin => \f1|f_res[0]~17_cout\,
	combout => \f1|f_res[0]~18_combout\,
	cout => \f1|f_res[0]~19\);

-- Location: LCCOMB_X70_Y35_N20
\f1|f_res[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f_res[1]~20_combout\ = ((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(2) $ (\f1|Mult0|auto_generated|mac_out2~DATAOUT19\ $ (!\f1|f_res[0]~19\)))) # (GND)
-- \f1|f_res[1]~21\ = CARRY((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(2) & ((\f1|Mult0|auto_generated|mac_out2~DATAOUT19\) # (!\f1|f_res[0]~19\))) # (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(2) & 
-- (\f1|Mult0|auto_generated|mac_out2~DATAOUT19\ & !\f1|f_res[0]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|LUT_b|altsyncram_component|auto_generated|q_a\(2),
	datab => \f1|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \f1|f_res[0]~19\,
	combout => \f1|f_res[1]~20_combout\,
	cout => \f1|f_res[1]~21\);

-- Location: LCCOMB_X70_Y35_N22
\f1|f_res[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f_res[2]~22_combout\ = (\f1|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(3) & (\f1|f_res[1]~21\ & VCC)) # (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(3) & (!\f1|f_res[1]~21\)))) # 
-- (!\f1|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(3) & (!\f1|f_res[1]~21\)) # (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(3) & ((\f1|f_res[1]~21\) # (GND)))))
-- \f1|f_res[2]~23\ = CARRY((\f1|Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(3) & !\f1|f_res[1]~21\)) # (!\f1|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((!\f1|f_res[1]~21\) # 
-- (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datab => \f1|LUT_b|altsyncram_component|auto_generated|q_a\(3),
	datad => VCC,
	cin => \f1|f_res[1]~21\,
	combout => \f1|f_res[2]~22_combout\,
	cout => \f1|f_res[2]~23\);

-- Location: LCCOMB_X70_Y35_N24
\f1|f_res[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f_res[3]~24_combout\ = ((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(4) $ (\f1|Mult0|auto_generated|mac_out2~DATAOUT21\ $ (!\f1|f_res[2]~23\)))) # (GND)
-- \f1|f_res[3]~25\ = CARRY((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(4) & ((\f1|Mult0|auto_generated|mac_out2~DATAOUT21\) # (!\f1|f_res[2]~23\))) # (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(4) & 
-- (\f1|Mult0|auto_generated|mac_out2~DATAOUT21\ & !\f1|f_res[2]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|LUT_b|altsyncram_component|auto_generated|q_a\(4),
	datab => \f1|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \f1|f_res[2]~23\,
	combout => \f1|f_res[3]~24_combout\,
	cout => \f1|f_res[3]~25\);

-- Location: LCCOMB_X70_Y35_N26
\f1|f_res[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f_res[4]~26_combout\ = (\f1|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(5) & (\f1|f_res[3]~25\ & VCC)) # (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(5) & (!\f1|f_res[3]~25\)))) # 
-- (!\f1|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(5) & (!\f1|f_res[3]~25\)) # (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(5) & ((\f1|f_res[3]~25\) # (GND)))))
-- \f1|f_res[4]~27\ = CARRY((\f1|Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(5) & !\f1|f_res[3]~25\)) # (!\f1|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((!\f1|f_res[3]~25\) # 
-- (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \f1|LUT_b|altsyncram_component|auto_generated|q_a\(5),
	datad => VCC,
	cin => \f1|f_res[3]~25\,
	combout => \f1|f_res[4]~26_combout\,
	cout => \f1|f_res[4]~27\);

-- Location: LCCOMB_X70_Y35_N28
\f1|f_res[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f_res[5]~28_combout\ = ((\f1|Mult0|auto_generated|mac_out2~DATAOUT23\ $ (\f1|LUT_b|altsyncram_component|auto_generated|q_a\(6) $ (!\f1|f_res[4]~27\)))) # (GND)
-- \f1|f_res[5]~29\ = CARRY((\f1|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(6)) # (!\f1|f_res[4]~27\))) # (!\f1|Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- (\f1|LUT_b|altsyncram_component|auto_generated|q_a\(6) & !\f1|f_res[4]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \f1|LUT_b|altsyncram_component|auto_generated|q_a\(6),
	datad => VCC,
	cin => \f1|f_res[4]~27\,
	combout => \f1|f_res[5]~28_combout\,
	cout => \f1|f_res[5]~29\);

-- Location: LCCOMB_X70_Y35_N30
\f1|f_res[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f_res[6]~30_combout\ = (\f1|LUT_b|altsyncram_component|auto_generated|q_a\(7) & ((\f1|Mult0|auto_generated|mac_out2~DATAOUT24\ & (\f1|f_res[5]~29\ & VCC)) # (!\f1|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\f1|f_res[5]~29\)))) # 
-- (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(7) & ((\f1|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\f1|f_res[5]~29\)) # (!\f1|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\f1|f_res[5]~29\) # (GND)))))
-- \f1|f_res[6]~31\ = CARRY((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(7) & (!\f1|Mult0|auto_generated|mac_out2~DATAOUT24\ & !\f1|f_res[5]~29\)) # (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(7) & ((!\f1|f_res[5]~29\) # 
-- (!\f1|Mult0|auto_generated|mac_out2~DATAOUT24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|LUT_b|altsyncram_component|auto_generated|q_a\(7),
	datab => \f1|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datad => VCC,
	cin => \f1|f_res[5]~29\,
	combout => \f1|f_res[6]~30_combout\,
	cout => \f1|f_res[6]~31\);

-- Location: LCCOMB_X70_Y34_N0
\f1|f_res[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f_res[7]~32_combout\ = ((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(8) $ (\f1|Mult0|auto_generated|mac_out2~DATAOUT25\ $ (!\f1|f_res[6]~31\)))) # (GND)
-- \f1|f_res[7]~33\ = CARRY((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(8) & ((\f1|Mult0|auto_generated|mac_out2~DATAOUT25\) # (!\f1|f_res[6]~31\))) # (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(8) & 
-- (\f1|Mult0|auto_generated|mac_out2~DATAOUT25\ & !\f1|f_res[6]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|LUT_b|altsyncram_component|auto_generated|q_a\(8),
	datab => \f1|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datad => VCC,
	cin => \f1|f_res[6]~31\,
	combout => \f1|f_res[7]~32_combout\,
	cout => \f1|f_res[7]~33\);

-- Location: LCCOMB_X70_Y34_N2
\f1|f_res[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f_res[8]~34_combout\ = (\f1|LUT_b|altsyncram_component|auto_generated|q_a\(9) & ((\f1|Mult0|auto_generated|mac_out2~DATAOUT26\ & (\f1|f_res[7]~33\ & VCC)) # (!\f1|Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\f1|f_res[7]~33\)))) # 
-- (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(9) & ((\f1|Mult0|auto_generated|mac_out2~DATAOUT26\ & (!\f1|f_res[7]~33\)) # (!\f1|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\f1|f_res[7]~33\) # (GND)))))
-- \f1|f_res[8]~35\ = CARRY((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(9) & (!\f1|Mult0|auto_generated|mac_out2~DATAOUT26\ & !\f1|f_res[7]~33\)) # (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(9) & ((!\f1|f_res[7]~33\) # 
-- (!\f1|Mult0|auto_generated|mac_out2~DATAOUT26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|LUT_b|altsyncram_component|auto_generated|q_a\(9),
	datab => \f1|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \f1|f_res[7]~33\,
	combout => \f1|f_res[8]~34_combout\,
	cout => \f1|f_res[8]~35\);

-- Location: LCCOMB_X70_Y34_N4
\f1|f_res[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f_res[9]~36_combout\ = ((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(10) $ (\f1|Mult0|auto_generated|mac_out2~DATAOUT27\ $ (!\f1|f_res[8]~35\)))) # (GND)
-- \f1|f_res[9]~37\ = CARRY((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(10) & ((\f1|Mult0|auto_generated|mac_out2~DATAOUT27\) # (!\f1|f_res[8]~35\))) # (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(10) & 
-- (\f1|Mult0|auto_generated|mac_out2~DATAOUT27\ & !\f1|f_res[8]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|LUT_b|altsyncram_component|auto_generated|q_a\(10),
	datab => \f1|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \f1|f_res[8]~35\,
	combout => \f1|f_res[9]~36_combout\,
	cout => \f1|f_res[9]~37\);

-- Location: LCCOMB_X70_Y34_N6
\f1|f_res[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f_res[10]~38_combout\ = (\f1|LUT_b|altsyncram_component|auto_generated|q_a\(11) & ((\f1|Mult0|auto_generated|mac_out2~DATAOUT28\ & (\f1|f_res[9]~37\ & VCC)) # (!\f1|Mult0|auto_generated|mac_out2~DATAOUT28\ & (!\f1|f_res[9]~37\)))) # 
-- (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(11) & ((\f1|Mult0|auto_generated|mac_out2~DATAOUT28\ & (!\f1|f_res[9]~37\)) # (!\f1|Mult0|auto_generated|mac_out2~DATAOUT28\ & ((\f1|f_res[9]~37\) # (GND)))))
-- \f1|f_res[10]~39\ = CARRY((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(11) & (!\f1|Mult0|auto_generated|mac_out2~DATAOUT28\ & !\f1|f_res[9]~37\)) # (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(11) & ((!\f1|f_res[9]~37\) # 
-- (!\f1|Mult0|auto_generated|mac_out2~DATAOUT28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|LUT_b|altsyncram_component|auto_generated|q_a\(11),
	datab => \f1|Mult0|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \f1|f_res[9]~37\,
	combout => \f1|f_res[10]~38_combout\,
	cout => \f1|f_res[10]~39\);

-- Location: LCCOMB_X70_Y34_N8
\f1|f_res[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f_res[11]~40_combout\ = ((\f1|Mult0|auto_generated|mac_out2~DATAOUT29\ $ (\f1|LUT_b|altsyncram_component|auto_generated|q_a\(12) $ (!\f1|f_res[10]~39\)))) # (GND)
-- \f1|f_res[11]~41\ = CARRY((\f1|Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(12)) # (!\f1|f_res[10]~39\))) # (!\f1|Mult0|auto_generated|mac_out2~DATAOUT29\ & 
-- (\f1|LUT_b|altsyncram_component|auto_generated|q_a\(12) & !\f1|f_res[10]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|Mult0|auto_generated|mac_out2~DATAOUT29\,
	datab => \f1|LUT_b|altsyncram_component|auto_generated|q_a\(12),
	datad => VCC,
	cin => \f1|f_res[10]~39\,
	combout => \f1|f_res[11]~40_combout\,
	cout => \f1|f_res[11]~41\);

-- Location: LCCOMB_X70_Y34_N10
\f1|f_res[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f_res[12]~42_combout\ = (\f1|LUT_b|altsyncram_component|auto_generated|q_a\(13) & ((\f1|Mult0|auto_generated|mac_out2~DATAOUT30\ & (\f1|f_res[11]~41\ & VCC)) # (!\f1|Mult0|auto_generated|mac_out2~DATAOUT30\ & (!\f1|f_res[11]~41\)))) # 
-- (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(13) & ((\f1|Mult0|auto_generated|mac_out2~DATAOUT30\ & (!\f1|f_res[11]~41\)) # (!\f1|Mult0|auto_generated|mac_out2~DATAOUT30\ & ((\f1|f_res[11]~41\) # (GND)))))
-- \f1|f_res[12]~43\ = CARRY((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(13) & (!\f1|Mult0|auto_generated|mac_out2~DATAOUT30\ & !\f1|f_res[11]~41\)) # (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(13) & ((!\f1|f_res[11]~41\) # 
-- (!\f1|Mult0|auto_generated|mac_out2~DATAOUT30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|LUT_b|altsyncram_component|auto_generated|q_a\(13),
	datab => \f1|Mult0|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \f1|f_res[11]~41\,
	combout => \f1|f_res[12]~42_combout\,
	cout => \f1|f_res[12]~43\);

-- Location: LCCOMB_X70_Y34_N12
\f1|f_res[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f_res[13]~44_combout\ = ((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(14) $ (\f1|Mult0|auto_generated|mac_out2~DATAOUT31\ $ (!\f1|f_res[12]~43\)))) # (GND)
-- \f1|f_res[13]~45\ = CARRY((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(14) & ((\f1|Mult0|auto_generated|mac_out2~DATAOUT31\) # (!\f1|f_res[12]~43\))) # (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(14) & 
-- (\f1|Mult0|auto_generated|mac_out2~DATAOUT31\ & !\f1|f_res[12]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|LUT_b|altsyncram_component|auto_generated|q_a\(14),
	datab => \f1|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datad => VCC,
	cin => \f1|f_res[12]~43\,
	combout => \f1|f_res[13]~44_combout\,
	cout => \f1|f_res[13]~45\);

-- Location: LCCOMB_X70_Y34_N14
\f1|f_res[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f_res[14]~46_combout\ = (\f1|LUT_b|altsyncram_component|auto_generated|q_a\(15) & ((\f1|Mult0|auto_generated|mac_out2~DATAOUT32\ & (\f1|f_res[13]~45\ & VCC)) # (!\f1|Mult0|auto_generated|mac_out2~DATAOUT32\ & (!\f1|f_res[13]~45\)))) # 
-- (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(15) & ((\f1|Mult0|auto_generated|mac_out2~DATAOUT32\ & (!\f1|f_res[13]~45\)) # (!\f1|Mult0|auto_generated|mac_out2~DATAOUT32\ & ((\f1|f_res[13]~45\) # (GND)))))
-- \f1|f_res[14]~47\ = CARRY((\f1|LUT_b|altsyncram_component|auto_generated|q_a\(15) & (!\f1|Mult0|auto_generated|mac_out2~DATAOUT32\ & !\f1|f_res[13]~45\)) # (!\f1|LUT_b|altsyncram_component|auto_generated|q_a\(15) & ((!\f1|f_res[13]~45\) # 
-- (!\f1|Mult0|auto_generated|mac_out2~DATAOUT32\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|LUT_b|altsyncram_component|auto_generated|q_a\(15),
	datab => \f1|Mult0|auto_generated|mac_out2~DATAOUT32\,
	datad => VCC,
	cin => \f1|f_res[13]~45\,
	combout => \f1|f_res[14]~46_combout\,
	cout => \f1|f_res[14]~47\);

-- Location: LCCOMB_X70_Y34_N16
\f1|f_res[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \f1|f_res[15]~48_combout\ = \f1|LUT_b|altsyncram_component|auto_generated|q_a\(15) $ (\f1|Mult0|auto_generated|mac_out2~DATAOUT32\ $ (!\f1|f_res[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \f1|LUT_b|altsyncram_component|auto_generated|q_a\(15),
	datab => \f1|Mult0|auto_generated|mac_out2~DATAOUT32\,
	cin => \f1|f_res[14]~47\,
	combout => \f1|f_res[15]~48_combout\);

-- Location: FF_X66_Y31_N9
\LF16|shift_register[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF16|shift_register\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF16|shift_register\(8));

-- Location: FF_X66_Y31_N3
\sc|d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF16|shift_register\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|d\(4));

-- Location: LCCOMB_X66_Y31_N14
\LF16|shift_register[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LF16|shift_register[7]~feeder_combout\ = \LF16|shift_register\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LF16|shift_register\(2),
	combout => \LF16|shift_register[7]~feeder_combout\);

-- Location: FF_X66_Y31_N15
\LF16|shift_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \LF16|shift_register[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF16|shift_register\(7));

-- Location: FF_X66_Y31_N25
\sc|d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF16|shift_register\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|d\(3));

-- Location: LCCOMB_X66_Y31_N26
\LF16|shift_register~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LF16|shift_register~4_combout\ = \sc|d\(0) $ (\sc|d\(3) $ (\LF16|shift_register\(0) $ (!\sc|d\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc|d\(0),
	datab => \sc|d\(3),
	datac => \LF16|shift_register\(0),
	datad => \sc|d\(2),
	combout => \LF16|shift_register~4_combout\);

-- Location: FF_X66_Y31_N27
\LF16|shift_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \LF16|shift_register~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF16|shift_register\(1));

-- Location: FF_X66_Y31_N1
\LF16|shift_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF16|shift_register\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF16|shift_register\(6));

-- Location: LCCOMB_X66_Y31_N10
\sc|d[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|d[2]~feeder_combout\ = \LF16|shift_register\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LF16|shift_register\(6),
	combout => \sc|d[2]~feeder_combout\);

-- Location: FF_X66_Y31_N11
\sc|d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|d[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|d\(2));

-- Location: LCCOMB_X66_Y31_N22
\LF16|shift_register~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LF16|shift_register~2_combout\ = \sc|d\(2) $ (\LF16|shift_register\(8) $ (\LF16|shift_register~0_combout\ $ (\sc|d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc|d\(2),
	datab => \LF16|shift_register\(8),
	datac => \LF16|shift_register~0_combout\,
	datad => \sc|d\(1),
	combout => \LF16|shift_register~2_combout\);

-- Location: FF_X66_Y31_N23
\LF16|shift_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \LF16|shift_register~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF16|shift_register\(0));

-- Location: FF_X66_Y31_N17
\LF16|shift_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => \LF16|shift_register\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF16|shift_register\(5));

-- Location: LCCOMB_X66_Y31_N18
\sc|d[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|d[1]~feeder_combout\ = \LF16|shift_register\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LF16|shift_register\(5),
	combout => \sc|d[1]~feeder_combout\);

-- Location: FF_X66_Y31_N19
\sc|d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|d[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|d\(1));

-- Location: LCCOMB_X66_Y31_N28
\LF16|shift_register~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LF16|shift_register~3_combout\ = \sc|d\(4) $ (\sc|d\(1) $ (\LF16|shift_register\(1) $ (!\sc|d\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc|d\(4),
	datab => \sc|d\(1),
	datac => \LF16|shift_register\(1),
	datad => \sc|d\(3),
	combout => \LF16|shift_register~3_combout\);

-- Location: FF_X66_Y31_N29
\LF16|shift_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \LF16|shift_register~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF16|shift_register\(2));

-- Location: LCCOMB_X66_Y31_N30
\LF16|shift_register~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LF16|shift_register~1_combout\ = \sc|d\(4) $ (\LF16|shift_register\(2) $ (\sc|d\(5) $ (!\sc|d\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc|d\(4),
	datab => \LF16|shift_register\(2),
	datac => \sc|d\(5),
	datad => \sc|d\(2),
	combout => \LF16|shift_register~1_combout\);

-- Location: FF_X66_Y31_N31
\LF16|shift_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \LF16|shift_register~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF16|shift_register\(3));

-- Location: LCCOMB_X66_Y31_N6
\sc|d[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|d[6]~feeder_combout\ = \sc|d\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|d\(1),
	combout => \sc|d[6]~feeder_combout\);

-- Location: FF_X66_Y31_N7
\sc|d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|d[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|d\(6));

-- Location: LCCOMB_X66_Y31_N20
\LF16|shift_register~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LF16|shift_register~0_combout\ = \LF16|shift_register\(3) $ (\sc|d\(6) $ (\sc|d\(5) $ (!\sc|d\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LF16|shift_register\(3),
	datab => \sc|d\(6),
	datac => \sc|d\(5),
	datad => \sc|d\(3),
	combout => \LF16|shift_register~0_combout\);

-- Location: FF_X66_Y31_N21
\LF16|shift_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \LF16|shift_register~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LF16|shift_register\(4));

-- Location: LCCOMB_X66_Y31_N12
\sc|d[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|d[0]~feeder_combout\ = \LF16|shift_register\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LF16|shift_register\(4),
	combout => \sc|d[0]~feeder_combout\);

-- Location: FF_X66_Y31_N13
\sc|d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|d[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|d\(0));

-- Location: LCCOMB_X66_Y31_N4
\sc|d[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|d[5]~feeder_combout\ = \sc|d\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|d\(0),
	combout => \sc|d[5]~feeder_combout\);

-- Location: FF_X66_Y31_N5
\sc|d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|d[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|d\(5));

-- Location: LCCOMB_X65_Y31_N28
\sc|n~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|n~feeder_combout\ = \sc|d\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|d\(5),
	combout => \sc|n~feeder_combout\);

-- Location: FF_X65_Y31_N29
\sc|n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|n~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|n~q\);

-- Location: LCCOMB_X65_Y31_N4
\sc|m~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|m~feeder_combout\ = \sc|d\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|d\(6),
	combout => \sc|m~feeder_combout\);

-- Location: FF_X65_Y31_N5
\sc|m\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|m~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|m~q\);

-- Location: LCCOMB_X65_Y31_N20
\sc|dSinpLUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dSinpLUT~0_combout\ = \sc|m~q\ $ (\sc|d\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc|m~q\,
	datad => \sc|d\(5),
	combout => \sc|dSinpLUT~0_combout\);

-- Location: FF_X65_Y31_N21
\sc|dSinpLUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dSinpLUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dSinpLUT\(0));

-- Location: LCCOMB_X65_Y31_N18
\sc|dSinpLUT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dSinpLUT~1_combout\ = \sc|m~q\ $ (\sc|d\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc|m~q\,
	datad => \sc|d\(6),
	combout => \sc|dSinpLUT~1_combout\);

-- Location: FF_X65_Y31_N19
\sc|dSinpLUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dSinpLUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dSinpLUT\(1));

-- Location: LCCOMB_X63_Y31_N0
\sc|d[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|d[7]~feeder_combout\ = \sc|d\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|d\(2),
	combout => \sc|d[7]~feeder_combout\);

-- Location: FF_X63_Y31_N1
\sc|d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|d[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|d\(7));

-- Location: LCCOMB_X63_Y31_N18
\sc|dSinpLUT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dSinpLUT~2_combout\ = \sc|m~q\ $ (\sc|d\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc|m~q\,
	datad => \sc|d\(7),
	combout => \sc|dSinpLUT~2_combout\);

-- Location: FF_X63_Y31_N19
\sc|dSinpLUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dSinpLUT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dSinpLUT\(2));

-- Location: LCCOMB_X63_Y31_N2
\sc|d[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|d[8]~feeder_combout\ = \sc|d\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|d\(3),
	combout => \sc|d[8]~feeder_combout\);

-- Location: FF_X63_Y31_N3
\sc|d[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|d[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|d\(8));

-- Location: LCCOMB_X63_Y31_N12
\sc|dSinpLUT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dSinpLUT~3_combout\ = \sc|d\(8) $ (\sc|m~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc|d\(8),
	datac => \sc|m~q\,
	combout => \sc|dSinpLUT~3_combout\);

-- Location: FF_X63_Y31_N13
\sc|dSinpLUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dSinpLUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dSinpLUT\(3));

-- Location: LCCOMB_X65_Y31_N12
\sc|d[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|d[9]~feeder_combout\ = \sc|d\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|d\(4),
	combout => \sc|d[9]~feeder_combout\);

-- Location: FF_X65_Y31_N13
\sc|d[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|d[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|d\(9));

-- Location: LCCOMB_X65_Y31_N16
\sc|dSinpLUT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dSinpLUT~4_combout\ = \sc|d\(9) $ (\sc|m~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc|d\(9),
	datac => \sc|m~q\,
	combout => \sc|dSinpLUT~4_combout\);

-- Location: FF_X65_Y31_N17
\sc|dSinpLUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dSinpLUT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dSinpLUT\(4));

-- Location: LCCOMB_X63_Y31_N24
\sc|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|process_0~0_combout\ = \sc|m~q\ $ (\sc|n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc|m~q\,
	datad => \sc|n~q\,
	combout => \sc|process_0~0_combout\);

-- Location: LCCOMB_X63_Y31_N14
\sc|dSinpLUT[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dSinpLUT[5]~feeder_combout\ = \sc|process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|process_0~0_combout\,
	combout => \sc|dSinpLUT[5]~feeder_combout\);

-- Location: FF_X63_Y31_N15
\sc|dSinpLUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dSinpLUT[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dSinpLUT\(5));

-- Location: LCCOMB_X63_Y31_N8
\sc|dCos[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dCos[7]~feeder_combout\ = \sc|d\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|d\(7),
	combout => \sc|dCos[7]~feeder_combout\);

-- Location: FF_X63_Y31_N9
\sc|dCos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dCos[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dCos\(7));

-- Location: LCCOMB_X63_Y31_N20
\sc|dSinpLUT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dSinpLUT~5_combout\ = \sc|m~q\ $ (\sc|dCos\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc|m~q\,
	datac => \sc|dCos\(7),
	combout => \sc|dSinpLUT~5_combout\);

-- Location: FF_X63_Y31_N21
\sc|dSinpLUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dSinpLUT~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dSinpLUT\(7));

-- Location: LCCOMB_X63_Y31_N26
\sc|dCos[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dCos[8]~feeder_combout\ = \sc|d\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|d\(8),
	combout => \sc|dCos[8]~feeder_combout\);

-- Location: FF_X63_Y31_N27
\sc|dCos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dCos[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dCos\(8));

-- Location: LCCOMB_X63_Y31_N6
\sc|dSinpLUT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dSinpLUT~6_combout\ = \sc|m~q\ $ (\sc|dCos\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc|m~q\,
	datac => \sc|dCos\(8),
	combout => \sc|dSinpLUT~6_combout\);

-- Location: FF_X63_Y31_N7
\sc|dSinpLUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dSinpLUT~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dSinpLUT\(8));

-- Location: LCCOMB_X65_Y31_N14
\sc|dCos[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dCos[9]~feeder_combout\ = \sc|d\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|d\(9),
	combout => \sc|dCos[9]~feeder_combout\);

-- Location: FF_X65_Y31_N15
\sc|dCos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dCos[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dCos\(9));

-- Location: LCCOMB_X65_Y31_N2
\sc|dSinpLUT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dSinpLUT~7_combout\ = \sc|m~q\ $ (\sc|dCos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc|m~q\,
	datac => \sc|dCos\(9),
	combout => \sc|dSinpLUT~7_combout\);

-- Location: FF_X65_Y31_N3
\sc|dSinpLUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dSinpLUT~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dSinpLUT\(9));

-- Location: LCCOMB_X65_Y31_N0
\sc|dCospLUT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dCospLUT[0]~0_combout\ = !\sc|dSinpLUT~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|dSinpLUT~0_combout\,
	combout => \sc|dCospLUT[0]~0_combout\);

-- Location: FF_X65_Y31_N1
\sc|dCospLUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dCospLUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dCospLUT\(0));

-- Location: LCCOMB_X65_Y31_N22
\sc|dCospLUT[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dCospLUT[1]~1_combout\ = !\sc|dSinpLUT~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|dSinpLUT~1_combout\,
	combout => \sc|dCospLUT[1]~1_combout\);

-- Location: FF_X65_Y31_N23
\sc|dCospLUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dCospLUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dCospLUT\(1));

-- Location: LCCOMB_X63_Y31_N4
\sc|dCospLUT[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dCospLUT[2]~2_combout\ = !\sc|dSinpLUT~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|dSinpLUT~2_combout\,
	combout => \sc|dCospLUT[2]~2_combout\);

-- Location: FF_X63_Y31_N5
\sc|dCospLUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dCospLUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dCospLUT\(2));

-- Location: LCCOMB_X63_Y31_N10
\sc|dCospLUT[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dCospLUT[3]~3_combout\ = !\sc|dSinpLUT~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|dSinpLUT~3_combout\,
	combout => \sc|dCospLUT[3]~3_combout\);

-- Location: FF_X63_Y31_N11
\sc|dCospLUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dCospLUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dCospLUT\(3));

-- Location: LCCOMB_X65_Y31_N8
\sc|dCospLUT[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dCospLUT[4]~4_combout\ = !\sc|dSinpLUT~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|dSinpLUT~4_combout\,
	combout => \sc|dCospLUT[4]~4_combout\);

-- Location: FF_X65_Y31_N9
\sc|dCospLUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dCospLUT[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dCospLUT\(4));

-- Location: LCCOMB_X63_Y31_N28
\sc|dCospLUT[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dCospLUT[5]~5_combout\ = !\sc|process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|process_0~0_combout\,
	combout => \sc|dCospLUT[5]~5_combout\);

-- Location: FF_X63_Y31_N29
\sc|dCospLUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dCospLUT[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dCospLUT\(5));

-- Location: LCCOMB_X63_Y31_N22
\sc|dCospLUT[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dCospLUT[6]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \sc|dCospLUT[6]~feeder_combout\);

-- Location: FF_X63_Y31_N23
\sc|dCospLUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dCospLUT[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dCospLUT\(6));

-- Location: LCCOMB_X63_Y31_N16
\sc|dCospLUT[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dCospLUT[7]~6_combout\ = !\sc|dSinpLUT~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|dSinpLUT~5_combout\,
	combout => \sc|dCospLUT[7]~6_combout\);

-- Location: FF_X63_Y31_N17
\sc|dCospLUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dCospLUT[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dCospLUT\(7));

-- Location: LCCOMB_X63_Y31_N30
\sc|dCospLUT[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dCospLUT[8]~7_combout\ = !\sc|dSinpLUT~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|dSinpLUT~6_combout\,
	combout => \sc|dCospLUT[8]~7_combout\);

-- Location: FF_X63_Y31_N31
\sc|dCospLUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dCospLUT[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dCospLUT\(8));

-- Location: LCCOMB_X65_Y31_N26
\sc|dCospLUT[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|dCospLUT[9]~8_combout\ = !\sc|dSinpLUT~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sc|dSinpLUT~7_combout\,
	combout => \sc|dCospLUT[9]~8_combout\);

-- Location: FF_X65_Y31_N27
\sc|dCospLUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \sc|dCospLUT[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sc|dCospLUT\(9));

-- Location: M9K_X64_Y31_N0
\sc|c1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
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
	logical_ram_name => "sincos:sc|sincosLUT:c1|altsyncram:altsyncram_component|altsyncram_egq3:auto_generated|ALTSYNCRAM",
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
	clk0 => \gclk~inputclkctrl_outclk\,
	portadatain => \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \sc|c1|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X65_Y31_N10
\sc|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|Add0~0_combout\ = \sc|c1|altsyncram_component|auto_generated|q_a\(0) $ (\sc|n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sc|c1|altsyncram_component|auto_generated|q_a\(0),
	datad => \sc|n~q\,
	combout => \sc|Add0~0_combout\);

-- Location: LCCOMB_X67_Y31_N0
\sc|sinOut[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|sinOut[0]~16_combout\ = (\sc|n~q\ & (\sc|Add0~0_combout\ $ (VCC))) # (!\sc|n~q\ & (\sc|Add0~0_combout\ & VCC))
-- \sc|sinOut[0]~17\ = CARRY((\sc|n~q\ & \sc|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc|n~q\,
	datab => \sc|Add0~0_combout\,
	datad => VCC,
	combout => \sc|sinOut[0]~16_combout\,
	cout => \sc|sinOut[0]~17\);

-- Location: LCCOMB_X67_Y31_N2
\sc|sinOut[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|sinOut[1]~18_combout\ = (\sc|sinOut[0]~17\ & (\sc|n~q\ $ ((!\sc|c1|altsyncram_component|auto_generated|q_a\(1))))) # (!\sc|sinOut[0]~17\ & ((\sc|n~q\ $ (\sc|c1|altsyncram_component|auto_generated|q_a\(1))) # (GND)))
-- \sc|sinOut[1]~19\ = CARRY((\sc|n~q\ $ (!\sc|c1|altsyncram_component|auto_generated|q_a\(1))) # (!\sc|sinOut[0]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|n~q\,
	datab => \sc|c1|altsyncram_component|auto_generated|q_a\(1),
	datad => VCC,
	cin => \sc|sinOut[0]~17\,
	combout => \sc|sinOut[1]~18_combout\,
	cout => \sc|sinOut[1]~19\);

-- Location: LCCOMB_X67_Y31_N4
\sc|sinOut[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|sinOut[2]~20_combout\ = (\sc|sinOut[1]~19\ & ((\sc|n~q\ $ (\sc|c1|altsyncram_component|auto_generated|q_a\(2))))) # (!\sc|sinOut[1]~19\ & (\sc|n~q\ $ (\sc|c1|altsyncram_component|auto_generated|q_a\(2) $ (VCC))))
-- \sc|sinOut[2]~21\ = CARRY((!\sc|sinOut[1]~19\ & (\sc|n~q\ $ (\sc|c1|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|n~q\,
	datab => \sc|c1|altsyncram_component|auto_generated|q_a\(2),
	datad => VCC,
	cin => \sc|sinOut[1]~19\,
	combout => \sc|sinOut[2]~20_combout\,
	cout => \sc|sinOut[2]~21\);

-- Location: LCCOMB_X67_Y31_N6
\sc|sinOut[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|sinOut[3]~22_combout\ = (\sc|sinOut[2]~21\ & (\sc|n~q\ $ ((!\sc|c1|altsyncram_component|auto_generated|q_a\(3))))) # (!\sc|sinOut[2]~21\ & ((\sc|n~q\ $ (\sc|c1|altsyncram_component|auto_generated|q_a\(3))) # (GND)))
-- \sc|sinOut[3]~23\ = CARRY((\sc|n~q\ $ (!\sc|c1|altsyncram_component|auto_generated|q_a\(3))) # (!\sc|sinOut[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|n~q\,
	datab => \sc|c1|altsyncram_component|auto_generated|q_a\(3),
	datad => VCC,
	cin => \sc|sinOut[2]~21\,
	combout => \sc|sinOut[3]~22_combout\,
	cout => \sc|sinOut[3]~23\);

-- Location: LCCOMB_X67_Y31_N8
\sc|sinOut[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|sinOut[4]~24_combout\ = (\sc|sinOut[3]~23\ & ((\sc|n~q\ $ (\sc|c1|altsyncram_component|auto_generated|q_a\(4))))) # (!\sc|sinOut[3]~23\ & (\sc|n~q\ $ (\sc|c1|altsyncram_component|auto_generated|q_a\(4) $ (VCC))))
-- \sc|sinOut[4]~25\ = CARRY((!\sc|sinOut[3]~23\ & (\sc|n~q\ $ (\sc|c1|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|n~q\,
	datab => \sc|c1|altsyncram_component|auto_generated|q_a\(4),
	datad => VCC,
	cin => \sc|sinOut[3]~23\,
	combout => \sc|sinOut[4]~24_combout\,
	cout => \sc|sinOut[4]~25\);

-- Location: LCCOMB_X67_Y31_N10
\sc|sinOut[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|sinOut[5]~26_combout\ = (\sc|sinOut[4]~25\ & (\sc|n~q\ $ ((!\sc|c1|altsyncram_component|auto_generated|q_a\(5))))) # (!\sc|sinOut[4]~25\ & ((\sc|n~q\ $ (\sc|c1|altsyncram_component|auto_generated|q_a\(5))) # (GND)))
-- \sc|sinOut[5]~27\ = CARRY((\sc|n~q\ $ (!\sc|c1|altsyncram_component|auto_generated|q_a\(5))) # (!\sc|sinOut[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|n~q\,
	datab => \sc|c1|altsyncram_component|auto_generated|q_a\(5),
	datad => VCC,
	cin => \sc|sinOut[4]~25\,
	combout => \sc|sinOut[5]~26_combout\,
	cout => \sc|sinOut[5]~27\);

-- Location: LCCOMB_X67_Y31_N12
\sc|sinOut[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|sinOut[6]~28_combout\ = (\sc|sinOut[5]~27\ & ((\sc|n~q\ $ (\sc|c1|altsyncram_component|auto_generated|q_a\(6))))) # (!\sc|sinOut[5]~27\ & (\sc|n~q\ $ (\sc|c1|altsyncram_component|auto_generated|q_a\(6) $ (VCC))))
-- \sc|sinOut[6]~29\ = CARRY((!\sc|sinOut[5]~27\ & (\sc|n~q\ $ (\sc|c1|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|n~q\,
	datab => \sc|c1|altsyncram_component|auto_generated|q_a\(6),
	datad => VCC,
	cin => \sc|sinOut[5]~27\,
	combout => \sc|sinOut[6]~28_combout\,
	cout => \sc|sinOut[6]~29\);

-- Location: LCCOMB_X67_Y31_N14
\sc|sinOut[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|sinOut[7]~30_combout\ = (\sc|sinOut[6]~29\ & (\sc|n~q\ $ ((!\sc|c1|altsyncram_component|auto_generated|q_a\(7))))) # (!\sc|sinOut[6]~29\ & ((\sc|n~q\ $ (\sc|c1|altsyncram_component|auto_generated|q_a\(7))) # (GND)))
-- \sc|sinOut[7]~31\ = CARRY((\sc|n~q\ $ (!\sc|c1|altsyncram_component|auto_generated|q_a\(7))) # (!\sc|sinOut[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|n~q\,
	datab => \sc|c1|altsyncram_component|auto_generated|q_a\(7),
	datad => VCC,
	cin => \sc|sinOut[6]~29\,
	combout => \sc|sinOut[7]~30_combout\,
	cout => \sc|sinOut[7]~31\);

-- Location: LCCOMB_X67_Y31_N16
\sc|sinOut[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|sinOut[8]~32_combout\ = (\sc|sinOut[7]~31\ & ((\sc|c1|altsyncram_component|auto_generated|q_a\(8) $ (\sc|n~q\)))) # (!\sc|sinOut[7]~31\ & (\sc|c1|altsyncram_component|auto_generated|q_a\(8) $ (\sc|n~q\ $ (VCC))))
-- \sc|sinOut[8]~33\ = CARRY((!\sc|sinOut[7]~31\ & (\sc|c1|altsyncram_component|auto_generated|q_a\(8) $ (\sc|n~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|c1|altsyncram_component|auto_generated|q_a\(8),
	datab => \sc|n~q\,
	datad => VCC,
	cin => \sc|sinOut[7]~31\,
	combout => \sc|sinOut[8]~32_combout\,
	cout => \sc|sinOut[8]~33\);

-- Location: M9K_X64_Y32_N0
\sc|c1|altsyncram_component|auto_generated|ram_block1a9\ : cycloneive_ram_block
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
	logical_ram_name => "sincos:sc|sincosLUT:c1|altsyncram:altsyncram_component|altsyncram_egq3:auto_generated|ALTSYNCRAM",
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
	clk0 => \gclk~inputclkctrl_outclk\,
	portadatain => \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portbdatain => \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAIN_bus\,
	portaaddr => \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\,
	portbdataout => \sc|c1|altsyncram_component|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X67_Y31_N18
\sc|sinOut[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|sinOut[9]~34_combout\ = (\sc|sinOut[8]~33\ & (\sc|c1|altsyncram_component|auto_generated|q_a\(9) $ ((!\sc|n~q\)))) # (!\sc|sinOut[8]~33\ & ((\sc|c1|altsyncram_component|auto_generated|q_a\(9) $ (\sc|n~q\)) # (GND)))
-- \sc|sinOut[9]~35\ = CARRY((\sc|c1|altsyncram_component|auto_generated|q_a\(9) $ (!\sc|n~q\)) # (!\sc|sinOut[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|c1|altsyncram_component|auto_generated|q_a\(9),
	datab => \sc|n~q\,
	datad => VCC,
	cin => \sc|sinOut[8]~33\,
	combout => \sc|sinOut[9]~34_combout\,
	cout => \sc|sinOut[9]~35\);

-- Location: LCCOMB_X67_Y31_N20
\sc|sinOut[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|sinOut[10]~36_combout\ = (\sc|sinOut[9]~35\ & ((\sc|c1|altsyncram_component|auto_generated|q_a\(10) $ (\sc|n~q\)))) # (!\sc|sinOut[9]~35\ & (\sc|c1|altsyncram_component|auto_generated|q_a\(10) $ (\sc|n~q\ $ (VCC))))
-- \sc|sinOut[10]~37\ = CARRY((!\sc|sinOut[9]~35\ & (\sc|c1|altsyncram_component|auto_generated|q_a\(10) $ (\sc|n~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|c1|altsyncram_component|auto_generated|q_a\(10),
	datab => \sc|n~q\,
	datad => VCC,
	cin => \sc|sinOut[9]~35\,
	combout => \sc|sinOut[10]~36_combout\,
	cout => \sc|sinOut[10]~37\);

-- Location: LCCOMB_X67_Y31_N22
\sc|sinOut[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|sinOut[11]~38_combout\ = (\sc|sinOut[10]~37\ & (\sc|c1|altsyncram_component|auto_generated|q_a\(11) $ ((!\sc|n~q\)))) # (!\sc|sinOut[10]~37\ & ((\sc|c1|altsyncram_component|auto_generated|q_a\(11) $ (\sc|n~q\)) # (GND)))
-- \sc|sinOut[11]~39\ = CARRY((\sc|c1|altsyncram_component|auto_generated|q_a\(11) $ (!\sc|n~q\)) # (!\sc|sinOut[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|c1|altsyncram_component|auto_generated|q_a\(11),
	datab => \sc|n~q\,
	datad => VCC,
	cin => \sc|sinOut[10]~37\,
	combout => \sc|sinOut[11]~38_combout\,
	cout => \sc|sinOut[11]~39\);

-- Location: LCCOMB_X67_Y31_N24
\sc|sinOut[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|sinOut[12]~40_combout\ = (\sc|sinOut[11]~39\ & ((\sc|c1|altsyncram_component|auto_generated|q_a\(12) $ (\sc|n~q\)))) # (!\sc|sinOut[11]~39\ & (\sc|c1|altsyncram_component|auto_generated|q_a\(12) $ (\sc|n~q\ $ (VCC))))
-- \sc|sinOut[12]~41\ = CARRY((!\sc|sinOut[11]~39\ & (\sc|c1|altsyncram_component|auto_generated|q_a\(12) $ (\sc|n~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|c1|altsyncram_component|auto_generated|q_a\(12),
	datab => \sc|n~q\,
	datad => VCC,
	cin => \sc|sinOut[11]~39\,
	combout => \sc|sinOut[12]~40_combout\,
	cout => \sc|sinOut[12]~41\);

-- Location: LCCOMB_X67_Y31_N26
\sc|sinOut[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|sinOut[13]~42_combout\ = (\sc|sinOut[12]~41\ & (\sc|c1|altsyncram_component|auto_generated|q_a\(13) $ ((!\sc|n~q\)))) # (!\sc|sinOut[12]~41\ & ((\sc|c1|altsyncram_component|auto_generated|q_a\(13) $ (\sc|n~q\)) # (GND)))
-- \sc|sinOut[13]~43\ = CARRY((\sc|c1|altsyncram_component|auto_generated|q_a\(13) $ (!\sc|n~q\)) # (!\sc|sinOut[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|c1|altsyncram_component|auto_generated|q_a\(13),
	datab => \sc|n~q\,
	datad => VCC,
	cin => \sc|sinOut[12]~41\,
	combout => \sc|sinOut[13]~42_combout\,
	cout => \sc|sinOut[13]~43\);

-- Location: LCCOMB_X67_Y31_N28
\sc|sinOut[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|sinOut[14]~44_combout\ = (\sc|sinOut[13]~43\ & ((\sc|c1|altsyncram_component|auto_generated|q_a\(14) $ (\sc|n~q\)))) # (!\sc|sinOut[13]~43\ & (\sc|c1|altsyncram_component|auto_generated|q_a\(14) $ (\sc|n~q\ $ (VCC))))
-- \sc|sinOut[14]~45\ = CARRY((!\sc|sinOut[13]~43\ & (\sc|c1|altsyncram_component|auto_generated|q_a\(14) $ (\sc|n~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|c1|altsyncram_component|auto_generated|q_a\(14),
	datab => \sc|n~q\,
	datad => VCC,
	cin => \sc|sinOut[13]~43\,
	combout => \sc|sinOut[14]~44_combout\,
	cout => \sc|sinOut[14]~45\);

-- Location: LCCOMB_X67_Y31_N30
\sc|sinOut[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|sinOut[15]~46_combout\ = \sc|c1|altsyncram_component|auto_generated|q_a\(15) $ (\sc|sinOut[14]~45\ $ (\sc|n~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|c1|altsyncram_component|auto_generated|q_a\(15),
	datad => \sc|n~q\,
	cin => \sc|sinOut[14]~45\,
	combout => \sc|sinOut[15]~46_combout\);

-- Location: DSPMULT_X71_Y31_N0
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \gclk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X71_Y31_N2
\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X74_Y31_N24
\U1[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[0]~reg0feeder_combout\ = mulres1(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres1(15),
	combout => \U1[0]~reg0feeder_combout\);

-- Location: FF_X74_Y31_N25
\U1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U1[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1[0]~reg0_q\);

-- Location: LCCOMB_X79_Y31_N8
\U1[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[1]~reg0feeder_combout\ = mulres1(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres1(16),
	combout => \U1[1]~reg0feeder_combout\);

-- Location: FF_X79_Y31_N9
\U1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U1[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1[1]~reg0_q\);

-- Location: LCCOMB_X72_Y31_N20
\U1[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[2]~reg0feeder_combout\ = mulres1(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres1(17),
	combout => \U1[2]~reg0feeder_combout\);

-- Location: FF_X72_Y31_N21
\U1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U1[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1[2]~reg0_q\);

-- Location: LCCOMB_X70_Y31_N4
\U1[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[3]~reg0feeder_combout\ = mulres1(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres1(18),
	combout => \U1[3]~reg0feeder_combout\);

-- Location: FF_X70_Y31_N5
\U1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U1[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1[3]~reg0_q\);

-- Location: FF_X67_Y31_N25
\U1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => mulres1(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1[4]~reg0_q\);

-- Location: LCCOMB_X79_Y31_N10
\U1[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[5]~reg0feeder_combout\ = mulres1(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres1(20),
	combout => \U1[5]~reg0feeder_combout\);

-- Location: FF_X79_Y31_N11
\U1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U1[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1[5]~reg0_q\);

-- Location: LCCOMB_X72_Y31_N10
\U1[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[6]~reg0feeder_combout\ = mulres1(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres1(21),
	combout => \U1[6]~reg0feeder_combout\);

-- Location: FF_X72_Y31_N11
\U1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U1[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1[6]~reg0_q\);

-- Location: LCCOMB_X70_Y31_N22
\U1[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[7]~reg0feeder_combout\ = mulres1(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres1(22),
	combout => \U1[7]~reg0feeder_combout\);

-- Location: FF_X70_Y31_N23
\U1[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U1[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1[7]~reg0_q\);

-- Location: LCCOMB_X72_Y31_N12
\U1[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[8]~reg0feeder_combout\ = mulres1(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres1(23),
	combout => \U1[8]~reg0feeder_combout\);

-- Location: FF_X72_Y31_N13
\U1[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U1[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1[8]~reg0_q\);

-- Location: LCCOMB_X70_Y31_N12
\U1[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[9]~reg0feeder_combout\ = mulres1(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres1(24),
	combout => \U1[9]~reg0feeder_combout\);

-- Location: FF_X70_Y31_N13
\U1[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U1[9]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1[9]~reg0_q\);

-- Location: FF_X70_Y31_N27
\U1[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => mulres1(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1[10]~reg0_q\);

-- Location: LCCOMB_X72_Y31_N18
\U1[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[11]~reg0feeder_combout\ = mulres1(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres1(26),
	combout => \U1[11]~reg0feeder_combout\);

-- Location: FF_X72_Y31_N19
\U1[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U1[11]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1[11]~reg0_q\);

-- Location: FF_X68_Y31_N9
\U1[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => mulres1(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1[12]~reg0_q\);

-- Location: LCCOMB_X72_Y31_N16
\U1[13]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[13]~reg0feeder_combout\ = mulres1(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres1(28),
	combout => \U1[13]~reg0feeder_combout\);

-- Location: FF_X72_Y31_N17
\U1[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U1[13]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1[13]~reg0_q\);

-- Location: LCCOMB_X70_Y31_N8
\U1[14]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[14]~reg0feeder_combout\ = mulres1(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres1(29),
	combout => \U1[14]~reg0feeder_combout\);

-- Location: FF_X70_Y31_N9
\U1[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U1[14]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1[14]~reg0_q\);

-- Location: LCCOMB_X72_Y31_N2
\U1[15]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1[15]~reg0feeder_combout\ = mulres1(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres1(30),
	combout => \U1[15]~reg0feeder_combout\);

-- Location: FF_X72_Y31_N3
\U1[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U1[15]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1[15]~reg0_q\);

-- Location: LCCOMB_X65_Y31_N30
\sc|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|Add1~0_combout\ = \sc|c1|altsyncram_component|auto_generated|q_b\(0) $ (\sc|m~q\ $ (\sc|n~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sc|c1|altsyncram_component|auto_generated|q_b\(0),
	datac => \sc|m~q\,
	datad => \sc|n~q\,
	combout => \sc|Add1~0_combout\);

-- Location: LCCOMB_X67_Y32_N0
\sc|cosOut[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|cosOut[0]~16_combout\ = (\sc|process_0~0_combout\ & (\sc|Add1~0_combout\ $ (VCC))) # (!\sc|process_0~0_combout\ & (\sc|Add1~0_combout\ & VCC))
-- \sc|cosOut[0]~17\ = CARRY((\sc|process_0~0_combout\ & \sc|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sc|process_0~0_combout\,
	datab => \sc|Add1~0_combout\,
	datad => VCC,
	combout => \sc|cosOut[0]~16_combout\,
	cout => \sc|cosOut[0]~17\);

-- Location: LCCOMB_X67_Y32_N2
\sc|cosOut[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|cosOut[1]~18_combout\ = (\sc|cosOut[0]~17\ & (\sc|process_0~0_combout\ $ ((!\sc|c1|altsyncram_component|auto_generated|q_b\(1))))) # (!\sc|cosOut[0]~17\ & ((\sc|process_0~0_combout\ $ (\sc|c1|altsyncram_component|auto_generated|q_b\(1))) # (GND)))
-- \sc|cosOut[1]~19\ = CARRY((\sc|process_0~0_combout\ $ (!\sc|c1|altsyncram_component|auto_generated|q_b\(1))) # (!\sc|cosOut[0]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|process_0~0_combout\,
	datab => \sc|c1|altsyncram_component|auto_generated|q_b\(1),
	datad => VCC,
	cin => \sc|cosOut[0]~17\,
	combout => \sc|cosOut[1]~18_combout\,
	cout => \sc|cosOut[1]~19\);

-- Location: LCCOMB_X67_Y32_N4
\sc|cosOut[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|cosOut[2]~20_combout\ = (\sc|cosOut[1]~19\ & ((\sc|process_0~0_combout\ $ (\sc|c1|altsyncram_component|auto_generated|q_b\(2))))) # (!\sc|cosOut[1]~19\ & (\sc|process_0~0_combout\ $ (\sc|c1|altsyncram_component|auto_generated|q_b\(2) $ (VCC))))
-- \sc|cosOut[2]~21\ = CARRY((!\sc|cosOut[1]~19\ & (\sc|process_0~0_combout\ $ (\sc|c1|altsyncram_component|auto_generated|q_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|process_0~0_combout\,
	datab => \sc|c1|altsyncram_component|auto_generated|q_b\(2),
	datad => VCC,
	cin => \sc|cosOut[1]~19\,
	combout => \sc|cosOut[2]~20_combout\,
	cout => \sc|cosOut[2]~21\);

-- Location: LCCOMB_X67_Y32_N6
\sc|cosOut[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|cosOut[3]~22_combout\ = (\sc|cosOut[2]~21\ & (\sc|c1|altsyncram_component|auto_generated|q_b\(3) $ ((!\sc|process_0~0_combout\)))) # (!\sc|cosOut[2]~21\ & ((\sc|c1|altsyncram_component|auto_generated|q_b\(3) $ (\sc|process_0~0_combout\)) # (GND)))
-- \sc|cosOut[3]~23\ = CARRY((\sc|c1|altsyncram_component|auto_generated|q_b\(3) $ (!\sc|process_0~0_combout\)) # (!\sc|cosOut[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|c1|altsyncram_component|auto_generated|q_b\(3),
	datab => \sc|process_0~0_combout\,
	datad => VCC,
	cin => \sc|cosOut[2]~21\,
	combout => \sc|cosOut[3]~22_combout\,
	cout => \sc|cosOut[3]~23\);

-- Location: LCCOMB_X67_Y32_N8
\sc|cosOut[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|cosOut[4]~24_combout\ = (\sc|cosOut[3]~23\ & ((\sc|c1|altsyncram_component|auto_generated|q_b\(4) $ (\sc|process_0~0_combout\)))) # (!\sc|cosOut[3]~23\ & (\sc|c1|altsyncram_component|auto_generated|q_b\(4) $ (\sc|process_0~0_combout\ $ (VCC))))
-- \sc|cosOut[4]~25\ = CARRY((!\sc|cosOut[3]~23\ & (\sc|c1|altsyncram_component|auto_generated|q_b\(4) $ (\sc|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|c1|altsyncram_component|auto_generated|q_b\(4),
	datab => \sc|process_0~0_combout\,
	datad => VCC,
	cin => \sc|cosOut[3]~23\,
	combout => \sc|cosOut[4]~24_combout\,
	cout => \sc|cosOut[4]~25\);

-- Location: LCCOMB_X67_Y32_N10
\sc|cosOut[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|cosOut[5]~26_combout\ = (\sc|cosOut[4]~25\ & (\sc|process_0~0_combout\ $ ((!\sc|c1|altsyncram_component|auto_generated|q_b\(5))))) # (!\sc|cosOut[4]~25\ & ((\sc|process_0~0_combout\ $ (\sc|c1|altsyncram_component|auto_generated|q_b\(5))) # (GND)))
-- \sc|cosOut[5]~27\ = CARRY((\sc|process_0~0_combout\ $ (!\sc|c1|altsyncram_component|auto_generated|q_b\(5))) # (!\sc|cosOut[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|process_0~0_combout\,
	datab => \sc|c1|altsyncram_component|auto_generated|q_b\(5),
	datad => VCC,
	cin => \sc|cosOut[4]~25\,
	combout => \sc|cosOut[5]~26_combout\,
	cout => \sc|cosOut[5]~27\);

-- Location: LCCOMB_X67_Y32_N12
\sc|cosOut[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|cosOut[6]~28_combout\ = (\sc|cosOut[5]~27\ & ((\sc|process_0~0_combout\ $ (\sc|c1|altsyncram_component|auto_generated|q_b\(6))))) # (!\sc|cosOut[5]~27\ & (\sc|process_0~0_combout\ $ (\sc|c1|altsyncram_component|auto_generated|q_b\(6) $ (VCC))))
-- \sc|cosOut[6]~29\ = CARRY((!\sc|cosOut[5]~27\ & (\sc|process_0~0_combout\ $ (\sc|c1|altsyncram_component|auto_generated|q_b\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|process_0~0_combout\,
	datab => \sc|c1|altsyncram_component|auto_generated|q_b\(6),
	datad => VCC,
	cin => \sc|cosOut[5]~27\,
	combout => \sc|cosOut[6]~28_combout\,
	cout => \sc|cosOut[6]~29\);

-- Location: LCCOMB_X67_Y32_N14
\sc|cosOut[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|cosOut[7]~30_combout\ = (\sc|cosOut[6]~29\ & (\sc|process_0~0_combout\ $ ((!\sc|c1|altsyncram_component|auto_generated|q_b\(7))))) # (!\sc|cosOut[6]~29\ & ((\sc|process_0~0_combout\ $ (\sc|c1|altsyncram_component|auto_generated|q_b\(7))) # (GND)))
-- \sc|cosOut[7]~31\ = CARRY((\sc|process_0~0_combout\ $ (!\sc|c1|altsyncram_component|auto_generated|q_b\(7))) # (!\sc|cosOut[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|process_0~0_combout\,
	datab => \sc|c1|altsyncram_component|auto_generated|q_b\(7),
	datad => VCC,
	cin => \sc|cosOut[6]~29\,
	combout => \sc|cosOut[7]~30_combout\,
	cout => \sc|cosOut[7]~31\);

-- Location: LCCOMB_X67_Y32_N16
\sc|cosOut[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|cosOut[8]~32_combout\ = (\sc|cosOut[7]~31\ & ((\sc|process_0~0_combout\ $ (\sc|c1|altsyncram_component|auto_generated|q_b\(8))))) # (!\sc|cosOut[7]~31\ & (\sc|process_0~0_combout\ $ (\sc|c1|altsyncram_component|auto_generated|q_b\(8) $ (VCC))))
-- \sc|cosOut[8]~33\ = CARRY((!\sc|cosOut[7]~31\ & (\sc|process_0~0_combout\ $ (\sc|c1|altsyncram_component|auto_generated|q_b\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|process_0~0_combout\,
	datab => \sc|c1|altsyncram_component|auto_generated|q_b\(8),
	datad => VCC,
	cin => \sc|cosOut[7]~31\,
	combout => \sc|cosOut[8]~32_combout\,
	cout => \sc|cosOut[8]~33\);

-- Location: LCCOMB_X67_Y32_N18
\sc|cosOut[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|cosOut[9]~34_combout\ = (\sc|cosOut[8]~33\ & (\sc|c1|altsyncram_component|auto_generated|q_b\(9) $ ((!\sc|process_0~0_combout\)))) # (!\sc|cosOut[8]~33\ & ((\sc|c1|altsyncram_component|auto_generated|q_b\(9) $ (\sc|process_0~0_combout\)) # (GND)))
-- \sc|cosOut[9]~35\ = CARRY((\sc|c1|altsyncram_component|auto_generated|q_b\(9) $ (!\sc|process_0~0_combout\)) # (!\sc|cosOut[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|c1|altsyncram_component|auto_generated|q_b\(9),
	datab => \sc|process_0~0_combout\,
	datad => VCC,
	cin => \sc|cosOut[8]~33\,
	combout => \sc|cosOut[9]~34_combout\,
	cout => \sc|cosOut[9]~35\);

-- Location: LCCOMB_X67_Y32_N20
\sc|cosOut[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|cosOut[10]~36_combout\ = (\sc|cosOut[9]~35\ & ((\sc|c1|altsyncram_component|auto_generated|q_b\(10) $ (\sc|process_0~0_combout\)))) # (!\sc|cosOut[9]~35\ & (\sc|c1|altsyncram_component|auto_generated|q_b\(10) $ (\sc|process_0~0_combout\ $ (VCC))))
-- \sc|cosOut[10]~37\ = CARRY((!\sc|cosOut[9]~35\ & (\sc|c1|altsyncram_component|auto_generated|q_b\(10) $ (\sc|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|c1|altsyncram_component|auto_generated|q_b\(10),
	datab => \sc|process_0~0_combout\,
	datad => VCC,
	cin => \sc|cosOut[9]~35\,
	combout => \sc|cosOut[10]~36_combout\,
	cout => \sc|cosOut[10]~37\);

-- Location: LCCOMB_X67_Y32_N22
\sc|cosOut[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|cosOut[11]~38_combout\ = (\sc|cosOut[10]~37\ & (\sc|c1|altsyncram_component|auto_generated|q_b\(11) $ ((!\sc|process_0~0_combout\)))) # (!\sc|cosOut[10]~37\ & ((\sc|c1|altsyncram_component|auto_generated|q_b\(11) $ (\sc|process_0~0_combout\)) # 
-- (GND)))
-- \sc|cosOut[11]~39\ = CARRY((\sc|c1|altsyncram_component|auto_generated|q_b\(11) $ (!\sc|process_0~0_combout\)) # (!\sc|cosOut[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|c1|altsyncram_component|auto_generated|q_b\(11),
	datab => \sc|process_0~0_combout\,
	datad => VCC,
	cin => \sc|cosOut[10]~37\,
	combout => \sc|cosOut[11]~38_combout\,
	cout => \sc|cosOut[11]~39\);

-- Location: LCCOMB_X67_Y32_N24
\sc|cosOut[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|cosOut[12]~40_combout\ = (\sc|cosOut[11]~39\ & ((\sc|c1|altsyncram_component|auto_generated|q_b\(12) $ (\sc|process_0~0_combout\)))) # (!\sc|cosOut[11]~39\ & (\sc|c1|altsyncram_component|auto_generated|q_b\(12) $ (\sc|process_0~0_combout\ $ (VCC))))
-- \sc|cosOut[12]~41\ = CARRY((!\sc|cosOut[11]~39\ & (\sc|c1|altsyncram_component|auto_generated|q_b\(12) $ (\sc|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|c1|altsyncram_component|auto_generated|q_b\(12),
	datab => \sc|process_0~0_combout\,
	datad => VCC,
	cin => \sc|cosOut[11]~39\,
	combout => \sc|cosOut[12]~40_combout\,
	cout => \sc|cosOut[12]~41\);

-- Location: LCCOMB_X67_Y32_N26
\sc|cosOut[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|cosOut[13]~42_combout\ = (\sc|cosOut[12]~41\ & (\sc|c1|altsyncram_component|auto_generated|q_b\(13) $ ((!\sc|process_0~0_combout\)))) # (!\sc|cosOut[12]~41\ & ((\sc|c1|altsyncram_component|auto_generated|q_b\(13) $ (\sc|process_0~0_combout\)) # 
-- (GND)))
-- \sc|cosOut[13]~43\ = CARRY((\sc|c1|altsyncram_component|auto_generated|q_b\(13) $ (!\sc|process_0~0_combout\)) # (!\sc|cosOut[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|c1|altsyncram_component|auto_generated|q_b\(13),
	datab => \sc|process_0~0_combout\,
	datad => VCC,
	cin => \sc|cosOut[12]~41\,
	combout => \sc|cosOut[13]~42_combout\,
	cout => \sc|cosOut[13]~43\);

-- Location: LCCOMB_X67_Y32_N28
\sc|cosOut[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|cosOut[14]~44_combout\ = (\sc|cosOut[13]~43\ & ((\sc|process_0~0_combout\ $ (\sc|c1|altsyncram_component|auto_generated|q_b\(14))))) # (!\sc|cosOut[13]~43\ & (\sc|process_0~0_combout\ $ (\sc|c1|altsyncram_component|auto_generated|q_b\(14) $ (VCC))))
-- \sc|cosOut[14]~45\ = CARRY((!\sc|cosOut[13]~43\ & (\sc|process_0~0_combout\ $ (\sc|c1|altsyncram_component|auto_generated|q_b\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|process_0~0_combout\,
	datab => \sc|c1|altsyncram_component|auto_generated|q_b\(14),
	datad => VCC,
	cin => \sc|cosOut[13]~43\,
	combout => \sc|cosOut[14]~44_combout\,
	cout => \sc|cosOut[14]~45\);

-- Location: LCCOMB_X67_Y32_N30
\sc|cosOut[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc|cosOut[15]~46_combout\ = \sc|process_0~0_combout\ $ (\sc|cosOut[14]~45\ $ (\sc|c1|altsyncram_component|auto_generated|q_b\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc|process_0~0_combout\,
	datad => \sc|c1|altsyncram_component|auto_generated|q_b\(15),
	cin => \sc|cosOut[14]~45\,
	combout => \sc|cosOut[15]~46_combout\);

-- Location: DSPMULT_X71_Y32_N0
\Mult1|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \gclk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X71_Y32_N2
\Mult1|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X83_Y32_N0
\U2[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2[0]~reg0feeder_combout\ = mulres2(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres2(15),
	combout => \U2[0]~reg0feeder_combout\);

-- Location: FF_X83_Y32_N1
\U2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U2[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2[0]~reg0_q\);

-- Location: LCCOMB_X79_Y32_N0
\U2[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2[1]~reg0feeder_combout\ = mulres2(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres2(16),
	combout => \U2[1]~reg0feeder_combout\);

-- Location: FF_X79_Y32_N1
\U2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U2[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2[1]~reg0_q\);

-- Location: LCCOMB_X75_Y32_N12
\U2[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2[2]~reg0feeder_combout\ = mulres2(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres2(17),
	combout => \U2[2]~reg0feeder_combout\);

-- Location: FF_X75_Y32_N13
\U2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U2[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2[2]~reg0_q\);

-- Location: LCCOMB_X72_Y32_N16
\U2[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2[3]~reg0feeder_combout\ = mulres2(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres2(18),
	combout => \U2[3]~reg0feeder_combout\);

-- Location: FF_X72_Y32_N17
\U2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U2[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2[3]~reg0_q\);

-- Location: LCCOMB_X70_Y32_N12
\U2[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2[4]~reg0feeder_combout\ = mulres2(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres2(19),
	combout => \U2[4]~reg0feeder_combout\);

-- Location: FF_X70_Y32_N13
\U2[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U2[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2[4]~reg0_q\);

-- Location: LCCOMB_X79_Y32_N18
\U2[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2[5]~reg0feeder_combout\ = mulres2(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres2(20),
	combout => \U2[5]~reg0feeder_combout\);

-- Location: FF_X79_Y32_N19
\U2[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U2[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2[5]~reg0_q\);

-- Location: LCCOMB_X72_Y32_N6
\U2[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2[6]~reg0feeder_combout\ = mulres2(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres2(21),
	combout => \U2[6]~reg0feeder_combout\);

-- Location: FF_X72_Y32_N7
\U2[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U2[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2[6]~reg0_q\);

-- Location: LCCOMB_X70_Y32_N2
\U2[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2[7]~reg0feeder_combout\ = mulres2(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres2(22),
	combout => \U2[7]~reg0feeder_combout\);

-- Location: FF_X70_Y32_N3
\U2[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U2[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2[7]~reg0_q\);

-- Location: LCCOMB_X72_Y32_N0
\U2[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2[8]~reg0feeder_combout\ = mulres2(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres2(23),
	combout => \U2[8]~reg0feeder_combout\);

-- Location: FF_X72_Y32_N1
\U2[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U2[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2[8]~reg0_q\);

-- Location: FF_X75_Y36_N25
\U2[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => mulres2(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2[9]~reg0_q\);

-- Location: LCCOMB_X72_Y32_N14
\U2[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2[10]~reg0feeder_combout\ = mulres2(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres2(25),
	combout => \U2[10]~reg0feeder_combout\);

-- Location: FF_X72_Y32_N15
\U2[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U2[10]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2[10]~reg0_q\);

-- Location: LCCOMB_X72_Y32_N12
\U2[11]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2[11]~reg0feeder_combout\ = mulres2(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres2(26),
	combout => \U2[11]~reg0feeder_combout\);

-- Location: FF_X72_Y32_N13
\U2[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U2[11]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2[11]~reg0_q\);

-- Location: LCCOMB_X79_Y32_N16
\U2[12]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2[12]~reg0feeder_combout\ = mulres2(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres2(27),
	combout => \U2[12]~reg0feeder_combout\);

-- Location: FF_X79_Y32_N17
\U2[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U2[12]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2[12]~reg0_q\);

-- Location: FF_X79_Y32_N15
\U2[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	asdata => mulres2(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2[13]~reg0_q\);

-- Location: LCCOMB_X70_Y32_N28
\U2[14]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2[14]~reg0feeder_combout\ = mulres2(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres2(29),
	combout => \U2[14]~reg0feeder_combout\);

-- Location: FF_X70_Y32_N29
\U2[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U2[14]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2[14]~reg0_q\);

-- Location: LCCOMB_X70_Y32_N26
\U2[15]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2[15]~reg0feeder_combout\ = mulres2(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mulres2(30),
	combout => \U2[15]~reg0feeder_combout\);

-- Location: FF_X70_Y32_N27
\U2[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gclk~inputclkctrl_outclk\,
	d => \U2[15]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2[15]~reg0_q\);

-- Location: IOIBUF_X115_Y64_N8
\greset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_greset,
	o => \greset~input_o\);

ww_U1(0) <= \U1[0]~output_o\;

ww_U1(1) <= \U1[1]~output_o\;

ww_U1(2) <= \U1[2]~output_o\;

ww_U1(3) <= \U1[3]~output_o\;

ww_U1(4) <= \U1[4]~output_o\;

ww_U1(5) <= \U1[5]~output_o\;

ww_U1(6) <= \U1[6]~output_o\;

ww_U1(7) <= \U1[7]~output_o\;

ww_U1(8) <= \U1[8]~output_o\;

ww_U1(9) <= \U1[9]~output_o\;

ww_U1(10) <= \U1[10]~output_o\;

ww_U1(11) <= \U1[11]~output_o\;

ww_U1(12) <= \U1[12]~output_o\;

ww_U1(13) <= \U1[13]~output_o\;

ww_U1(14) <= \U1[14]~output_o\;

ww_U1(15) <= \U1[15]~output_o\;

ww_U2(0) <= \U2[0]~output_o\;

ww_U2(1) <= \U2[1]~output_o\;

ww_U2(2) <= \U2[2]~output_o\;

ww_U2(3) <= \U2[3]~output_o\;

ww_U2(4) <= \U2[4]~output_o\;

ww_U2(5) <= \U2[5]~output_o\;

ww_U2(6) <= \U2[6]~output_o\;

ww_U2(7) <= \U2[7]~output_o\;

ww_U2(8) <= \U2[8]~output_o\;

ww_U2(9) <= \U2[9]~output_o\;

ww_U2(10) <= \U2[10]~output_o\;

ww_U2(11) <= \U2[11]~output_o\;

ww_U2(12) <= \U2[12]~output_o\;

ww_U2(13) <= \U2[13]~output_o\;

ww_U2(14) <= \U2[14]~output_o\;

ww_U2(15) <= \U2[15]~output_o\;
END structure;


