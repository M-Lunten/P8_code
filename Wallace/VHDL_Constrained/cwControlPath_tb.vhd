library ieee;
use ieee.std_logic_1164.all;

entity cwControlPath_tb is
end; 


architecture rtl of cwControlPath_tb is

	constant clockT : time := 20 ns;

	component cwControlPath is
			port (
				 clkIn			: in  std_logic;
				 startIn			: in  std_logic;
				 validNum		: out std_logic;
				 ramEnable		: out std_logic;
				 aluSub  		: out std_logic;
				 lfsrEnable		: out std_logic;
				 muxControl		: out std_logic_vector(15 downto 0);
				 regControl		: out std_logic_vector(17 downto 0)
				 );
	end component;
	
	signal clkTest 	: std_logic := '0';
	signal startTest 	: std_logic;
	signal validTest 	: std_logic;
	signal ramTest 	: std_logic;
	signal aluTest 	: std_logic;
	signal lfsrTest 	: std_logic;
	signal muxTest 	: std_logic_vector(15 downto 0);
	signal regTest		: std_logic_vector(17 downto 0);
	

begin

	CP1: cwControlPath port map (clkIn => clkTest, startIn => startTest, validNum => validTest, ramEnable => ramTest, aluSub => aluTest, lfsrEnable => lfsrTest, muxControl => muxTest, regControl => regTest);

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

	wait for clockT*1050;
	startTest <= '0';
	
	report "finish";
	wait;
	
	end process RES_GEN;
	
end;