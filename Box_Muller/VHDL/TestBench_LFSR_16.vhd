LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY TestBench_LFSR_16 IS
END TestBench_LFSR_16;
ARCHITECTURE LFSR_16_arch OF TestBench_LFSR_16 IS
-- constants
-- signals
signal CLK: std_logic;
signal OUTPUT: std_logic_vector(15 downto 0);
component LFSR_16
	port(
	CLK: in std_logic;
	OUTPUT: out std_logic_vector(15 downto 0)
	);
end component;
begin
	i1 : LFSR_16
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
	wait for 1000 ps;
	CLK <= '1';
	wait for 1000 ps;
	if (now >= 100000 ps) then wait; end if;
end loop;
end process t_prcs_CLK;
end LFSR_16_arch;