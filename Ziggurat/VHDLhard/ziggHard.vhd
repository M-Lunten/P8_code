library ieee;
use ieee.std_logic_1164.all;

entity ziggHard is
port(
	clk,start: in std_logic;
	ziggout : out std_logic_vector(15 downto 0)
	);
end ziggHard;

architecture behavioural of ziggHard is 

component ZHcontrol is 
	port(
	iclock : in std_logic;
	start,reset : in std_logic;
	D1ctrl : in std_logic;
	D2ctrl : in std_logic;
	D3ctrl : in std_logic;
	D4ctrl : in std_logic;
	D5ctrl : in std_logic;
	NCTRL : in std_logic;
	
	mux1_3 : out std_logic_vector(1 downto 0);
	mux4_6 : out std_logic_vector(1 downto 0);
	mux7_9 : out std_logic_vector(1 downto 0);
	mux10_12 : out std_logic_vector(1 downto 0);
	mux13_15 : out std_logic_vector(1 downto 0);
	mux16_17 : out std_logic_vector(1 downto 0);
	mux18_19 : out std_logic_vector(1 downto 0);
	mux20_21 : out std_logic_vector(1 downto 0);
	mux22_23 : out std_logic_vector(1 downto 0);
	mux24 : out std_logic;
	
	V1en,V2en,V3en,V4en,U0en,Xuen,Xiplusen : out std_logic
	);
end component;

begin



end architecture;


	