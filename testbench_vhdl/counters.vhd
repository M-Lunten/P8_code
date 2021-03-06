--Histogram creator
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counters is 
	port (
		master_clk: in std_logic;
		input: in std_logic_vector(15 downto 0);
		mux_ctrl: in std_logic_vector(6 downto 0);
		out_sum: out std_logic_vector(31 downto 0);
		halt: out std_logic := '0'
	);
end counters;

architecture behavior of counters is
	
	component counter_32bits is
	generic (check : std_logic_vector(6 downto 0) := "0000000");
	port (
		clk: std_logic;
		input: in std_logic_vector(6 downto 0);
		out_sum: out std_logic_vector(31 downto 0)
	);
	end component;

	component out_mux is
	PORT
	(
		data0x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data100x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data101x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data102x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data103x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data104x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data105x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data106x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data107x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data108x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data109x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data10x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data110x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data111x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data112x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data113x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data114x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data115x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data116x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data117x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data118x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data119x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data11x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data120x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data121x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data122x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data123x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data124x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data125x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data126x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data127x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data12x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data13x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data14x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data15x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data16x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data17x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data18x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data19x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data1x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data20x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data21x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data22x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data23x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data24x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data25x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data26x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data27x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data28x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data29x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data2x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data30x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data31x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data32x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data33x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data34x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data35x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data36x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data37x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data38x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data39x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data3x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data40x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data41x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data42x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data43x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data44x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data45x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data46x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data47x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data48x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data49x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data4x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data50x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data51x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data52x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data53x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data54x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data55x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data56x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data57x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data58x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data59x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data5x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data60x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data61x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data62x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data63x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data64x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data65x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data66x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data67x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data68x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data69x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data6x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data70x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data71x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data72x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data73x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data74x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data75x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data76x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data77x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data78x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data79x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data7x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data80x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data81x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data82x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data83x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data84x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data85x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data86x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data87x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data88x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data89x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data8x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data90x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data91x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data92x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data93x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data94x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data95x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data96x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data97x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data98x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data99x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		data9x		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		sel		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
		result		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	end component;
	
	signal check_sum : std_logic_vector(6 downto 0);
	signal counter_out : std_logic_vector(4095 downto 0);
	signal mux_out : std_logic_vector(31 downto 0);
		
	begin
	
	mux1: out_mux port map (sel => mux_ctrl, result => mux_out, data0x => counter_out(31 downto 0), 
		data1x => counter_out(63 downto 32), 
		data2x => counter_out(95 downto 64), 
		data3x => counter_out(127 downto 96), 
		data4x => counter_out(159 downto 128), 
		data5x => counter_out(191 downto 160), 
		data6x => counter_out(223 downto 192), 
		data7x => counter_out(255 downto 224), 
		data8x => counter_out(287 downto 256), 
		data9x => counter_out(319 downto 288), 
		data10x => counter_out(351 downto 320), 
		data11x => counter_out(383 downto 352), 
		data12x => counter_out(415 downto 384), 
		data13x => counter_out(447 downto 416), 
		data14x => counter_out(479 downto 448), 
		data15x => counter_out(511 downto 480), 
		data16x => counter_out(543 downto 512), 
		data17x => counter_out(575 downto 544), 
		data18x => counter_out(607 downto 576), 
		data19x => counter_out(639 downto 608), 
		data20x => counter_out(671 downto 640), 
		data21x => counter_out(703 downto 672), 
		data22x => counter_out(735 downto 704), 
		data23x => counter_out(767 downto 736), 
		data24x => counter_out(799 downto 768), 
		data25x => counter_out(831 downto 800), 
		data26x => counter_out(863 downto 832), 
		data27x => counter_out(895 downto 864), 
		data28x => counter_out(927 downto 896), 
		data29x => counter_out(959 downto 928), 
		data30x => counter_out(991 downto 960), 
		data31x => counter_out(1023 downto 992), 
		data32x => counter_out(1055 downto 1024), 
		data33x => counter_out(1087 downto 1056), 
		data34x => counter_out(1119 downto 1088), 
		data35x => counter_out(1151 downto 1120), 
		data36x => counter_out(1183 downto 1152), 
		data37x => counter_out(1215 downto 1184), 
		data38x => counter_out(1247 downto 1216), 
		data39x => counter_out(1279 downto 1248), 
		data40x => counter_out(1311 downto 1280), 
		data41x => counter_out(1343 downto 1312), 
		data42x => counter_out(1375 downto 1344), 
		data43x => counter_out(1407 downto 1376), 
		data44x => counter_out(1439 downto 1408), 
		data45x => counter_out(1471 downto 1440), 
		data46x => counter_out(1503 downto 1472), 
		data47x => counter_out(1535 downto 1504), 
		data48x => counter_out(1567 downto 1536), 
		data49x => counter_out(1599 downto 1568), 
		data50x => counter_out(1631 downto 1600), 
		data51x => counter_out(1663 downto 1632), 
		data52x => counter_out(1695 downto 1664), 
		data53x => counter_out(1727 downto 1696), 
		data54x => counter_out(1759 downto 1728), 
		data55x => counter_out(1791 downto 1760), 
		data56x => counter_out(1823 downto 1792), 
		data57x => counter_out(1855 downto 1824), 
		data58x => counter_out(1887 downto 1856), 
		data59x => counter_out(1919 downto 1888), 
		data60x => counter_out(1951 downto 1920), 
		data61x => counter_out(1983 downto 1952), 
		data62x => counter_out(2015 downto 1984), 
		data63x => counter_out(2047 downto 2016), 
		data64x => counter_out(2079 downto 2048), 
		data65x => counter_out(2111 downto 2080), 
		data66x => counter_out(2143 downto 2112), 
		data67x => counter_out(2175 downto 2144), 
		data68x => counter_out(2207 downto 2176), 
		data69x => counter_out(2239 downto 2208), 
		data70x => counter_out(2271 downto 2240), 
		data71x => counter_out(2303 downto 2272), 
		data72x => counter_out(2335 downto 2304), 
		data73x => counter_out(2367 downto 2336), 
		data74x => counter_out(2399 downto 2368), 
		data75x => counter_out(2431 downto 2400), 
		data76x => counter_out(2463 downto 2432), 
		data77x => counter_out(2495 downto 2464), 
		data78x => counter_out(2527 downto 2496), 
		data79x => counter_out(2559 downto 2528), 
		data80x => counter_out(2591 downto 2560), 
		data81x => counter_out(2623 downto 2592), 
		data82x => counter_out(2655 downto 2624), 
		data83x => counter_out(2687 downto 2656), 
		data84x => counter_out(2719 downto 2688), 
		data85x => counter_out(2751 downto 2720), 
		data86x => counter_out(2783 downto 2752), 
		data87x => counter_out(2815 downto 2784), 
		data88x => counter_out(2847 downto 2816), 
		data89x => counter_out(2879 downto 2848), 
		data90x => counter_out(2911 downto 2880), 
		data91x => counter_out(2943 downto 2912), 
		data92x => counter_out(2975 downto 2944), 
		data93x => counter_out(3007 downto 2976), 
		data94x => counter_out(3039 downto 3008), 
		data95x => counter_out(3071 downto 3040), 
		data96x => counter_out(3103 downto 3072), 
		data97x => counter_out(3135 downto 3104), 
		data98x => counter_out(3167 downto 3136), 
		data99x => counter_out(3199 downto 3168), 
		data100x => counter_out(3231 downto 3200), 
		data101x => counter_out(3263 downto 3232), 
		data102x => counter_out(3295 downto 3264), 
		data103x => counter_out(3327 downto 3296), 
		data104x => counter_out(3359 downto 3328), 
		data105x => counter_out(3391 downto 3360), 
		data106x => counter_out(3423 downto 3392), 
		data107x => counter_out(3455 downto 3424), 
		data108x => counter_out(3487 downto 3456), 
		data109x => counter_out(3519 downto 3488), 
		data110x => counter_out(3551 downto 3520), 
		data111x => counter_out(3583 downto 3552), 
		data112x => counter_out(3615 downto 3584), 
		data113x => counter_out(3647 downto 3616), 
		data114x => counter_out(3679 downto 3648), 
		data115x => counter_out(3711 downto 3680), 
		data116x => counter_out(3743 downto 3712), 
		data117x => counter_out(3775 downto 3744), 
		data118x => counter_out(3807 downto 3776), 
		data119x => counter_out(3839 downto 3808), 
		data120x => counter_out(3871 downto 3840), 
		data121x => counter_out(3903 downto 3872), 
		data122x => counter_out(3935 downto 3904), 
		data123x => counter_out(3967 downto 3936), 
		data124x => counter_out(3999 downto 3968), 
		data125x => counter_out(4031 downto 4000), 
		data126x => counter_out(4063 downto 4032), 
		data127x => counter_out(4095 downto 4064));
	
	check_sum <= input(15) & input(13 downto 8);
	
	gen_counter: for I in 0 to 127 generate
		Cx: counter_32bits
			generic map (check => std_logic_vector(to_unsigned(I, 7)))
			port map (clk => master_clk, input => check_sum, out_sum => counter_out((32*I+31) downto (32*I)));
	end generate gen_counter;

	out_sum <= mux_out;
	
	process(master_clk)
	begin
	if rising_edge(master_clk) then
		--if unsigned(counter_out(31 downto 0)) >= 20 then
			if unsigned(counter_out(4095 downto 4064)) >= 20 then
				halt <= '1';
			end if;
		--end if;
	end if;
	end process;
	
end behavior;