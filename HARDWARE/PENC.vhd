library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity PENC is
Port(
 I : in STD_LOGIC_VECTOR(3 downto 0);
 Y : out STD_LOGIC_VECTOR(1 downto 0);
 GS : out STD_LOGIC);
end PENC;

architecture Behavioral of PENC is
begin
 
Y(0) <= (I(1) and (not I(2))) or I(3);
Y(1) <= I(2) or I(3);
GS <= I(0) or I(1) or I(2) or I(3);
 
end Behavioral;