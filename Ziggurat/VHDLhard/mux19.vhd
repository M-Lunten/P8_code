library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux19 is
port(
	U1out,fxs1out: out std_logic_vector(15 downto 0);
	regin: in std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end mux19;

architecture bhv of mux19 is
begin
	process(ctrl,regin)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			U1out <= regin;
		elsif ctrl = "10" then
			fxs1out <= regin;
		else
			U1out <= "0000000000000000";
			fxs1out <= "0000000000000000";
			
		end if;
		
	end process;
end bhv;