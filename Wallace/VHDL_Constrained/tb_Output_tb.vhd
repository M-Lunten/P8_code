Library ieee; 
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity tb_output_tb is
end tb_output_tb;

architecture behavior of tb_output_tb is
 
 component ConstrainedWallace is
			port (
			 clk			: in  std_logic;
			 start			: in  std_logic;
			 valid			: out std_logic;
			 output			: out std_logic_vector(15 downto 0);
			 output2		: out std_logic_vector(15 downto 0)
			 );
	end component;
	
	file file_RESULTS : text;

	constant clock_period : time := 20 ns;

	signal clkout : std_logic := '0';
	signal startout : std_logic := '0';
	signal validout : std_logic;
	signal outout : std_logic_vector(15 downto 0);
	signal outout2 : std_logic_vector(15 downto 0);
	
begin
	CW: ConstrainedWallace port map(clkout, startout, validout, outout, outout2);	

	CLK_GEN : process is 
	begin 
		wait for clock_period/2;
		clkout <= not clkout;
	end process CLK_GEN;

	RES_GEN : process is 
	variable out_line : line;
	begin
		file_open(file_RESULTS, "output_results.txt", write_mode);
		startout <= '1';
		wait for 7*clock_period;
		
		for i in 0 to 200000 loop
			if validout = '1' then
				write(out_line, outout, right, 16);
				write(out_line, ',', right, 1);
				writeline(file_RESULTS, out_line);
				wait for clock_period;	
			else
				
				wait for clock_period;	
			end if;		
		end loop;
		file_close(file_RESULTS);
		report "Finished";
		wait;
	end process;
end behavior;
	
