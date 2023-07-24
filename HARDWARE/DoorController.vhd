library ieee;
use ieee.std_logic_1164.all;

entity DoorController is 
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
	  
end DoorController;

architecture behavioral of DoorController is

type State is (Received, Open_door, Close_door, isDone);

signal CurrentState, NextState : State;

begin
CurrentState <= Received when reset = '1' else NextState when rising_edge(clk);

--Progress to next state
GenerateNextState:
process (CurrentState, Dval, Din0_4, Sclose, Sopen, Psensor)
	begin
		case CurrentState is
			when Received	=> if (Dval = '1' and Din0_4(0) = '1') then
										NextState <= Open_door;
									elsif (Dval = '1' and Din0_4(0) = '0') then
										NextState <= Close_door;
									else
										NextState <= Received;
									end if;
										
			when Open_door	=> if (Sopen = '1' and Din0_4(0) = '1') then
										NextState <= isDone;
									elsif (Sopen = '1' and Din0_4(0) = '0') then
										NextState <= Close_door;
									else
										NextState <= Open_door;
									end if;
								
			when Close_door => if (Psensor = '1') then 
										NextState <= Open_door;
									 elsif (Psensor = '0' and Sclose = '1') then
										NextState <= isDone;
						  			 else 
										NextState <= Close_door;
									 end if;
										
			when isDone => if (Dval = '0') then
									NextState <= Received;
								else
									NextState <= isDone;
								end if;
		end case;
	end process;
	
--Output values

--Output values
--Output values
OnnOff <= '1' when ((CurrentState = Open_door and Sopen = '0') or CurrentState = Close_door) else '0';
done <= '1' when (CurrentState = isDone) else '0';
Dout0_4(0) <= '1' when(CurrentState = Open_door) else '0';
Dout0_4(4 downto 1) <= Din0_4(4 downto 1);

end behavioral;