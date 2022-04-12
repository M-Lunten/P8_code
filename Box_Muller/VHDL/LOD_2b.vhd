-- Leading Ones Detector 2 bit building block
Library ieee; 
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;

entity LOD_2b is 
	port (
		x_1, x_2, x_3: in std_logic;
		o_and, o_or: out std_logic
	);
end LOD_2b;

architecture behavior of LOD_2b is

begin
	o_and <= x_1 and x_2;
	o_or <= x_1 or x_3;
end behavior;
