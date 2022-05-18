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
	state : in std_logic_vector(3 downto 0);
	
	V1en,V2en,V3en,V4en,U0en,Xuen,Xiplusen,D1en,D2en,D3en,D4en,D5en,ziggen : in std_logic;
	
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
	xi_out_youtV: out std_logic_vector(15 downto 0)
	);
end component;

component V2 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	V2ctrl : in std_logic;
	U1inV,fxs1inV : in std_logic_vector(15 downto 0);
	U1_fxs1outV: out std_logic_vector(15 downto 0)
	);
end component;

component V3 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	V3ctrl : in std_logic;
	iinV,ys1inV,fxinV : in std_logic_vector(15 downto 0);
	i_ys1_fxoutV: out std_logic_vector(15 downto 0)
	);
end component;

component V4 is

port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	V4ctrl : in std_logic;
	U1AinV,xusqinV : in std_logic_vector(15 downto 0);
	U1A_xusqoutV: out std_logic_vector(15 downto 0)
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
	U1A_YS1out: out std_logic_vector(15 downto 0)
	);
end component;

component mult2 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	xiin,xusqin,Xuin,U0in,GRADin : in std_logic_vector(15 downto 0);
	xu_fxs1_xusqout: out std_logic_vector(15 downto 0)
	);
end component;

component add1 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	iin,ys1in,fxs1in,onein,ymaxin,yintin : in std_logic_vector(15 downto 0);
	iplus_y_fxout: out std_logic_vector(15 downto 0)
	);
end component;

component comp1 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	iin,U1Ain,zeroin,A0in : in std_logic_vector(15 downto 0);
	D3_D4out: out std_logic
	);
end component;

component comp2 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	iin,xuin,yin,twofivefivein,xiplusin,fxin : in std_logic_vector(15 downto 0);
	D1_D2_D5out: out std_logic
	);
end component;

component Mux24 is
port(
	iclock : in std_logic;
	outin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic
	);
end component;

component Vxu is
port(
	iclock : in std_logic;
	xuctrl : in std_logic;
	xuinV : in std_logic_vector(15 downto 0);
	xuoutV: out std_logic_vector(15 downto 0)
	);
end component;

component VD is
port(
	iclock : in std_logic;
	Dctrl : in std_logic;
	DinV : in std_logic;
	DoutV: out std_logic
	);
end component;

signal da : std_logic_vector(15 downto 0) := "0000000000000000";
signal db : std_logic_vector(15 downto 0) := "0000000000000000";
signal ea,eb : std_logic;


signal uGen : std_logic_vector(32 downto 0);



signal xiplus : std_logic_vector(15 downto 0);

signal A : std_logic_vector(15 downto 0):= "0000000001000000";

signal YmmYmminus1 : std_logic_vector(15 downto 0):= "0000000100101010";

signal xu : std_logic_vector(15 downto 0);

signal U0in : std_logic_vector(15 downto 0);

signal GRAD : std_logic_vector(15 downto 0):= "1110011001110111";

signal one : std_logic_vector(15 downto 0):= "0000000000000001";

signal ymax : std_logic_vector(15 downto 0):= "0011001100001111";

signal yint : std_logic_vector(15 downto 0):= "0011001100001111";

signal zero : std_logic_vector(15 downto 0):= "0000000000000000";

signal A0 : std_logic_vector(15 downto 0):= "0000000000111100";

signal twofivefive : std_logic_vector(15 downto 0):= "0000000011111111";

signal iinV : std_logic_vector(15 downto 0);

signal D1,D2,D3,D4,D5,comp1out,comp2out : std_logic := '0';

signal V1out,V2out,V3out,V4out,mult1out,mult2out,addout,U1inV,xiinV,xuoutV,xiplusoutV,U0out,ziggoutS,mux24out : std_logic_vector(15 downto 0);

signal itemp : unsigned(15 downto 0);

signal mux_24S : std_logic;

signal LFSRctrl : std_logic;

signal test : std_logic_vector(15 downto 0);
begin

	c1: V1 port map(iclock,mux16_17,V1en,xiinV,xuoutV,addout,V1out);
	c2: V2 port map(iclock,mux18_19,V2en,U1inV,mult2out,V2out);
	c3: V3 port map(iclock,mux20_21,V3en,iinV,mult1out,addout,V3out);
	c4: V4 port map(iclock,mux22_23,V4en,mult1out,mult2out,V4out);
	c5: LFSR_33 port map(LFSRctrl,uGen);
	c6: zighardLUT port map(iinV(7 downto 0),addout(7 downto 0),iclock,da,db,ea,eb,xiinV,xiplus);
	c7: mult1 port map(iclock,mux1_3,A,YmmYmminus1,V2out,mult1out);
	c8: mult2 port map(iclock,mux4_6,V1out,V4out,xuoutV,U0out,GRAD,mult2out);
	c9: add1 port map(iclock,mux7_9,iinV,V3out,V2out,one,ymax,yint,addout);
	c10: comp1 port map(iclock,mux10_12,V3out,V4out,zero,A0,comp1out);
	c11: comp2 port map(iclock,mux13_15,V3out,xu,V1out,twofivefive,xiplusoutV,V3out,comp2out);
	c12: mux24 port map(iclock,xuoutV,ziggout,mux_24S);
	c13: Vxu port map(iclock,xuen,mult2out,xuoutV);
--	cd1: VD port map(iclock,D1en,comp2out,D1);
--	cd2: VD port map(iclock,D2en,comp2out,D2);
--	cd3: VD port map(iclock,D3en,comp1out,D3);
--	cd4: VD port map(iclock,D4en,comp1out,D4);
--	cd5: VD port map(iclock,D5en,comp2out,D5);
	cxiplus: Vxu port map(iclock,xiplusen,xiplus,xiplusoutV);
	cU0: Vxu port map(iclock,U0en,U0in,U0out);
	--cOut: Vxu port map(iclock,ziggen,xuoutV,ziggoutS);
	U1inV <= std_logic_vector(shift_right (unsigned(uGen(31 downto 16)),1)(15 downto 0));
	U0in <= std_logic_vector(shift_right(unsigned(uGen(15 downto 0)),1)(15 downto 0));
	--YS1inV <= YS1inV;
	--xioutV <= xioutV;
	--xusqoutV <= xusqoutV;
	--fxs1outV <= fxs1outV;
	--ys1outV <= ys1outV;
	--fxs1inV <= fxs1inV;
	--yinV <= yinV;
	--fxinV <= fxinV;
	--U1AoutV <= U1AoutV;
	--ioutV <= ioutV;
	--youtV <= youtV;
	--fxoutV <= fxoutV;
	--outoutV <= outoutV;
	itemp <= shift_right(unsigned(uGen(23 downto 8)),8);
	iinV <= std_logic_vector(itemp);
	LFSRctrl <= iclock and state(3) and state(2) and not(state(1)) and not(state(0));
	
	--U1AinV <= U1AinV;
	--xusqinV <= xusqinV;
	--xiinV <= xiinV;
	--U1outV <= U1outV;
	D1_C <= comp2out;
	D2_C <= comp2out;
	D3_C <= comp1out;
	D4_C <= comp1out;
	D5_C <= comp2out;
	
	--xuinV <= xuinV;
	--xuoutV <= xuoutV;
	--NC <= uGen(32);
	mux_24S <= uGen(32);
	
	--ziggout <= xuoutV;
	



end architecture;