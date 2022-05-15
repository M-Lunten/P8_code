library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux5 is
port(
	U0in,GRADin,Xuin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end mux5;

architecture bhv of mux5 is
begin
	process(ctrl,U0in,GRADin,Xuin)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			outTemp := U0in;
		elsif ctrl = "10" then
			outTemp := GRADin;
		elsif ctrl = "11" then
			outTemp := Xuin;
		end if;
		output <= outTemp;
	end process;
end bhv;