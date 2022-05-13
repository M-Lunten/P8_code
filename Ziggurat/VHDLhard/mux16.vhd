library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux16 is
port(
	xiin,outin,yin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end Mux16;

architecture bhv of Mux16 is
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
		end if;
		output <= outTemp;
	end process;
end bhv;