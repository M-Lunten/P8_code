--Address generator 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity addr_gen is 
	port (
		clk: in std_logic;
		MUX_ctrl: in std_logic;
		mask, origin : in std_logic_vector(8 downto 0);
		stride : in std_logic_vector(7 downto 0);
		addr_1, addr_2 : out std_logic_vector(8 downto 0)
	);
end addr_gen;

architecture behavior of addr_gen is
	signal o_saved : std_logic_vector(8 downto 0) := "100101001";
	signal s_saved : std_logic_vector(8 downto 0) := "000110001";
	signal m_saved : std_logic_vector(8 downto 0) := "100101001";
	signal sPLUSo : unsigned(8 downto 0);

begin
	process(clk)
	variable o_next : unsigned(8 downto 0);
	variable s_2times : std_logic_vector(9 downto 0);
	begin
	if rising_edge(clk) then
		s_saved <= stride & '1';
		m_saved <= mask;
		if MUX_ctrl = '1' then
			o_saved <= origin;
		else
			s_2times := s_saved & '0';
			o_next := unsigned(o_saved) + unsigned(s_saved(8 downto 0));
			o_saved <= std_logic_vector(o_next(8 downto 0));
		end if;	
	end if;
	end process;
	sPLUSo <= unsigned(s_saved) + unsigned(o_saved);
	addr_1 <= o_saved XOR m_saved;
	addr_2 <= m_saved XOR std_logic_vector(sPLUSo(8 downto 0));
end behavior;