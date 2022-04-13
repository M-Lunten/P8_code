--Linear Feedback Shift Register with 5 skip-ahead.
Library ieee;
Use ieee.std_logic_1164.all;
entity LFSR_33 is
	 port (
		CLK: in std_logic;
		OUTPUT: out std_logic_vector(32 downto 0)
	);
end LFSR_33;

architecture Behavioral of LFSR_33 is
	signal shift_register : std_logic_vector(32 downto 0) := "000000000000000000000000000000000";
begin

-- ShiftRegister
	process(CLK)
	begin
		if (CLK'event and CLK  = '1') then
			shift_register(0) <= not(shift_register(15) xor shift_register(28));
			shift_register(1) <= not(shift_register(16) xor shift_register(29));
			shift_register(2) <= not(shift_register(17) xor shift_register(30));
			shift_register(3) <= not(shift_register(18) xor shift_register(31));
			shift_register(4) <= not(shift_register(19) xor shift_register(32));
			shift_register(5) <= shift_register(0);
			shift_register(6) <= shift_register(1);
			shift_register(7) <= shift_register(2);
			shift_register(8) <= shift_register(3);
			shift_register(9) <= shift_register(4);
			shift_register(10) <= shift_register(5);
			shift_register(11) <= shift_register(6);
			shift_register(12) <= shift_register(7);
			shift_register(13) <= shift_register(8);
			shift_register(14) <= shift_register(9);
			shift_register(15) <= shift_register(10);
			shift_register(16) <= shift_register(11);
			shift_register(17) <= shift_register(12);
			shift_register(18) <= shift_register(13);
			shift_register(19) <= shift_register(14);
			shift_register(20) <= shift_register(15);
			shift_register(21) <= shift_register(16);
			shift_register(22) <= shift_register(17);
			shift_register(23) <= shift_register(18);
			shift_register(24) <= shift_register(19);
			shift_register(25) <= shift_register(20);
			shift_register(26) <= shift_register(21);
			shift_register(27) <= shift_register(22);
			shift_register(28) <= shift_register(23);
			shift_register(29) <= shift_register(24);
			shift_register(30) <= shift_register(25);
			shift_register(31) <= shift_register(26);
			shift_register(32) <= shift_register(27);
		end if;
	end process;
	OUTPUT <= shift_register;
end Behavioral;