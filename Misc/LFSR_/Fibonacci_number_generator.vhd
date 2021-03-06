library ieee;
use ieee.std_logic_1164.all;

entity Fibonacci_number_generator is 
	port ( 
		clock 	:in  std_logic;
		fibo	:out std_logic_vector(3 downto 0) := "0100"
	);
end Fibonacci_number_generator;

architecture behavior of Fibonacci_number_generator is
	signal q_values : std_logic_vector(3 downto 0) := "0100";
begin 
	fibo <= q_values;
	process(clock)
	begin
		if rising_edge(clock) then
			q_values(0) <= q_values(3);
			q_values(1) <= (q_values(1) xnor q_values(0));
			q_values(2) <= (q_values(2) xnor q_values(1));
			q_values(3) <= (q_values(3) xnor q_values(2));
		end if;
	end process;
end behavior;