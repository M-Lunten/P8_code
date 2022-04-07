--Linear Feedback Shift Register with 3 skip-ahead.
Library ieee;
Use ieee.std_logic_1164.all;
entity LFSR_8 is
	 port (
		CLK: in std_logic;
		OUTPUT: out std_logic_vector(7 downto 0)
	);
end LFSR_8;

architecture Behavioral of LFSR_8 is
	signal shift_register : std_logic_vector(7 downto 0) := "00001010";
begin

-- ShiftRegister
	process(CLK)
	begin
		if (CLK'event and CLK  = '1') then
			shift_register(0) <= shift_register(3);
			shift_register(1) <= not(shift_register(0) xor shift_register(4));
			shift_register(2) <= not(shift_register(0) xor shift_register(1)xor shift_register(5));
			shift_register(3) <= not(shift_register(0) xor shift_register(1)xor shift_register(2)xor shift_register(6));
			shift_register(4) <= not(shift_register(1) xor shift_register(2)xor shift_register(7));
			shift_register(5) <= not(shift_register(0) xor shift_register(2));
			shift_register(6) <= shift_register(1);
			shift_register(7) <= shift_register(2);
		end if;
	end process;
	OUTPUT <= shift_register;
end Behavioral;