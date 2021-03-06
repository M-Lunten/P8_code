-- f block for the box muller
Library ieee; 
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;

entity f_block is 
	port (
		U: in std_logic_vector(31 downto 0);
		clk_in: in std_logic;
		f_res: out std_logic_vector(15 downto 0)
		
	);
end f_block;

architecture behavior of f_block is

	component addressing_unit is
	port(
		U_in: in std_logic_vector(31 downto 0);
		w: out std_logic_vector(5 downto 0);
		L: out std_logic_vector(1 downto 0)
	);
	end component;
	
	component f_a_lut is
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	end component;
	
	component f_b_lut is
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	end component;
	
	signal seg_w : std_logic_vector(5 downto 0) := "000000";
	signal seg_L : std_logic_vector(1 downto 0);
	signal a : std_logic_vector(15 downto 0) := "0000000000000000"; --Q(3, 13)
	signal b : std_logic_vector(15 downto 0) := "0000000000000000"; --Q(4, 12)
	signal shift_num : unsigned(5 downto 0) := "000000";
	signal U_tilde: std_logic_vector(31 downto 0);
	signal shift1: std_logic_vector(15 downto 0);
	--signal b1: std_logic_vector(15 downto 0);
	
begin

	AU0 : addressing_unit port map (U_in => U, w => seg_w, L => seg_L);
	LUT_a : f_a_lut port map (address(7 downto 2) => seg_w, address(1 downto 0) => seg_L, clock => clk_in, q => a);
	LUT_b : f_b_lut port map (address(7 downto 2) => seg_w, address(1 downto 0) => seg_L, clock => clk_in, q => b);

	process(clk_in)
	
	variable shift_res: unsigned(31 downto 0);
	variable mult_res : signed(33 downto 0);
	variable mac_res : signed(16 downto 0);
	
	begin
		if rising_edge(clk_in) then
			if U(31) = '1' then
				shift_num <= unsigned(seg_w) - 31;
				U_tilde <= std_logic_vector(-signed(U));
				
			else 
				shift_num <= 30-unsigned(seg_w);
				U_tilde <= U;
			
			end if;
			shift_res := shift_left(unsigned(U_tilde), to_integer(shift_num));
			shift1 <= std_logic_vector(shift_res(31 downto 16));
			mult_res := signed(a(15) & a)*signed('0' & shift1); --Q(4, 13) * Q(1, 16) = Q(5, 29) 
			mac_res := signed(mult_res(32) & mult_res(32 downto 17)) + signed(b(15) & b); --Q(5, 29) + Q(4, 12)
			f_res <= std_logic_vector(mac_res(16 downto 1)); --Output in Q(5, 11)
			
		end if;
		
	end process;



end behavior;
