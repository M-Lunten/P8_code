library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux15 is
port(
	comp2in: in std_logic;
	D1out,D2out,D5out: out std_logic;
	ctrl: in std_logic_vector(1 downto 0)
	);
end Mux15;

architecture bhv of Mux15 is
begin
	process(ctrl, comp2in)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			D1out <= comp2in;
		elsif ctrl = "10" then
			D2out <= comp2in;
		elsif ctrl = "11" then
			D5out <= comp2in;
		
		end if;
		--output <= outTemp;
	end process;
end bhv;