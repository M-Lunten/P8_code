library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Vxu is
port(
	iclock : in std_logic;
	xuctrl : in std_logic;
	xuinV : in std_logic_vector(15 downto 0);
	xuoutV: out std_logic_vector(15 downto 0)
	);
end Vxu;

architecture behavioural of Vxu is 

begin
	process(iclock)

	begin
		if rising_edge(iclock) then 
			if xuctrl = '1' then 
				xuoutV <= xuinV;
			end if;
		
		end if;
	end process;


end architecture;