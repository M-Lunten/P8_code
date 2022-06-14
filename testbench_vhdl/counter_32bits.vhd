--32 bit counter 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

entity counter_32bits is 
	generic (check : integer := 0);
	port (
		clk: in std_logic;
		input: in std_logic_vector(6 downto 0);
		out_sum: out std_logic_vector(31 downto 0)
	);
end counter_32bits;

architecture behavior of counter_32bits is
	signal count : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
	
begin
	
	process(clk)
	begin
	if rising_edge(clk) then
		if (input = std_logic_vector(to_unsigned(check, 7))) then
			count <= count + 1;
		end if;
	end if;
	end process;
	out_sum <= count;
end behavior;