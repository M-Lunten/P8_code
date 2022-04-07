LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY TestBench_LFSR_8 IS
END TestBench_LFSR_8;
ARCHITECTURE LFSR_8_arch OF TestBench_LFSR_8 IS
-- constants
-- signals
signal CLK: std_logic;
signal OUTPUT: std_logic_vector(7 downto 0);
component LFSR_8
	port(
	CLK: in std_logic;
	OUTPUT: out std_logic_vector(7 downto 0)
	);
end component;
begin
	i1 : LFSR_8
	port map(
-- list connections between master ports and signals
	CLK => CLK,
	OUTPUT => OUTPUT
	);

-- CLK
t_prcs_CLK: PROCESS
begin
loop
	CLK <= '0';
	wait for 10000 ps;
	CLK <= '1';
	wait for 10000 ps;
	if (now >= 1000000 ps) then wait; end if;
end loop;
end process t_prcs_CLK;
end LFSR_8_arch;