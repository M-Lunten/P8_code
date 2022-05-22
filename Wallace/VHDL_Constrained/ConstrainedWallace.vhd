library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--- TODO
--
-- RAM
-- chi multiplier
-- Leaky Bucket
-- Mux 3 LFSR
-- LFSR
-- xor1 is wrong?
-- Mux 10 & 11
------------------------------

entity ConstrainedWallace is
	port (
		 clk				: in  std_logic;
		 start			: in  std_logic;
		 valid			: out std_logic := '0';
		 output			: out std_logic_vector(15 downto 0) := "0000000000000000"
		 );
		 
end; 


architecture rtl of ConstrainedWallace is

	component cwControlPath is
			port (
				 clkIn			: in  std_logic;
				 startIn			: in  std_logic;
				 validNum		: out std_logic;
				 ramEnable		: out std_logic;
				 aluSub  		: out std_logic;
				 lfsrEnable		: out std_logic;
				 muxControl		: out std_logic_vector(15 downto 0);
				 regControl		: out std_logic_vector(17 downto 0)
				 );
	end component;
	
	component wcRAM is
			port (
				address_a	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
				address_b	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
				clock			: IN STD_LOGIC  := '1';
				data_a		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				data_b		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				wren_a		: IN STD_LOGIC  := '0';
				wren_b		: IN STD_LOGIC  := '0';
				q_a			: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
				q_b			: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
				);
	end component;
	
	-- Port maps
	signal ramEN	 	: std_logic;
	signal aluState 	: std_logic;
	signal lfsrEN	 	: std_logic;
	signal aEN			: std_logic;
	signal bEN			: std_logic;
	signal muxctrl 	: std_logic_vector(15 downto 0);
	signal regctrl		: std_logic_vector(17 downto 0);
	signal addrA		: std_logic_vector(9  downto 0);
	signal addrB		: std_logic_vector(9  downto 0);
	signal outA			: std_logic_vector(15 downto 0);
	signal outB			: std_logic_vector(15 downto 0);
	
	-- Registers
	signal M				: std_logic_vector(15 downto 0);
	signal S				: std_logic_vector(15 downto 0);
	signal O1			: std_logic_vector(15 downto 0);
	signal O2			: std_logic_vector(15 downto 0);
	signal TPO			: std_logic_vector(15 downto 0);
	signal PA			: std_logic_vector(15 downto 0);
	signal A1			: std_logic_vector(15 downto 0);
	signal A2			: std_logic_vector(15 downto 0);
	signal A4			: std_logic_vector(15 downto 0);
	signal X1			: std_logic_vector(15 downto 0);
	signal X2			: std_logic_vector(15 downto 0);
	signal X3			: std_logic_vector(15 downto 0);
	signal X4			: std_logic_vector(15 downto 0);
	signal Xh1			: std_logic_vector(15 downto 0);
	signal Xh2			: std_logic_vector(15 downto 0);
	signal chi			: std_logic_vector(15 downto 0);
	signal G				: std_logic_vector(15 downto 0);
	signal Leaky1		: std_logic_vector(15 downto 0);
	signal Leaky2		: std_logic_vector(15 downto 0);
	signal Leaky3		: std_logic_vector(15 downto 0);
	signal C1			: std_logic_vector(15 downto 0) := "0101101001111101";
	signal C2			: std_logic_vector(15 downto 0) := "0000010110101000";
	
	-- Connections
	signal addA			: std_logic_vector(15 downto 0);
	signal addB			: std_logic_vector(15 downto 0);
	signal addOut		: std_logic_vector(15 downto 0);
	signal ALU1A		: std_logic_vector(15 downto 0);
	signal ALU1B		: std_logic_vector(15 downto 0);
	signal ALU1Out		: std_logic_vector(15 downto 0);
	signal ALU2A		: std_logic_vector(15 downto 0);
	signal ALU2B		: std_logic_vector(15 downto 0);
	signal ALU2Out		: std_logic_vector(15 downto 0);
	signal grnNum		: std_logic_vector(15 downto 0);
	signal mult1A		: std_logic_vector(15 downto 0);
	signal mult1B		: std_logic_vector(15 downto 0);
	signal mult1Out	: std_logic_vector(15 downto 0);
	signal mult2A		: std_logic_vector(15 downto 0);
	signal mult2B		: std_logic_vector(15 downto 0);
	signal mult2Out	: std_logic_vector(15 downto 0);
	signal m2O			: std_logic_vector(15 downto 0);
	signal m3O			: std_logic_vector(15 downto 0);
	signal m5O			: std_logic_vector(15 downto 0);
	signal xor1			: std_logic_vector(15 downto 0);
	signal xor2			: std_logic_vector(15 downto 0);

