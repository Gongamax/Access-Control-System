library ieee;
use ieee.std_logic_1164.all;

entity RingBufferControl_TB is
end RingBufferControl_TB;

architecture behavioral of RingBufferControl_TB is
  
  -- Instantiate the component
  component RingBufferControl
    Port (DAV : in std_logic;
          CTS : in std_logic;
          full : in std_logic;
          empty : in std_logic;
          clk : in std_logic;
          reset : in std_logic;
          Wr : out std_logic;
          selnPG : out std_logic;
          incPut : out std_logic;
          incGet : out std_logic;
          Wreg : out std_logic;
          DAC : out std_logic);
  end component;
  

  -- Component signals
  --Inputs
  signal reset, clk, full : std_logic := '0';
  signal empty: std_logic := '1';
  signal DAV, CTS : std_logic;
  
  --Outputs
  signal Wr, selnPG, incPut, incGet, Wreg, DAC: std_logic;
  
   -- Constants
  constant CLK_PERIOD : time := 10 ns;

begin
  -- Instantiate the component under test
  UUT: RingBufferControl
    port map (DAV => DAV,
              CTS => CTS,
              full => full,
              empty => empty,
              clk => clk,
              reset => reset,
              Wr => Wr,
              selnPG => selnPG,
              incPut => incPut,
              incGet => incGet,
              Wreg => Wreg,
              DAC => DAC
			  );
	clk <= not clk after 10 ns;

   -- Stimulus process
   stim_proc: process
   begin	
   
    -- Initialize inputs
	wait for 20 ns;
    reset <= '1';
   wait for 20 ns;
    reset <= '0';
   wait for 20 ns;
    -- Test case 1: Write memory state
    DAV <= '1';
	CTS <= '0';
   wait for 20 ns;
    assert (Wr = '0' and selnPG = '1' and incPut = '0' and incGet = '0' and Wreg = '0' and DAC = '0')
	report "Test case 1 failed" severity error;
	wait for 40 ns;
	
	-- Test case 2: Write done state
    assert (Wr = '1' and selnPG = '1' and incPut = '0' and incGet = '0' and Wreg = '0' and DAC = '0')
      report "Test case 2 failed" severity error;
   wait for 40 ns;
   
   -- Test case 3: IncPut state
    assert (Wr = '0' and selnPG = '0' and incPut = '1' and incGet = '0' and Wreg = '0' and DAC = '0')
      report "Test case 2 failed" severity error;
	wait for 40 ns;
	
	-- Test case 4: Finish Write state
	DAV <= '0';
	assert (Wr = '0' and selnPG = '0' and incPut = '0' and incGet = '0' and Wreg = '0' and DAC = '1')
      report "Test case 2 failed" severity error;
	wait for 40 ns;
	
    --Back to start
    DAV <= '0';
   wait for 40 ns;

   -- Test case 5: Start state
   empty <= '0';
   CTS   <= '1';
    assert (Wr = '0' and selnPG = '0' and incPut = '0' and incGet = '0' and Wreg = '0' and DAC = '0')
    report "Test case 2 failed" severity error;
	wait for 20 ns;
	
	-- Test case 6: Attend output state
   CTS <= '0';
    assert (Wr = '0' and selnPG = '0' and incPut = '0' and incGet = '0' and Wreg = '1' and DAC = '0')
    report "Test case 2 failed" severity error;
	wait for 20 ns;
	
	-- Test case 7: Output done state
    assert (Wr = '0' and selnPG = '0' and incPut = '0' and incGet = '1' and Wreg = '0' and DAC = '0')
    report "Test case 2 failed" severity error;
	wait for 20 ns;
	-- Test case 5: Start state
    assert (Wr = '0' and selnPG = '0' and incPut = '0' and incGet = '0' and Wreg = '0' and DAC = '0')
    report "Test case 2 failed" severity error;
	
		wait;
		
   end process;

END;
