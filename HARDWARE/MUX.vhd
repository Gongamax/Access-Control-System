library ieee;
use ieee.std_logic_1164.all;
entity MUX is
port(
--Input ports
  A, B: in std_logic_vector(2 downto 0);
  S: in std_logic;
  --Output ports
  Y: out std_logic_vector(2 downto 0)
  );
  end MUX;
  
architecture behavioral of MUX is
begin 
 
Y(0) <= ((A(0) and not S)  or (B(0) and S)) ;
Y(1) <= ((A(1) and not S)  or (B(1) and S)) ;
Y(2) <= ((A(2) and not S)  or (B(2) and S)) ;
 end behavioral;