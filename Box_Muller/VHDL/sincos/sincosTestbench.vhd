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

signal clk : std_logic := '0';
signal r : std_logic := '0';
signal d : std_logic_vector(11 downto 0);
signal sOut : std_logic_vector(15 downto 0);
signal cOut : std_logic_vector(15 downto 0);

begin 
	c2: sincos port map(clk,r,d,sOut,cOut);
	
	process is
	begin
		
		d <= "011010011101";
		wait for 20 ns;
		clk <= '1';
		wait for 20 ns;
		clk <= not clk;
	end process;
	
end behaviour;

