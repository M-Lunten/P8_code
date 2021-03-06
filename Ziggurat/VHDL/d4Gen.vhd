library ieee;
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity d4Gen is 
port(
	clk : in std_logic;
	U1in : in std_logic_vector(15 downto 0);
	Ain : in std_logic_vector(15 downto 0);
	D4out : out std_logic
	);
end d4Gen;

architecture Behavioural of d4Gen is 

	

	begin
		process(clk)
			begin
			
			if (U1in<Ain) then
				D4out <= '1';
			else
				D4out <= '0';
			end if;
			
		end process;


end architecture;

