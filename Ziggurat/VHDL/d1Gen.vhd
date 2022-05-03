library ieee;
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity d1Gen is 
port(
	clk : in std_logic;
	Iin : in std_logic_vector(7 downto 0);
	D1out : out std_logic
	);
end d1Gen;

architecture Behavioural of d1Gen is 

	

	begin
		process(clk)
			begin
			
			if ((Iin>0) and (Iin<255)) then
				D1out <= '1';
			else
				D1out <= '0';
			end if;
			
		end process;


end architecture;

