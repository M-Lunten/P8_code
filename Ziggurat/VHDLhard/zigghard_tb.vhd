--Testbench for the Ziggurat implementation
Library ieee; 
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity zigghard_tb is
end zigghard_tb;

architecture behavior of zigghard_tb is
 
 	component ziggHard is
	port(
	clk,start,reset: in std_logic;
	ziggoutH : out std_logic_vector(15 downto 0);
	isVal : out std_logic
	);
	end component;
	
	file file_RESULTS,v_res : text;

	constant clock_period : time := 40 ns;

	signal clk : std_logic := '0';
	signal st : std_logic := '1';
	signal reset : std_logic := '0';
	signal res1 : std_logic_vector(15 downto 0);
	signal v : std_logic;
	
begin
	ZIG: ziggHard port map(clk,st,reset,res1,v);	
	
	CLK_GEN : process is 
	begin 
		wait for clock_period/2;
		clk <= not clk;
	end process CLK_GEN;
	
	
	
	
end behavior;
	