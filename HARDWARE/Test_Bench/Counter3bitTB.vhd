library ieee;
use ieee.std_logic_1164.all;

entity Counter3Bit_tb is
end Counter3Bit_tb;

architecture behavioral of Counter3Bit_tb is
    -- Component ports
    component Counter3Bit
        port (
            CE : in std_logic;
            CLK : in std_logic;
            clr: in std_logic;
            Q: out std_logic_vector (2 downto 0)
        );
    end component;

    signal CE : std_logic := '0';
    signal CLK : std_logic := '0';
    signal clr : std_logic := '1';
    signal Q : std_logic_vector(2 downto 0);

begin
    DUT: Counter3Bit port map (CE => CE, CLK => CLK, clr => clr, Q => Q);

    -- Clock generator
    process
    begin
        CLK <= '0';
        wait for 5 ns;
        CLK <= '1';
        wait for 5 ns;
    end process;

    -- Test case 1: clear counter
    process
    begin
        wait for 10 ns;
        clr <= '1';
        wait for 10 ns;
        clr <= '0';
        wait for 10 ns;


    -- Test case 2: enable counter
        wait for 30 ns;
        CE <= '1';
        wait for 20 ns;
        CE <= '0';
        wait for 10 ns;
        CE <= '1';
        wait for 20 ns;
        CE <= '0';
        wait for 10 ns;
		CE <= '1';
        wait for 20 ns;
        CE <= '0';
        wait for 10 ns;
		CE <= '1';
        wait for 20 ns;
        CE <= '0';
        wait for 10 ns;

    -- Test case 3: check counter values
        wait for 60 ns;
        assert Q = "011" report "Test case 3 failed!" severity error;
        wait for 10 ns;
        assert Q = "100" report "Test case 3 failed!" severity error;
        wait for 10 ns;
        assert Q = "101" report "Test case 3 failed!" severity error;
        wait for 10 ns;
        assert Q = "110" report "Test case 3 failed!" severity error;
        wait for 10 ns;
        assert Q = "111" report "Test case 3 failed!" severity error;
		wait for 10 ns;
        assert Q = "000" report "Test case 3 failed!" severity error;
        wait;
    end process;

end behavioral;
