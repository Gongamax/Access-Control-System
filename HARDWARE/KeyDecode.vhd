library ieee;
use ieee.std_logic_1164.all;

entity KeyDecode is
port(
--Input Ports
      Mclk    	: in std_logic;
		Reset    : in std_logic;
		Kack		: in std_logic;
		Lines		: in std_logic_vector(3 downto 0); -- LINHAS 
--Output Ports
		Kval		: out std_logic;
		K0_3		: out std_logic_vector(3 downto 0);
		Columns  : out std_logic_vector(2 downto 0)); -- Colunas;
end KeyDecode;

architecture structural of KeyDecode is

component KeyScan is
PORT(
--Input ports
		Kscan  	: in std_logic_vector(1 downto 0); -- Alterei aqui 
		Mclk    	: in std_logic;
		Reset    : in std_logic;
		Lines   : in std_logic_vector( 3 downto 0); -- INPUT para mux  LINHAS InMux
--Output ports 
		K0_3 	 	: out std_logic_vector(3 downto 0);
    	Kpress 	: out std_logic;
		Columns   : out std_logic_vector(2 downto 0)); -- OUTPUT para DEC  COLUNAS OutDec
end component;

component KeyControl is
port(
--Input ports
		reset		: in std_logic;
		clk		: in std_logic;
		Kack		: in std_logic;
		Kpress	: in std_logic;
--Output ports
		Kval		: out std_logic;
		Kscan  	: out std_logic_vector(1 downto 0) -- Alterei aqui 
);
end component;


component CLKDIV is
generic(div: natural := 50000000);
PORT(--Input ports
		clk_in: in std_logic;
	  --Output ports
		 clk_out: out std_logic);
end component;

--Signals
signal Kpress	: std_logic;
signal scan	: std_logic_vector(1 downto 0);
signal SCLKDIV : std_logic;

begin
U0: CLKDIV generic map (500000) port map (clk_in=>Mclk,clk_out=> SCLKDIV); -- Alterei aqui 
U1: KeyScan port map (Kscan => scan ,Mclk => SCLKDIV, Reset => Reset, Lines=> Lines, Kpress => Kpress, K0_3 => K0_3, Columns => Columns); -- Alterei aqui 
U2: KeyControl port map (reset => Reset, clk => SCLKDIV, Kack => Kack, Kpress => Kpress, Kval => Kval, Kscan => scan); -- Alterei aqui 


end structural;