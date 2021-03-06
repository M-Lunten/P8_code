--Testbench for the Box-Muller implementation
Library ieee; 
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity Box_Muller_tb is
end Box_Muller_tb;

architecture behavior of Box_Muller_tb is
 
 	component Box_Muller is 
	port (
		gclk : in std_logic;
		greset : in std_logic;
		U1 : out std_logic_vector(15 downto 0);
		U2 : out std_logic_vector(15 downto 0)
	);
	end component;
	
	file file_RESULTS : text;

	constant clock_period : time := 40 ns;

	signal clk : std_logic := '0';
	signal reset : std_logic := '0';
	signal res1 : std_logic_vector(15 downto 0);
	signal res2 : std_logic_vector(15 downto 0);
	
begin
	BM: Box_Muller port map(clk, reset, res1, res2);	

	CLK_GEN : process is 
	begin 
		wait for clock_period/2;
		clk <= not clk;
	end process CLK_GEN;

	RES_GEN : process is 
	variable out_line : line;
	begin
		file_open(file_RESULTS, "output_results.txt", write_mode);
		wait for 5*clock_period;
		
		for i in 0 to 100000 loop
			write(out_line, res1, right, 16);
			write(out_line, ',', right, 1);
			write(out_line, res2, right, 16);
			write(out_line, ',', right, 1);
			writeline(file_RESULTS, out_line);
			wait for clock_period;			
		end loop;
		file_close(file_RESULTS);
		report "Finished";
		wait;
	end process;
end behavior;
	