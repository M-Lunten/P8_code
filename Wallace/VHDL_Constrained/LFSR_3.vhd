--Linear Feedback Shift Register with 1 skip-ahead.
Library ieee;
Use ieee.std_logic_1164.all;
entity LFSR_3 is
	 port (
		CLK: in std_logic;
		OUTPUT: out std_logic_vector(2 downto 0)
	);
end LFSR_3;

architecture Behavioral of LFSR_3 is
	signal shift_register : std_logic_vector(2 downto 0) := "010";
begin

-- ShiftRegister
	process(CLK)
	begin
		if (CLK'event and CLK  = '1') then
			shift_register(0) <= not(shift_register(1) xor shift_register(2));
			shift_register(1) <= shift_register(0);
			shift_register(2) <= shift_register(1);
		end if;
	end process;
	OUTPUT <= shift_register;
end Behavioral;