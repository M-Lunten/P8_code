library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity add1 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	iin,ys1in,fxs1in,onein,ymaxin,yintin : in std_logic_vector(15 downto 0);
	iplus_y_fxout: out std_logic_vector(15 downto 0)
	);
end add1;

architecture behavioural of add1 is 

component mux7 is
port(
	iin,ys1in,fxs1in: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end component;

component mux8 is
port(
	onein,ymaxin,yintin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end component;

--component mux9 is
--port(
--	addin: in std_logic_vector(15 downto 0);
--	iplusout,yout,fxout: out std_logic_vector(15 downto 0);
--	ctrl: in std_logic_vector(1 downto 0)
--	);
--end component;

signal mux1out : std_logic_vector(15 downto 0);
signal mux2out : std_logic_vector(15 downto 0);
signal addoutS1 : unsigned(15 downto 0);
signal addout : std_logic_vector(15 downto 0);

begin
	c1: mux7 port map(iin,ys1in,fxs1in,mux1out,muxctrl);
	c2: mux8 port map(onein,ymaxin,yintin,mux2out,muxctrl);
	--c3: mux9 port map(addout,iplusout,yout,fxout,muxctrl);
	
	
	
	
		
	addoutS1 <= unsigned(mux1out) + unsigned(mux2out);
	iplus_y_fxout <= std_logic_vector(addoutS1(15 downto 0));
		
		
	


end architecture;