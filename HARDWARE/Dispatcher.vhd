library ieee;
use ieee.std_logic_1164.all;

entity Dispatcher is 
Port(
--Input ports
     Dval		: in std_logic;
	  Din			: in std_logic_vector(4 downto 0);
	  clk			: in std_logic;
	  reset		: in std_logic;
	  count12	: in std_logic;
	  count0		: in std_logic;
--Output ports
	  ceCounter	: out std_logic;
	  updown		: out std_logic;
	  Wrl 	   : out std_logic;
	  Dout		: out std_logic_vector(4 downto 0);
	  done		: out std_logic
);
	  
end Dispatcher;

architecture behavioral of Dispatcher is

type State is (No_deliver, Delivering, Deliver_done);

signal CurrentState, NextState : State;

begin
CurrentState <= No_deliver when reset = '1' else NextState when rising_edge(clk);

--Progress to next state
GenerateNextState:
process (Dval, count12)
	begin
		case CurrentState is
			when No_deliver	=> if (Dval = '1') then
											NextState <= Delivering;
										else
											NextState <= No_deliver;
										end if;
										
			when Delivering	=> if (count12 = '1') then
											NextState <= Deliver_done;
										else 
											Nextstate <= Delivering;
										end if;
										
			when Deliver_done => if (count0 = '1') then
											NextState <= No_deliver;
										else
											Nextstate <= Deliver_done;
										end if;
		end case;
	end process;
	
--Output values
ceCounter <= '1' when (CurrentState = Delivering or CurrentState = Deliver_done) else '0';
updown <= '1' when (CurrentState = Delivering) else '0';
Wrl <= '1' when (CurrentState = Delivering) else '0';
done <= '1' when (CurrentState = Deliver_done) else '0';
Dout <= Din;

end behavioral;