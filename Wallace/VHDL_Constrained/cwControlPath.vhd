-- TODO

-- LFSR 3-bit a tranform

--------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity cwControlPath is

	port (
    clkIn			: in  std_logic;
	 startIn			: in  std_logic;
	 validNum		: out std_logic := '0';
	 ramEnable		: out std_logic := '0';
	 aluSub  		: out std_logic := '0';
	 lfsrEnable		: out std_logic := '0';
	 muxControl		: out std_logic_vector(16 downto 0) := "00000000000000000";
	 regControl 	: out std_logic_vector(17 downto 0) := "000000000000000000"
    );
	
end;

-- Mux 1 		- muxControl(0)
-- Mux 2 		- muxControl(1-2)
-- Mux 3 		- muxControl(3)
-- Mux 4 		- muxControl(4)
-- Mux 5 		- muxControl(5)
-- Mux 6 		- muxControl(6-7)
-- Mux 7 		- muxControl(8-9)
-- Mux 8 		- muxControl(10-11)
-- Mux 9 		- muxControl(12-13)
-- Mux 10 & 11 - muxControl(14-15)
-- Mux 12  		- muxControl(16)

-- Reg M			- regControl(0)
-- Reg S			- regControl(1)
-- Reg O1		- regControl(2)
-- Reg O2		- regControl(3)
-- Reg TPO		- regControl(4)
-- Reg PA		- regControl(5)
-- Reg A1		- regControl(6)
-- Reg A2		- regControl(7)
-- Reg A4		- regControl(8)
-- Reg X1		- regControl(9)
-- Reg X2		- regControl(10)
-- Reg X3		- regControl(11)
-- Reg X4		- regControl(12)
-- Reg Xh1		- regControl(13)
-- Reg Xh2		- regControl(14)
-- Reg Chi		- regControl(15)
-- Reg G			- regControl(16)
-- Leaky			- regControl(17)

architecture rtl of cwControlPath is

	component LFSR_3 is
			 port (
				CLK: in std_logic;
				OUTPUT: out std_logic_vector(2 downto 0)
				);
	end component;
	
	Signal aTrans	: std_logic := '0';
	Signal lfsrClk	: std_logic := '0';
	Signal lfsrEN	: std_logic := '0';
	Signal State 	: std_logic_vector(2 downto 0) := "000";
	Signal iDebug	: std_logic_vector(7 downto 0) := "00000000";  --Debug signal
	Signal lfsrOut	: std_logic_vector(2 downto 0);


begin

	LFSR: LFSR_3 port map (CLK => lfsrClk, OUTPUT => lfsrOut);
	lfsrClk <= lfsrEN and clkIn;

	aTrans <= lfsrOut(1);
	
	process (clkIn)
	
		variable i : unsigned(7 downto 0) := "00000000";
	
	begin
	
		if falling_edge(clkIn) then
			
			case State is
				when "000" => 
					if startIn = '1' then
					state <= "001";
					end if;
					regControl <= "000000000000000000";
					muxControl <= "00000000000000000";
					ramEnable <= '0';
					aluSub <= '0';
					validNum <= '0';
					lfsrEnable <= '0';
					lfsrEN <= '0';
					
				when "001" =>
					State <= "011";
					regControl <= "011110000100110111";
					muxControl <= "01011111100000100";
					ramEnable <= '0';
					aluSub <= '0';
					validNum <= '0';
					lfsrEnable <= '0';
					lfsrEN <= '0';
					
				
				when "010" =>
					State <= "011";
					regControl <= "000110000100110000";
					muxControl <= "01011111100000100";
					ramEnable <= '0';
					aluSub <= '0';
					validNum <= '1';
					lfsrEnable <= '0';
					lfsrEN <= '0';
				
				when "011" =>
					State <= "100";
					regControl <= "100110011000001000";
					if (aTrans = '0') then
						muxControl <= "10001000001010001";  --A1 Transformation
					else
						muxControl <= "10000010100010001";  --A2 Transformation
					end if;
					ramEnable <= '1';
					aluSub <= '1';
					validNum <= '1';
					lfsrEnable <= '0';
					lfsrEN <= '0';
				
				when "100" =>
					State <= "101";
					regControl <= "100001100000010000";
					if (aTrans = '0') then
						muxControl <= "00110001000000001";  --A1 Transformation
					else
						muxControl <= "00100100010000001";  --A2 Transformation
					end if;
					ramEnable <= '1';
					aluSub <= '1';
					validNum <= '1';
					lfsrEnable <= '0';
					lfsrEN <= '0';
				
				when "101" =>
					
					regControl <= "000000000011110100";
					muxControl <= "11010011001111010";
					ramEnable <= '0';
					aluSub <= '0';
					validNum <= '1';
					lfsrEN <= '1';
					
					i := i + 1;
					if (i = 255) and (startIn = '1') then
						State <= "001";
						lfsrEnable <= '1';
					elsif (i = 255) and (startIn = '0') then
						State <= "000";
						lfsrEnable <= '0';
					else
						State <= "010";
						lfsrEnable <= '0';
					end if;

				when others => 
			end case;
			
			iDebug <= std_logic_vector(i);  -- Debug signal
		end if;
	end process;
end architecture;