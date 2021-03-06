--Testbench for the Ziggurat implementation
Library ieee; 
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity ziggurat_tb is
end ziggurat_tb;

architecture behavior of ziggurat_tb is
 
 	component ZigVHDL is 
	port (
		i_clock : in std_logic;
		reset : in std_logic;
		start : in std_logic;
		zigout : out std_logic_vector(15 downto 0);
		isVal : out std_logic
	);
	end component;
	
	file file_RESULTS,v_res : text;

	constant clock_period : time := 40 ns;

	signal clk : std_logic := '0';
	signal st : std_logic := '1';
	signal reset : std_logic := '0';
	signal res1 : std_logic_vector(15 downto 0);
	signal v : std_logic;
	
begin
	ZIG: ZigVHDL port map(clk, reset, st, res1,v);	
	
	CLK_GEN : process is 
	begin 
		wait for clock_period/2;
		clk <= not clk;
	end process CLK_GEN;
	
	
	RES_GEN : process is 
	variable out_line,v_line : line;
	begin
		file_open(file_RESULTS, "output_results.txt", write_mode);
		file_open(v_res,"validate_results.csv",write_mode);
		wait for 5*clock_period;
		
		for i in 0 to 1000 loop
		write(v_line,v,right,1);
		write(v_line, ',', right, 1);
		writeline(v_res,v_line);
			if(v = '1') then
				write(out_line, res1, right, 16);
				write(out_line, ',', right, 1);
				writeline(file_RESULTS, out_line);
			end if;
			wait for clock_period;			
		end loop;
		file_close(file_RESULTS);
		report "Finished";
		wait;
	end process;
	
end behavior;
	