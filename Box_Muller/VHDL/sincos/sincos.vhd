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

	signal m : std_logic;
	signal n : std_logic;
	signal ma : std_logic;
	signal na : std_logic;
	signal mb : std_logic;
	signal nb : std_logic;
	signal mc : std_logic;
	signal nc : std_logic;
	signal md : std_logic;
	signal nd : std_logic;
	signal dsc : std_logic_vector(9 downto 0) := "0000000000";
	
	signal dSinpLUT : std_logic_vector(9 downto 0) := "0000000000";
	signal dCospLUT : std_logic_vector(9 downto 0) := "0000000000";
	signal dSinOut : std_logic_vector(15 downto 0) := "0000000000000000";
	signal dCosOut : std_logic_vector(15 downto 0) := "0000000000000000";
	
	
	
	
	
	begin
	
		c1: sincosLUT port map(dSinpLUT, dCospLUT, i_clock, dSinOut, dCosOut);
		
		process(i_clock) is 
		
			
			begin
				if rising_edge(i_clock) then
					m <= data(11);
					n <= data(10);
					dsc <= data(9 downto 0);
					
					if (m='1') then 
						dSinpLUT <= std_logic_vector((1023-unsigned(dsc)));
					elsif (m='0') then 
						dSinpLUT <= dsc;
					end if;
				
					if((m='0') and (n='0')) or ((m='0') and (n='1')) then 
						dCospLUT <= std_logic_vector((1023-unsigned(dsc)));
					else
						dCosPLUT <= dsc;
					end if;
					
					
					ma <= m;
					na <= n;
					
					mb <= ma;
					nb <= na;
					
					mc <= mb;
					nc <= nb;
					
					if (nc='1') then 
						sinOut <= not(dSinOut) + 1;
					elsif (nc='0') then 
						sinOut <= dsinOut;
					end if;
					
					if((mc='0') and (nc='1')) or ((mc='1') and (nc='0')) then 
						cosOut <= not(dCosOut) + 1;
					else
						cosOut <= dCosOut;
					end if;
					
					
					
					md <= mc;
					nd <= nc;
					
				
					
				end if;

		end process;
end architecture;
	