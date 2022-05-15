library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux24 is
port(
	outin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic
	);
end mux24;

architecture bhv of mux24 is
signal inter : signed(15 downto 0);
begin
	
	inter<=signed(outin);
	process(ctrl,outin)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = '1' then
			output <= std_logic_vector(not(inter) + "0000000000000001");
		elsif ctrl = '0' then
			output <= std_logic_vector(inter);
		
		end if;
		
	end process;
end bhv;