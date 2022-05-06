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
	
	signal U1 : std_logic_vector(15 downto 0) := "0000000000000000";
	signal U1_1 : std_logic_vector(15 downto 0) := "0000000000000000";
	signal U1_2 : std_logic_vector(15 downto 0) := "0000000000000000";
	signal U1_3 : std_logic_vector(15 downto 0) := "0000000000000000";
	signal U1_4 : std_logic_vector(15 downto 0) := "0000000000000000";
	signal U1_5 : std_logic_vector(15 downto 0) := "0000000000000000";
	signal U1_6 : std_logic_vector(15 downto 0) := "0000000000000000";
	
	signal i : std_logic_vector(7 downto 0) := "00000000";
	signal i_1 : std_logic_vector(7 downto 0) := "00000000";
	signal i_2 : std_logic_vector(7 downto 0) := "00000000";
	
	
	signal iplus : std_logic_vector(7 downto 0) := "00000000";
	
	signal da : std_logic_vector(15 downto 0) := "0000000000000000";
	signal db : std_logic_vector(15 downto 0) := "0000000000000000";
	
	signal ea : std_logic;
	signal eb : std_logic;
	
	signal A : std_logic_vector(15 downto 0) := "0000000000001111";
	signal fx : std_logic_vector(15 downto 0) := "0000000000000000";
	
	signal Y : std_logic_vector(15 downto 0) := "0000000000000000";
	
	signal xi : std_logic_vector(15 downto 0) := "0000000000000000";
	signal xiplus : std_logic_vector(15 downto 0) := "0000000000000000";
	signal xiplus_1 : std_logic_vector(15 downto 0) := "0000000000000000";
	
	signal xu : std_logic_vector(15 downto 0) := "0000000000000000";
	signal xu_1 : std_logic_vector(15 downto 0) := "0000000000000000";
	signal xu_2 : std_logic_vector(15 downto 0) := "0000000000000000";
	
	signal D1 : std_logic;
	signal D2 : std_logic;
	signal D3 : std_logic;
	signal D4 : std_logic;
	signal D5 : std_logic;
	
	signal D1_1 : std_logic;
	signal D2_1 : std_logic;
	signal D3_1 : std_logic;
	signal D4_1 : std_logic;
	
	
	
	
	signal valid : std_logic;
	
	begin
		c1: LFSR_33 port map(i_clock,genU);
		c2: d1Gen port map(i_clock,i_2,D1);
		c3: zigLUT port map(i,iplus,i_clock,da,db,ea,eb,xi,xiplus);
		c4: d3Gen port map(i_clock,i_2,D3);
		c5: d4Gen port map(i_clock,U1_2,A,D4);
		c6: d2Gen port map(i_clock,xu,xiplus_1,D2);
		c7: d5Gen port map(i_clock,Y,fx,D5);
		

		isVal <= valid;
		process(i_clock,start) is 
		
		variable YvS1 : signed(31 downto 0) := "00000000000000000000000000000000";
		variable YvS2 : signed(15 downto 0);
		variable YvS3 : signed(15 downto 0);
		
		variable xuVS1 : signed(31 downto 0) := "00000000000000000000000000000000";
		variable xuVS2 : signed(15 downto 0);
		
		variable fxvS1 : signed(31 downto 0);
		variable fxvS2 : signed(15 downto 0);
		variable fxvS3 : signed(31 downto 0);
		variable fxvS4 : signed(15 downto 0);
		variable fxvS5 : signed(15 downto 0);
		
		variable GRAD : signed(15 downto 0) := "1111100110011110";
		variable Yint : signed(15 downto 0) := "0000110011000100";
		variable Ymax : signed(15 downto 0) := "0000110011000100";
		variable YmaxMinus1 : signed(15 downto 0) := "0000110001111001";
		variable YmYmminus1 : signed(15 downto 0) := "0000000001001011";

			
			begin
				if rising_edge(i_clock) then
					if (start='1') then 
					
					U0 <= genU(15 downto 0);
					U1 <= genU(31 downto 16);
					i <= genU(23 downto 16);
					iplus <= std_logic_vector(unsigned(genU(23 downto 16) + 1));
					
					
					
					xiplus_1 <= xiplus;
					
					U0_1 <= std_logic_vector(shift_right(unsigned(U0),3)(15 downto 0));
					U0_2 <= U0_1;
					
					U1_1 <= std_logic_vector(shift_right(unsigned(U1),3)(15 downto 0));
					U1_2 <= U1_1;
					U1_3 <= U1_2;
					
					
					i_1 <= i;
					i_2 <= i_1;
					
					YvS1 := (YmYmminus1 * signed(U1_2));--3by13 x 3by13 -> 6by26
					YvS2 := signed(shift_right(YvS1,16)(15 downto 0));
					
					YvS3 := YvS2  + YmaxMinus1;--3by13 + 3by13
					Y <= std_logic_vector(YvS3);
					
					xuvS1 := signed(xi)*signed(U0_1); -- 3by13 x 3by13 -> 6by26
					xuvS2 := signed(shift_right(xuvS1,16)(15 downto 0));
					xu <= std_logic_vector(xuvS2);
					
					fxvS1 := (xuvS2*xuvS2); -- 3by13 x 3by13 -> 6by26
					fxvS2 := signed(shift_right(fxvS1,16)(15 downto 0));
					fxvS3 := fxvS2*GRAD; -- 3by13 x 3by 13 -> 6by26
					fxvS4 := signed(shift_right(fxvS3,16)(15 downto 0));
					fxvS5 := fxvS4 + YmaxMinus1; -- 3by13 + 3by13
					fx <= std_logic_vector(fxvS5);
					
					D1_1 <= D1;
					D2_1 <= D2;
					D3_1 <= D3;
					D4_1 <= D4;
					
					xu_1 <= xu;
					
					
					if((D1_1='1') and (D2_1='1') and (D3_1='0') and (D4_1='0') and (D5='0')) then 
						if(U1(15)='1') then
							zigout <= not(xu_1) + 1;
						else
							zigout <= xu_1;
						end if;
						valid <= '1';
						
					elsif ((D1_1='0') and (D2_1='0') and (D3_1='1') and (D4_1 = '1') and (D5='0')) then
						if(U1(15)='1') then
							zigout <= not(xu_1) + 1;
						else
							zigout <= xu_1;
						end if;
						valid <= '1';
						
					elsif ((D1_1='0') and (D2_1='0') and (D3_1='0') and (D4_1 = '0') and (D5='1')) then	
						if(U1(15)='1') then
							zigout <= not(xu_1) + 1;
						else
							zigout <= xu_1;
						end if;
						valid <= '1';
						
					else 
						
						valid <= '0';
					end if;
					
					
					
					
					
					
					
					end if;
					end if;
			
		end process;
		

end architecture;