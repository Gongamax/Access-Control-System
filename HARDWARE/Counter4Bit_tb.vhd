library ieee;
use ieee.std_logic_1164.all;

entity Counter4Bit_tb is
end Counter4Bit_tb;

architecture behavioral of Counter4Bit_TB is
    -- Component declaration
    component Counter4Bit is
        PORT(
            CE : in std_logic;
            CLK : in std_logic;
            clr : in std_logic;
            direction : in std_logic;
            Q : out std_logic_vector (3 downto 0)
        );
    end component;

    -- Signals
    signal CE_tb : std_logic := '1'; -- Enable input
    signal CLK_tb : std_logic := '0'; -- Clock input
    signal clr_tb : std_logic := '0'; -- Clear input
    signal direction_tb : std_logic := '0'; -- Direction input
    signal Q_tb : std_logic_vector (3 downto 0); -- Output
    
begin
    -- Component instantiation
    UUT: Counter4Bit port map(CE => CE_tb, CLK => CLK_tb, clr => clr_tb, direction => direction_tb, Q => Q_tb);

    -- Clock process
    process
    begin
        CLK_tb <= '0';
        wait for 5 ns;
        CLK_tb <= '1';
        wait for 5 ns;
    end process;

    -- Stimulus process
    process
    begin
        -- Initialize inputs
        CE_tb <= '1';
        clr_tb <= '0';
        direction_tb <= '0';
        
        -- Wait for a few clock cycles before setting clr_tb to '1' to clear the counter
        wait for 20 ns;
        clr_tb <= '1';
        
        -- Wait for a few clock cycles before releasing the clear signal and enabling the counter
        wait for 20 ns;
        clr_tb <= '0';
        
        -- Count up
        direction_tb <= '0';
        wait for 100 ns;
        
        -- Count down
        direction_tb <= '1';
        wait for 100 ns;
        
        -- Stop counting
        CE_tb <= '0';
        wait for 20 ns;
        
        -- Resume counting
        CE_tb <= '1';
        wait for 100 ns;
        
        -- End simulation
        wait;
		assert Q_tb = "1100" report "Valor final de Q_tb esperado: 1100" severity note;
    end process;

end behavioral;
