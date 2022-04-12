-- Leading ones detector 32 bit
Library ieee; 
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;

entity LOD is 
	port (
		U: in std_logic_vector(31 downto 0);
		res: out std_logic_vector(5 downto 0)
	);
end LOD;

architecture behavior of LOD is

	component LOD_2b is
	port(
		x_1, x_2, x_3: in std_logic;
		o_and, o_or: out std_logic
	);
	end component;
	
	component ones_counter is
	port(
		X: in std_logic_vector(60 downto 0);
		sum: out std_logic_vector(5 downto 0)
	);
	end component;
	
	signal output_and: std_logic_vector(30 downto 0);
	signal output_or: std_logic_vector(30 downto 0);
	
begin
	gen_LOD:
	for i in 0 to 29  generate
		detector : LOD_2b port map (x_1 => U(i+1), x_2 => output_and(i+1), x_3 => output_or(i+1), o_and => output_and(i), o_or => output_or(i));
	end generate gen_LOD;
	
	output_and(30) <= U(31);
	output_or(30) <= U(31);
	
	oc0 : ones_counter port map (X(60) => U(31), X(59 downto 30) => output_and(29 downto 0), X(29 downto 0) => output_or(29 downto 0), sum => res);
	
end behavior;
