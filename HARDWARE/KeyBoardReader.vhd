library ieee;
use ieee.std_logic_1164.all;

entity KeyBoardReader is
port(
--Input ports
		Mclk 		: in std_logic;
		Reset 	: in  std_logic;
		Ack 		: in std_logic;
		Lines		: in std_logic_vector(3 downto 0);
--Output ports
		Q0_3		: out std_logic_vector(3 downto 0);
		Dval 		: out std_logic;
		Columns 	: out std_logic_vector(2 downto 0)
);
end KeyBoardReader;

architecture structural of KeyBoardReader is

component KeyDecode is
port(
--Input ports
		Mclk    	: in std_logic;
		Reset    : in std_logic;
		Kack		: in std_logic;
		Lines		: in std_logic_vector(3 downto 0); -- LINHAS 
--Output ports
		Kval		: out std_logic;
		K0_3		: out std_logic_vector(3 downto 0);
		Columns  : out std_logic_vector(2 downto 0) -- Colunas;
);
end component;

component RingBuffer is
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
end component;

component OutputBuffer is
port( 
-- Input Ports 
		Mclk  	: 	in  std_logic;
		Reset 	: 	in  std_logic;
		Load		: 	in  std_logic;
		Ack		: 	in std_logic;
		D0_3		:	in  std_logic_vector(3 downto 0);
-- Output Ports
		OBfree 	: 	out std_logic;
		Q0_3		:	out std_logic_vector(3 downto 0);
		Dval		: 	out std_logic
);
end component;

signal Dal : std_logic;
signal free : std_logic;
signal d0_3	: std_logic_vector(3 downto 0);
signal wsignal : std_logic;
signal d_q : std_logic_vector(3 downto 0);
signal Dack : std_logic;
--signal ackx : std_logic;
--signal dout : std_logic_vector(3 downto 0);

begin 
U0: KeyDecode port map(Mclk => Mclk, Reset => Reset, Kack => Dack, Lines => Lines, K0_3 => d0_3, Kval => Dal, 
								Columns => Columns);

U1: RingBuffer port map(Mclk => Mclk, Reset => Reset, DAV => Dal, CTS => free, D0_3 => d0_3, Wreg => wsignal,
						Q0_3 => d_q, DAC => Dack);
								
U2: OutputBuffer port map(Mclk => Mclk, Reset => Reset, Load => wsignal, Ack => Ack, D0_3 => d_q, OBfree => free,
						Q0_3 => Q0_3, Dval => Dval);
									
									

end structural;