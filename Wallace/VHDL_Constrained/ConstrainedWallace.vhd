library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ConstrainedWallace is
	port (
		 clk				: in  std_logic;
		 start			: in  std_logic;
		 valid			: out std_logic := '0';
		 grnNum			: out std_logic_vector(15 downto 0) := "0000000000000000";
		 );
		 
end; 


architecture rtl of ConstrainedWallace is

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
	
	signal ramTest 	: std_logic; ------------------------
	signal aluState 	: std_logic;
	signal lfsrEN	 	: std_logic;
	signal muxctrl 	: std_logic_vector(15 downto 0);
	signal regctrl		: std_logic_vector(17 downto 0);
	

begin

	CP1: cwControlPath port map (clkIn => clk, startIn => start, validNum => valid, ramEnable => ramTest, aluSub => aluState, lfsrEnable => lfsrEN, muxControl => muxctrl, regControl => regctrl);
	
	process (clkIn)
	
	begin
	
		if rising_edge(clk) then
	
		end if;
	end process;
end architecture;