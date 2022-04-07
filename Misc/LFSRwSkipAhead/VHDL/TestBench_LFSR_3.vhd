LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY TestBench_LFSR_3 IS
END TestBench_LFSR_3;
ARCHITECTURE LFSR_3_arch OF TestBench_LFSR_3 IS
-- constants
-- signals
signal CLK: std_logic;
signal OUTPUT: std_logic_vector(2 downto 0);
component LFSR_3
	port(
	CLK: in std_logic;
	OUTPUT: out std_logic_vector(2 downto 0)
	);
end component;
begin
	i1 : LFSR_3
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
end LFSR_3_arch;