--Testbench for f_block
Library ieee; 
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;

entity f_block_tb is
end f_block_tb;

architecture behavior of f_block_tb is
 
 	component f_block is 
	port (
		U: in std_logic_vector(31 downto 0);
		clk_in: in std_logic;
		f_res: out std_logic_vector(15 downto 0)
	);
	end component;
	
	constant clock_period : time := 40 ns;

	signal U_in : std_logic_vector(31 downto 0);
	signal clk : std_logic := '0';
	signal res : std_logic_vector(15 downto 0);
	
begin
	
	f0 : f_block port map (U => U_in, clk_in => clk, f_res => res);
	
	CLK_GEN : process is 
	begin 
		wait for clock_period/2;
		clk <= not clk;
	end process CLK_GEN;

	process is
	begin
		U_in <= "00011111000111110010011101100110";
		-- expected result 0001000001101100
		--10001011000111001001011000010101
		--0000100011010110
		--01000111010000110011011101001101
		--0000110011001101
		--01101100101011010010111101010001
		--0000101001111001
		--11011000010000110011111110100101
		--0000010010100111
		wait for clock_period;
		U_in <= "10001011000111001001011000010101";
		wait for clock_period;
		U_in <= "01000111010000110011011101001101";
		wait for clock_period;
	end process;
end behavior;
