library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux13 is
port(
	iin,xuin,yin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end mux13;

architecture bhv of mux13 is
begin
	process(ctrl,iin,xuin,yin)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			outTemp := iin;
		elsif ctrl = "10" then
			outTemp := xuin;
		elsif ctrl = "11" then
			outTemp := yin;
		end if;
		output <= outTemp;
	end process;
end bhv;