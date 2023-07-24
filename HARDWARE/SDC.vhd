library ieee;
use ieee.std_logic_1164.all;

entity SDC is
port(
--Input ports
		nSS 		: in std_logic;
		SCLK	 	: in std_logic;
		SDX		: in std_logic;
		RESET		: in std_logic;
		Mclk 		: in std_logic;
		Sopen		: in std_logic;
		Sclose 	: in std_logic;
		Psensor	: in std_logic;
--Output ports
		OnOff		: out std_logic;
		Dout	 	: out std_logic_vector(4 downto 0);
		busy     : out std_logic
);
end SDC;

architecture structural of SDC is

component SerialReceiver is 
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
		busy 		: out std_logic
);
end component;

component DoorController is
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
end component;

--signals
signal Dval_signal : std_logic;
signal D : std_logic_vector(4 downto 0);
signal done_accept : std_logic;

begin
UO: SerialReceiver port map(SDX => SDX, nSS => nSS, SCLK => SCLK, RESET => RESET, Mclk => Mclk, 
									accept => done_accept, DXval => Dval_signal, D => D,busy => busy);
U1: DoorController port map(Dval => Dval_signal, Din0_4 => D, done => done_accept, clk => Mclk, reset => RESET, 
									OnnOff => OnOff, Dout0_4 => Dout, Sclose => Sclose, Sopen => Sopen , Psensor => Psensor);

end structural; 
