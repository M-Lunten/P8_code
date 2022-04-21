library ieee;
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

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

	signal m0 : std_logic;
	signal n0 : std_logic;
	signal a1 : std_logic;
	signal b1 : std_logic;
	signal c2 : std_logic;
	signal d2 : std_logic;
	signal e3 : std_logic;
	signal f3 : std_logic;
	signal g4 : std_logic;
	signal h4 : std_logic;
	signal d : std_logic_vector(9 downto 0) := "0000000000";
	
	signal dSinpLUT : std_logic_vector(9 downto 0) := "0000000000";
	signal dCospLUT : std_logic_vector(9 downto 0) := "0000000000";
	signal dSinOut : std_logic_vector(15 downto 0) := "0000000000000000";
	signal dCosOut : std_logic_vector(15 downto 0) := "0000000000000000";
	
	
	
	
	
	begin
	
		c1: sincosLUT port map(dSinpLUT, dCospLUT, i_clock, dSinOut, dCosOut);
		
		process(i_clock) is 
		
			
			begin
				if rising_edge(i_clock) then
					m0 <= data(11);
					n0 <= data(10);
					d <= data(9 downto 0);
					
					if (m0='1') then 
						dSinpLUT <= std_logic_vector((1023-unsigned(d)));
					elsif (m0='0') then 
						dSinpLUT <= d;
					end if;
					
					if((m0='0') and (n0='0')) or ((m0='0') and (n0='1')) then 
						dCospLUT <= std_logic_vector((1023-unsigned(d)));
					else
						dCosPLUT <= d;
					end if;
					
					
					a1 <= m0;
					b1 <= n0;
					
					c2 <= a1;
					d2 <= b1;
					
					e3 <= c2;
					f3 <= d2;
					
					if (f3='1') then 
						sinOut <= not(dSinOut) + 1;
					elsif (f3='0') then 
						sinOut <= dsinOut;
					end if;
					
					if((e3='0') and (f3='1')) or ((e3='1') and (f3='0')) then 
						cosOut <= not(dCosOut) + 1;
					else
						cosOut <= dCosOut;
					end if;
					
					
					
					g4 <= e3;
					h4 <= f3;
					
				
					
				end if;

		end process;
end architecture;
	