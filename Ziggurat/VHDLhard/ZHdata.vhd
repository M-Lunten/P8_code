library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ZHdata is
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
end ZHdata;

architecture behavioural of ZHdata is 

component V1 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	V1ctrl : in std_logic;
	xiinV,outinV,yinV : in std_logic_vector(15 downto 0);
	xioutV,outoutV,youtV: out std_logic_vector(15 downto 0)
	);
end component;

component V2 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	V2ctrl : in std_logic;
	U1inV,fxs1inV : in std_logic_vector(15 downto 0);
	U1outV,fxs1outV: out std_logic_vector(15 downto 0)
	);
end component;

component V3 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	V3ctrl : in std_logic;
	iinV,ys1inV,fxinV : in std_logic_vector(15 downto 0);
	ioutV,ys1outV,fxoutV: out std_logic_vector(15 downto 0)
	);
end component;

component V4 is

port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	V4ctrl : in std_logic;
	U1AinV,xusqinV : in std_logic_vector(15 downto 0);
	U1AoutV,xusqoutV: out std_logic_vector(15 downto 0)
	);
end component;



component LFSR_33 is
	 port (
		CLK: in std_logic;
		OUTPUT: out std_logic_vector(32 downto 0)
	);
end component;


component zighardLUT IS
	PORT
	(
		address_a		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		address_b		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data_a		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		data_b		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		wren_a		: IN STD_LOGIC  := '0';
		wren_b		: IN STD_LOGIC  := '0';
		q_a		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
		q_b		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
END component;

component mult1 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	Ain,YmmYin,U1in : in std_logic_vector(15 downto 0);
	U1Aout,YS1out: out std_logic_vector(15 downto 0)
	);
end component;

component mult2 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	xiin,xusqin,Xuin,U0in,GRADin : in std_logic_vector(15 downto 0);
	xuout,fxs1out,xusqout: out std_logic_vector(15 downto 0)
	);
end component;

component add1 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	iin,ys1in,fxs1in,onein,ymaxin,yintin : in std_logic_vector(15 downto 0);
	iplusout,yout,fxout: out std_logic_vector(15 downto 0)
	);
end component;

component comp1 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	iin,U1Ain,zeroin,A0in : in std_logic_vector(15 downto 0);
	D3out,D4out: out std_logic
	);
end component;

component comp2 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	iin,xuin,yin,twofivefivein,xiplusin,fxin : in std_logic_vector(15 downto 0);
	D1out,D2out,D5out: out std_logic
	);
end component;

component Mux24 is
port(
	outin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic
	);
end component;

signal da : std_logic_vector(15 downto 0) := "0000000000000000";
signal db : std_logic_vector(15 downto 0) := "0000000000000000";
signal ea,eb : std_logic;


signal uGen : std_logic_vector(32 downto 0);

signal regout : std_logic_vector(15 downto 0);

signal xiplus : std_logic_vector(15 downto 0);

signal A : std_logic_vector(15 downto 0);

signal YmmYmminus1 : std_logic_vector(15 downto 0);

signal xu : std_logic_vector(15 downto 0);

signal U0 : std_logic_vector(15 downto 0);

signal GRAD : std_logic_vector(15 downto 0);

signal one : std_logic_vector(15 downto 0);

signal ymax : std_logic_vector(15 downto 0);

signal yint : std_logic_vector(15 downto 0);

signal zero : std_logic_vector(15 downto 0);

signal A0 : std_logic_vector(15 downto 0);

signal twofivefive : std_logic_vector(15 downto 0);

signal iinV,iplus : std_logic_vector(15 downto 0);

signal D1,D2,D3,D4,D5 : std_logic;

signal U1inV,YS1inV,xioutV,xusqoutV,fxs1outV,ys1outV,yinV,fxinV,U1AoutV,ioutV,youtV,fxoutV,outoutV,U1AinV,xusqinV,xiinV,fxs1inV,U1outV : std_logic_vector(15 downto 0);

signal itemp : unsigned(15 downto 0);

begin

	c1: V1 port map(iclock,mux16_17,V1en,xiinV,xu,yinV,xioutV,outoutV,youtV);
	c2: V2 port map(iclock,mux18_19,V2en,U1inV,fxs1inV,U1outV,fxs1outV);
	c3: V3 port map(iclock,mux20_21,V3en,iinV,YS1inV,fxinV,ioutV,ys1outV,fxoutV);
	c4: V4 port map(iclock,mux22_23,V4en,U1AinV,xusqinV);
	c5: LFSR_33 port map(iclock,uGen);
	c6: zighardLUT port map(ioutV(7 downto 0),iplus(7 downto 0),iclock,da,db,ea,eb,xiinV,xiplus);
	c7: mult1 port map(iclock,mux1_3,A,YmmYmminus1,U1outV,U1AinV,YS1inV);
	c8: mult2 port map(iclock,mux4_6,xioutV,xusqoutV,xu,U0,GRAD,xu,fxs1inV,xusqinV);
	c9: add1 port map(iclock,mux7_9,ioutV,ys1outV,fxs1outV,one,ymax,yint,iplus,yinV,fxinV);
	c10: comp1 port map(iclock,mux10_12,ioutV,U1AoutV,zero,A0,D3,D4);
	c11: comp2 port map(iclock,mux13_15,ioutV,xu,youtV,twofivefive,xiplus,fxoutV,D1,D2,D5);
	c12: mux24 port map(outoutV,ziggout,mux_24);
	
	U1inV <= uGen(31 downto 16);
	U0 <= uGen(15 downto 0);
	YS1inV <= YS1inV;
	xioutV <= xioutV;
	xusqoutV <= xusqoutV;
	fxs1outV <= fxs1outV;
	ys1outV <= ys1outV;
	fxs1inV <= fxs1inV;
	yinV <= yinV;
	fxinV <= fxinV;
	U1AoutV <= U1AoutV;
	ioutV <= ioutV;
	youtV <= youtV;
	fxoutV <= fxoutV;
	outoutV <= outoutV;
	itemp <= shift_right(unsigned(uGen(23 downto 8)),8);
	iinV <= std_logic_vector(itemp);
	U1AinV <= U1AinV;
	xusqinV <= xusqinV;
	xiinV <= xiinV;
	U1outV <= U1outV;
	D1_C <= D1;
	D2_C <= D2;
	D3_C <= D3;
	D4_C <= D4;
	D5_C <= D5;
	NC <= uGen(32);
	
	
	
	



end architecture;