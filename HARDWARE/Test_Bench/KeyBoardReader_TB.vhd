library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity KeyBoardReader_TB is
end KeyBoardReader_TB;

architecture behavioral of KeyBoardReader_TB is
    -- Component declaration for the device under test (DUT)
    component KeyBoardReader is
        port (
			--Input ports
            Mclk : in std_logic;
            Reset : in std_logic;
            Ack : in std_logic;
            Lines : in std_logic_vector(3 downto 0);
			--Output ports
            Q0_3 : out std_logic_vector(3 downto 0);
            Dval : out std_logic;
            Columns : out std_logic_vector(2 downto 0)
        );
    end component;

    -- Signal declarations
    signal Mclk : std_logic := '0';
    signal Reset : std_logic := '0';
    signal Ack : std_logic := '0';
    signal Lines : std_logic_vector(3 downto 0) :=  "1111";
    signal Q0_3 : std_logic_vector(3 downto 0);
    signal Dval : std_logic;
    signal Columns : std_logic_vector(2 downto 0);
	
	constant CLK_PERIOD : time := 10 ns; -- 100 MHz clock

begin
    -- DUT instantiation
    DUT : KeyBoardReader
        port map (
            Mclk => Mclk,
            Reset => Reset,
            Ack => Ack,
            Lines => Lines,
            Q0_3 => Q0_3,
            Dval => Dval,
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
        Lines <= "1011";
        Ack <= '1';
        wait for 10 ns;
        assert (Q0_3 = "1011")
		report "Test case 1 failed" severity error;
		Lines <= "1111";
        Ack <= '0';
        wait for 4 *10 ns;

        -- Test case 2: Press key 9
        Lines <= "0111";
        Ack <= '1';
        wait for 10 ns;
        assert (Q0_3 = "0111" )
		report "Test case 2 failed" severity error;

        -- Test case 3: Press multiple keys simultaneously
        Lines <= "1101";
        Ack <= '1';
        wait for 10 ns;
        assert (Q0_3 = "1101")
		report "Test case 3 failed" severity error;

        -- Test case 4: Release the keys
        Lines <= "1111";
        Ack <= '0';
        wait for 10 ns;
        assert (Q0_3 = "1111")
		report "Test case 4 failed" severity error;

        -- Test case 5: Press key 5
        Lines <= "1110";
        Ack <= '1';
        wait for 10 ns;
        assert (Q0_3 = "1110")
		report "Test case 5 failed" severity error;
		
		wait for 10 ns;
		Lines <= "1111";
        Ack <= '0';
        wait for 10 ns;
        assert (Q0_3 = "1111")
		report "Test case 4 failed" severity error;

        wait;
    end process;

end behavioral;
