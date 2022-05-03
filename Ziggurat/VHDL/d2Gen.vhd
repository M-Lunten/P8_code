library ieee;
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity d2Gen is 
port(
	clk : in std_logic;
	Xuin : in std_logic_vector(15 downto 0);
	Xiplusin : in std_logic_vector(15 downto 0);
	D2out : out std_logic
	);
end d2Gen;

architecture Behavioural of d2Gen is 

	

	begin
		process(clk)
			begin
			
			if (Xuin<Xiplusin) then
				D2out <= '1';
			else
				D2out <= '0';
			end if;
			
		end process;


end architecture;

