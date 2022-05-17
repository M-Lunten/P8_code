library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux24 is
port(
	iclock : in std_logic;
	outin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic
	);
end mux24;

architecture bhv of mux24 is
signal inter : signed(15 downto 0);
begin
	
	inter<=signed(outin);
	process(iclock)
	
	variable outTemp : std_logic_vector(15 downto 0);
	begin
	if rising_edge(iclock) then
		if ctrl = '1' then
			output <= std_logic_vector(not(inter) + "0000000000000001");
			--output <= std_logic_vector(inter);
		elsif ctrl = '0' then
			output <= std_logic_vector(inter);
		
		end if;
	end if;
	end process;
end bhv;