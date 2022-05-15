library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult2 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	xiin,xusqin,Xuin,U0in,GRADin : in std_logic_vector(15 downto 0);
	xuout,fxs1out,xusqout: out std_logic_vector(15 downto 0)
	);
end mult2;

architecture behavioural of mult2 is 

component mux4 is
port(
	Xiin,xusqin,Xuin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end component;

component mux5 is
port(
	U0in,GRADin,Xuin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end component;

component mux6 is
port(
	mult2in: in std_logic_vector(15 downto 0);
	xuout,fxs1out,xusqout: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end component;

signal mux1out : std_logic_vector(15 downto 0);
signal mux2out : std_logic_vector(15 downto 0);
signal multoutS1 : signed(31 downto 0);
signal multout : std_logic_vector(15 downto 0);

begin
	c1: mux4 port map(xiin,xusqin,Xuin,mux1out,muxctrl);
	c2: mux5 port map(U0in,GRADin,Xuin,mux2out,muxctrl);
	c3: mux6 port map(multout,xuout,fxs1out,xusqout,muxctrl);
	
	
	
		multoutS1 <= signed(mux1out) * signed(mux2out);
		
		multout <= std_logic_vector(multoutS1(31 downto 16));
		


end architecture;