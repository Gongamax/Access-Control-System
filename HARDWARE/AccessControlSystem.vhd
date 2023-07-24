library ieee;
use ieee.std_logic_1164.all;

ENTITY AccessControlSystem IS
port(
--Input ports
		Lines: in std_logic_vector(3 downto 0);
		Mclk		: in std_logic;
		Reset		: in std_logic;
		Sopen		: in std_logic;
		Sclose 	: in std_logic;
		Psensor	: in std_logic;
		M	: in std_logic;
--Output ports
		Columns	: out std_logic_vector(2 downto 0);
		E 			: out std_logic;
		RS 		: out std_logic;
		D0_3		: out std_logic_VECTOR(3 downto 0);
		Dout		: out std_logic_vector(4 downto 0);
		Onoff		: out std_logic
		--Leds 		: out std_logic_VECTOR(5 downto 0)
		
);
end AccessControlSystem;

architecture structural of AccessControlSystem is


component KeyBoardReader is
port(
--Input ports
		Mclk    	: in std_logic;
		Reset    : in std_logic;
		Ack 		: in std_logic;
		Lines		: in std_logic_vector(3 downto 0); -- LINHAS 
--Output ports
		Q0_3		: out std_logic_vector(3 downto 0);
		Dval 		: out std_logic;
		Columns 	: out std_logic_vector(2 downto 0) -- Colunas
);
end component;

component SLCDC is
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
end component;

component SDC is
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
end component; 

component UsbPort is
port(
--Input port
	inputPort  :  in std_logic_vector(7 DOWNTO 0);
--Output port
	outputPort :  out std_logic_vector(7 DOWNTO 0)
); 
end component;
--Signals
signal ack_s : std_logic;
signal in_usb : std_logic_vector(5 downto 0);
signal out_usb : std_logic_vector(4 downto 0);

begin		
U0: KeyBoardReader port map(Mclk => Mclk, Reset => Reset, Ack => ack_s, Q0_3(0) => in_usb(0), Q0_3(1) => in_usb(1),
									Q0_3(2) => in_usb(2), Q0_3(3) => in_usb(3), Dval => in_usb(4), Lines => Lines, 
									Columns => Columns);
									
U1: SLCDC port map(nSS => out_usb(0), SDX => out_usb(1), SCLK => out_usb(2), Wrl => E, Dout(0) => RS,
						RESET => Reset, Mclk => Mclk,  Dout(4) => D0_3(3), Dout(3) => D0_3(2),
						Dout(2) => D0_3(1), Dout(1) => D0_3(0));
						
U2: SDC port map(nSS => out_usb(3), SDX => out_usb(1), SCLK => out_usb(2), RESET => Reset, Mclk => Mclk, 
						Sopen => Sopen, Sclose 	=> Sclose, Psensor => Psensor, busy => in_usb(5), 
						Dout => Dout, Onoff => Onoff);
									
U3: UsbPort port map(inputPort(0) => in_usb(0), inputPort(1) => in_usb(1), inputPort(2) => in_usb(2),
                     inputPort(3) => in_usb(3), inputPort(4) => in_usb(4), inputPort(5) => in_usb(5),
							inputPort(6) => M,
							outputPort(7) => ack_s,outputPort(0) => out_usb(0), outputPort(1) => out_usb(1), 
							outputPort(2) => out_usb(2), outputPort(3) => out_usb(3));
	

							
end structural;