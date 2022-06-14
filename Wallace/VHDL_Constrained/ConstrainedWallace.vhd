library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ConstrainedWallace is
	port (
		 clk				: in  std_logic;
		 start			: in  std_logic;
		 valid			: out std_logic := '0';
		 output			: out std_logic_vector(15 downto 0) := "0000000000000000";
		 output2			: out std_logic_vector(15 downto 0) := "0000000000000000"
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
				 muxControl		: out std_logic_vector(16 downto 0);
				 regControl		: out std_logic_vector(17 downto 0)
				 );
	end component;
	
	
	component wcRAM is
			port (
				address_a	: in STD_LOGIC_VECTOR (9 DOWNTO 0);
				address_b	: in STD_LOGIC_VECTOR (9 DOWNTO 0);
				clock			: in STD_LOGIC  := '1';
				data_a		: in STD_LOGIC_VECTOR (15 DOWNTO 0);
				data_b		: in STD_LOGIC_VECTOR (15 DOWNTO 0);
				wren_a		: in STD_LOGIC  := '0';
				wren_b		: in STD_LOGIC  := '0';
				q_a			: out STD_LOGIC_VECTOR (15 DOWNTO 0);
				q_b			: out STD_LOGIC_VECTOR (15 DOWNTO 0)
				);
	end component;
	
	
	component ALU is
			port (
				add_sub		: IN STD_LOGIC ;
				cin			: IN STD_LOGIC ;
				dataa			: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				datab			: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				result		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
				);
	end component;
	
	
	component mux4to1 is
			port (
				data0x		: IN STD_LOGIC_VECTOR  (15 DOWNTO 0);
				data1x		: IN STD_LOGIC_VECTOR  (15 DOWNTO 0);
				data2x		: IN STD_LOGIC_VECTOR  (15 DOWNTO 0);
				data3x		: IN STD_LOGIC_VECTOR  (15 DOWNTO 0);
				sel			: IN STD_LOGIC_VECTOR  (1  DOWNTO 0);
				result		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
				);
	end component;
	
	
	component LFSR_29 is
			 port (
				CLK: in std_logic;
				OUTPUT: out std_logic_vector(28 downto 0)
				);
	end component;
	
	
	-- Port maps
	signal ramEN	 	: std_logic := '0';
	signal aluState 	: std_logic := '0';
	signal aluAddSub 	: std_logic := '0';
	signal lfsrEN	 	: std_logic := '0';
	signal lfsrClk	 	: std_logic := '0';
	signal muxctrl 	: std_logic_vector(16 downto 0) := "00000000000000000";
	signal regctrl		: std_logic_vector(17 downto 0) := "000000000000000000";
	signal addrA		: std_logic_vector(9 downto 0) := "0000000000";
	signal addrB		: std_logic_vector(9 downto 0) := "0000000001";
	signal outA			: std_logic_vector(15 downto 0) := "0000000000000000";
	signal outB			: std_logic_vector(15 downto 0) := "0000000000000000";
	
	-- Registers
	signal M				: std_logic_vector(15 downto 0) := "0000000000000101";
	signal S				: std_logic_vector(15 downto 0) := "0000000000000010";
	signal O1			: std_logic_vector(15 downto 0) := "0000000000000100";
	signal O2			: std_logic_vector(15 downto 0) := "0000000000000001";
	signal TPO			: std_logic_vector(15 downto 0) := "0000000000000000";
	signal PA			: std_logic_vector(15 downto 0) := "0000000000000000";
	signal A1			: std_logic_vector(15 downto 0) := "0000000000000000";
	signal A2			: std_logic_vector(15 downto 0) := "0000000000000001";
	signal A4			: std_logic_vector(15 downto 0) := "0000000000000001";
	signal X1			: std_logic_vector(15 downto 0) := "0000000000000000";
	signal X2			: std_logic_vector(15 downto 0) := "0000000000000000";
	signal X3			: std_logic_vector(15 downto 0) := "0000000000000000";
	signal X4			: std_logic_vector(15 downto 0) := "0000000000000000";
	signal Xh1			: std_logic_vector(15 downto 0) := "0000000000000000";
	signal Xh2			: std_logic_vector(15 downto 0) := "0000000000000000";
	signal chi			: std_logic_vector(15 downto 0) := "0101101001111101";
	signal G				: std_logic_vector(15 downto 0) := "0100000000000000";
	signal Leaky1		: std_logic_vector(15 downto 0) := "0000000000000000";
	signal Leaky2		: std_logic_vector(15 downto 0) := "0000000000000000";
	signal Leaky3		: std_logic_vector(15 downto 0) := "0000000000000000";
	signal C1			: std_logic_vector(15 downto 0) := "0101101001111101";
	signal C2			: std_logic_vector(15 downto 0) := "0000010110101000";
	
	-- Connections
	signal addA			: std_logic_vector(15 downto 0) := "0000000000000000";
	signal addB			: std_logic_vector(15 downto 0) := "0000000000000000";
	signal addOut		: std_logic_vector(15 downto 0) := "0000000000000000";
	signal ALU1A		: std_logic_vector(15 downto 0) := "0000000000000000";
	signal ALU1B		: std_logic_vector(15 downto 0) := "0000000000000000";
	signal ALU1Out		: std_logic_vector(15 downto 0) := "0000000000000000";
	signal ALU1Shift	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal ALU2A		: std_logic_vector(15 downto 0) := "0000000000000000";
	signal ALU2B		: std_logic_vector(15 downto 0) := "0000000000000000";
	signal ALU2Out		: std_logic_vector(15 downto 0) := "0000000000000000";
	signal grnNum		: std_logic_vector(15 downto 0) := "0000000000000000";
	signal grnNumEx	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal mult1Part	: std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
	signal mult1Out	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal mult2A		: std_logic_vector(15 downto 0) := "0000000000000000";
	signal mult2Part	: std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
	signal m2O			: std_logic_vector(15 downto 0) := "0000000000000000";
	signal m3O			: std_logic_vector(15 downto 0) := "0000000000000000";
	signal m5O			: std_logic_vector(15 downto 0) := "0000000000000000";
	signal xor1			: std_logic_vector(15 downto 0) := "0000000000000000";
	signal xor2			: std_logic_vector(15 downto 0) := "0000000000000000";
	signal lfsrOut		: std_logic_vector(28 downto 0) := "00000000000000000000000000000";
	signal addrAres   : std_logic_vector(15 downto 0) := "0000000000000000";
	signal addrBres   : std_logic_vector(15 downto 0) := "0000000000000001";
	signal regx1_chi   : std_logic_vector(15 downto 0) := "0000000000000001";

