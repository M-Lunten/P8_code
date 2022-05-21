library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity cwControlPath is

	port (
    clkIn			   : in  std_logic;
	 startIn				: in  std_logic;
	 validNum		   : out std_logic;
	 ramEnable			: out std_logic;
	 lfsrEnable			: out std_logic;
	 muxControl			: out std_logic_vector(16 downto 0);
	 registerControl  : out std_logic_vector(17 downto 0)
    );
	
end;

-- Mux 1
-- Mux 2
-- Mux 3
-- Mux 4
-- Mux 5
-- Mux 6
-- Mux 7
-- Mux 8
-- Mux 10 & 11
-- Mux 12

-- Reg M
-- Reg S
-- Reg O1
-- Reg O2
-- Reg TPO
-- Reg PA
-- Reg A1
-- Reg A2
-- Reg A4
-- Reg X1
-- Reg X2
-- Reg X3
-- Reg X4
-- Reg Xh1
-- Reg Xh2
-- Reg Chi
-- Reg G
-- Leaky

architecture rtl of cwControlPath is

	Signal State : std_logic_vector(2 downto 0);


begin
	
	process (clkIn)
	
		variable i : signed(7 downto 0);
	
	begin
			
		if falling_edge(clkIn) then

			case State is
				when "000" => 
				
				when "001" =>
					State <= "011";
				
				when "010" =>
					State <= "011";
				
				when "011" =>
					State <= "100";
				
				when "100" =>
					State <= "101";
				
				when "101" =>
					i := i + 1;
				
					if i = 255 and startIn = '1' then
						State <= "001";
					elsif i = 255 and startIn = '0' then
						State <= "000";
					else
						State <= "000";			
					end if;

				when others => 
			end case;
			
			
		end if;
	end process;
end architecture;