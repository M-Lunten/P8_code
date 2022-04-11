-- Leading ones detector 32 bit
Library ieee; 
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;

entity LOD is 
	port (
		X: in std_logic_vector(31 downto 0);
		sum, sum_1: out std_logic_vector(31 downto 0)
	);
end LOD;

architecture behavior of LOD is

	component LOD_2b is
	port(
		x_1, x_2, x_3: in std_logic;
		o_and, o_or: out std_logic
	);
	end component;
	
	signal output_and: std_logic_vector(31 downto 0);
	signal output_or: std_logic_vector(31 downto 0);
	
begin
	gen_LOD:
	for i in 0 to 31  generate
		leading_ones: LOD_2b port map (x_1 => X(i), x_2 => output_and(i), x_3 => output_or(i), o_and => output_and(i), o_or => output_or(i));
	end generate gen_LOD;
	sum <= output_and;
	sum_1 <= output_or;

end behavior;
