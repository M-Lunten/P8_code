library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux6 is
port(
	mult2in: in std_logic_vector(15 downto 0);
	xuout,fxs1out,xusqout: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end mux6;

architecture bhv of mux6 is
begin
	process(ctrl, mult2in)

	variable outTemp : std_logic_vector(15 downto 0);
	begin
		if ctrl = "01" then
			xuout <= mult2in;
		elsif ctrl = "10" then
			fxs1out <= mult2in;
		elsif ctrl = "11" then
			xusqout <= mult2in;
		end if;
		--output <= outTemp;
	end process;
end bhv;