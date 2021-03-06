library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux12 is
port(
	comp1in: in std_logic;
	D3out,D4out: out std_logic;
	ctrl: in std_logic_vector(1 downto 0)
	);
end mux12;

architecture bhv of mux12 is
begin
	process(ctrl, comp1in)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			D3out <= comp1in;
		elsif ctrl = "10" then
			D4out <= comp1in;
		else
			D3out <= '0';
			D4out <= '0';
		end if;
		--output <= outTemp;
	end process;
end bhv;