library ieee;
use ieee.std_logic_1164.all;

ENTITY AccessControlSystemWrapper IS
port(
--Input ports
		Lines: in std_logic_vector(3 downto 0);
		Mclk		: in std_logic;
		Reset		: in std_logic;
		Pswitch	: in std_logic;
		M			: in std_logic;
--Output ports
		Columns	: out std_logic_vector(2 downto 0);
		E 			: out std_logic;
		RS 		: out std_logic;
		D0_3		: out std_logic_VECTOR(3 downto 0);
		Leds 		: out std_logic_VECTOR(5 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(7 downto 0)

);
end AccessControlSystemWrapper;

architecture structural of AccessControlSystemWrapper is

component AccessControlSystem is
port(
--Input ports
		Lines: in std_logic_vector(3 downto 0);
		Mclk		: in std_logic;
		Reset		: in std_logic;
		Sopen		: in std_logic;
		Sclose 	: in std_logic;
		Psensor	: in std_logic;
		M			: in std_logic;
--Output ports
		Columns	: out std_logic_vector(2 downto 0);
		E 			: out std_logic;
		RS 		: out std_logic;
		D0_3		: out std_logic_VECTOR(3 downto 0);
		Dout		: out std_logic_vector(4 downto 0);
		Onoff		: out std_logic
);
end component;

component door_mecanism is
port(
--Input ports
		MCLK 			: in std_logic;
		RST			: in std_logic;
		onOff			: in std_logic;
		openClose	: in std_logic;
		v				: in std_logic_vector(3 downto 0);
		Pswitch		: in std_logic;
--Output ports
		Sopen			: out std_logic;
		Sclose		: out std_logic;
		Pdetector	: out std_logic;
		HEX0			: out std_logic_vector(7 downto 0);
		HEX1			: out std_logic_vector(7 downto 0);
		HEX2			: out std_logic_vector(7 downto 0);
		HEX3			: out std_logic_vector(7 downto 0);
		HEX4			: out std_logic_vector(7 downto 0);
		HEX5			: out std_logic_vector(7 downto 0)
);
end component;

--signals
signal Door_out: std_logic_vector (4 downto 0);
signal onoff_signal : std_logic;
signal close_signal : std_logic;
signal open_signal : std_logic;
signal detect_signal : std_logic;

begin
U0: AccessControlSystem port map(Lines => Lines, Mclk => Mclk, Reset => Reset, Sopen => open_signal,
											Sclose => close_signal, Psensor => detect_signal, Columns => Columns,
											E => E, RS => RS, D0_3 => D0_3, Dout(0) => Door_out(0), 
											Dout(4 downto 1) => Door_out(4 downto 1), Onoff => onoff_signal, M => M);

U1: door_mecanism port map(MCLK => Mclk, RST => Reset, onOff => onoff_signal, openClose => Door_out(0), 
									v => Door_out(4 downto 1), Sclose => close_signal, Sopen => open_signal, 
									Pdetector => detect_signal, Pswitch => Pswitch,HEX0=>HEX0, HEX1=>HEX1, HEX2=>HEX2, HEX3=>HEX3, HEX4=>HEX4, HEX5=>HEX5);
									
									

Leds(0) <= onoff_signal;
Leds(1) <= Door_out(0);	
Leds(2) <= Door_out(1);	
Leds(3) <= Door_out(2);	
Leds(4) <= Door_out(3);	
Leds(5) <= Door_out(4);	
									
end structural;