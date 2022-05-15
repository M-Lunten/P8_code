--Design block for calculating chi squared correction factor
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity chi_corr is 
	port (
		clk: in std_logic;
		ctrl_sig: in std_logic_vector(7 downto 0);
		x1: in std_logic_vector(15 downto 0);
		G: out std_logic_vector(15 downto 0) := "0100000000000000"
	);
end chi_corr;

architecture behavior of chi_corr is
	signal clk_div : std_logic := '0';
	signal variate_d, variate : std_logic_vector(15 downto 0) := "0000000000000000";
	signal add_res : std_logic_vector(15 downto 0);
	signal mult_res: std_logic_vector(15 downto 0);
	constant c1: std_logic_vector(16 downto 0) := "01011010011111010";
	constant c2: std_logic_vector(15 downto 0) := "0000010110101000"; 
begin
	
	process(clk)
	variable add : signed(16 downto 0);
	variable mult : unsigned(31 downto 0);
	begin
	if rising_edge(clk) then
		if ctrl_sig = "11111111" then
			variate <= x1;
			G <= mult_res;
		end if;
		add := signed(variate(15) & variate(15) & variate(15 downto 1)) + signed(c1); -- Q(5, 11) + Q(7, 10) = Q(7, 10)
		add_res <= std_logic_vector(add(15 downto 0));
		mult := unsigned(add_res) * unsigned(c2); -- Q(6, 10)*Q(0, 16) = Q(6, 26)
		mult_res <= std_logic_vector('0' & mult(26 downto 12));
	end if;
	end process;
end behavior;