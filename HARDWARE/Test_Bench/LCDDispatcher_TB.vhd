library ieee;
use ieee.std_logic_1164.all;

entity LCDdispatcher_tb is
end LCDdispatcher_tb;

architecture tb of LCDdispatcher_tb is
  -- Component Declaration
  component LCDdispatcher is
    port (
      --Input ports
      Dval    : in std_logic;
      Din     : in std_logic_vector(4 downto 0);
      clk     : in std_logic;
      reset   : in std_logic;
      --Output ports
      Wrl     : out std_logic;
      Dout    : out std_logic_vector(4 downto 0);
      done    : out std_logic
    );
  end component;

  -- Input signals
  signal Dval_sig     : std_logic := '0';
  signal Din_sig      : std_logic_vector(4 downto 0) := (others => '0');
  signal clk_sig      : std_logic := '0';
  signal reset_sig    : std_logic := '0';

  -- Output signals
  signal Wrl_sig      : std_logic;
  signal Dout_sig     : std_logic_vector(4 downto 0);
  signal done_sig     : std_logic;

begin
  -- Instantiate the Unit Under Test (UUT)
  UUT: LCDdispatcher port map (
    Dval    => Dval_sig,
    Din     => Din_sig,
    clk     => clk_sig,
    reset   => reset_sig,
    Wrl     => Wrl_sig,
    Dout    => Dout_sig,
    done    => done_sig
  );

  -- Clock Generator
  clk_gen: process
  begin
    clk_sig <= '0';
    wait for 5 ns;
    clk_sig <= '1';
    wait for 5 ns;
  end process;

  -- Stimulus Process
  stim_proc: process
  begin
    reset_sig <= '1';
    wait for 10 ns;
    reset_sig <= '0';

    -- Test Case 1
    wait for 10 ns;
    Dval_sig <= '1';
    Din_sig <= "00001";
    wait for 100 ns;

    -- Test Case 2
    wait for 10 ns;
    Dval_sig <= '1';
    Din_sig <= "10011";
    wait for 100 ns;

    -- Test Case 3
    wait for 10 ns;
    Dval_sig <= '0';
    Din_sig <= "01010";
    wait for 100 ns;

    wait;
  end process;

end tb;
