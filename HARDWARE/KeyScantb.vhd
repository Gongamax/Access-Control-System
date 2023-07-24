library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity Key_Scan_TB is
end Key_Scan_TB;

architecture Behavioral of Key_Scan_TB is

    -- declare signals for the test bench
    signal Mclk : std_logic := '0';
    signal Kpress : std_logic;
    signal Kscan : std_logic := '1';
    signal Reset : std_logic := '0';
    signal InMux :	std_logic_vector(3 downto 0) := "1111";
	 
	 signal K0_3	: std_logic_vector(3 downto 0);
	 

    -- instantiate the Key_Scan module
    component KeyScan is
        Port ( Mclk : in  STD_LOGIC;
			Kscan : in  STD_LOGIC;
			InMux : in STD_LOGIC_VECTOR(3 downto 0);	--Cada bit é uma linha, quando chega à ultima linha muda de coluna
			Reset : in STD_LOGIC;
			Kpress : out  STD_LOGIC;
			K0_3 	 	: out std_logic_vector(3 downto 0)
               );
    end component;

begin

    DUT : KeyScan port map (
			Mclk => Mclk,
			Kpress => Kpress,
			InMux => InMux, 
			Kscan => Kscan,
			Reset => Reset,
			K0_3 => K0_3
    );

    -- clock generator process
    process
    begin
        Mclk <= '0';
        wait for 10 ns;
        Mclk <= '1';
        wait for 10 ns;
    end process;

    -- stimulus process
    process
    begin
	
		-- initialize inputs
		Kscan <= '1';
		InMux <= "1111";
		Reset <= '1';
		wait for 10 ns;
		
		--Test 1: press button in row 1, column 1
        Kscan <= '0';
		InMux <= "1110";
		Reset <= '0';
        wait for 20 ns;
        assert Kpress = '1' report "Test 1 failed";
		
		--Test 2: cycle through all buttons in row 1, column 1 (expect no key press)
		Kscan <= '1';
		InMux <= "1111";
		Reset <= '0';
        wait for 16 * 20 ns;
		
		--Test 3: press button in column 3, any row
		Kscan <= '1';
		InMux <= "1111";
		Reset <= '0';
        wait for 8 * 20 ns;
        Kscan <= '1';
		InMux <= "0111";
		Reset <= '0';
        wait for 4 * 20 ns;
        assert Kpress = '1' report "Test 3 failed";
		
		--Test 4: reset
        Kscan <= '0';
		InMux <= "0001";
		Reset <= '0';
        wait for 4 * 20 ns;
        assert Kpress = '0' report "Test 4 failed";
		
        wait;
    end process;

end Behavioral;