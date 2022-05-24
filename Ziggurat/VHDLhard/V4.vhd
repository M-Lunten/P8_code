library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity V4 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	V4ctrl : in std_logic;
	U1AinV,Ys1inV : in std_logic_vector(15 downto 0);
	U1A_Ys1outV: out std_logic_vector(15 downto 0)
	);
end V4;

architecture behavioural of V4 is 

component mux22 is
port(
	U1Ain,Ys1in: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end component;

--component mux23 is
--port(
--	U1Aout,xusqout: out std_logic_vector(15 downto 0);
--	regin: in std_logic_vector(15 downto 0);
--	ctrl: in std_logic_vector(1 downto 0)
--	);
--end component;


signal muxout : std_logic_vector(15 downto 0);


signal regout : std_logic_vector(15 downto 0);



begin
	c1: mux22 port map(U1AinV,Ys1inV,muxout,muxctrl);
	--c2: mux23 port map(U1AoutV,xusqoutV,regout,muxctrl);
	
	
	
	process(iclock)

	begin
		if rising_edge(iclock) then 
			if V4ctrl = '1' then 
				U1A_Ys1outV <= muxout;
			end if;
		
		end if;
	end process;


end architecture;