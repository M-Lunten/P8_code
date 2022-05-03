library ieee;
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ZigVHDL is 
port(
	i_clock : in std_logic;
	reset : in std_logic;
	start : in std_logic;
	zigout : out std_logic_vector(15 downto 0)
	);
end ZigVHDL;

architecture Behavioural of ZigVHDL is 
	component LFSR_33 is 
	port(
		CLK: in std_logic;
		OUTPUT: out std_logic_vector(32 downto 0)
	);
	end component;
	
	component d1Gen is 
port(
	clk : in std_logic;
	Iin : in std_logic_vector(7 downto 0);
	D1out : out std_logic
	);
end component;
	
	signal genU : std_logic_vector(32 downto 0);
	signal U0 : std_logic_vector(15 downto 0);
	signal U1 : std_logic_vector(15 downto 0);
	signal i : std_logic_vector(7 downto 0) := "00000000";
	
	signal A : std_logic_vector(15 downto 0);
	signal GRAD : std_logic_vector(15 downto 0);
	signal Yint : std_logic_vector(15 downto 0);
	signal Ymax : std_logic_vector(15 downto 0);
	signal YmaxMinus1 : std_logic_vector(15 downto 0);
	
	signal D1 : std_logic;
	signal D2 : std_logic;
	signal D3 : std_logic;
	signal D4 : std_logic;
	signal D5 : std_logic;
	
	begin
		c1: LFSR_33 port map(i_clock,genU);
		c2: d1Gen port map(i_clock,i,D1);
		
		process(i_clock,start) is 
			begin
				if rising_edge(i_clock) then
					if (start='1') then 
					
					U0 <= genU(15 downto 0);
					U1 <= genU(31 downto 16);
					i <= genU(23 downto 16);
					
					
					
					end if;
					end if;
			
		end process;
	

end architecture;