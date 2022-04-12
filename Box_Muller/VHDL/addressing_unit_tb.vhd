--Testbench for f_block
Library ieee; 
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;

entity addressing_unit_tb is
end addressing_unit_tb;

architecture behavior of addressing_unit_tb is
 
 	component addressing_unit is 
	port (
		U_in: in std_logic_vector(31 downto 0);
		w: out std_logic_vector(5 downto 0);
		L: out std_logic_vector(1 downto 0)
	);
	end component;
	
	signal U : std_logic_vector(31 downto 0);
	signal w_0: std_logic_vector(5 downto 0);
	signal L_0: std_logic_vector(1 downto 0);
	
begin
	
	AU0 : addressing_unit port map (U, w_0, L_0);
	
	process is
	begin
		U <= "10001111010111000010100011110110";
		wait for 20 ns;
	end process;
end behavior;
