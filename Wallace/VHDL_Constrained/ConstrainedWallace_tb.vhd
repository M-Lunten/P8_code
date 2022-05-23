library ieee;
use ieee.std_logic_1164.all;

entity ConstrainedWallace_tb is
end; 


architecture rtl of ConstrainedWallace_tb is

	constant clockT : time := 20 ns;

	component ConstrainedWallace is
			port (
			 clk				: in  std_logic;
			 start			: in  std_logic;
			 valid			: out std_logic;
			 output			: out std_logic_vector(15 downto 0)
			 );
	end component;
	
	signal clkTest 	: std_logic := '0';
	signal startTest 	: std_logic;
	signal validTest 	: std_logic;
	signal outputTest	: std_logic_vector(15 downto 0);
	

begin

	CW1: ConstrainedWallace port map (clk => clkTest, start => startTest, valid => validTest, output => outputTest);

	CLK_GEN : process is 
	begin 
		wait for clockT/2;
		clkTest <= not clkTest;
	end process CLK_GEN;
	
	
	
	RES_GEN : process is
	begin
	startTest <= '0';
	
	wait for clockT*5;
	startTest <= '1';
	
	report "finish";
	wait;
	
	end process RES_GEN;
	
end;