Library ieee; 
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;

entity Box_Muller is 
port(
	gclk : in std_logic;
	greset : in std_logic;
	
	U1 : out std_logic_vector(15 downto 0);
	U2 : out std_logic_vector(15 downto 0)
	);
end sincos;

architecture behavioural of Box_Muller is 

component LFSR_16 is
	 port (
		CLK: in std_logic;
		OUTPUT: out std_logic_vector(15 downto 0)
	);
end LFSR_16;

component LFSR_33 is
	 port (
		CLK: in std_logic;
		OUTPUT: out std_logic_vector(32 downto 0)
	);
end LFSR_33;

component f_block is 
	port (
		U: in std_logic_vector(31 downto 0);
		clk_in: in std_logic;
		f_res: out std_logic_vector(15 downto 0)
		
	);
end f_block;

component sincos is
	port(
		i_clock : in std_logic;
		reset : in std_logic;
		data : in std_logic_vector(11 downto 0);
		sinOut : out std_logic_vector(15 downto 0);
		cosOut : out std_logic_vector(15 downto 0)
	);
	end component;

end architecture;