library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux7 is
port(
	iin,ys1in,fxs1in: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end mux7;

architecture bhv of mux7 is

begin

	
	
	process(ctrl,iin,ys1in,fxs1in)
	variable inter : unsigned(15 downto 0);
	
	variable outTemp : std_logic_vector(15 downto 0);
	begin
		inter := unsigned(ys1in);
		if ctrl = "01" then
			output <= iin;
		elsif ctrl = "10" then
			output <= std_logic_vector(not(inter) + 1);
		elsif ctrl = "11" then
			output <= fxs1in;
		else
			outTemp := "0000000000000000";
		end if;
		
	end process;
end bhv;