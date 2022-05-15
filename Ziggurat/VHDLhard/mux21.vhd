library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux21 is
port(
	iout,ys1out,fxout: out std_logic_vector(15 downto 0);
	regin: in std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end mux21;

architecture bhv of mux21 is
begin
	process(ctrl,regin)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			iout <= regin;
		elsif ctrl = "10" then
			ys1out <= regin;
		elsif ctrl = "11" then
			fxout <= regin;
		end if;
		
	end process;
end bhv;