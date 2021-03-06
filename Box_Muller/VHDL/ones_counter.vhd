--Ones counter for 61  bit signal
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ones_counter is 
	port (
		X: in std_logic_vector(60 downto 0);
		sum: out std_logic_vector(5 downto 0)
	);
end ones_counter;

architecture behavior of ones_counter is


begin
	process(X)
	variable count : unsigned(5 downto 0) := "000000";
	begin
		count := "000000";
		for i in 0 to 60 loop
			count := count + ("00000" & X(i));
		end loop;
	
		sum <= std_logic_vector(count);

	end process;

end behavior;
