library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Mux22 is
port(
	U1Ain,xusqin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end Mux22;

architecture bhv of Mux22 is
begin
	process(ctrl,U1Ain,xusqin)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			outTemp := U1Ain;
		elsif ctrl = "10" then
			outTemp := xusqin;
			
		end if;
		output <= outTemp;
	end process;
end bhv;