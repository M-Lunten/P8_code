library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux1 is
port(
	Ain,YmmYin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end Mux1;

architecture bhv of Mux1 is
begin
	process(ctrl, Ain, YmmYin)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			outTemp := Ain;
		elsif ctrl = "10" then
			outTemp := YmmYin;
		else
			outTemp := "0000000000000000";
		end if;
		output <= outTemp;
	end process;
end bhv;