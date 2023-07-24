library ieee;
use ieee.std_logic_1164.all;

entity RingBuffer is 
port( 
-- Input Ports 
		Mclk  	: 	in  std_logic;
		Reset 	: 	in  std_logic;
		DAV		: 	in  std_logic;
		CTS		: 	in std_logic;
		D0_3		:	in  std_logic_vector(3 downto 0);
-- Output Ports
		Wreg 		: 	out std_logic;
		Q0_3		:	out std_logic_vector(3 downto 0);
		DAC 		: 	out std_logic);
end RingBuffer;

architecture structural of RingBuffer is

component Ram is
generic(
		ADDRESS_WIDTH : natural := 3;
		DATA_WIDTH : natural := 4
	);
	port(
		address : in std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
		wr: in std_logic;
		din: in std_logic_vector(DATA_WIDTH - 1 downto 0);
		dout: out std_logic_vector(DATA_WIDTH - 1 downto 0)
	);
end component;


component RingBufferControl is
port(
DAV		: in std_logic;
     CTS			: in std_logic;
	  full		: in std_logic;
	  empty		: in std_logic;
	  clk			: in std_logic;
	  reset		: in std_logic;
	  --Output ports
	  Wr		   : out std_logic;
	  selnPG		: out std_logic;
	  incPut		: out std_logic;
	  incGet		: out std_logic;
	  Wreg		: out std_logic;
	  DAC			: out std_logic
);
end component; 

component MAC is 
Port(--Input ports
     putget		: in std_logic;
     incPut		: in std_logic;
	  incGet		: in std_logic;
	  clk			: in std_logic;
	  Reset		: in std_logic;
	  --Output ports
	  Address		: out std_logic_vector(2 downto 0);
	  full		: out std_logic;
	  empty	: out std_logic);
end component; 

--Signals
signal fullx  : std_logic;
signal emptyx : std_logic; 
signal addressx: std_logic_vector(2 downto 0);
signal wrl	 : std_logic;
signal putgetx :std_logic;
signal incPutx :std_logic;
signal incGetx :std_logic;


begin 
U0 : RingBufferControl port map(DAV => DAV, clk=> Mclk, reset => Reset, full => fullx,
										  empty => emptyx, CTS => CTS, Wr => wrl, DAC => DAC, Wreg => Wreg,
										  selnPg => putgetx, incPut =>incPutx, incGet=> incGetx);
										  
U1: MAC port map(putget =>putgetx, incPut =>incPutx, incGet => incGetx,full => fullx, empty => emptyx,
				 address=> addressx, clk => Mclk, Reset => Reset);			  
	
U2:  Ram	port map (din => D0_3, dout => Q0_3, wr =>wrl, address => addressx);
	
										  
end structural; 