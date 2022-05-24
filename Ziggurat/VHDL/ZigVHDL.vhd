library ieee;
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity ZigVHDL is 
port(
	i_clock : in std_logic;
	reset : in std_logic;
	start : in std_logic;
	zigout : out std_logic_vector(15 downto 0);
	isVal : out std_logic
	);
end ZigVHDL;

architecture Behavioural of ZigVHDL is 
	component LFSR_33 is 
	port(
		CLK: in std_logic;
		OUTPUT: out std_logic_vector(32 downto 0)
	);
	end component;
	
	component d1Gen is 
port(
	clk : in std_logic;
	Iin : in std_logic_vector(7 downto 0);
	D1out : out std_logic
	);
end component;

component zigLUT IS
	PORT
	(
		address_a		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		address_b		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data_a		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		data_b		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		wren_a		: IN STD_LOGIC  := '0';
		wren_b		: IN STD_LOGIC  := '0';
		q_a		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
		q_b		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
END component;

component d3Gen is 
port(
	clk : in std_logic;
	Iin : in std_logic_vector(7 downto 0);
	D3out : out std_logic
	);
end component;

component d4Gen is 
port(
	clk : in std_logic;
	U1in : in std_logic_vector(15 downto 0);
	Ain : in std_logic_vector(15 downto 0);
	D4out : out std_logic
	);
end component;

component d2Gen is 
port(
	clk : in std_logic;
	Xuin : in std_logic_vector(15 downto 0);
	Xiplusin : in std_logic_vector(15 downto 0);
	D2out : out std_logic
	);
end component;

component d5Gen is 
port(
	clk : in std_logic;
	Yin : in std_logic_vector(15 downto 0);
	Fxin : in std_logic_vector(15 downto 0);
	D5out : out std_logic
	);
end component;

	
	signal genU : std_logic_vector(32 downto 0);
	signal U0 : std_logic_vector(15 downto 0) := "0000000000000000";
	signal U0_1 : std_logic_vector(15 downto 0) := "0000000000000000";
	signal U0_2 : std_logic_vector(15 downto 0) := "0000000000000000";
	
	signal U1 : std_logic_vector(15 downto 0);
	signal U1_1 : std_logic_vector(15 downto 0);
	signal U1_2 : std_logic_vector(15 downto 0);
	signal U1_3 : std_logic_vector(15 downto 0);
	signal U1_4 : std_logic_vector(15 downto 0);
	signal U1_5 : std_logic_vector(15 downto 0);
	signal U1_6 : std_logic_vector(15 downto 0);
	
	signal i : std_logic_vector(7 downto 0) := "00000000";
	signal i_1 : std_logic_vector(7 downto 0) := "00000000";
	signal i_2,i_3,i_4 : std_logic_vector(7 downto 0) := "00000000";
	
	
	signal iplus : std_logic_vector(7 downto 0) := "00000000";
	
	signal da : std_logic_vector(15 downto 0) := "0000000000000000";
	signal db : std_logic_vector(15 downto 0) := "0000000000000000";
	
	signal ea : std_logic;
	signal eb : std_logic;
	
	--signal A : 			std_logic_vector(15 downto 0) := "0000000010000001"; --Q0.16
	signal A0 : 		std_logic_vector(15 downto 0) := "0000000001111000"; --Q0.16
	signal AU : 		std_logic_vector(15 downto 0) ;--:= "0000000000000000";
	signal AUS1 : 		std_logic_vector(31 downto 0);
	signal AUS2 : 		std_logic_vector(15 downto 0);
	
	
	signal fx : 		std_logic_vector(15 downto 0) := "0000000000000000";
	
	signal Y : 			std_logic_vector(15 downto 0) := "0000000000000000";
	
	signal xi : 		std_logic_vector(15 downto 0) := "0000000000000000";
	signal xiplus : 	std_logic_vector(15 downto 0) := "0000000000000000";
	signal xiplus_1 : std_logic_vector(15 downto 0) := "0000000000000000";
	
	signal xu : 		std_logic_vector(15 downto 0) := "0000000000000000";
	signal xu_1 : 		std_logic_vector(15 downto 0) := "0000000000000000";
	signal xu_2,xu_3 : 		std_logic_vector(15 downto 0) := "0000000000000000";
	
	
	signal D1 : std_logic;
	signal D2 : std_logic;
	signal D3 : std_logic;
	signal D4 : std_logic;
	signal D5, D5_1 : std_logic;
	
	signal D1_1,D1_2,D1_3 : std_logic;
	signal D2_1,D2_2,D2_3 : std_logic;
	signal D3_1,D3_2,D3_3 : std_logic;
	signal D4_1,D4_2 : std_logic;
	
	constant area: std_logic_vector(15 downto 0) := "0000000010000001";
	
	signal fxd1,fxd2,fxd3,Yd1,Yd2 : std_logic_vector(15 downto 0);

	signal valid : std_logic;
	
	begin
		c1: LFSR_33 port map(i_clock,genU);
		c2: zigLUT port map(i,iplus,i_clock,da,db,ea,eb,xi,xiplus);
		c3: d1Gen port map(i_clock,i_2,D1);
		c4: d2Gen port map(i_clock,xu,xiplus_1,D2);
		c5: d3Gen port map(i_clock,i_2,D3);
		c6: d4Gen port map(i_clock,AU,A0,D4);
		c7: d5Gen port map(i_clock,Yd2,fxd3,D5);
		

		isVal <= valid;
		
		
		process(i_clock)
		variable AUS1 : unsigned(31 downto 0) ;--:= "00000000000000000000000000000000";
		variable AUS2 : unsigned(15 downto 0) ;--:= "0000000000000000";
		--variable area : unsigned(15 downto 0) := "0000000010000001"; --Q0.16
		begin
			if rising_edge(i_clock) then
				AUS1 := unsigned(area) * unsigned(U1_2); -- Q0.16 * Q0.16 -> Q0.32
				--AUS2 := shift_right(AUS1,16)(15 downto 0); --Q0.32>>16 -> Q0.16
				AU <= std_logic_vector(AUS1(15 downto 0));
			end if;
		end process;
		
		
		
		process(i_clock,start) is 
		
		variable YvS1 : unsigned(31 downto 0) := "00000000000000000000000000000000";
		variable YvS2 : unsigned(15 downto 0);
		variable YvS3 : unsigned(15 downto 0);
		
		variable xuVS1 : unsigned(31 downto 0) := "00000000000000000000000000000000";
		variable xuVS2 : unsigned(15 downto 0);
		
		variable fxvS1 : unsigned(31 downto 0);
		variable fxvS2 : unsigned(15 downto 0);
		variable fxvS3 : signed(31 downto 0);
		variable fxvS4 : signed(15 downto 0);
		variable fxvS5 : signed(15 downto 0);
		
		variable GRAD : signed(15 downto 0) := "1110011001110111"; -- Q1.15
		variable Yint : signed(15 downto 0) := "0110011000011110"; -- Q0.16
		variable Ymax : unsigned(15 downto 0) := "0110011000011110"; -- Q0.16
		variable YmaxMinus1 : signed(15 downto 0) := "0110001111001010"; -- Q0.16
		variable YmYmminus1 : unsigned(15 downto 0) := "0000001001010100"; -- Q0.16
		
		
			
			begin
				if rising_edge(i_clock) then
					if (start='1') then 
						U0 <= genU(15 downto 0);
						U1 <= genU(31 downto 16);
						i <= genU(23 downto 16);
						iplus <= std_logic_vector(unsigned(genU(23 downto 16) + 1));
						
						
						
						xiplus_1 <= xiplus;
						
						--U0_1 <= std_logic_vector(shift_right(unsigned(U0),3)(15 downto 0));
						U0_1 <= U0;
						U0_2 <= U0_1;
						
						--U1_1 <= std_logic_vector(shift_right(unsigned(U1),3)(15 downto 0));
						U1_1 <= U1;
						U1_2 <= U1_1;
						U1_3 <= U1_2;
						U1_4 <= U1_3;
						U1_5 <= U1_4;
						
						
						i_1 <= i;
						i_2 <= i_1;
						i_3 <= i_2;
						i_4 <= i_3;

						YvS1 := (YmYmminus1 * unsigned(U1_2));--Q0.16 x Q0.16 -> Q0.32
						YvS2 := shift_right(YvS1,16)(15 downto 0);
						
						Yd1 <= std_logic_vector(YvS2);
						
						YvS3 := Ymax - unsigned(Yd1);-- Q0.16 - Q0.16
						
						Yd2 <= std_logic_vector(YvS3);
						
						Y <= Yd2;
						
-------------------------------------
	
-------------------------------------

						xuvS1 := unsigned(xi)*unsigned(U0_1); -- Q3.13 x Q0.16 -> Q3.29
						xuvS2 := unsigned(shift_right(xuvS1,16)(15 downto 0)); -- Q3.13
						xu <= std_logic_vector(xuvS2);
						
						fxd1 <= xu;
						
						fxvS1 := (unsigned(xu)*unsigned(xu)); -- Q3.13 x Q3.13 -> 6.26
						fxvS2 := unsigned(shift_right(fxvS1,13)(15 downto 0)); -- Q3.13
						
						fxd2 <= std_logic_vector(fxvS2);
						
						fxvS3 := signed(fxd2)*signed(GRAD); -- Q3.13 x Q1.15 -> Q3.28
						fxvS4 := signed(shift_right(fxvS3,15)(15 downto 0)); -- Q3.13
						
						fxd3 <= std_logic_vector(fxvS4);
						
						fxvS5 := signed(fxd3) + signed(shift_right(YmaxMinus1,3)(15 downto 0)); -- Q3.13 + Q0.16
						fx <= std_logic_vector(fxvS5);
						
					
						D1_1 <= D1;
						D1_2 <= D1_1;
						D1_3 <= D1_2;
						D2_1 <= D2;
						D2_2 <= D2_1;
						D2_3 <= D2_2;
						D3_1 <= D3;
						D3_2 <= D3_1;
						D3_3 <= D3_2;
						D4_1 <= D4;
						D4_2 <= D4_1;
						D5_1 <= D5;
						
						
						xu_1 <= xu;
						xu_2 <= xu_1;
						xu_3 <= xu_2;
						
						if((D1_3='1') and (D2_3='1')) then 
							if(U1_5(15)='1') then
								zigout <= not(xu_3) + 1;
							else
								zigout <= xu_3;
							end if;
							valid <= '1';
							
						elsif ((D3_3='1') and (D4_2 = '1')) then
							if(U1_5(15)='1') then
								zigout <= not(xu_3) + 1;
							else
								zigout <= xu_3;
							end if;
							valid <= '1';
							
						elsif ((D1_3='0') and (D3_3='0') and (D5='1')) then	
							if(U1_5(15)='1') then
								zigout <= not(xu_3) + 1;
							else
								zigout <= xu_3;
							end if;
							valid <= '1';
							
						else 
							
							valid <= '0';
						end if;
					end if;
				end if;
			
		end process;
end architecture;