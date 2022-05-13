library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux4 is
port(
	Xiin,xusqin,Xuin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end Mux4;

architecture bhv of Mux4 is
begin
	process(ctrl,Xiin,xusqin,Xuin)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			outTemp := Xiin;
		elsif ctrl = "10" then
			outTemp := xusqin;
		elsif ctrl = "11" then
			outTemp := Xuin;
		end if;
		output <= outTemp;
	end process;
end bhv;