library ieee;
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity d3Gen is 
port(
	clk : in std_logic;
	Iin : in std_logic_vector(7 downto 0);
	D3out : out std_logic
	);
end d3Gen;

architecture Behavioural of d3Gen is 

	

	begin
		process(clk)
			begin
			
			if (Iin=0) then
				D3out <= '1';
			else
				D3out <= '0';
			end if;
			
		end process;


end architecture;

