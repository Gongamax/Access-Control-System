library ieee;
use ieee.std_logic_1164.all;

entity Ram_TB is
end Ram_TB;

architecture behavioral of Ram_TB is
    -- Component declaration for the device under test (DUT)
    component Ram is
        generic (
            ADDRESS_WIDTH : natural := 3;
            DATA_WIDTH : natural := 4
        );
        port (
            address : in std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
            wr : in std_logic;
            din : in std_logic_vector(DATA_WIDTH - 1 downto 0);
            dout : out std_logic_vector(DATA_WIDTH - 1 downto 0)
        );
    end component;

    -- Constant declaration
    constant ADDRESS_WIDTH : natural := 3;
    constant DATA_WIDTH : natural := 4;

    -- Signal declarations
    signal address : std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
    signal wr : std_logic;
    signal din : std_logic_vector(DATA_WIDTH - 1 downto 0);
    signal dout : std_logic_vector(DATA_WIDTH - 1 downto 0);

begin
    -- DUT instantiation
    uut : Ram
        generic map (
            ADDRESS_WIDTH => ADDRESS_WIDTH,
            DATA_WIDTH => DATA_WIDTH
        )
        port map (
            address => address,
            wr => wr,
            din => din,
            dout => dout
        );

    -- Stimulus process
    process
    begin
        -- Test case 1: Write data to address 001
        address <= "001";
        wr <= '1';
        din <= "1010";
        wait for 10 ns;
        wr <= '0';
        wait for 10 ns;
        assert dout = "1010" report "Test case 1 failed" severity error;

        -- Test case 2: Write data to address 111
        address <= "111";
        wr <= '1';
        din <= "1100";
        wait for 10 ns;
        wr <= '0';
        wait for 10 ns;
        assert dout = "0000" report "Test case 2 failed" severity error;

        -- Test case 3: Read data from address 010
        address <= "010";
        wr <= '0';
        wait for 10 ns;
        assert dout = "0000" report "Test case 3 failed" severity error;

        -- Test case 4: Write data to address 010
        address <= "010";
        wr <= '1';
        din <= "0111";
        wait for 10 ns;
        wr <= '0';
        wait for 10 ns;
        assert dout = "0111" report "Test case 4 failed" severity error;

        -- Test case 5: Read data from address 001
        address <= "001";
        wr <= '0';
        wait for 10 ns;
        assert dout = "1010" report "Test case 5 failed" severity error;

        wait;
    end process;

end behavioral;
