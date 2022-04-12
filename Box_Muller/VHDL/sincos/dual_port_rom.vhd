library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dual_port_rom is
	port 
	(
		addr_a	: in natural range 0 to 255;
		addr_b	: in natural range 0 to 255;
		clk		: in std_logic;
		q_a		: out std_logic_vector(7 downto 0);
		q_b		: out std_logic_vector(7 downto 0)
	);
end entity;

architecture rtl of dual_port_rom is

	-- Build a 2-D array type for the ROM
	subtype word_t is std_logic_vector(7 downto 0);
	type memory_t is array(255 downto 0) of word_t;
		
	function init_rom
	return memory_t is
	variable tmp : memory_t := (others => (others => '0'));
	begin 
		for addr_pos in 0 to 255 loop 
			-- Initialize each address with the address itself
			tmp(addr_pos) := std_logic_vector(to_unsigned(addr_pos, 8));
		end loop;
		
		return tmp;
	end init_rom;
	
	-- Declare the ROM signal and specify a default value. Quartus II
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal rom : memory_t := init_rom;
	
	begin
	
	process(clk)
	begin
		if(rising_edge(clk)) then
			q_a <= rom(addr_a);
			q_b <= rom(addr_b);
		end if;
	end process;

end rtl;
