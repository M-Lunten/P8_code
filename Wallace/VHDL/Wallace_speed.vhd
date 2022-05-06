--Architecture for Wallace algorithm optimized for speed
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Wallace_speed is 
	port (
		clk: in std_logic;
		start: in std_logic;
		reset: in std_logic;
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
	
	signal LFSR_en, WE_1, WE_2 : std_logic := '0';
	signal MUX_4, MUX_5, MUX_6 : std_logic;
	signal LFSR_ctrl : std_logic;
	signal LFSR_out : std_logic_vector(51 downto 0);
	--RAM signals
	--RAM pair 1
	signal addr_ram_1_A, addr_ram_1_B, addr_ram_1_C, addr_ram_1_D : std_logic_vector(8 downto 0);
	signal ram_1_datain_A, ram_1_datain_B, ram_1_datain_C, ram_1_datain_D : std_logic_vector(15 downto 0);
	signal ram_1_dataout_A, ram_1_dataout_B, ram_1_dataout_C, ram_1_dataout_D : std_logic_vector(15 downto 0);
	--RAM pair 2
	signal addr_ram_2_A, addr_ram_2_B, addr_ram_2_C, addr_ram_2_D : std_logic_vector(8 downto 0);
	signal ram_2_datain_A, ram_2_datain_B, ram_2_datain_C, ram_2_datain_D : std_logic_vector(15 downto 0);
	signal ram_2_dataout_A, ram_2_dataout_B, ram_2_dataout_C, ram_2_dataout_D : std_logic_vector(15 downto 0);
  	--Address generator out signals
	signal addr_A, addr_B, addr_C, addr_D : std_logic_vector(8 downto 0);
	--Delay signals for muxs
	signal addr_D1, addr_D2, addr_D3, addr_D4 : std_logic_vector(35 downto 0);
	signal data_A, data_B, data_C, data_D : std_logic_vector(15 downto 0);
	--Transformation stage signals
	signal res_1, res_2, res_3, res_4 : std_logic_vector(15 downto 0);
	
begin
	--Data path 
	cp : control_path port map (start, reset, clk, LFSR_en, WE_1, WE_2, MUX_4, MUX_5, MUX_6); 
	LFSR : LFSR_52 port map (LFSR_ctrl, LFSR_out);
	LFSR_ctrl <= LFSR_en AND clk;
	--RAM pair 1	
	RAM_1_1 : RAM_1 port map (addr_ram_1_A, addr_ram_1_B, clk, ram_1_datain_A, ram_1_datain_B, WE_1, WE_1, ram_1_dataout_A, ram_1_dataout_B);
	RAM_1_2 : RAM_2 port map (addr_ram_1_C, addr_ram_1_D, clk, ram_1_datain_C, ram_1_datain_D, WE_1, WE_1, ram_1_dataout_C, ram_1_dataout_D);
	--RAM pair 2
	RAM_2_1 : RAM_1 port map (addr_ram_2_A, addr_ram_2_B, clk, ram_2_datain_A, ram_2_datain_B, WE_2, WE_2, ram_2_dataout_A, ram_2_dataout_B);
	RAM_2_2 : RAM_2 port map (addr_ram_2_C, addr_ram_2_D, clk, ram_2_datain_C, ram_2_datain_D, WE_2, WE_2, ram_2_dataout_C, ram_2_dataout_D);
	--Address generators
	ADDR_GEN_1 : addr_gen port map (clk, MUX_6, LFSR_out(8 downto 0), LFSR_out(17 downto 9), LFSR_out(25 downto 18), addr_A, addr_B);
	ADDR_GEN_2 : addr_gen port map (clk, MUX_6, LFSR_out(34 downto 26), LFSR_out(43 downto 35), LFSR_out(51 downto 44), addr_C, addr_D);
	--Transformation stage
	tstage : transformation port map (clk, MUX_4, data_A, data_B, data_C, data_D, res_1, res_2, res_3, res_4);
	
	
	delay_addr : process(clk)
	begin
	if rising_edge(clk) then
		addr_D1 <= addr_A & addr_B & addr_C & addr_D;
		addr_D2 <= addr_D1;
		addr_D3 <= addr_D2;
		addr_D4 <= addr_D3;
	end if;
	end process;
	
	addr_in : process(WE_1, addr_A, addr_B, addr_C, addr_D, addr_D4)
	begin
	if WE_1 = '0' then
		addr_ram_1_A <= addr_A;
		addr_ram_1_B <= addr_B;
		addr_ram_1_C <= addr_C;
		addr_ram_1_D <= addr_D;
		addr_ram_2_A <= addr_D4(35 downto 27);
		addr_ram_2_B <= addr_D4(26 downto 18);
		addr_ram_2_C <= addr_D4(17 downto 9);
		addr_ram_2_D <= addr_D4(8 downto 0);
	else 
		addr_ram_2_A <= addr_A;
		addr_ram_2_B <= addr_B;
		addr_ram_2_C <= addr_C;
		addr_ram_2_D <= addr_D;
		addr_ram_1_A <= addr_D4(35 downto 27);
		addr_ram_1_B <= addr_D4(26 downto 18);
		addr_ram_1_C <= addr_D4(17 downto 9);
		addr_ram_1_D <= addr_D4(8 downto 0);
	end if;
	end process;

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
		x1 <= res_1;
		x2 <= res_2;
		x3 <= res_3;
		x4 <= res_4;
	end if;
	end process;
	
	ram_1_datain_A <= std_logic_vector(res_1);
	ram_2_datain_A <= std_logic_vector(res_1);
	ram_1_datain_B <= std_logic_vector(res_2);
	ram_2_datain_B <= std_logic_vector(res_2);
	ram_1_datain_C <= std_logic_vector(res_3);
	ram_2_datain_C <= std_logic_vector(res_3);
	ram_1_datain_D <= std_logic_vector(res_4);
	ram_2_datain_D <= std_logic_vector(res_4);

end behavior;