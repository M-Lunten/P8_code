library ieee;
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
entity spi is
	 port (
		CLK,go: in std_logic;
		data_in: in std_logic_vector(31 downto 0);
		count: out std_logic_vector(4 downto 0);
		sel: out std_logic_vector(6 downto 0);
		OUTPUT: out std_logic	
	);
end spi;

architecture Behavioral of spi is
	signal temp1,temp2,temp3 : std_logic_vector(31 downto 0);
	signal cnt : std_logic_vector(4 downto 0):="00000";
	signal sl : std_logic_vector(6 downto 0):="0000000";
	signal lsb : std_logic;
begin
sel <= sl;
count <= cnt;
lsb <= temp1(0);
process(CLK)
	begin
		if (CLK'event and CLK  = '1' and go = '1') then
			OUTPUT <= lsb;
			cnt <= cnt + 1;
		end if;
		if(CLK'event and CLK  = '0' and go = '1') then
			temp1 <= std_logic_vector(shift_right(unsigned(data_in),to_integer(unsigned(cnt))));
		end if;
		if(CLK'event and CLK  = '1' and cnt = "11111") then
			cnt <= "00000";
			sl <= sl + 1;
		end if;
	end process;
end Behavioral;