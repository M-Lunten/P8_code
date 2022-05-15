library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux11 is
port(
	zeroin,A0in: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end mux11;

architecture bhv of mux11 is
begin
	process(ctrl,zeroin,A0in)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			outTemp := zeroin;
		elsif ctrl = "10" then
			outTemp := A0in;
		
		end if;
		output <= outTemp;
	end process;
end bhv;