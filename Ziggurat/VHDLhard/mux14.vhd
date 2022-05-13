library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux14 is
port(
	twofivefivein,xiplusin,fxin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end Mux14;

architecture bhv of Mux14 is
begin
	process(ctrl,twofivefivein,xiplusin,fxin)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			outTemp := twofivefivein;
		elsif ctrl = "10" then
			outTemp := xiplusin;
		elsif ctrl = "11" then
			outTemp := fxin;
		end if;
		output <= outTemp;
	end process;
end bhv;