library ieee;
use ieee.std_logic_1164.all;

entity RingBuffer_TB is
end RingBuffer_TB;

architecture behavioral of RingBuffer_TB is
  -- Constants
  constant ADDRESS_WIDTH: natural := 3;
  constant DATA_WIDTH: natural := 4;
  constant CLK_PERIOD: time := 10 ns;

  -- Component signals
  signal Mclk, Reset, DAV, CTS: std_logic;
  signal D0_3, Q0_3: std_logic_vector(3 downto 0);
  signal Wreg, DAC: std_logic;

  -- Instantiate the component
  component RingBuffer
    port (
      Mclk : in std_logic;
      Reset : in std_logic;
      DAV : in std_logic;
      CTS : in std_logic;
      D0_3 : in std_logic_vector(3 downto 0);
      Wreg : out std_logic;
      Q0_3 : out std_logic_vector(3 downto 0);
      DAC : out std_logic
    );
  end component;

begin
  -- Instantiate the component under test
  UUT: RingBuffer
    port map (
      Mclk => Mclk,
      Reset => Reset,
      DAV => DAV,
      CTS => CTS,
      D0_3 => D0_3,
      Wreg => Wreg,
      Q0_3 => Q0_3,
      DAC => DAC
    );

  -- Clock process
  process
  begin
      while true loop
          Mclk <= '0';
          wait for CLK_PERIOD/2;
          Mclk <= '1';
          wait for CLK_PERIOD/2;
      end loop;
  end process;

  -- Stimulus process
  process
  begin
      -- Stimulus process
    Reset <= '1';
    wait for 100 ns;
    Reset <= '0';
    wait for 50 ns;
    DAV <= '1';
    CTS <= '1';
    D0_3 <= "0000";
    wait for 50 ns;
    DAV <= '0';
    wait for 50 ns;
    DAV <= '1';
    D0_3 <= "1111";
    wait for 50 ns;
    CTS <= '0';
    D0_3 <= "0101";
    wait for 50 ns;
    DAV <= '0';
    wait for 50 ns;
    assert (Wreg = '1') report "Wreg signal is not asserted" severity error;
    assert (Q0_3 = "0101") report "Q0_3 signal does not match expected value" severity error;
    assert (DAC = '0') report "DAC signal is not deasserted" severity error;
	
	wait for 50 ns;
    DAV <= '1';
    D0_3 <= "1111";
	CTS <= '0';
    wait for 50 ns;
    DAV <= '0';
    wait for 50 ns;
    DAV <= '1';
	wait for 50 ns;
    DAV <= '0';
    wait for 50 ns;
    DAV <= '1';
	wait for 50 ns;
    DAV <= '0';
    wait for 50 ns;
    DAV <= '1';
	wait for 50 ns;
    DAV <= '0';
    wait for 50 ns;
    DAV <= '1';
	wait for 50 ns;
    DAV <= '0';
    wait for 50 ns;
    DAV <= '1';
	wait for 50 ns;
    DAV <= '0';
    wait for 50 ns;
    DAV <= '1';
	wait for 50 ns;
    DAV <= '0';
    wait for 50 ns;
    DAV <= '1';
	
	-- It was full
	assert (Wreg = '0') report "Wreg signal is not asserted" severity error;
    assert (Q0_3 = "0101") report "Q0_3 signal does not match expected value" severity error;
    assert (DAC = '0') report "DAC signal is not deasserted" severity error;

    wait;
  end process;

end behavioral;


