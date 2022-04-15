Library ieee; 
use ieee.std_logic_1164.all;    
use ieee.numeric_std.all;

entity Box_Muller is 
port(
	gclk : in std_logic;
	greset : in std_logic;
	
	U1 : out std_logic_vector(15 downto 0);
	U2 : out std_logic_vector(15 downto 0)
	);
end Box_Muller;

architecture behavioural of Box_Muller is 

component LFSR_16 is
	 port (
		CLK: in std_logic;
		OUTPUT: out std_logic_vector(15 downto 0)
	);
end component;

component LFSR_33 is
	 port (
		CLK: in std_logic;
		OUTPUT: out std_logic_vector(32 downto 0)
	);
end component;

component f_block is 
	port (
		U: in std_logic_vector(31 downto 0);
		clk_in: in std_logic;
		f_res: out std_logic_vector(15 downto 0)
		
	);
end component;

component sincos is
	port(
		i_clock : in std_logic;
		reset : in std_logic;
		data : in std_logic_vector(11 downto 0);
		sinOut : out std_logic_vector(15 downto 0);
		cosOut : out std_logic_vector(15 downto 0)
	);
end component;
	
	signal LF1sincos : std_logic_vector(11 downto 0);
	signal LF2fblock : std_logic_vector(31 downto 0);
	signal clksig : std_logic;
	signal sinMul : std_logic_vector(15 downto 0);
	signal cosMul : std_logic_vector(15 downto 0);
	signal fblockMul : std_logic_vector(15 downto 0);
	signal dummy1 : std_logic_vector(3 downto 0);
	signal dummy2 : std_logic;
	
	begin
		LF16 : LFSR_16 port map(gclk,OUTPUT(15 downto 4) => LF1sincos, OUTPUT(3 downto 0) => dummy1);
		LF33 : LFSR_33 port map(gclk,OUTPUT(31 downto 0) => LF2fblock, OUTPUT(32) => dummy2);
		f1 : f_block port map(LF2fblock,gclk,fblockMul);
		sc : sincos port map(gclk,greset,LF1sincos,sinMul,cosMul);
		
		process(gclk) is
		variable mulres1 : signed(31 downto 0);
		variable mulres2 : signed(31 downto 0);
			begin	
				if rising_edge(gclk) then
					mulres1 := signed(fblockMul)*signed(sinMul);
					mulres2 := signed(fblockMul)*signed(cosMul);
					
					U1 <= std_logic_vector(mulres1(30 downto 15));
					U2 <= std_logic_vector(mulres2(30 downto 15));
					
				end if;
		end process;

end architecture;