--Architecture for Wallace algorithm optimized for speed
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity transformation is 
	port (
		clk: in std_logic;
		Tctrl: in std_logic;
		x1: in std_logic_vector(15 downto 0);
		x2: in std_logic_vector(15 downto 0);
		x3: in std_logic_vector(15 downto 0);
		x4: in std_logic_vector(15 downto 0);
		x1_res: out std_logic_vector(15 downto 0);
		x2_res: out std_logic_vector(15 downto 0);
		x3_res: out std_logic_vector(15 downto 0);
		x4_res: out std_logic_vector(15 downto 0)
	);
end transformation;

architecture behavior of transformation is
	signal x_D1_A, x_D1_B, x_D1_C, x_D1_D : std_logic_vector(15 downto 0);
	signal x_D2_A, x_D2_B, x_D2_C, x_D2_D : std_logic_vector(15 downto 0);
	signal p1, p2, t : std_logic_vector(15 downto 0);
	signal t_A_1, t_A_2, t_B_1, t_B_2, t_C_1, t_C_2, t_D_1, t_D_2 : std_logic_vector(15 downto 0);
	signal t_A_1_D, t_A_2_D, t_B_1_D, t_B_2_D, t_C_1_D, t_C_2_D, t_D_1_D, t_D_2_D : std_logic_vector(15 downto 0);
begin

	data_d: process(clk)
	begin
	if rising_edge(clk) then
		x_D1_A <= x1;
		x_D1_B <= x2;
		x_D1_C <= x3;
		x_D1_D <= x4;
		x_D2_A <= x_D1_A;
		x_D2_B <= x_D1_B;
		x_D2_C <= x_D1_C;
		x_D2_D <= x_D1_D;
	end if;
	end process;

	transformation : process(clk)
	variable p1_res, p2_res, sum, t_res : signed(15 downto 0);
	variable tmp_A_1, tmp_B_1, tmp_C_1, tmp_D_1 : signed(15 downto 0);
	variable tmp_A_2, tmp_B_2, tmp_C_2, tmp_D_2 : signed(15 downto 0);
	begin
	if rising_edge(clk) then
		p1_res := signed(x1) + signed(x2);
		p2_res := signed(x3) + signed(x4);
		p1 <= std_logic_vector(p1_res);
		p2 <= std_logic_vector(p2_res);
		sum := signed(p1) + signed(p2);
		t_res := shift_right(sum, 1); --sum(15) & '0' & sum(14 downto 1);
		t <= std_logic_vector(t_res);
	end if;
	end process;
	
	trans_slct : process(t, x_D2_A, x_D2_B, x_D2_C, x_D2_D)
	begin
	if Tctrl = '0' then
		t_A_1 <= x_D2_A;
		t_A_2 <= t;
		t_B_1 <= t;
		t_B_2 <= x_D2_B;
		t_C_1 <= t;
		t_C_2 <= x_D2_C;
		t_D_1 <= t;
		t_D_2 <= x_D2_D;
	else 
		t_A_1 <= t;
		t_A_2 <= x_D2_A;
		t_B_1 <= x_D2_B;
		t_B_2 <= t;
		t_C_1 <= x_D2_C;
		t_C_2 <= t;
		t_D_1 <= x_D2_D;
		t_D_2 <= t;
	end if;
	end process;
	
	trans_delay : process(clk)
	begin
	if rising_edge(clk) then
		t_A_1_D <= t_A_1;
		t_A_2_D <= t_A_2;
		t_B_1_D <= t_B_1;
		t_B_2_D <= t_B_2;
		t_C_1_D <= t_C_1;
		t_C_2_D <= t_C_2;
		t_D_1_D <= t_D_1;
		t_D_2_D <= t_D_2;
	end if;
	end process;
	
	x1_res <= std_logic_vector(signed(t_A_1_D) - signed(t_A_2_D));
	x2_res <= std_logic_vector(signed(t_B_1_D) - signed(t_B_2_D));
	x3_res <= std_logic_vector(signed(t_C_1_D) - signed(t_C_2_D));
	x4_res <= std_logic_vector(signed(t_D_1_D) - signed(t_D_2_D));
end behavior;