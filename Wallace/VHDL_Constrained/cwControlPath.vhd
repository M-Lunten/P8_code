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
	 muxControl		: out std_logic_vector(15 downto 0) := "0000000000000000";
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
-- Mux 10 & 11 - muxControl(14)
-- Mux 12  		- muxControl(15)

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

	Signal aTrans	: std_logic := '0';
	Signal State 	: std_logic_vector(2 downto 0) := "000";
	Signal iDebug	: std_logic_vector(7 downto 0) := "00000000";  --Debug signal


begin
	
	process (clkIn)
	
		variable i : unsigned(7 downto 0) := "00000000";
	
	begin
	
		if falling_edge(clkIn) then
			
			case State is
				when "000" => 
					if startIn = '1' then
					state <= "001";
					end if;
					
				when "001" =>
					State <= "011";
					regControl <= "011110000100110111";
					muxControl <= "0011111100000100";
					ramEnable <= '0';
					aluSub <= '0';
					validNum <= '0';
					
				
				when "010" =>
					State <= "011";
					regControl <= "000110000100110111";
					muxControl <= "0011111100000100";
					ramEnable <= '0';
					aluSub <= '0';
					validNum <= '1';
				
				when "011" =>
					State <= "100";
					regControl <= "100110011000001000";
					if (aTrans = '0') then
						muxControl <= "1101000001000001";  --A1 Transformation
					else
						muxControl <= "1100010100000001";  --A2 Transformation
					end if;
					ramEnable <= '0';
					aluSub <= '1';
					validNum <= '1';
				
				when "100" =>
					State <= "101";
					regControl <= "100001100000010000";
					if (aTrans = '0') then
						muxControl <= "1101001000010001";  --A1 Transformation
					else
						muxControl <= "1100100010010001";  --A2 Transformation
					end if;
					ramEnable <= '1';
					aluSub <= '1';
					validNum <= '1';
				
				when "101" =>
					
					regControl <= "000000000011110100";
					muxControl <= "1010011001111010";
					ramEnable <= '1';
					aluSub <= '0';
					validNum <= '1';
					
					i := i + 1;
					if (i = 255) and (startIn = '1') then
						State <= "001";
					elsif (i = 255) and (startIn = '0') then
						State <= "000";
					else
						State <= "010";
					end if;
					
					if (i = 255) then
						lfsrEnable <= '1';
					end if;

				when others => 
			end case;
			
			iDebug <= std_logic_vector(i);  -- Debug signal
		end if;
	end process;
end architecture;