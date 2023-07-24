LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY FFD_tb IS
END FFD_tb;

ARCHITECTURE behavior OF FFD_tb IS 

  -- Component declaration for the unit under test (UUT)
  COMPONENT FFD
  PORT(
     CLK : IN  std_logic;
     RESET : IN  std_logic;
     SET : IN  std_logic;
     D : IN  std_logic;
     EN : IN  std_logic;
     Q : OUT  std_logic
    );
  END COMPONENT;

  --Inputs
  signal CLK : std_logic := '0';
  signal RESET : std_logic := '0';
  signal SET : std_logic := '0';
  signal D : std_logic := '0';
  signal EN : std_logic := '0';

  --Outputs
  signal Q : std_logic;

BEGIN

  -- Instantiate the Unit Under Test (UUT)
  uut: FFD PORT MAP (
     CLK => CLK,
     RESET => RESET,
     SET => SET,
     D => D,
     EN => EN,
     Q => Q
    );

  -- Clock process definitions
  clk_process :process
  begin
        CLK <= '0';
        wait for 5 ns;
        CLK <= '1';
        wait for 5 ns;
  end process;

  -- Stimulus process
  stim_proc: process
  begin        
        RESET <= '1';
        SET <= '0';
        D <= '0';
        EN <= '0';
        wait for 10 ns;
        
        RESET <= '0';
        SET <= '1';
        D <= '1';
        EN <= '0';
        wait for 10 ns;
        
        RESET <= '0';
        SET <= '0';
        D <= '1';
        EN <= '1';
        wait for 10 ns;
        
        RESET <= '0';
        SET <= '0';
        D <= '0';
        EN <= '1';
        wait for 10 ns;
        
        RESET <= '1';
        SET <= '0';
        D <= '0';
        EN <= '1';
        wait for 10 ns;
        
        wait;
  end process;

END;
