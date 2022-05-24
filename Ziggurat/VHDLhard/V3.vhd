library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity V3 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	V3ctrl : in std_logic;
	iinV,xusqinV,fxinV : in std_logic_vector(15 downto 0);
	i_xusq_fxoutV: out std_logic_vector(15 downto 0)
	);
end V3;

architecture behavioural of V3 is 

component mux20 is
port(
	iin,xusqin,fxin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end component;

--component mux21 is
--port(
--	iout,ys1out,fxout: out std_logic_vector(15 downto 0);
--	regin: in std_logic_vector(15 downto 0);
--	ctrl: in std_logic_vector(1 downto 0)
--	);
--end component;


signal muxout : std_logic_vector(15 downto 0);


signal regout : std_logic_vector(15 downto 0);

begin
	c1: mux20 port map(iinV,xusqinV,fxinV,muxout,muxctrl);
	--c2: mux21 port map(ioutV,ys1outV,fxoutV,regout,muxctrl);
	
	
	process(iclock)

	begin
		if rising_edge(iclock) then 
			if V3ctrl = '1' then 
				i_xusq_fxoutV <= muxout;
			end if;
		
		end if;
	end process;


end architecture;