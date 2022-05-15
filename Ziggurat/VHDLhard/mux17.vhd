library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux17 is
port(
	xiout,outout,yout: out std_logic_vector(15 downto 0);
	regin: in std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end mux17;

architecture bhv of mux17 is
begin
	process(ctrl,regin)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			xiout <= regin;
		elsif ctrl = "10" then
			outout <= regin;
		elsif ctrl = "11" then
			yout <= regin;
		end if;
		
	end process;
end bhv;