--Architecture for control path for the wallace algorithm optimized for speed
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity control_path is 
	port (
		start: in std_logic;
		reset: in std_logic;
		clk: in std_logic;
		i: out std_logic_vector(7 downto 0);
		LFSR_en, WE_1, WE_2 : out std_logic := '0';
		MUX_4, MUX_5 : out std_logic;
		MUX_6 : out std_logic := '1'
	);
end control_path;

architecture behavior of control_path is
	signal inv_clk : std_logic;
	signal i_count : unsigned(7 downto 0) := "00000000";
	signal one_bit_count : std_logic := '0';
	signal start_tmp1, start_tmp2, start_tmp3, start_tmp4, start_tmp5, start_tmp6, start_tmp7 : std_logic := '0';
	signal LFSR_out : std_logic_vector(2 downto 0);
	
	component LFSR_3 is 
	port (
		CLK: in std_logic;
		OUTPUT: out std_logic_vector(2 downto 0)
	);
	end component;
	
begin
	--control path	
	inv_clk <= not clk;
	LFSR: LFSR_3 port map (inv_clk, LFSR_out);

	MUX_4 <= LFSR_out(0);
	MUX_5 <= not LFSR_out(0);
	i <= std_logic_vector(i_count);
	
	i_counter: process(clk)
	begin
	if falling_edge(clk) then
		if reset = '1' then
			i_count <= "00000000";
		elsif start_tmp1 = '1' then
			i_count <= i_count + 1;
		end if;
	end if;
	end process;

	one_bit_counter: process(i_count)
	begin
	if i_count = "11111111" then
		one_bit_count <= not one_bit_count;
	end if;
	end process;

	starting: process(start, reset, clk)
	begin
	if falling_edge(clk) then
		start_tmp1 <= start and not reset;
		start_tmp2 <= start_tmp1;
		start_tmp3 <= start_tmp2;
		start_tmp4 <= start_tmp3;
		start_tmp5 <= start_tmp4;
		start_tmp6 <= start_tmp5;
		start_tmp7 <= start_tmp6;
	end if;
	end process;
	
	control: process(i_count, start_tmp7)
	begin
	if i_count = "11111101" then
		LFSR_en <= '1';
	else 
		LFSR_en <= '0';
	end if;
	if i_count = "11111110" then
		MUX_6 <= '1';
	else
		MUX_6 <= '0';
	end if;
	if start_tmp7 = '1' then
		WE_1 <= one_bit_count;
		WE_2 <= not one_bit_count;
	else
		WE_1 <= '0';
		WE_2 <= '0';
	end if;
	end process;	
end behavior;