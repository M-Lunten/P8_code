library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity V2 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	V2ctrl : in std_logic;
	U1inV,fxs1inV : in std_logic_vector(15 downto 0);
	U1_fxs1outV: out std_logic_vector(15 downto 0)
	);
end V2;

architecture behavioural of V2 is 

component mux18 is
port(
	U1in,fxs1in: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end component;

--component mux19 is
--port(
--	U1out,fxs1out: out std_logic_vector(15 downto 0);
--	regin: in std_logic_vector(15 downto 0);
--	ctrl: in std_logic_vector(1 downto 0)
--	);
--end component;

signal muxout : std_logic_vector(15 downto 0);


signal regout : std_logic_vector(15 downto 0);

begin
	c1: mux18 port map(U1inV,fxs1inV,muxout,muxctrl);
	--c2: mux19 port map(U1outV,fxs1outV,regout,muxctrl);
	
	
	process(iclock)

	begin
		if rising_edge(iclock) then 
			if V2ctrl = '1' then 
				 U1_fxs1outV<= muxout;
			end if;
		
		end if;
	end process;


end architecture;