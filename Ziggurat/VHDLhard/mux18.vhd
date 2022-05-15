library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux18 is
port(
	U1in,fxs1in: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end mux18;

architecture bhv of mux18 is
begin
	process(ctrl,U1in,fxs1in)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			outTemp := U1in;
		elsif ctrl = "10" then
			outTemp := fxs1in;
		
		end if;
		output <= outTemp;
	end process;
end bhv;