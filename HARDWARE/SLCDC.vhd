library ieee;
use ieee.std_logic_1164.all;

entity SLCDC is
port(
--Input ports
		nSS 		: in std_logic;
		SCLK	 	: in std_logic;
		SDX		: in std_logic;
		RESET		: in std_logic;
		Mclk 		: in std_logic;
--Output ports
		Wrl		: out std_logic;
		Dout	 	: out std_logic_vector(4 downto 0)
);
end SLCDC;

architecture structural of SLCDC is

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
		DXval 	: out std_logic
);
end component;

component LCDdispatcher is
port(
--Input ports
		Dval		: in std_logic;
		Din	 	: in std_logic_vector(4 downto 0);
		Mclk 		: in std_logic;
		reset	: in std_logic;
--Output ports
		Wrl 	   : out std_logic;
	   Dout		: out std_logic_vector(4 downto 0);
	   done		: out std_logic
);
end component;

--signals
signal Dval_signal : std_logic;
signal D : std_logic_vector(4 downto 0);
signal done_accept : std_logic;

begin
UO: SerialReceiver port map(SDX => SDX, nSS => nSS, SCLK => SCLK, RESET => RESET, Mclk => Mclk, 
									accept => done_accept, DXval => Dval_signal, D => D);
U1: LCDdispatcher port map(Dval => Dval_signal, Din => D, done => done_accept, Mclk => Mclk, reset => RESET, 
									Wrl => Wrl, Dout => Dout);

end structural; 
