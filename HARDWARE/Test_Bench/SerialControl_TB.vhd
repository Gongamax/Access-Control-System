library ieee;
use ieee.std_logic_1164.all;

entity SerialControl_TB is
end SerialControl_TB;

architecture behavioral of SerialControl_TB is
  
  -- Instantiate the component
  component SerialControl
    Port(--Input ports
	 enRx		: in std_logic;
	 accept		: in std_logic;
      eq5 		: in std_logic;
	  clk			: in std_logic;
	  reset		: in std_logic;
	  --Output ports
	  clr 	   : out std_logic;
	  wr		  	: out std_logic;
	  DXval		: out std_logic;
	  busy		: out std_logic
);
  end component;
  

  -- Component signals
  --Inputs
  signal reset, clk: std_logic := '0';
  signal enRx, accept,eq5 : std_logic;
  
  --Outputs
  signal clr, wr, DXval, busy: std_logic;
  
   -- Constants
  constant CLK_PERIOD : time := 10 ns;

begin
  -- Instantiate the component under test
  UUT: SerialControl
    port map (enRx => enRx,
              accept => accept,
              eq5 => eq5,
              clk => clk,
              reset => reset,
              clr => clr,
              wr => wr,
              DXval => DXval,
              busy => busy
			  );
	clk <= not clk after 10 ns;

   -- Stimulus process
   stim_proc: process
   begin	
   
    -- Initialize inputs
	wait for 20 ns;
	enRx <= '1';
	accept <= '0';
	eq5 <= '0';
    reset <= '1';
   wait for 20 ns;
    reset <= '0';
   wait for 20 ns;
    -- Test case 1: Not Started State
   wait for 20 ns;
    assert (clr = '1' and wr = '0' and DXval = '0' and busy = '0')
	report "Test case 1 failed" severity error;
	wait for 40 ns;
	enRx <= '0';
	wait for 20 ns;
	-- Test case 2: Shift Register Starts State
     assert (clr = '0' and wr = '1' and DXval = '0' and busy = '1')
      report "Test case 2 failed" severity error;
   wait for 40 ns;
   --Back to start
   enRx <= '1';
   wait for 20 ns;
   -- Test case 3: Eq5 is not 5 so it will go to the not started state
   assert (clr = '1' and wr = '0' and DXval = '0' and busy = '0')
      report "Test case 3 failed" severity error;
	wait for 40 ns;
	enRx <= '0';
	wait for 20 ns;
	-- Test case 4: Shift Register Starts State
     assert (clr = '0' and wr = '1' and DXval = '0' and busy = '1')
      report "Test case 4 failed" severity error;
   wait for 40 ns;
   enRx <= '1';
   eq5 <= '1';
   wait for 20 ns;
	-- Test case 5: Valid Plot state
	 assert (clr = '0' and wr = '0' and DXval = '1' and busy = '1')
      report "Test case 5 failed" severity error;
	wait for 40 ns;
	accept <= '1';  
	wait for 20 ns;
   -- Test case 6: Final State
     assert (clr = '0' and wr = '0' and DXval = '0' and busy = '1')
    report "Test case 2 failed" severity error;
	wait for 40 ns;
	accept <= '0';
	wait for 20 ns;
	-- Test case 7: Not start state
    assert (clr = '1' and wr = '0' and DXval = '0' and busy = '0')
    report "Test case 7 failed" severity error;
	
		wait;
		
   end process;

END;
