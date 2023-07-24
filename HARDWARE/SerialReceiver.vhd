library ieee;
use ieee.std_logic_1164.all;

entity SerialReceiver is
port(
--Input ports
		SDX 		: in std_logic;
		SCLK	 	: in std_logic;
		nSS 		: in std_logic;
		accept	: in std_logic;
		RESET		: in std_logic;
		Mclk 		: in std_logic;
--Output ports
		D			: out std_logic_vector(4 downto 0);
		DXval 	: out std_logic;
		busy     : out std_logic
);
end SerialReceiver;

architecture structural of SerialReceiver is

component Shift_Register is
Port ( 
		clk : in  std_logic;
       D : in  std_logic;
       RESET: in std_logic;
       enable : in std_logic;
       Q : out std_logic_vector(4 downto 0)
 );
end component;

component Counter3Bit is
PORT(
-- Input ports
		CE : in std_logic;
		CLK : in std_logic;
		clr: in std_logic;
-- Output ports
		Q: out std_logic_vector (2 downto 0));
end component;
    
component SerialControl is
Port(
--Input ports
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
end component;

--signals
signal wr_enable : std_logic;
signal clear : std_logic;
signal seq5 : std_logic_vector(2 downto 0);
signal eq5 : std_logic;
--signal ce : std_logic;

begin
U0: Shift_Register port map(clk => SCLK, D => SDX, RESET => RESET, enable => wr_enable, Q => D);
U1: Counter3Bit port map(CE => '1', CLK => SCLK, clr => clear, Q => seq5);
U2: SerialControl port map(enRx => nSS, accept => accept, eq5 => eq5, clk => Mclk, reset => RESET, DXval => DXval,
									wr => wr_enable,clr=> clear,busy =>busy);

eq5 <= seq5(0) and not seq5(1) and seq5(2);


end structural;
