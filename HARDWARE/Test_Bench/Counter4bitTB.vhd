library ieee;
use ieee.std_logic_1164.all;

entity Counter4Bit_TB is
end Counter4Bit_TB;

architecture behavioral of Counter4Bit_TB is
  -- Constants
  constant CLK_PERIOD: time := 10 ns;

  -- Component signals
  signal CE, CLK, clr, UpDown: std_logic;
  signal Q: std_logic_vector(3 downto 0);

  -- Instantiate the component
  component Counter4Bit
    PORT(
        CE : in std_logic;
        CLK : in std_logic;
        clr : in std_logic;
        UpDown : in std_logic;
        Q : out std_logic_vector(3 downto 0)
    );
  end component;

begin
  -- Instantiate the component under test
  UUT: Counter4Bit
    port map (CE => CE,
              CLK => CLK,
              clr => clr,
              UpDown => UpDown,
              Q => Q);

  -- Clock process
  process
  begin
    CLK <= '0';
    wait for CLK_PERIOD / 2;
    CLK <= '1';
    wait for CLK_PERIOD / 2;
  end process;

  -- Stimulus process
  process
  begin
    -- Initialize inputs
    clr <= '1';
    wait for CLK_PERIOD * 1;
	CE <= '1';
    clr <= '0';
    UpDown <= '0'; -- Set to increment mode

    -- Test case 1: Increment counter
    assert (Q = "0000") report "Test case 0000 failed" severity error;
    wait for CLK_PERIOD * 1;
    assert (Q = "0001") report "Test case 0001 failed" severity error;
    wait for CLK_PERIOD * 1;
    assert (Q = "0010") report "Test case 0010 failed" severity error;
    wait for CLK_PERIOD * 1;
    assert (Q = "0011") report "Test case 0011 failed" severity error;
    wait for CLK_PERIOD * 1;
    assert (Q = "0100") report "Test case 0100 failed" severity error;
	wait for CLK_PERIOD * 1;
    assert (Q = "0101") report "Test case 0101 failed" severity error;
	wait for CLK_PERIOD * 1;
    assert (Q = "0110") report "Test case 0110 failed" severity error;
    wait for CLK_PERIOD * 1;
	assert (Q = "0111") report "Test case 0111 failed" severity error;
	wait for CLK_PERIOD * 1;
	assert (Q = "1000") report "Test case 1000 failed" severity error; --Full 

    -- Test case 2: Decrement counter
    UpDown <= '1'; -- Set to decrement mode
	wait for CLK_PERIOD * 1;
	assert (Q = "0111") report "Test case 2 failed" severity error;
	wait for CLK_PERIOD * 1;
	assert (Q = "0110") report "Test case 1 failed" severity error;
    wait for CLK_PERIOD * 1;
    assert (Q = "0101") report "Test case 1 failed" severity error;
    wait for CLK_PERIOD * 1;
	assert (Q = "0100") report "Test case 1 failed" severity error;
	wait for CLK_PERIOD * 1;
    assert (Q = "0011") report "Test case 2 failed" severity error;
    wait for CLK_PERIOD * 1;
    assert (Q = "0010") report "Test case 2 failed" severity error;
    wait for CLK_PERIOD * 1;
    assert (Q = "0001") report "Test case 2 failed" severity error;
    wait for CLK_PERIOD * 1;
    assert (Q = "0000") report "Test case 2 failed" severity error; --empty
	CE <= '0';   
   wait for CLK_PERIOD * 1;
	
    wait;
  end process;

end behavioral;
