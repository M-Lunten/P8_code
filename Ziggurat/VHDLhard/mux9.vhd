library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux9 is
port(
	addin: in std_logic_vector(15 downto 0);
	iplusout,yout,fxout: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end mux9;

architecture bhv of mux9 is
begin
	process(ctrl, addin)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			iplusout <= addin;
		elsif ctrl = "10" then
			yout <= addin;
		elsif ctrl = "11" then
			fxout <= addin;
		else
			iplusout <= "0000000000000000";
			yout <= "0000000000000000";
			fxout <= "0000000000000000";
		end if;
		--output <= outTemp;
	end process;
end bhv;