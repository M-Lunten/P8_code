library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity VD is
port(
	iclock : in std_logic;
	Dctrl : in std_logic;
	DinV : in std_logic;
	DoutV: out std_logic
	);
end VD;

architecture behavioural of VD is 

begin
	process(iclock)

	begin
		if rising_edge(iclock) then 
			if Dctrl = '1' then 
				DoutV <= DinV;
			end if;
		
		end if;
	end process;


end architecture;