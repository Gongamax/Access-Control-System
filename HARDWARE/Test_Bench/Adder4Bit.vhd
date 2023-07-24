library ieee;
use ieee.std_logic_1164.all;

entity Adder4Bit_TB is
end Adder4Bit_TB;

architecture behavioral of Adder4Bit_TB is
    -- Component declaration for the device under test (DUT)
    component Adder4Bit is
        port (
            A : in std_logic_vector(3 downto 0);
            B : in std_logic_vector(3 downto 0);
            Ci : in std_logic;
            S : out std_logic_vector(3 downto 0);
            Co : out std_logic
        );
    end component;

    -- Input signal declarations
    signal a : std_logic_vector(3 downto 0);
    signal b : std_logic_vector(3 downto 0);
    signal ci : std_logic;

    -- Output signal declarations
    signal s : std_logic_vector(3 downto 0);
    signal co : std_logic;

begin
    -- DUT instantiation
    uut : Adder4Bit port map (
        A => a,
        B => b,
        Ci => ci,
        S => s,
        Co => co
    );

    -- Stimulus process
    process
    begin
        -- Test case 1: 2 + 3 = 5
        a <= "0010";
        b <= "0011";
        ci <= '0';
        wait for 10 ns;
        assert s = "0101" and co = '0' report "Test case 1 failed" severity error;

        -- Test case 2: 8 + 7 = 15
        a <= "1000";
        b <= "0111";
        ci <= '0';
        wait for 10 ns;
        assert s = "1111" and co = '0' report "Test case 2 failed" severity error;

        -- Test case 3: 9 + 5 = 14
        a <= "1001";
        b <= "0101";
        ci <= '0';
        wait for 10 ns;
        assert s = "1110" and co = '0' report "Test case 3 failed" severity error;

        -- Test case 4: 3 + 12 = 15 (with carry-in)
        a <= "0011";
        b <= "1100";
        ci <= '1';
        wait for 10 ns;
        assert s = "1111" and co = '0' report "Test case 4 failed" severity error;

        -- Test case 5: 15 + 1 = 0 (overflow)
        a <= "1111";
        b <= "0001";
        ci <= '0';
        wait for 10 ns;
        assert s = "0000" and co = '1' report "Test case 5 failed" severity error;

        wait;
    end process;

end behavioral;
