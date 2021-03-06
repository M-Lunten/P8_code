library ieee; 
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;

entity sincosTestbench is
end sincosTestbench;

architecture behaviour of sincosTestbench is
component sincos is 
port(
	i_clock : in std_logic;
	reset : in std_logic;
	data : in std_logic_vector(11 downto 0);
	sinOut : out std_logic_vector(15 downto 0);
	cosOut : out std_logic_vector(15 downto 0) 
);
end component;

constant clock_period : time := 40 ns;

signal clk : std_logic := '0';
signal r : std_logic := '0';
signal d : std_logic_vector(11 downto 0);
signal sOut : std_logic_vector(15 downto 0);
signal cOut : std_logic_vector(15 downto 0);

begin 
	c2: sincos port map(clk,r,d,sOut,cOut);
	
	CLK_GEN : process is 
	begin 
		wait for clock_period/2;
		clk <= not clk;
	end process CLK_GEN;
	
	process is
	begin
		
		wait for clock_period*10;
		d <= "001000000000";
		
		wait for clock_period*10;
		d <= "101000000000";
		
		wait for clock_period*10;
		d <= "011000000000";
		
		wait for clock_period*10;
		d <= "111000000000";

		

	end process;
	
end behaviour;

