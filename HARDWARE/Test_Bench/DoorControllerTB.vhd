LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY DoorController_TB IS
END DoorController_TB;
 
ARCHITECTURE behavior OF DoorController_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DoorController IS
	Port(--Input ports
     Dval		: in std_logic;
	  Din0_4		: in std_logic_vector(4 downto 0);
     Sclose		: in std_logic;
	  Sopen		: in std_logic;
	  Psensor	: in std_logic;
	  clk			: in std_logic;
	  reset		: in std_logic;
	  --Output ports
	  OnnOff	   : out std_logic;
	  Dout0_4	: out std_logic_vector(4 downto 0);
	  done		: out std_logic
		);
	END COMPONENT;
    

    --Inputs
    signal clk, reset, Dval : std_logic := '0';
	signal Din0_4 : std_logic_VECTOR(4 downto 0);
	signal Sopen, Sclose, Psensor : std_logic := '0'; 

 	--Outputs
	signal OnnOff, done : std_logic;
	signal Dout0_4 : std_logic_VECTOR(4 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DoorController PORT MAP (
          clk => clk,
		  reset => reset,
          Dval => Dval,
		  Din0_4 => Din0_4,
          Sclose => Sclose,
          Sopen => Sopen,
		  Psensor => Psensor,
		  OnnOff => OnnOff,
		  done => done,
          Dout0_4 => Dout0_4
        );

	clk <= not clk after 10 ns; 

   -- Stimulus process
   stim_proc: process
   begin		
		
		 -- Test case 1: Write Open door state
		wait for 20 ns;
		reset <= '1';
		Din0_4 <= "00101";
		
		wait for 20 ns;
		reset <= '0';
		Dval <= '1';
		assert (OnnOff = '1' and Dout0_4 = "00101" and done = '0')
		report "Test case 1 failed" severity error;
		wait for 40 ns;
		-- Test case 2: Write isDone state
		Sopen <= '1';
		assert (OnnOff = '0' and Dout0_4 = "00101" and done ='1')
		report "Test case 2 failed" severity error;
		wait for 40 ns;
		-- Test case 3: Write Received state
		Dval <= '0';
		assert (OnnOff = '0' and Dout0_4 = "00100" and done ='0')
		report "Test case 3 failed" severity error;
		wait for 40 ns;
		-- Test case 4: Write Close door state
		Din0_4 <= "00100";
		Dval <= '1';
		assert (OnnOff = '1' and Dout0_4 = "00100" and done ='0')
		report "Test case 4 failed" severity error;
		wait for 40 ns;
		-- Test case 5: Write Open door state because Psensor
		Psensor <= '1';
		assert (OnnOff = '0' and Dout0_4 = "00101" and done = '0')
		report "Test case 5 failed" severity error;
		wait for 40 ns;
		-- Test case 6: Write Close door state because Psensor
		Psensor <= '0';
		assert (OnnOff = '1' and Dout0_4 = "00100" and done = '0')
		report "Test case 6 failed" severity error;
		wait for 40 ns;
		-- Test case 7: Write isDone  state 
		Sclose <= '1';
		assert (OnnOff = '0' and Dout0_4 = "00100" and done ='1')
		report "Test case 7 failed" severity error;
		wait for 40 ns;
		-- Test case 8: Write Received  state 
		Dval <= '0';
		assert (OnnOff = '0' and Dout0_4 = "00100" and done ='0')
		report "Test case 8 failed" severity error;
		
		
		wait;
		
   end process;

END;
