LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FFD IS
PORT(-- Input ports
		CLK : in std_logic;
      RESET : in STD_LOGIC;
      SET : in std_logic;
      D : in STD_LOGIC;
      EN : in STD_LOGIC;
	  -- Output ports
      Q : out std_logic);
END FFD;

ARCHITECTURE logicFunction OF FFD IS

BEGIN


Q <= '0' when RESET = '1' else '1' when SET = '1' else D WHEN rising_edge(clk) and EN = '1';


END LogicFunction;