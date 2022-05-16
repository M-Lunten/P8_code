library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity V1 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	V1ctrl : in std_logic;
	xiinV,outinV,yinV : in std_logic_vector(15 downto 0);
	xi_out_youtV: out std_logic_vector(15 downto 0)
	);
end V1;

architecture behavioural of V1 is 

component mux16 is
port(
	xiin,outin,yin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end component;

--component mux17 is
--port(
--	xiout,outout,yout: out std_logic_vector(15 downto 0);
--	regin: in std_logic_vector(15 downto 0);
--	ctrl: in std_logic_vector(1 downto 0)
--	);
--end component;

signal muxout : std_logic_vector(15 downto 0);

begin
	c1: mux16 port map(xiinV,outinV,yinV,muxout,muxctrl);
	--c2: mux17 port map(xioutV,outoutV,youtV,regout,muxctrl);
	
	process(iclock)

	begin
		if rising_edge(iclock) then 
			if V1ctrl = '1' then 
				xi_out_youtV <= muxout;
			end if;
		
		end if;
	end process;


end architecture;