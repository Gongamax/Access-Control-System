library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MAC_TB is
end MAC_TB;

architecture behavioral of MAC_TB is
  -- Constants
  constant CLK_PERIOD: time := 10 ns;

  -- Component signals
  
  signal putget, incPut, incGet, clk, full, empty: std_logic;
  signal Reset : std_logic := '0';
  signal Address : std_logic_vector(2 downto 0);

  -- Instantiate the component
  component MAC
    Port(
      putget : in std_logic;
      incPut : in std_logic;
      incGet : in std_logic;
      clk : in std_logic;
      Reset : in std_logic;
      Address : out std_logic_vector(2 downto 0);
      full : out std_logic;
      empty : out std_logic
    );
  end component;

begin
  -- Instantiate the component under test
  UUT: MAC
    port map (
      putget => putget,
      incPut => incPut,
      incGet => incGet,
      clk => clk,
      Reset => Reset,
      Address => Address,
      full => full,
      empty => empty
    );

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
    Reset <= '1';
    putget <= '0';
    incPut <= '0';
    incGet <= '0';
    wait for CLK_PERIOD;

    Reset <= '0';
    wait for CLK_PERIOD;

	-- Test case 1: Increment incPut
    wait for CLK_PERIOD;
    incPut <= '1';
	putget <= '1';
    wait for CLK_PERIOD;
    incPut <= '0';
    wait for CLK_PERIOD;
    
    -- Test case 2: Increment incGet
    incGet <= '1';
	putget <= '0';
    wait for CLK_PERIOD;
    incGet <= '0';
    wait for CLK_PERIOD;
    
    -- Test case 3: Toggle putget
    putget <= '1';
    wait for CLK_PERIOD;
    putget <= '0';
    wait for CLK_PERIOD;
    
    -- Test case 4: Reset
    Reset <= '1';
	wait for CLK_PERIOD;
    Reset <= '0';
    wait for CLK_PERIOD;
	
	-- Test case 5: Complete test with varying scenarios    

	-- Increment incPut until the memory becomes full
	for i in 0 to 7 loop
	  incPut <= '1';
	  putget <= '1';
	  wait for CLK_PERIOD;
	  incPut <= '0';
	  wait for CLK_PERIOD;
  
	  -- Check if the memory is full
	  if full = '1' then
	  wait for CLK_PERIOD;
	  end if;
	end loop;

	-- Increment incGet until the memory becomes empty
	for i in 0 to 7 loop
	  incGet <= '1';
	  putget <= '0';
	  wait for CLK_PERIOD;
	  incGet <= '0';
	  wait for CLK_PERIOD;
	  
	  -- Check if the memory is empty
	  if empty = '1' then
		-- Reset the memory and continue the test
		Reset <= '1';
		wait for CLK_PERIOD;
		Reset <= '0';
		wait for CLK_PERIOD;
	  end if;
	end loop;

	-- Toggle putget signal multiple times
	for i in 0 to 5 loop
	  putget <= '1';
	  wait for CLK_PERIOD;
	  putget <= '0';
	  wait for CLK_PERIOD;
	end loop;

    wait;
  end process;

end behavioral;
