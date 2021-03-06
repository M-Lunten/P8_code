library ieee;
use ieee.std_logic_1164.all;
 
entity fibo_tb is
end fibo_tb;
 
architecture behave of fibo_tb is
  signal r_SIG1   : std_logic := '0';
  signal w_RESULT : std_logic_vector(3 downto 0);
   
  component Fibonacci_number_generator is
    port ( 
		clock 	:in  std_logic;
		fibo	:out std_logic_vector(3 downto 0));
  end component Fibonacci_number_generator;
   
begin
   
  Fibonacci_number_generator_INST : Fibonacci_number_generator
    port map (
      clock   => r_SIG1,
      fibo => w_RESULT
      );
 
  process is
  begin
    r_SIG1 <= '0';
    wait for 10 ns;
    r_SIG1 <= '1';
    wait for 10 ns;
  end process;
     
end behave;