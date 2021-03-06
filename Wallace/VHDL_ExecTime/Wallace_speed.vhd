--Architecture for Wallace algorithm optimized for speed
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Wallace_speed is 
	port (
		clk: in std_logic;
		start: in std_logic;
		reset: in std_logic;
		valid: out std_logic;
		x1: out std_logic_vector(15 downto 0);
		x2: out std_logic_vector(15 downto 0);
		x3: out std_logic_vector(15 downto 0);
		x4: out std_logic_vector(15 downto 0)
	);
end Wallace_speed;

architecture behavior of Wallace_speed is
	component control_path is 
	port (
		start: in std_logic;
		reset: in std_logic;
		clk: in std_logic;
		i: out std_logic_vector(7 downto 0);
		LFSR_en, WE_1, WE_2 : out std_logic := '0';
		MUX_4, MUX_5, MUX_6 : out std_logic
	);
	end component;
	
	component addr_gen is 
	port (
		clk: in std_logic;
		MUX_ctrl: in std_logic;
		mask, origin : in std_logic_vector(8 downto 0);
		stride : in std_logic_vector(7 downto 0);
		addr_1, addr_2 : out std_logic_vector(8 downto 0)
	);
	end component;
	
	component LFSR_52 is 
	port (
		CLK: in std_logic;
		OUTPUT: out std_logic_vector(51 downto 0)
	);
	end component;
	
	component RAM_1 is 
	PORT
	(
		address_a		: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		address_b		: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data_a		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		data_b		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		wren_a		: IN STD_LOGIC  := '0';
		wren_b		: IN STD_LOGIC  := '0';
		q_a		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
		q_b		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	end component;
	
	component RAM_2 is 
	PORT
	(
		address_a		: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		address_b		: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data_a		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		data_b		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		wren_a		: IN STD_LOGIC  := '0';
		wren_b		: IN STD_LOGIC  := '0';
		q_a		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
		q_b		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	end component;

	component transformation is
	port (
		clk: in std_logic;
		Tctrl: in std_logic;
		x1: in std_logic_vector(15 downto 0);
		x2: in std_logic_vector(15 downto 0);
		x3: in std_logic_vector(15 downto 0);
		x4: in std_logic_vector(15 downto 0);
		x1_res: out std_logic_vector(15 downto 0);
		x2_res: out std_logic_vector(15 downto 0);
		x3_res: out std_logic_vector(15 downto 0);
		x4_res: out std_logic_vector(15 downto 0)
	);
	end component;
	
	component chi_corr is
	port (
		clk: in std_logic;
		ctrl_sig: in std_logic_vector(7 downto 0);
		x1: in std_logic_vector(15 downto 0);
		G: out std_logic_vector(15 downto 0)
	);
	end component;
	
	--Control path signals
	signal LFSR_en, WE_1, WE_2 : std_logic := '0';
	signal MUX_4, MUX_5, MUX_6 : std_logic;
	signal LFSR_ctrl : std_logic;
	signal LFSR_out : std_logic_vector(51 downto 0);
	signal i : std_logic_vector(7 downto 0);
	--RAM signals
	--RAM pair 1
	signal ram_1_datain_A, ram_1_datain_B, ram_1_datain_C, ram_1_datain_D : std_logic_vector(15 downto 0);
	signal ram_1_dataout_A, ram_1_dataout_B, ram_1_dataout_C, ram_1_dataout_D : std_logic_vector(15 downto 0);
	--RAM pair 2
	signal ram_2_datain_A, ram_2_datain_B, ram_2_datain_C, ram_2_datain_D : std_logic_vector(15 downto 0);
	signal ram_2_dataout_A, ram_2_dataout_B, ram_2_dataout_C, ram_2_dataout_D : std_logic_vector(15 downto 0);
  	--Address generator out signals
	signal addr_A, addr_B, addr_C, addr_D : std_logic_vector(8 downto 0);
	--Delay signals for muxs
	signal data_A, data_B, data_C, data_D : std_logic_vector(15 downto 0);
	--Transformation stage signals
	signal res_1, res_2, res_3, res_4 : std_logic_vector(15 downto 0);
	--Chi squared correction stage signals
	signal res_1_corr, res_2_corr, res_3_corr, res_4_corr : std_logic_vector(15 downto 0);
	signal chi_input : std_logic_vector(15 downto 0);
	signal G_factor : std_logic_vector(15 downto 0);
	signal valid_check : std_logic;
	
begin
	--Data path 
	cp : control_path port map (start, reset, clk, i, LFSR_en, WE_1, WE_2, MUX_4, MUX_5, MUX_6); 
	LFSR : LFSR_52 port map (LFSR_ctrl, LFSR_out);
	LFSR_ctrl <= LFSR_en AND clk;
	--RAM pair 1	
	RAM_1_1 : RAM_1 port map (addr_A, addr_B, clk, ram_1_datain_A, ram_1_datain_B, WE_1, WE_1, ram_1_dataout_A, ram_1_dataout_B);
	RAM_1_2 : RAM_2 port map (addr_C, addr_D, clk, ram_1_datain_C, ram_1_datain_D, WE_1, WE_1, ram_1_dataout_C, ram_1_dataout_D);
	--RAM pair 2
	RAM_2_1 : RAM_1 port map (addr_A, addr_B, clk, ram_2_datain_A, ram_2_datain_B, WE_2, WE_2, ram_2_dataout_A, ram_2_dataout_B);
	RAM_2_2 : RAM_2 port map (addr_C, addr_D, clk, ram_2_datain_C, ram_2_datain_D, WE_2, WE_2, ram_2_dataout_C, ram_2_dataout_D);
	--Address generators
	ADDR_GEN_1 : addr_gen port map (clk, MUX_6, LFSR_out(8 downto 0), LFSR_out(17 downto 9), LFSR_out(25 downto 18), addr_A, addr_B);
	ADDR_GEN_2 : addr_gen port map (clk, MUX_6, LFSR_out(34 downto 26), LFSR_out(43 downto 35), LFSR_out(51 downto 44), addr_C, addr_D);
	--Transformation stage
	tstage : transformation port map (clk, MUX_4, data_A, data_B, data_C, data_D, res_1, res_2, res_3, res_4);
	--Chi squared correction stage
	chistage : chi_corr port map (clk, i, chi_input, G_factor);

	ram_data_out_save : process(clk)
	begin
	if rising_edge(clk) then
		if WE_1 = '0' then
			data_A <= ram_1_dataout_A;
			data_B <= ram_1_dataout_B; 
			data_C <= ram_1_dataout_C;
			data_D <= ram_1_dataout_D;
		else
			data_A <= ram_2_dataout_A;
			data_B <= ram_2_dataout_B; 
			data_C <= ram_2_dataout_C;
			data_D <= ram_2_dataout_D;
		end if;
	end if;
	end process;

	save_res : process(clk)
	begin
	if rising_edge(clk) then
		res_1_corr <= res_1;
		res_2_corr <= res_2;
		res_3_corr <= res_3;
		res_4_corr <= res_4;
	end if;
	end process;
	
	correction : process(clk, res_1_corr, res_2_corr, res_3_corr, res_4_corr, G_factor)
	variable corr_1_res : signed(31 downto 0);
	variable corr_2_res : signed(31 downto 0);
	variable corr_3_res : signed(31 downto 0);
	variable corr_4_res : signed(31 downto 0);
	begin
	corr_1_res := signed(res_1_corr) * signed(G_factor); --Q(5, 11) * Q(2, 14) = Q(7, 25)
	corr_2_res := signed(res_2_corr) * signed(G_factor);
	corr_3_res := signed(res_3_corr) * signed(G_factor);
	corr_4_res := signed(res_4_corr) * signed(G_factor);
	chi_input <= std_logic_vector(corr_1_res(31) & corr_1_res(28 downto 14));
	if rising_edge(clk) then
		x1 <= std_logic_vector(corr_1_res(31) & corr_1_res(28 downto 14));
		x2 <= std_logic_vector(corr_2_res(31) & corr_2_res(28 downto 14));
		x3 <= std_logic_vector(corr_3_res(31) & corr_3_res(28 downto 14));
		x4 <= std_logic_vector(corr_4_res(31) & corr_4_res(28 downto 14));
	end if;
	end process;
	
	valid_ctrl : process(i)
	begin
	if i = "11111111" then
		valid_check <= '0';
	else
		valid_check <= '1';
	end if;
	end process;
	valid <= valid_check;
	
	ram_1_datain_A <= std_logic_vector(res_1);
	ram_2_datain_A <= std_logic_vector(res_1);
	ram_1_datain_B <= std_logic_vector(res_2);
	ram_2_datain_B <= std_logic_vector(res_2);
	ram_1_datain_C <= std_logic_vector(res_3);
	ram_2_datain_C <= std_logic_vector(res_3);
	ram_1_datain_D <= std_logic_vector(res_4);
	ram_2_datain_D <= std_logic_vector(res_4);

end behavior;