library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux8 is
port(
	onein,ymaxin,yintin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end Mux8;

architecture bhv of Mux8 is
begin
	process(ctrl,onein,ymaxin,yintin)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			outTemp := onein;
		elsif ctrl = "10" then
			outTemp := ymaxin;
		elsif ctrl = "11" then
			outTemp := yintin;
		end if;
		output <= outTemp;
	end process;
end bhv;