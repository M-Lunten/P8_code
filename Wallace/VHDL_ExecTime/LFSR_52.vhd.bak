--Linear Feedback Shift Register with 23 skip-ahead.
Library ieee;
Use ieee.std_logic_1164.all;
entity LFSR_52 is
	 port (
		CLK: in std_logic;
		OUTPUT: out std_logic_vector(51 downto 0)
	);
end LFSR_52;

architecture Behavioral of LFSR_52 is
	signal shift_register : std_logic_vector(51 downto 0) := "0000000000000000000000000000000000000010011100101001";
begin

-- ShiftRegister
	process(CLK)
	begin
		if (CLK'event and CLK  = '1') then
			shift_register(0) <= not(shift_register(26) xor shift_register(29));
			shift_register(1) <= not(shift_register(27) xor shift_register(30));
			shift_register(2) <= not(shift_register(28) xor shift_register(31));
			shift_register(3) <= not(shift_register(29) xor shift_register(32));
			shift_register(4) <= not(shift_register(30) xor shift_register(33));
			shift_register(5) <= not(shift_register(31) xor shift_register(34));
			shift_register(6) <= not(shift_register(32) xor shift_register(35));
			shift_register(7) <= not(shift_register(33) xor shift_register(36));
			shift_register(8) <= not(shift_register(34) xor shift_register(37));
			shift_register(9) <= not(shift_register(35) xor shift_register(38));
			shift_register(10) <= not(shift_register(36) xor shift_register(39));
			shift_register(11) <= not(shift_register(37) xor shift_register(40));
			shift_register(12) <= not(shift_register(38) xor shift_register(41));
			shift_register(13) <= not(shift_register(39) xor shift_register(42));
			shift_register(14) <= not(shift_register(40) xor shift_register(43));
			shift_register(15) <= not(shift_register(41) xor shift_register(44));
			shift_register(16) <= not(shift_register(42) xor shift_register(45));
			shift_register(17) <= not(shift_register(43) xor shift_register(46));
			shift_register(18) <= not(shift_register(44) xor shift_register(47));
			shift_register(19) <= not(shift_register(45) xor shift_register(48));
			shift_register(20) <= not(shift_register(46) xor shift_register(49));
			shift_register(21) <= not(shift_register(47) xor shift_register(50));
			shift_register(22) <= not(shift_register(48) xor shift_register(51));
			shift_register(23) <= shift_register(0);
			shift_register(24) <= shift_register(1);
			shift_register(25) <= shift_register(2);
			shift_register(26) <= shift_register(3);
			shift_register(27) <= shift_register(4);
			shift_register(28) <= shift_register(5);
			shift_register(29) <= shift_register(6);
			shift_register(30) <= shift_register(7);
			shift_register(31) <= shift_register(8);
			shift_register(32) <= shift_register(9);
			shift_register(33) <= shift_register(10);
			shift_register(34) <= shift_register(11);
			shift_register(35) <= shift_register(12);
			shift_register(36) <= shift_register(13);
			shift_register(37) <= shift_register(14);
			shift_register(38) <= shift_register(15);
			shift_register(39) <= shift_register(16);
			shift_register(40) <= shift_register(17);
			shift_register(41) <= shift_register(18);
			shift_register(42) <= shift_register(19);
			shift_register(43) <= shift_register(20);
			shift_register(44) <= shift_register(21);
			shift_register(45) <= shift_register(22);
			shift_register(46) <= shift_register(23);
			shift_register(47) <= shift_register(24);
			shift_register(48) <= shift_register(25);
			shift_register(49) <= shift_register(26);
			shift_register(50) <= shift_register(27);
			shift_register(51) <= shift_register(28);
		end if;
	end process;
	OUTPUT <= shift_register;
end Behavioral;