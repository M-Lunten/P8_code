library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux10 is
port(
	iin,U1Ain: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end mux10;

architecture bhv of mux10 is
begin
	process(ctrl,iin,U1Ain)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			outTemp := iin;
		elsif ctrl = "10" then
			outTemp := U1Ain;
		
		end if;
		output <= outTemp;
	end process;
end bhv;