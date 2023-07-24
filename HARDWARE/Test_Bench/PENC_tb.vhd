library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PENC_tb is
end PENC_tb;

architecture behavioral of PENC_tb is

  -- Component Declaration for the Unit Under Test (UUT)

  component PENC
    port(
         I : in  STD_LOGIC_VECTOR(3 downto 0);
         Y : out  STD_LOGIC_VECTOR(1 downto 0);
         GS : out  STD_LOGIC
        );
  end component;

  --Inputs
  signal I : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

  --Outputs
  signal Y : STD_LOGIC_VECTOR(1 downto 0);
  signal GS : STD_LOGIC;

begin

  -- Instantiate the Unit Under Test (UUT)
  uut: PENC port map (
    I => I,
    Y => Y,
    GS => GS
  );

  -- Stimulus
  stim_proc: process
  begin        
    I <= "0000";
    wait for 10 ns;
    
    I <= "0001";
    wait for 10 ns;
    
    I <= "0010";
    wait for 10 ns;
    
    I <= "0011";
    wait for 10 ns;
    
    I <= "0100";
    wait for 10 ns;
    
    I <= "0101";
    wait for 10 ns;
    
    I <= "0110";
    wait for 10 ns;
    
    I <= "0111";
    wait for 10 ns;
    
    I <= "1000";
    wait for 10 ns;
    
    I <= "1001";
    wait for 10 ns;
    
    I <= "1010";
    wait for 10 ns;
    
    I <= "1011";
    wait for 10 ns;
    
    I <= "1100";
    wait for 10 ns;
    
    I <= "1101";
    wait for 10 ns;
    
    I <= "1110";
    wait for 10 ns;
    
    I <= "1111";
    wait for 10 ns;
    
    wait;
  end process;

end behavioral;
