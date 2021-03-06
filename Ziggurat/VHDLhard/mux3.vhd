library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux3 is
port(
	mult1in: in std_logic_vector(15 downto 0);
	U1Aout,YS1out: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end mux3;

architecture bhv of mux3 is
begin
	process(ctrl, mult1in)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			U1Aout <= mult1in;
		elsif ctrl = "10" then
			YS1out <= mult1in;
		else
			U1Aout <= "0000000000000000";
			YS1out <= "0000000000000000";
		end if;
		--output <= outTemp;
	end process;
end bhv;