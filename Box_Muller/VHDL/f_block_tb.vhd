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
	
	signal U_in : std_logic_vector(31 downto 0);
	signal clk_in : std_logic := '0';
	signal f_res : std_logic_vector(15 downto 0);
	
begin
	
	f0 : f_block port map (U_in, clk_in, f_res);
	
	process is
	begin
		U_in <= "00011111000111110010011101100110";
		-- expected result 0001000001101100
		wait for 20 ns;
		clk_in <= not(clk_in);
		wait for 20 ns;
		clk_in <= not(clk_in);
		wait for 20 ns;
		clk_in <= not(clk_in);
		wait for 20 ns;
		clk_in <= not(clk_in);
		wait for 20 ns;
		clk_in <= not(clk_in);
		wait for 20 ns;
		clk_in <= not(clk_in);
		wait for 20 ns;
		clk_in <= not(clk_in);
		wait for 20 ns;
		clk_in <= not(clk_in);
		wait for 20 ns;
		clk_in <= not(clk_in);
		wait for 20 ns;
		clk_in <= not(clk_in);
		
	end process;
end behavior;
