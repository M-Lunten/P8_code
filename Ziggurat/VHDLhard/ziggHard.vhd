library ieee;
use ieee.std_logic_1164.all;

entity ziggHard is
port(
	clk,start,reset: in std_logic;
	ziggoutH : out std_logic_vector(15 downto 0);
	isVal : out std_logic;
	isOut : out std_logic_vector(20 downto 0)
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
	state : in std_logic_vector(3 downto 0);
	
	V1en,V2en,V3en,V4en,U0en,Xuen,Xiplusen,D1en,D2en,D3en,D4en,D5en,ziggen : in std_logic;
	
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
	stateOut : out std_logic_vector(3 downto 0);
	isVal : out std_logic;
	isOut : out std_logic_vector(20 downto 0);

	V1en,V2en,V3en,V4en,U0en,Xuen,Xiplusen,D1en,D2en,D3en,D4en,D5en,ziggen : out std_logic
	);
end component;

signal zigghardOutS : std_logic_vector(15 downto 0);

signal mux1_3S,mux4_6S,mux7_9S,mux10_12S,mux13_15S,mux16_17S,mux18_19S,mux20_21S,mux22_23S : std_logic_vector(1 downto 0);
signal mux_24S,valSig : std_logic;
signal V1enS,V2enS,V3enS,V4enS,U0enS,XuenS,XiplusenS,D1enS,D2enS,D3enS,D4enS,D5enS,ziggenS,D1_CS,D2_CS,D3_CS,D4_CS,D5_CS : std_logic;
signal NtoC,NfromC : std_logic;
signal statein : std_logic_vector(3 downto 0);
signal isOutS : std_logic_vector(20 downto 0);
begin

c1 : ZHdata port map(clk,mux1_3S,mux4_6S,mux7_9S,mux10_12S,mux13_15S,mux16_17S,mux18_19S,mux20_21S,mux22_23S,mux_24S,statein,V1enS,V2enS,V3enS,V4enS,U0enS,XuenS,XiplusenS,D1enS,D2enS,D3enS,D4enS,D5enS,ziggenS,zigghardOutS,D1_CS,D2_CS,D3_CS,D4_CS,D5_CS,NtoC);
c2 : ZHcontrol port map(clk,start,reset,D1_CS,D2_CS,D3_CS,D4_CS,D5_CS,NtoC,mux1_3S,mux4_6S,mux7_9S,mux10_12S,mux13_15S,mux16_17S,mux18_19S,mux20_21S,mux22_23S,mux_24S,statein,valSig,isOutS,V1enS,V2enS,V3enS,V4enS,U0enS,XuenS,XiplusenS,D1enS,D2enS,D3enS,D4enS,D5enS,ziggenS);

--mux1_3 <= mux1_3;
--mux4_6 <= mux4_6;
--mux7_9 <= mux7_9;
--mux10_12 <= mux10_12;
--mux13_15 <= mux13_15;
--mux16_17 <= mux16_17;
--mux20_21 <= mux20_21;
--mux22_23 <= mux22_23;
--mux_24 <= mux_24;

--V1en <= V1en;
--V2en <= V2en;
--V3en <= V3en;
--V4en <= V4en;

--U0en <= U0en;
--Xuen <= Xuen;
--Xiplusen <= Xiplusen;
--D1en <= D1en;
--D2en <= D2en;
--D3en <= D3en;
--D4en <= D4en;
--D5en <= D5en;


--D1_C <= D1_C;
--D2_C <= D2_C;
--D3_C <= D3_C;
--D4_C <= D4_C;
--D5_C <= D5_C;

ziggoutH <= zigghardOutS;
isVal <= ziggenS;
isOut <= isOutS;



end architecture;


	