library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_SerialReceiver is
end entity;

architecture testbench of tb_SerialReceiver is

  signal s_SDX : std_logic := '0';
  signal s_SCLK : std_logic := '0';
  signal s_nSS : std_logic := '1';
  signal s_accept : std_logic := '0';
  signal s_RESET : std_logic := '0';
  signal s_Mclk : std_logic := '0';
  signal s_D : std_logic_vector(4 downto 0);
  signal s_DXval : std_logic;
  signal s_busy : std_logic;

  constant clk_period : time := 10 ns; -- 100 MHz clock

  component SerialReceiver is
    port(
      --Input ports
      SDX    : in std_logic;
      SCLK   : in std_logic;
      nSS    : in std_logic;
      accept : in std_logic;
      RESET  : in std_logic;
      Mclk   : in std_logic;
      --Output ports
      D      : out std_logic_vector(4 downto 0);
      DXval  : out std_logic;
	  busy   : out std_logic
    );
  end component;

begin

  UUT : SerialReceiver
    port map(
	  --Input ports
	  SDX => s_SDX,
	  SCLK => s_SCLK,
	  nSS => s_nSS,
	  accept => s_accept,
	  RESET => s_RESET,
	  Mclk => s_Mclk,
	  --Output ports
	  D => s_D,
	  DXval => s_DXval,
	  busy => s_busy
    );

  -- Clock generator process
  s_Mclk <= not s_Mclk after clk_period/2;

  -- Stimulus process
  process
  begin

	--Reset and input init
	s_RESET <= '1';
	s_nSS <= '1';
	s_SDX <= '1';
	s_SCLK <= '0';
	wait for clk_period;
	s_RESET <= '0';
	s_nSS <= '0';
	wait for clk_period;
	
    -- First transaction
	wait for clk_period;
	s_SCLK <= '1';
	wait for clk_period;
	s_SCLK <= '0';
	s_SDX <= '1';
	wait for clk_period;
	s_SCLK <= '1';
	wait for clk_period;
	s_SCLK <= '0';
	s_SDX <= '1';
	wait for clk_period;
	s_SCLK <= '1';
	wait for clk_period;
	s_SCLK <= '0';
	s_SDX <= '1';
	wait for clk_period;
	s_SCLK <= '1';
	wait for clk_period;
	s_SCLK <= '0';
	s_SDX <= '0';
	wait for clk_period;
	s_SCLK <= '1';
	wait for clk_period;
	s_SCLK <= '0'; 
	s_SDX <= '1';
	wait for clk_period;
	s_nSS <= '1';
	assert s_busy = '1'report "Error: Unexpected values on busy"
	  severity error;
	
	wait for clk_period;
	s_accept <= '1';
	assert s_D = "01111" and s_DXval = '1' 
      report "Error: Unexpected values on D and DXval after first transaction"
	  severity error;
	wait for clk_period;
	s_accept <= '0';
	wait for clk_period * 2;
	assert s_busy = '0'report "Error: Unexpected values on busy"
	  severity error;
	
	wait;
end process;

end architecture;
