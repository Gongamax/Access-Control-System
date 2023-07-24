library ieee;
use ieee.std_logic_1164.all;

entity Dispatcher_TB is
end Dispatcher_TB;

architecture sim of Dispatcher_TB is

  -- Component Declaration
component Dispatcher is 
Port(
--Input ports
     Dval		: in std_logic;
	  Din			: in std_logic_vector(4 downto 0);
	  clk			: in std_logic;
	  reset		: in std_logic;
	  count12	: in std_logic;
	  count0		: in std_logic;
--Output ports
	  ceCounter	: out std_logic;
	  updown		: out std_logic;
	  Wrl 	   : out std_logic;
	  Dout		: out std_logic_vector(4 downto 0);
	  done		: out std_logic
);
  end component;

  -- Component signals
  -- Inputs
  signal Dval,clk,reset    : std_logic := '0';
  signal Din     : std_logic_vector(4 downto 0) := "10101";
  signal count12, count0 : std_logic := '0';
  --Outputs  
  signal ceCounter	: std_logic;
  signal updown		: std_logic;
  signal Wrl     		: std_logic;
  signal Dout    		: std_logic_vector(4 downto 0);
  signal done    		: std_logic;

  -- Constants
    constant CLK_PERIOD : time := 10 ns;

begin

  -- Component Instantiation
  UUT : Dispatcher
    Port Map(
   --Input ports
     Dval => Dval,
	  Din	=> Din,
	  clk	=> clk,
	  reset	=> reset,
	  count12 => count12,
	  count0	=> count0,
	--Output ports
	  ceCounter	=> ceCounter,
	  updown	=> updown,
	  Wrl => Wrl,
	  Dout => Dout,
	  done => done
    );
	 
	 
	 clk <= not clk after CLK_PERIOD/2;

  -- Stimulus process
   stim_proc: process
   begin	
	
  -- Initialize inputs
	wait for CLK_PERIOD;
    reset <= '1';
   wait for CLK_PERIOD;
    reset <= '0';
   wait for CLK_PERIOD;

  -- Test case 1: Doesn't exit No_deliver state
	Dval <= '0';
   wait for CLK_PERIOD;
    assert (ceCounter = '0' and updown = '0' and Wrl = '0' and done = '0' and Dout = "00000")
	report "Test case 1 failed" severity error;
	wait for CLK_PERIOD * 2;
	
  -- Test case 2: Delivering state
	Dval <= '1';
	wait for CLK_PERIOD;
    assert (ceCounter = '1' and updown = '1' and Wrl = '1' and done = '0' and Dout = "10101")
      report "Test case 2 failed" severity error;
   wait for CLK_PERIOD * 2;
	
  -- Test case 3: Delivering_done state
	count12 <= '1';
	wait for CLK_PERIOD;
    assert (ceCounter = '1' and updown = '0' and Wrl = '0' and done = '1' and Dout = "10101")
      report "Test case 3 failed" severity error;
   wait for CLK_PERIOD * 2;
	
  -- Test case 4: No_deliver state
	count0 <= '1';
	count12 <= '0';
	Dval <= '0';
	wait for CLK_PERIOD;
    assert (ceCounter = '0' and updown = '0' and Wrl = '0' and done = '0' and Dout = "10101")
      report "Test case 4 failed" severity error;
   wait for CLK_PERIOD * 2;
	
		wait;
		
   end process;

end;
