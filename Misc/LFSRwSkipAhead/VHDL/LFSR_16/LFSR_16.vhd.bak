--Linear Feedback Shift Register with 5 skip-ahead.
Library ieee;
Use ieee.std_logic_1164.all;
entity LFSR_16 is
	 port (
		CLK: in std_logic;
		OUTPUT: out std_logic_vector(15 downto 0)
	);
end LFSR_16;

architecture Behavioral of LFSR_16 is
	signal shift_register : std_logic_vector(15 downto 0) := "0000000000000000";
begin

-- ShiftRegister
	process(CLK)
	begin
		if (CLK'event and CLK  = '1') then
			shift_register(0) <= not(shift_register(3) xor shift_register(8) xor shift_register(10) xor shift_register(11) xor shift_register(12) xor shift_register(14) xor shift_register(15));
			shift_register(1) <= not(shift_register(0) xor shift_register(9) xor shift_register(11) xor shift_register(12));
			shift_register(2) <= not(shift_register(1) xor shift_register(10) xor shift_register(12) xor shift_register(13));
			shift_register(3) <= not(shift_register(2) xor shift_register(11) xor shift_register(13) xor shift_register(14));
			shift_register(4) <= not(shift_register(3) xor shift_register(12) xor shift_register(14) xor shift_register(15));
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
		end if;
	end process;
	OUTPUT <= shift_register;
end Behavioral;