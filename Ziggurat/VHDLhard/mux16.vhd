library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux16 is
port(
	xiin,outin,yin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end mux16;

architecture bhv of mux16 is
begin
	process(ctrl,xiin,outin,yin)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			outTemp := xiin;
		elsif ctrl = "10" then
			outTemp := outin;
		elsif ctrl = "11" then
			outTemp := yin;
		else
			outTemp := "0000000000000000";	
		end if;
		output <= outTemp;
	end process;
end bhv;