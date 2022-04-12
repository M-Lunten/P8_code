library ieee;
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;

entity sincos is 
port(
	i_clock : in std_logic;
	reset : in std_logic;
	data : in std_logic_vector(11 downto 0);
	sinOut : out std_logic_vector(15 downto 0);
	cosOut : out std_logic_vector(15 downto 0)
	);
end sincos;

architecture Behavioural of sincos is
	
	component sincosLUT is
	port(
		address_a		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		address_b		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q_a		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
		q_b		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	end component;

	signal m : std_logic := '0';
	signal n : std_logic := '0';
	signal d : std_logic_vector(9 downto 0) := "0000000000";
	signal dSin : std_logic_vector(9 downto 0) := "0000000000";
	signal dCos : std_logic_vector(9 downto 0) := "0000000000";
	signal dSinpLUT : std_logic_vector(9 downto 0) := "0000000000";
	signal dCospLUT : std_logic_vector(9 downto 0) := "0000000000";
	signal dSinOut : std_logic_vector(15 downto 0) := "0000000000000000";
	signal dCosOut : std_logic_vector(15 downto 0) := "0000000000000000";
	signal dSinsOut : std_logic_vector(15 downto 0);
	signal dCossOut : std_logic_vector(15 downto 0);
	
	
	
	begin
	
		c1: sincosLUT port map(dSinpLUT, dCospLUT, i_clock, dSinOut, dCosOut);
		
		process(i_clock,data) is 
			begin
				if rising_edge(i_clock) then
					m <= data(11);
					n <= data(10);
					d <= data(9 downto 0);
					dSin <= d;
					dCos <= d;
					
					if m='1' then
						dSinpLUT <= not(dSin);
					end if;
					
					if m='0' and n='0' then 
						dCospLUT <= not(dCos);
					elsif m='0'and n='1' then
						dCospLUT <= not(dCos);
					end if;
					
					if n='1' then 
						sinOut <= not(dSinOut);
					else 
						sinOut <= dSinOut;
					end if;
					
					if n='1' xor m='1' then 
						cosOut <= not(dCosOut);
					else 
						cosOut <= dCosOut;
					end if;
					
					
				end if;

		end process;
end architecture;
	