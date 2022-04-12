-- Leading Ones Detector
Library ieee; 
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;

entity Box_Muller is 
	port (
		X: in std_logic_vector(1 downto 0);
		sum: out std_logic_vector(1 downto 0)
	);
end Box_Muller;

architecture behavior of Box_Muller is

begin
	sum(0) <= X(0) and X(1);
	sum(1) <= X(0) or X(1);
end behavior;