begin

	CP1: cwControlPath port map (clkIn => clk, startIn => start, validNum => valid, ramEnable => ramEN, aluSub => aluState, lfsrEnable => lfsrEN, muxControl => muxctrl, regControl => regctrl);
	RAM1: wcRAM port map (address_a => addrA, address_b => addrB, clock => clk, data_a => ALU1Out, data_b => ALU2Out, wren_a => ramEN, wren_b => ramEN, q_a => outA, q_b => outB);
	
	ALU1: ALU port map (add_sub => aluAddSub, cin => alustate, dataa => ALU1A, datab => ALU1B, result=> ALU1Out);
	ALU2: ALU port map (add_sub => aluAddSub, cin => alustate, dataa => ALU2A, datab => ALU2B, result=> ALU2Out);
	
	mux2: mux4to1 port map (data0x => addOut, data1x => ALU1Out, data2x => ALU1Shift, data3x => "0000000000000000", sel => muxCtrl(2 downto 1), result => m2o);
	mux6: mux4to1 port map (data0x => TPO, data1x => X1, data2x => X3, data3x => C1, sel => muxCtrl(7 downto 6), result => ALU1A);
	mux7: mux4to1 port map (data0x => TPO, data1x => X1, data2x => X3, data3x => PA, sel => muxCtrl(9 downto 8), result => ALU1B);
	mux8: mux4to1 port map (data0x => TPO, data1x => X2, data2x => X4, data3x => C1, sel => muxCtrl(11 downto 10), result => ALU2A);
	mux9: mux4to1 port map (data0x => TPO, data1x => X2, data2x => X4, data3x => regx1_chi, sel => muxCtrl(13 downto 12), result => ALU2B);
	mux10: mux4to1 port map (data0x => A1, data1x => PA, data2x => xor1, data3x => "0000000000000000", sel => muxCtrl(15 downto 14), result => addrAres);
	mux11: mux4to1 port map (data0x => A2, data1x => A4, data2x => xor2, data3x => "0000000000000000", sel => muxCtrl(15 downto 14), result => addrBres);
	
	LFSR: LFSR_29 port map (CLK => lfsrClk, OUTPUT => lfsrOut);
	lfsrClk <= lfsrEN and clk;
	
	grnNumEx <= grnNum(15) & grnNum(15) & grnNum(15 downto 2);
	
	aluAddSub <= not aluState;
	ALU1Shift <= std_logic_vector(shift_right(signed(ALU1Out), 1));
	
	-- Addresses
	addrA <= addrAres(9 downto 0);
	addrB <= addrBres(9 downto 0);
	
	-- XOR
	xor1 <= addB xor M;
	xor2 <= addOut xor M;
		
	-- Adders
	addOut <= std_logic_vector(signed(addA) + signed(addB));
	
	-- Multipliers
	mult1Part <= std_logic_vector(unsigned(chi(14 downto 0) & '0') * unsigned(C2)); -- Q(6, 10)*Q(0, 16) = Q(6, 26)
	mult1Out <= '0' & mult1Part(26 downto 12); -- Q(2,14)
	mult2Part <= std_logic_vector(signed(mult2A) * signed(G)); -- Q(5, 11)*Q(2, 14) = Q(7, 25)
	grnNum <= mult2Part(31) & mult2Part(28 downto 14); -- Q(5,11)
	
	--Single select signals muxs
	process (muxCtrl, lfsrOut, TPO)
	begin
	if (muxCtrl(3) = '0') then -- mux 3
		m3o <= "000000" & lfsrOut(28 downto 19);
	else
		m3o <= TPO;
	end if;		
	end process;
	
	process(muxCtrl, O2, O1)
	begin
	if (muxCtrl(16) = '0') then -- mux 12
		mult2A <= Leaky1 ; 
	else
		mult2A <= Leaky3 ;
	end if;
	end process;
	
	process(muxCtrl, S)
	begin
	if (muxCtrl(0) = '0') then -- mux 1
		addA <= S;
	else
		addA <= std_logic_vector(shift_left(signed(S), 1));
	end if;
	end process;
	
	process(muxCtrl, O2, O1)
	begin
	if (muxCtrl(4) = '0') then -- mux 4
		addB <= O2; 
	else
		addB <= O1;
	end if;
	end process;
	
	
	process (muxCtrl, xor1, ALU2Out)
	begin
		if (muxCtrl(5) = '0') then -- mux 5
			m5o <= xor1; 
		else
			m5o <= ALU2Out;
		end if;
	end process;
	
	--register control
	process (clk)
	begin	
	
		if rising_edge(clk) then

		-- Output
			output <= grnNum;
			output2 <= mult2A;
			
		-- Register writes
			
			if (regctrl(0) = '1') then
				M <= "000000" & lfsrOut(9 downto 0);
			end if;
			
			if (regctrl(1) = '1') then
				S <= ("000000" & lfsrOut(18 downto 10) & '1');
			end if;
			
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
			
			if (regctrl(6) = '1') then
				A1 <= xor1;
			end if;
			
			if (regctrl(7) = '1') then
				A2 <= xor2;
			end if;
			
			if (regctrl(8) = '1') then
				A4 <= xor2;
			end if;
				
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
			
			if (regctrl(17) = '1') then
				Leaky1 <= ALU1Out;
				Leaky2 <= ALU2Out;
			end if;
			
			regx1_chi <= grnNumEx;
			Leaky3 <= Leaky2;
			
			
		
		end if;
	end process;
end architecture;