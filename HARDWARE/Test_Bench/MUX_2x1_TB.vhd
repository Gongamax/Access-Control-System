library ieee;
use ieee.std_logic_1164.all;

entity MUX_2x1_TB is
end MUX_2x1_TB;

architecture behavioral of MUX_2x1_TB is
    -- Component declaration for the device under test (DUT)
    component MUX_2x1 is
        port (
            X, Y : in std_logic_vector(3 downto 0);
            S : in std_logic;
            R : out std_logic_vector(3 downto 0)
        );
    end component;

    -- Input signal declarations
    signal x : std_logic_vector(3 downto 0);
    signal y : std_logic_vector(3 downto 0);
    signal s : std_logic;

    -- Output signal declarations
    signal r : std_logic_vector(3 downto 0);

begin
    -- DUT instantiation
    uut : MUX_2x1 port map (
        X => x,
        Y => y,
        S => s,
        R => r
    );

    -- Stimulus process
    process
    begin
        -- Test case 1: Select X input (S = '0')
        x <= "1010";
        y <= "1111";
        s <= '0';
        wait for 10 ns;
        assert r = "1010" report "Test case 1 failed" severity error;

        -- Test case 2: Select Y input (S = '1')
        x <= "0101";
        y <= "1001";
        s <= '1';
        wait for 10 ns;
        assert r = "1001" report "Test case 2 failed" severity error;

        -- Test case 3: Select X input (S = '0')
        x <= "0011";
        y <= "1100";
        s <= '0';
        wait for 10 ns;
        assert r = "0011" report "Test case 3 failed" severity error;

        -- Test case 4: Select Y input (S = '1')
        x <= "0000";
        y <= "1111";
        s <= '1';
        wait for 10 ns;
        assert r = "1111" report "Test case 4 failed" severity error;

        wait;
    end process;

end behavioral;