begin

	CP1: cwControlPath port map (clkIn => clk, startIn => start, validNum => valid, ramEnable => ramEN, aluSub => aluState, lfsrEnable => lfsrEN, muxControl => muxctrl, regControl => regctrl);
	RAM1: wcRAM port map (address_a => addrA, address_b => addrB, clock => clk, data_a => ALU1Out, data_b => ALU2Out, wren_a => aEN, wren_b => bEN, q_a => outA, q_b => outB);
	
	process (clk)
	
	begin
	
		output <= grnNum;
		
	-- XOR
		xor1 <= addOut xor M; -- Wrong?
		xor2 <= addOut xor M;
	
	-- Adders
		addOut <= std_logic_vector(signed(addA) + signed(addB));
		
		if (aluState = '0') then -- sub or add
			ALU1Out <= std_logic_vector(signed(ALU1A) + signed(ALU1B));
			ALU2Out <= std_logic_vector(signed(ALU2A) + signed(ALU2B));
		else
			ALU1Out <= std_logic_vector(signed(ALU1A) - signed(ALU1B));
			ALU2Out <= std_logic_vector(signed(ALU2A) - signed(ALU2B));
		end if;
		
		
	-- Multiplier
		
		
	
	
		if rising_edge(clk) then			
			
			
		-- Register writes
			
--			if (regctrl(0) = '1') then
--				M <= ;
--			end if;
--			
--			if (regctrl(1) = '1') then
--				S <= ;
--			end if;
			
			if (regctrl(2) = '1') then
				O1 <= m3o;
			end if;
			
			if (regctrl(3) = '1') then
				O2 <= addOut;
			end if;
			
			if (regctrl(4) = '1') then
				TPO <= m2o;
			end if;
			
			if (regctrl(5) = '1') then
				PA <=m5o ;
			end if;
			
--			if (regctrl(6) = '1') then
--				A1 <= ;
--			end if;
--			
--			if (regctrl(7) = '1') then
--				A2 <= ;
--			end if;
--			
--			if (regctrl(8) = '1') then
--				A4 <= ;
--			end if;
				
			if (regctrl(9) = '1') then
				X1 <= Xh1;
			end if;
			
			if (regctrl(10) = '1') then
				X2 <= Xh2;
			end if;
			
			if (regctrl(11) = '1') then
				X3 <= Xh1;
			end if;
			
			if (regctrl(12) = '1') then
				X4 <= Xh2;
			end if;
			
			if (regctrl(13) = '1') then
				Xh1 <= outA;
			end if;
			
			if (regctrl(14) = '1') then
				Xh2 <= outB;
			end if;
			
			if (regctrl(15) = '1') then
				chi <= ALU2Out;
			end if;
			
			if (regctrl(16) = '1') then
				G <= mult1Out;
			end if;
			
--			if (regctrl(17) = '1') then
--				Leaky1
--			end if;
			
			
			
		-- Mux control
		
			if (muxCtrl(0) = '0') then -- mux 1
				addA <= S;
			else
				addA <= std_logic_vector(shift_left(signed(S), 1));
			end if;
					
			case muxCtrl(2 downto 1) is -- Mux 2
				when "00" => m2o <= addOut;
				when "01" => m2o <= ALU1Out;
				when "10" => m2o <= std_logic_vector(shift_right(signed(ALU1Out), 1));
				when others =>
			end case;
			
			if (muxCtrl(3) = '0') then -- mux 3
				-- LSFR 
			else
				m3o <= TPO;
			end if;
			
			if (muxCtrl(4) = '0') then -- mux 4
				addB <= O2; 
			else
				addB <= O1;
			end if;
			
			if (muxCtrl(5) = '0') then -- mux 5
				m5o <= xor1; 
			else
				m5o <= ALU2Out;
			end if;
			
			case muxCtrl(7 downto 6) is -- Mux 6
				when "00" => ALU1A <= TPO;
				when "01" => ALU1A <= X1;
				when "10" => ALU1A <= X3;
				when others =>
			end case;
			
			case muxCtrl(9 downto 8) is -- Mux 7
				when "00" => ALU1B <= TPO;
				when "01" => ALU1B <= X1;
				when "10" => ALU1B <= X3;
				when "11" => ALU1B <= PA;
				when others =>
			end case;
			
			case muxCtrl(11 downto 10) is -- Mux 8
				when "00" => ALU2A <= TPO;
				when "01" => ALU2A <= X2;
				when "10" => ALU2A <= X4;
				when "11" => ALU2A <= C1;
				when others =>
			end case;
			
			case muxCtrl(13 downto 12) is -- Mux 9
				when "00" => ALU2B <= TPO;
				when "01" => ALU2B <= X2;
				when "10" => ALU2B <= X4;
				when "11" => ALU2B <= grnNum;
				when others =>
			end case;
			
--			if (muxCtrl(14) = '0') then -- mux 10
--				addrA <= ; 
--			else
--				addrA <= ;
--			end if;
--			
--			if (muxCtrl(14) = '0') then -- mux 11
--				addrB <= ; 
--			else
--				addrB <= ;
--			end if;
			
			if (muxCtrl(15) = '0') then -- mux 12
				mult2A <= Leaky1 ; 
			else
				mult2A <= Leaky3 ;
			end if;
		
		end if;
	end process;
end architecture;