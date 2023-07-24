library ieee;
use ieee.std_logic_1164.all;

entity BufferControl is 
Port(--Input ports
     Load		: in std_logic;
	  ACK			: in std_logic;
	  CLK			: in std_logic;
	  reset		: in std_logic;
	  --Output ports
	  Wreg	   : out std_logic;
	  OBfree		: out std_logic;
	  Dval		: out std_logic
);
	  
end BufferControl;

architecture behavioral of BufferControl is

type State is (Start, Wreg_1, Store_data, Finish);

signal CurrentState, NextState : State;

begin
CurrentState <= Start when reset = '1' else NextState when rising_edge(CLK);

--Progress to next state
GenerateNextState:
process (CurrentState, Load, ACK)
	begin
		case CurrentState is
			when Start	=> if (Load = '1') then
									NextState <= Wreg_1;
								else
									NextState <= Start;
								end if;
								
			when Wreg_1 => NextState <= Store_data;
										
			when Store_data => if (ACK = '1') then
										NextState <= Finish;
									else
										NextState <= Store_data;
									end if;
										
			when Finish => if (ACK = '0') then
									NextState <= Start;
								else
									NextState <= Finish;
								end if;
		end case;
	end process;
	
--Output values
OBfree <= '1' when (CurrentState = Start) else '0';
Wreg <= '1' when (CurrentState = Wreg_1) else '0';
Dval <= '1' when (CurrentState = Store_data) else '0';

end behavioral;