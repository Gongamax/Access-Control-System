library ieee;
use ieee.std_logic_1164.all;

entity SerialControl is 
Port(--Input ports
     enRx		: in std_logic;
	  accept		: in std_logic;
     eq5 		: in std_logic;
	  clk			: in std_logic;
	  reset		: in std_logic;
	  --Output ports
	  clr 	   : out std_logic;
	  wr		  	: out std_logic;
	  DXval		: out std_logic;
	  busy		: out std_logic
);
			
end SerialControl;

architecture behavioral of SerialControl is

type State is (Not_started, Shift_Register_starts, Valid_plot, Final_state);

signal CurrentState, NextState : State;

begin
CurrentState <= Not_started when reset = '1' else NextState when rising_edge(clk);

--Progress to next state
GenerateNextState:
process (CurrentState, enRx, eq5, accept)
	begin
		case CurrentState is
			when Not_started	=> if (enRx = '0') then
												NextState <= Shift_Register_starts;
											else
												NextState <= Not_started;
											end if;
										
			when Shift_Register_starts		=> if (enRX = '1' and eq5 = '1') then
															NextState <= Valid_plot;
														elsif(enRX= '1' and eq5 = '0') then 
															NextState <= Not_started;
														else 
															NextState <= Shift_Register_starts;
														end if;
								
			when Valid_plot => if (accept = '1') then 
											NextState <= Final_state;
										else 
											NextState <= Valid_plot;
										end if;
										
			when Final_state => if (accept = '0') then
											NextState <= Not_started;
										else
											NextState <= Final_State;
										end if;
		end case;
	end process;
	
--Output values
clr <= '1' when (CurrentState = Not_started	) else '0';
wr <= '1' when (CurrentState = Shift_Register_starts) else '0';
DXval <= '1' when (CurrentState = Valid_plot) else '0';
busy <= '0' when (CurrentState = Not_started) else '1';

end behavioral;