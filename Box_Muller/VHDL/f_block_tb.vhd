--Testbench for f_block
Library ieee; 
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity f_block_tb is
end f_block_tb;

architecture behavior of f_block_tb is
 
 	component f_block is 
	port (
		U: in std_logic_vector(31 downto 0);
		clk_in: in std_logic;
		f_res: out std_logic_vector(15 downto 0)
	);
	end component;
	
	constant clock_period : time := 40 ns;

	signal U_in : std_logic_vector(31 downto 0);
	signal clk : std_logic := '0';
	signal res : std_logic_vector(15 downto 0);
	
	file file_VECTORS : text;
	file file_RESULTS : text;
begin
	
	f0 : f_block port map (U => U_in, clk_in => clk, f_res => res);
	
	CLK_GEN : process is 
	begin 
		wait for clock_period/2;
		clk <= not clk;
	end process CLK_GEN;

	process is
	variable v_ILINE     : line;
    	variable v_OLINE     : line;
	variable U_value     : std_logic_vector(31 downto 0);
	begin
		file_open(file_VECTORS, "f_block_testdata.txt",  read_mode);
		file_open(file_RESULTS, "f_block_res.txt", write_mode);

		while not endfile(file_VECTORS) loop
			readline(file_VECTORS, v_ILINE);
			read(v_ILINE, U_value);
			
			U_in <= U_value;

			wait for 3*clock_period;
			
			write(v_OLINE, res, RIGHT, 16);
			write(v_OLINE, ',', RIGHT, 1);
			writeline(file_RESULTS, v_OLINE);
		end loop;
		file_close(file_VECTORS);
    		file_close(file_RESULTS);
		report "Finished";
		wait;
	end process;
end behavior;
