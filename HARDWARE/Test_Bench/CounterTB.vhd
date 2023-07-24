library ieee;
use ieee.std_logic_1164.all;

entity Counter_TB is
end Counter_TB;

architecture behavioral of Counter_TB is

  -- Component declaration for Counter and clock signal
  component Counter is
    port(
      CE    : in std_logic;
      CLK   : in std_logic;
      RESET : in std_logic;
      Q     : out std_logic_vector(1 downto 0)
    );
  end component;

  signal CLK : std_logic := '0';
  signal CE  : std_logic := '1';
  signal RESET : std_logic := '0';
  signal Q    : std_logic_vector(1 downto 0);

begin

  -- Instantiate the Counter component
  uut : Counter port map (
    CE => CE,
    CLK => CLK,
    RESET => RESET,
    Q => Q
  );

  -- Generate clock signal
  process
  begin
    CLK <= '0';
    wait for 5 ns;
    CLK <= '1';
    wait for 5 ns;
  end process;

  -- Stimulus process
  process
  begin
    RESET <= '1';
    wait for 5 ns;
    RESET <= '0';
    wait for 10 ns;
    CE <= '0';
    wait for 20 ns;
    CE <= '1';
    wait for 50 ns;
    CE <= '0';
    wait for 5 ns;
    CE <= '1';
    wait for 20 ns;
    CE <= '0';
    wait for 5 ns;
    CE <= '1';
    wait;
  end process;

end behavioral;
