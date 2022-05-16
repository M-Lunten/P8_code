library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux23 is
port(
	U1Aout,xusqout: out std_logic_vector(15 downto 0);
	regin: in std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end mux23;

architecture bhv of mux23 is
begin
	process(ctrl,regin)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			U1Aout <= regin;
		elsif ctrl = "10" then
			xusqout <= regin;
		else
			U1Aout <= "0000000000000000";
			xusqout <= "0000000000000000";
			
		end if;
		
	end process;
end bhv;