library ieee;
use ieee.std_logic_1164.all;

entity MUXputandget_TB is
end MUXputandget_TB;

architecture behavioral of MUXputandget_TB is
    -- Component declaration for the device under test (DUT)
    component MUX is
        port (
            A, B : in std_logic_vector(2 downto 0);
            S : in std_logic;
            Y : out std_logic_vector(2 downto 0)
        );
    end component;

    -- Input signal declarations
    signal a : std_logic_vector(2 downto 0);
    signal b : std_logic_vector(2 downto 0);
    signal s : std_logic;

    -- Output signal declarations
    signal y : std_logic_vector(2 downto 0);

begin
    -- DUT instantiation
    uut : MUX port map (
        A => a,
        B => b,
        S => s,
        Y => y
    );

    -- Stimulus process
    process
    begin
        -- Test case 1: Select A input (S = '0')
        a <= "101";
        b <= "111";
        s <= '0';
        wait for 10 ns;
        assert y = "101" report "Test case 1 failed" severity error;

        -- Test case 2: Select B input (S = '1')
        a <= "010";
        b <= "100";
        s <= '1';
        wait for 10 ns;
        assert y = "100" report "Test case 2 failed" severity error;

        -- Test case 3: Select A input (S = '0')
        a <= "001";
        b <= "110";
        s <= '0';
        wait for 10 ns;
        assert y = "001" report "Test case 3 failed" severity error;

        -- Test case 4: Select B input (S = '1')
        a <= "000";
        b <= "111";
        s <= '1';
        wait for 10 ns;
        assert y = "111" report "Test case 4 failed" severity error;

        wait;
    end process;

end behavioral;
