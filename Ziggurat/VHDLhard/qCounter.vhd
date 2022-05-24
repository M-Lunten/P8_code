library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity qCounter is
port(
		iclock : in std_logic;
		start : in std_logic;
		reset : in std_logic;
		D1qc : in std_logic;
		D2qc : in std_logic;
		D3qc : in std_logic;
		D4qc : in std_logic;
		D5qc : in std_logic;
		S : out std_logic_vector(3 downto 0)
	);
end qCounter;



architecture behavioural of qCounter is 
Signal Si : std_logic_vector(3 downto 0) := "0000";
signal clk2 : std_logic := '1';

begin 
	process(iclock)
	begin 
		if falling_edge(iclock) then
		clk2 <= not(clk2);
		if clk2 = '1' then
		
			case Si is
				when "0000" =>
					if start = '1' then
						Si <= "1100";
					else 
						Si <= "0000";
					end if;
				when "1100" => Si <= "0001";
				when "0001" => Si <= "0010";
				when "0010" =>
					if D3qc = '1' then
						Si <= "0101";
					elsif D3qc = '0' then
						if D1qc = '1' then
							Si <= "0011";
						elsif D1qc = '0' then
							Si <= "0111";
						end if;
					end if;
				when "0011" =>
					if D2qc = '1' then 
						Si <= "0100";
					elsif D2qc = '0' then 
						if reset = '0' then 
							Si <= "1100";
						elsif D2qc = '1' then 
							Si <= "0000";
						end if;
					end if;
				when "0100" => 
					if reset = '0' then 
						Si <= "1100";
					elsif D2qc = '1' then 
						Si <= "0000";
					end if;
				when "0101" =>
					if D4qc = '1' then 
						Si <= "0110";
					elsif D4qc = '0' then 
						if reset = '0' then 
							Si <= "1100";
						elsif D2qc = '1' then 
							Si <= "0000";
						end if;
					end if;
				when "0110" =>
					if reset = '0' then 
							Si <= "1100";
						elsif D2qc = '1' then 
							Si <= "0000";
						end if;
				when "0111" => Si <= "1000";
				when "1000" => Si <= "1001";
				when "1001" => Si <= "1010";
				when "1010" =>
					if D5qc = '1' then 
						Si <= "1011";
					elsif D5qc = '0' then 
						if reset = '0' then 
							Si <= "1100";
						elsif D2qc = '1' then 
							Si <= "0000";
						end if;
					end if;
				when "1011" =>
					if reset = '0' then 
							Si <= "1100";
						elsif D2qc = '1' then 
							Si <= "0000";
						end if;
				when others => Si <= Si;
			end case;
		end if;
		end if;
	end process;
	S <= Si;
end architecture;	