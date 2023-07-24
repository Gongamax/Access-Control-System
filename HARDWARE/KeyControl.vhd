library ieee;
use ieee.std_logic_1164.all;

entity KeyControl is 
Port(--Input ports
     reset		: in std_logic;
	  clk			: in std_logic;
     Kpress 	: in std_logic;
	  Kack      : in std_logic;
	  --Output ports
	  Kval 	   : out std_logic;
	  Kscan  	: out std_logic_vector(1 downto 0) -- Alterei aqui 
	  );
	  
end KeyControl;
architecture behavioral of KeyControl is

type State is (Scanning, RegisterDeliver, Kval_true, Kval_false);

signal CurrentState, NextState : State;

begin
CurrentState <= Scanning when reset = '1' else NextState when rising_edge(clk);

--Progress to next state
GenerateNextState:
process (CurrentState, Kack, Kpress)
	begin
		case CurrentState is
			when Scanning		=> if (Kpress = '1') then
											NextState <= RegisterDeliver;
										else
											NextState <= Scanning;
												end if;
			when RegisterDeliver => NextState <= Kval_true;						
										
			when Kval_true	=> if (Kack = '1') then
											NextState <= Kval_false;
										else
											NextState <= Kval_true;
										end if;
								
			when Kval_false => if (Kack = '0' and Kpress = '0') then 
											NextState <= Scanning;
										else 
											NextState <= Kval_false;
										end if;
		end case;
	end process;
	
--Output values
Kval <= '1' when (CurrentState = Kval_true) else '0';
Kscan <= "01" when (CurrentState = Scanning and Kpress = '0') 
	else "10" when(CurrentState = RegisterDeliver) else "00";

end behavioral;