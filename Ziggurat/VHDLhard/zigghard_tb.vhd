--Testbench for the Ziggurat implementation
Library ieee; 
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity zigghard_tb is
end zigghard_tb;

architecture behavior of zigghard_tb is
 
 	component ziggHard is
	port(
	clk,start,reset: in std_logic;
	ziggoutH : out std_logic_vector(15 downto 0);
	isVal : out std_logic;
	isOut : out std_logic_vector(20 downto 0);
	iterO : out std_logic_vector(20 downto 0)
	);
	end component;
	
	file file_RESULTS,v_res : text;

	constant clock_period : time := 40 ns;

	signal clk : std_logic := '0';
	signal st : std_logic := '1';
	signal reset : std_logic := '0';
	signal res1 : std_logic_vector(15 downto 0);
	signal v : std_logic;
	signal vc : unsigned(19 downto 0) := "00000000000000000000";
	signal vctemp : unsigned(19 downto 0);
	signal o,itero : std_logic_vector(20 downto 0);
	

begin
	ZIG: ziggHard port map(clk,st,reset,res1,v,o,itero);	
	
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
		wait for 20*clock_period;
		
		for i in 0 to 1000000 loop
		write(v_line,v,right,1);
		write(v_line, ',', right, 1);
		writeline(v_res,v_line);
		vctemp <= vc;
			if(v = '1') then
				write(out_line, res1, right, 16);
				write(out_line, ',', right, 1);
				writeline(file_RESULTS, out_line);
				vc <= vctemp + "00000000000000000001";
			end if;
			wait for 2*clock_period;			
		end loop;
		file_close(file_RESULTS);
		report "Finished";
		wait;
	end process;
	
end behavior;
	