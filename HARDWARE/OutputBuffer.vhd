library ieee;
use ieee.std_logic_1164.all;

entity OutputBuffer is 
port( 
-- Input Ports 
		Mclk  	: 	in  std_logic;
		Reset 	: 	in  std_logic;
		Load		: 	in  std_logic;
		Ack		: 	in std_logic;
		D0_3		:	in  std_logic_vector(3 downto 0);
-- Output Ports
		OBfree 		: 	out std_logic;
		Q0_3		:	out std_logic_vector(3 downto 0);
		Dval		: 	out std_logic);
end OutputBuffer;

architecture structural of OutputBuffer is

component OutputRegister is
PORT(
        D : in std_logic_vector(3 downto 0);
        CLK : in std_logic;
        RESET : in std_logic;	
        Q : out std_logic_vector(3 downto 0)
    );
end component;


component BufferControl is
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
end component; 


--Signals
signal Wregx : std_logic;


begin 
U0 : OutputRegister port map(D=> D0_3, CLK=> Wregx, Reset => Reset, Q => Q0_3);
										  
U1: BufferControl port map(Load =>Load, Ack => ACK,OBfree=> OBfree,Dval => Dval, Wreg =>Wregx, reset => Reset, CLK =>Mclk);			  
	
										  
end structural; 