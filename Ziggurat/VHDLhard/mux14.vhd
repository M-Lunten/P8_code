library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux14 is
port(
	twofivefivein,xiplusin,fxin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end mux14;

architecture bhv of mux14 is
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
		else
			outTemp := "0000000000000000";
		end if;
		output <= outTemp;
	end process;
end bhv;