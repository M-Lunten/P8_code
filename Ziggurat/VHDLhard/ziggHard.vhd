library ieee;
use ieee.std_logic_1164.all;

entity ziggHard is
port(
	clk,start,reset: in std_logic;
	ziggoutH : out std_logic_vector(15 downto 0)
	);
end ziggHard;

architecture behavioural of ziggHard is 

component ZHdata is
port(
	iclock : in std_logic;
	
	mux1_3 : in std_logic_vector(1 downto 0);
	mux4_6 : in std_logic_vector(1 downto 0);
	mux7_9 : in std_logic_vector(1 downto 0);
	mux10_12 : in std_logic_vector(1 downto 0);
	mux13_15 : in std_logic_vector(1 downto 0);
	mux16_17 : in std_logic_vector(1 downto 0);
	mux18_19 : in std_logic_vector(1 downto 0);
	mux20_21 : in std_logic_vector(1 downto 0);
	mux22_23 : in std_logic_vector(1 downto 0);
	mux_24 : in std_logic;
	
	V1en,V2en,V3en,V4en,U0en,Xuen,Xiplusen,D1en,D2en,D3en,D4en,D5en : in std_logic;
	
	ziggout : out std_logic_vector(15 downto 0);
	D1_C,D2_C,D3_C,D4_C,D5_C,NC : out std_logic
	);
end component;

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
	mux_24 : out std_logic;
	
	V1en,V2en,V3en,V4en,U0en,Xuen,Xiplusen,D1en,D2en,D3en,D4en,D5en : out std_logic
	);
end component;

signal zigghardOut : std_logic_vector(15 downto 0);

signal mux1_3,mux4_6,mux7_9,mux10_12,mux13_15,mux16_17,mux18_19,mux20_21,mux22_23 : std_logic_vector(1 downto 0);
signal mux_24 : std_logic;
signal V1en,V2en,V3en,V4en,U0en,Xuen,Xiplusen,D1en,D2en,D3en,D4en,D5en,NC,D1_C,D2_C,D3_C,D4_C,D5_C : std_logic;

begin

c1 : ZHdata port map(clk,mux1_3,mux4_6,mux7_9,mux10_12,mux13_15,mux16_17,mux18_19,mux20_21,mux22_23,mux_24,V1en,V2en,V3en,V4en,U0en,Xuen,Xiplusen,D1en,D2en,D3en,D4en,D5en,zigghardOut,D1_C,D2_C,D3_C,D4_C,D5_C,NC);
c2 : ZHcontrol port map(clk,start,reset,D1_C,D2_C,D3_C,D4_C,D5_C,NC,mux1_3,mux4_6,mux7_9,mux10_12,mux13_15,mux16_17,mux18_19,mux20_21,mux22_23,mux_24,V1en,V2en,V3en,V4en,U0en,Xuen,Xiplusen,D1en,D2en,D3en,D4en,D5en);

mux1_3 <= mux1_3;
mux4_6 <= mux4_6;
mux7_9 <= mux7_9;
mux10_12 <= mux10_12;
mux13_15 <= mux13_15;
mux16_17 <= mux16_17;
mux20_21 <= mux20_21;
mux22_23 <= mux22_23;
mux_24 <= mux_24;

V1en <= V1en;
V2en <= V2en;
V3en <= V3en;
V4en <= V4en;

U0en <= U0en;
Xuen <= Xuen;
Xiplusen <= Xiplusen;
D1en <= D1en;
D2en <= D2en;
D3en <= D3en;
D4en <= D4en;
D5en <= D5en;

NC <= NC;

D1_C <= D1_C;
D2_C <= D2_C;
D3_C <= D3_C;
D4_C <= D4_C;
D5_C <= D5_C;

ziggoutH <= zigghardOut;



end architecture;


	