--Addressing unit for the ROM with the LUT for f
Library ieee; 
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;

entity addressing_unit is 
	port (
		U_in: in std_logic_vector(31 downto 0);
		w: out std_logic_vector(5 downto 0);
		L: out std_logic_vector(1 downto 0)
	);
end addressing_unit;

architecture behavior of addressing_unit is

	component LOD is
	port(
		U: in std_logic_vector(31 downto 0);
		res: out std_logic_vector(5 downto 0)
	);
	end component;
	
	component AU_MUX is 
	port(
		data0x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data10x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data11x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data12x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data13x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data14x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data15x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data16x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data17x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data18x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data19x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data1x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data20x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data21x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data22x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data23x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data24x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data25x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data26x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data27x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data28x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data29x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data2x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data30x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data31x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data32x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data33x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data34x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data35x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data36x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data37x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data38x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data39x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data3x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data40x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data41x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data42x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data43x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data44x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data45x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data46x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data47x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data48x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data49x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data4x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data50x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data51x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data52x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data53x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data54x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data55x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data56x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data57x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data58x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data59x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data5x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data60x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data61x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data62x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data63x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data6x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data7x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data8x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		data9x		: IN STD_LOGIC_VECTOR (1 DOWNTO 0);
		sel			: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (1 DOWNTO 0)
	);
	end component;
	
	signal ctrl_mux : std_logic_vector(5 downto 0);
	
begin
	mux0 : AU_MUX port map (data0x => "00", data1x(1) => U_in(31), data1x(0) => '0', data2x => U_in(1 downto 0), data3x => U_in(2 downto 1),
		 data4x => U_in(3 downto 2), data5x => U_in(4 downto 3), data6x => U_in(5 downto 4), data7x => U_in(6 downto 5),
		 data8x => U_in(7 downto 6), data9x => U_in(8 downto 7), data10x => U_in(9 downto 8), data11x => U_in(10 downto 9),
		 data12x => U_in(11 downto 10), data13x => U_in(12 downto 11), data14x => U_in(13 downto 12), data15x => U_in(14 downto 13),
		 data16x => U_in(15 downto 14), data17x => U_in(16 downto 15), data18x => U_in(17 downto 16), data19x => U_in(18 downto 17),
		 data20x => U_in(19 downto 18), data21x => U_in(20 downto 19), data22x => U_in(21 downto 20), data23x => U_in(22 downto 21),
		 data24x => U_in(23 downto 22), data25x => U_in(24 downto 23), data26x => U_in(25 downto 24), data27x => U_in(26 downto 25),
		 data28x => U_in(27 downto 26), data29x => U_in(28 downto 27), data30x => U_in(29 downto 28), data31x => U_in(29 downto 28),
		 data32x => U_in(28 downto 27), data33x => U_in(27 downto 26), data34x => U_in(26 downto 25), data35x => U_in(25 downto 24),
		 data36x => U_in(24 downto 23), data37x => U_in(23 downto 22), data38x => U_in(22 downto 21), data39x => U_in(21 downto 20),
		 data40x => U_in(20 downto 19), data41x => U_in(19 downto 18), data42x => U_in(18 downto 17), data43x => U_in(17 downto 16),
		 data44x => U_in(16 downto 15), data45x => U_in(15 downto 14), data46x => U_in(14 downto 13), data47x => U_in(13 downto 12),
		 data48x => U_in(12 downto 11), data49x => U_in(11 downto 10), data50x => U_in(10 downto 9), data51x => U_in(9 downto 8),
		 data52x => U_in(8 downto 7), data53x => U_in(7 downto 6), data54x => U_in(6 downto 5), data55x => U_in(5 downto 4),
		 data56x => U_in(4 downto 3), data57x => U_in(3 downto 2), data58x => U_in(2 downto 1), data59x => U_in(1 downto 0),
		 data60x(1) => U_in(31), data60x(0) => '0', data61x => "00", data62x => "00", data63x => "00", 
		 sel => ctrl_mux, result => L);
	
	LOD0 : LOD port map (U => U_in, res => ctrl_mux);
	
	w <= ctrl_mux;
	
end behavior;
