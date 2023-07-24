library ieee;
use ieee.std_logic_1164.all;

entity KeyDecode_TB is
end KeyDecode_TB;

architecture behavioral of KeyDecode_TB is
    -- Component declaration for the device under test (DUT)
    component KeyDecode is
        port (
            Mclk : in std_logic;
            Reset : in std_logic;
            Kack : in std_logic;
            Lines : in std_logic_vector(3 downto 0);
            Kval : out std_logic;
            K0_3 : out std_logic_vector(3 downto 0);
            Columns : out std_logic_vector(2 downto 0)
        );
    end component;

    -- Signal declarations
    signal Mclk : std_logic := '0';
    signal Reset : std_logic := '0';
    signal Kack : std_logic := '0';
    signal Lines : std_logic_vector(3 downto 0) := (others => '0');
    signal Kval : std_logic;
    signal K0_3 : std_logic_vector(3 downto 0);
    signal Columns : std_logic_vector(2 downto 0);
	
	constant CLK_PERIOD : time := 10 ns; -- 100 MHz clock

begin
    -- DUT instantiation
    DUT : KeyDecode
        port map (
            Mclk => Mclk,
            Reset => Reset,
            Kack => Kack,
            Lines => Lines,
            Kval => Kval,
            K0_3 => K0_3,
            Columns => Columns
        );

    -- Clock generator process
    Mclk <= not Mclk after CLK_PERIOD/2;

    -- Stimulus process
    process
    begin
        -- Reset the module
        Reset <= '1';
        wait for CLK_PERIOD;
        Reset <= '0';
        wait for CLK_PERIOD;

        -- Test case 1: Press key 2
        Lines <= "0100";
        Kack <= '1';
        wait for CLK_PERIOD * 4;
		Kack <= '0';
		Lines <= "1111";
		wait for CLK_PERIOD*16;

        -- Test case 2: Press key 5
        Lines <= "0010";
        Kack <= '1';
        wait for CLK_PERIOD*4;
		Kack <= '0';
		wait for CLK_PERIOD*4;

        -- Test case 3
        Lines <= "1111";
        Kack <= '1';
        wait for CLK_PERIOD*8;
		Lines <= "0111";
		Kack <= '1';
		wait for CLK_PERIOD*4;
		Kack <= '0';
		wait for CLK_PERIOD;

        -- Releasing the keys
        Lines <= "1111";
        Kack <= '1';
        wait for CLK_PERIOD*8;
		Kack <= '0';

        wait;
    end process;

end behavioral;