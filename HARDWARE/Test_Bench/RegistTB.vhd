library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity REGIST_TB is
end REGIST_TB;

architecture behavior of REGIST_TB is
    -- Component declaration for the device under test (DUT)
    component REGIST is
        PORT (
            D: in std_logic_vector(1 downto 0);
            CLK: in std_logic;
            RESET: in std_logic;
            SET: in std_logic;
            CE: in std_logic;
            Q: out std_logic_vector(1 downto 0)
        );
    end component;

    -- Input signal declarations
    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    signal set : std_logic := '0';
    signal ce : std_logic := '0';
    signal d : std_logic_vector(1 downto 0) := (others => '0');

    -- Output signal declarations
    signal q : std_logic_vector(1 downto 0);

begin
    -- DUT instantiation
    uut : REGIST port map (
        D => d,
        CLK => clk,
        RESET => reset,
        SET => set,
        CE => ce,
        Q => q
    );

    -- clock generator process
    process
    begin
        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;
    end process;

    -- Stimulus process
    process
    begin
        -- Reset and set the register
        reset <= '1';
        set <= '1';
        wait for 50 ns;
        reset <= '0';
        set <= '0';

        -- Test case 1: Load 01 into the register
        d <= "01";
        ce <= '1';
        wait for 10 ns;
        assert q = "01" report "Test case 1 failed" severity error;

        -- Test case 2: Load 10 into the register
        d <= "10";
        wait for 10 ns;
        assert q = "10" report "Test case 2 failed" severity error;

        -- Test case 3: Load 00 into the register with CE = '0'
        d <= "00";
        ce <= '0';
        wait for 10 ns;
        assert q = "10" report "Test case 3 failed" severity error;

        -- Test case 4: Load 11 into the register with SET = '1'
        d <= "11";
        set <= '1';
        wait for 10 ns;
        assert q = "11" report "Test case 4 failed" severity error;

        -- Test case 5: Load 01 into the register with RESET = '1'
        d <= "01";
        reset <= '1';
        wait for 10 ns;
        assert q = "00" report "Test case 5 failed" severity error;

        wait;
    end process;
end behavior;