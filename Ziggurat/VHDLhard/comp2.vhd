library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comp2 is
port(
	iclock : in std_logic;
	muxctrl : in std_logic_vector(1 downto 0);
	iin,xuin,yin,twofivefivein,xiplusin,fxin : in std_logic_vector(15 downto 0);
	D1_D2_D5out: out std_logic
	);
end comp2;

architecture behavioural of comp2 is 

component mux13 is
port(
	iin,xuin,yin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end component;

component mux14 is
port(
	twofivefivein,xiplusin,fxin: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0);
	ctrl: in std_logic_vector(1 downto 0)
	);
end component;

--component mux15 is
--port(
--	comp2in: in std_logic;
--	D1out,D2out,D5out: out std_logic;
--	ctrl: in std_logic_vector(1 downto 0)
--	);
--end component;

signal mux1out : std_logic_vector(15 downto 0);
signal mux2out : std_logic_vector(15 downto 0);

signal compout : std_logic;

begin
	c1: mux13 port map(iin,xuin,yin,mux1out,muxctrl);
	c2: mux14 port map(twofivefivein,xiplusin,fxin,mux2out,muxctrl);
	--c3: mux15 port map(compout,D1out,D2out,D5out,muxctrl);
	
	process(iclock)
	variable compoutS1 : signed(15 downto 0);
	begin
		if rising_edge(iclock) then 
			if muxctrl = "01" then 
				if (unsigned(mux1out) < 255) then 
					D1_D2_D5out <= '1';
				else 
					D1_D2_D5out <= '0';
				end if;
			else
				if (mux1out < mux2out) then 
					D1_D2_D5out <= '1';
				else 
					D1_D2_D5out <= '0';
				end if;
				end if;
		end if;
	end process;


end architecture;