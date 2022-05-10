library ieee;
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity d5Gen is 
port(
	clk : in std_logic;
	Yin : in std_logic_vector(15 downto 0);
	Fxin : in std_logic_vector(15 downto 0);
	D5out : out std_logic
	);
end d5Gen;

architecture Behavioural of d5Gen is 

	

	begin
		process(clk)
			begin
			
			if (Yin<Fxin) then
				D5out <= '1';
			else
				D5out <= '0';
			end if;
			
		end process;


end architecture;

