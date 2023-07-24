library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity Decoder is
PORT(-- Intput ports
		S : in STD_LOGIC_VECTOR(1 downto 0);
	  -- Output ports
		O : out STD_LOGIC_VECTOR(2 downto 0));

end Decoder;

architecture Behavioral  of Decoder is
begin

 
O(0) <= not S(0) and not S(1);
O(1) <= S(0) and not S(1);
O(2) <= not S(0) and S(1);
 

end Behavioral;