library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comp1 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	iin,U1Ain,zeroin,A0in : in std_logic_vector(15 downto 0);
	D3_D4out: out std_logic
	);
end comp1;

architecture behavioural of comp1 is 

component mux10 is
port(
	iin,U1Ain: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end component;

component mux11 is
port(
	zeroin,A0in: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end component;

--component mux12 is
--port(
--	comp1in: in std_logic;
--	D3out,D4out: out std_logic;
--	ctrl: in std_logic_vector(1 downto 0)
--	);
--end component;


signal mux1out : std_logic_vector(15 downto 0);
signal mux2out : std_logic_vector(15 downto 0);

signal compout : std_logic;

begin
	c1: mux10 port map(iin,U1Ain,mux1out,muxctrl);
	c2: mux11 port map(zeroin,A0in,mux2out,muxctrl);
	--c3: mux12 port map(compout,D3out,D4out,muxctrl);
	
	process(iclock)
	variable compoutS1 : signed(15 downto 0);
	begin
		if rising_edge(iclock) then 
			if muxctrl = "01" then 
				if mux1out = "0000000000000000" then 
					D3_D4out <= '1';
				else
					D3_D4out <= '0';
				end if;
			else
				if mux1out < mux2out then 
					D3_D4out <= '1';
				else
					D3_D4out <= '0';
				end if;
			end if;
		end if;
	end process;


end architecture;