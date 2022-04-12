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
	
begin


end behavior;
