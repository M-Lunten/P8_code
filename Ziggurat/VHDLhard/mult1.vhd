library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult1 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	Ain,YmmYin,U1in : in std_logic_vector(15 downto 0);
	U1Aout,YS1out: out std_logic_vector(15 downto 0)
	);
end mult1;

architecture behavioural of mult1 is 

component Mux1 is
port(
	Ain,YmmYin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end component;

component mux2 is
port(
	U1in: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end component;

component mux3 is
port(
	mult1in: in std_logic_vector(15 downto 0);
	U1Aout,YS1out: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end component;

signal mux1out : std_logic_vector(15 downto 0);
signal mux2out : std_logic_vector(15 downto 0);
signal multoutS1 : signed(31 downto 0);
signal multout : std_logic_vector(15 downto 0);

begin
	c1: Mux1 port map(Ain,YmmYin,mux1out,muxctrl);
	c2: mux2 port map(U1in,mux2out,muxctrl);
	c3: mux3 port map(multout,U1Aout,YS1out,muxctrl);
	
	
	
	
		multoutS1 <= signed(mux1out) * signed(mux2out);
		
		multout <= std_logic_vector(multoutS1(31 downto 16));
		
		


end architecture;