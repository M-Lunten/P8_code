library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux2 is
port(
	U1in: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end mux2;

architecture bhv of mux2 is
begin
	process(ctrl, U1in)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			outTemp := U1in;
		elsif ctrl = "10" then
			outTemp := U1in;
		else
			outTemp := "0000000000000000";
		end if;
		output <= outTemp;
	end process;
end bhv;