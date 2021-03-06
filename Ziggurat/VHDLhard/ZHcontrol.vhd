library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ZHcontrol is 
	port(
	iclock : in std_logic;
	start,reset : in std_logic;
	D1ctrl : in std_logic;
	D2ctrl : in std_logic;
	D3ctrl : in std_logic;
	D4ctrl : in std_logic;
	D5ctrl : in std_logic;
	
	
	mux1_3 : out std_logic_vector(1 downto 0);
	mux4_6 : out std_logic_vector(1 downto 0);
	mux7_9 : out std_logic_vector(1 downto 0);
	mux10_12 : out std_logic_vector(1 downto 0);
	mux13_15 : out std_logic_vector(1 downto 0);
	mux16_17 : out std_logic_vector(1 downto 0);
	mux18_19 : out std_logic_vector(1 downto 0) := "00";
	mux20_21 : out std_logic_vector(1 downto 0) := "00";
	mux22_23 : out std_logic_vector(1 downto 0);
	
	isVal : out std_logic;
	isOut : out std_logic_vector(20 downto 0);
	StateOut : out std_logic_vector(3 downto 0);
	iterOut : out std_logic_vector(20 downto 0);
	V1en : out std_logic;
	
	
	V2en,V3en,V4en,U0en,Xuen,Xiplusen,D1en,D2en,D3en,D4en,D5en,ziggen : out std_logic
	);
end ZHcontrol;

architecture behavioural of ZHcontrol is 
	
	signal State : std_logic_vector(3 downto 0);

	
	
	component qCounter is
	port(
		iclock : in std_logic;
		start : in std_logic;
		reset : in std_logic;
		D1qc : in std_logic;
		D2qc : in std_logic;
		D3qc : in std_logic;
		D4qc : in std_logic;
		D5qc : in std_logic;
		S : out std_logic_vector(3 downto 0)
	);
end component;

begin 
	Q: qCounter port map(iclock,start,reset,D1ctrl,D2ctrl,D3ctrl,D4ctrl,D5ctrl,State);
	
	
	
	
	StateOut <= State;
	
	process(iclock)
	variable outcount : unsigned(20 downto 0) := "000000000000000000000";
	variable isouttemp : unsigned(20 downto 0) := "000000000000000000000";
	
	variable itercount : unsigned(20 downto 0) := "000000000000000000000";
	variable itertemp : unsigned(20 downto 0) := "000000000000000000000";
	
	begin 
	outcount := isouttemp;
		if falling_edge(iclock) then 
			case State is 
				when "0000" =>
				when "0001" => --1
					
					
					mux16_17 <= "01"; --xi assign
					mux18_19 <= "01";-- u1 assign
					mux20_21 <= "01";-- i assign
					mux7_9 <= "01"; -- xi+1 calc and assign
					
					
				
				when "0010" => --2
					
					
				
					
					mux22_23 <= "01"; --U1A assigned
					
					mux1_3 <= "01"; -- calculating U1A
					mux4_6 <= "01"; -- calculating xu
					mux10_12 <= "01"; -- calculating D3
					mux13_15 <= "01"; -- calculating D1
					--isVal <= '0';
					iterOut <= std_logic_vector(itercount);
					
				when "0011" =>--3
					
					
					mux13_15 <= "10"; -- calculating D2
					mux18_19 <= "01";-- u1 used
					
					
				when "0100" =>--4
					
					
					
				when "0101" =>--5
					
					mux10_12 <= "10"; -- calculating D4
					
				when "0110" =>--6
					
					
					
				when "0111" =>--7
					
					
					mux20_21 <= "10"; -- ys1 assigned
					mux22_23 <= "10"; -- xusq assigned
					
					mux1_3 <= "10"; -- ys1 calculated
					mux4_6 <= "11"; -- xusq calculated
					
				when "1000" =>--8
					
					
					
					mux16_17 <= "11"; -- Y assigned
					mux18_19 <= "10"; -- fxs1 assigned
					
					
					mux4_6 <= "10"; -- fxs1 calculated
					mux7_9 <= "10"; -- y calculated
					
				when "1001" =>--9
					
					
					mux18_19 <= "10"; -- fxs1 used
					mux20_21 <= "11"; -- fx assigned
					
					mux7_9 <= "11"; -- fx calculated
					
				when "1010" =>--10
					mux16_17 <= "11"; -- Y maintained
					mux20_21 <= "11"; -- fx maintained
					
					mux13_15 <= "11"; -- calculating D5
					
				when "1011" =>--11
					
					
				when others => 
					
			end case;
			
			if State = "0001" or State = "0100" or State = "0110" or State = "1000" or State = "1011" then
				V1en <= '1';
			else 
				V1en <= '0';
			end if;
			
			if State = "0001" or State = "1000" then 
				V2en <= '1';
			else 
				V2en <= '0';
			end if;
			
			if State = "0001" or State = "0111" or State = "1001" then 
				V3en <= '1';
			else 
				V3en <= '0';
			end if;
			
			if State = "0010" or State = "0111" then 
				V4en <= '1';
			else 
				V4en <= '0';
			end if;
			
			if State = "0001" then 
				U0en <= '1';
				xiplusen <= '1';
				
				itertemp := itercount;
			else 
				U0en <= '0';
				xiplusen <= '0';
			end if;
			
			if State = "0010" then 
				D1en <= '1';
				D3en <= '1';
				xuen <= '1';
				itercount := itertemp + 1;
			else 
				D1en <= '0';
				D3en <= '0';
				xuen <= '0';
			end if;
			
			if State = "0011" then 
				D2en <= '1';
			else 
				D2en <= '0';
			end if;
			
			if State = "0101" then 
				D4en <= '1';
			else 
				D4en <= '0';
			end if;
			
			if State = "1010" then 
				D5en <= '1';
			else 
				D5en <= '0';
			end if;
			
			if State = "0100" and D2ctrl = '1' then  
				ziggen <= '1';
				isouttemp := outcount + 1;
				isOut <= std_logic_vector(isouttemp);
			elsif State = "0110" and D4ctrl = '1' then
				ziggen <= '1';
				isouttemp := outcount + 1;
				isOut <= std_logic_vector(isouttemp);
			elsif State = "1011" and D5ctrl = '1' then
				ziggen <= '1';
				isouttemp := outcount + 1;
				isOut <= std_logic_vector(isouttemp);
			else
				ziggen <= '0';
			end if;
			
			
			
			
		end if;
	end process;
end architecture;
	
	