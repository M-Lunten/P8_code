--Histogram creator
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity histogram_vhdl is 
	port (
		clk: in std_logic;
		boris_clk: in std_logic;
		lamp: out std_logic;
		output: out std_logic
	);
end histogram_vhdl;

architecture behavior of histogram_vhdl is
	
	component counters is
	port (
		master_clk: in std_logic;
		input: in std_logic_vector(15 downto 0);
		mux_ctrl: in std_logic_vector(6 downto 0);
		out_sum: out std_logic_vector(31 downto 0);
		halt: out std_logic := '0'
	);
	end component;
	
	component SPI is
	port (
		CLK,go: in std_logic;
		data_in: in std_logic_vector(31 downto 0);
		count: out std_logic_vector(4 downto 0);
		sel: out std_logic_vector(6 downto 0);
		OUTPUT: out std_logic	
	);
	end component;	
	
	component Wallace_speed_V2 is
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
	end component;
	
	signal go_halt: std_logic;
	signal count_ignore : std_logic_vector(4 downto 0);
	signal ctrl_mux : std_logic_vector(6 downto 0);
	signal algorithm_out : std_logic_vector(15 downto 0);
	signal start_sig : std_logic := '1';
	signal reset_sig : std_logic := '0';
	signal final_out : std_logic;
	signal data : std_logic_vector(31 downto 0);
	signal clk_ctrl : std_logic;
	
	begin
	
	interface : SPI port map (CLK => boris_clk, go => go_halt, data_in => data, count => count_ignore, sel => ctrl_mux, OUTPUT => final_out);
	algo : Wallace_speed_V2 port map (clk => clk_ctrl, start => start_sig, reset => reset_sig, x2 => algorithm_out);
	counters_1 : counters port map (master_clk => clk_ctrl, input => algorithm_out, mux_ctrl => ctrl_mux, out_sum => data, halt => go_halt);
	clk_ctrl <= clk and not go_halt;
	lamp <= go_halt;
	output <= final_out;
	
	
end behavior;