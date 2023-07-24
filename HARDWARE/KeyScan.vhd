library ieee;
use ieee.std_logic_1164.all;

entity KeyScan is
PORT( --Input ports
		Kscan  	: in std_logic_vector(1 downto 0);  -- Alterei aqui 
		Mclk    	: in std_logic;
		Reset    : in std_logic;
		Lines   : in std_logic_vector( 3 downto 0); -- INPUT para mux  LINHAS InMux
	  --Output ports 
		K0_3 	 	: out std_logic_vector(3 downto 0);
    	Kpress 	: out std_logic;
		Columns   : out std_logic_vector(2 downto 0)); -- OUTPUT para DEC  COLUNAS OutDec
	
end KeyScan;


architecture structural of KeyScan is 

component Counter is
PORT(-- Input ports
      CE : in std_logic;
		CLK : in std_logic;
		RESET: in std_logic;
	  -- Output ports
		Q: out std_logic_vector (1 downto 0));  
end component;


component Decoder is 
PORT(-- Intput ports
		S : in STD_LOGIC_VECTOR(1 downto 0);
	  -- Output ports
		O : out STD_LOGIC_VECTOR(2 downto 0));

end component;


component PENC is
Port(
     I : in STD_LOGIC_VECTOR(3 downto 0);
     Y : out STD_LOGIC_VECTOR(1 downto 0);
     GS : out STD_LOGIC);
end component;


component REGIST is 
PORT(-- Intput ports
        D:in std_logic_vector(1 downto 0);
        CLK: in std_logic;
        RESET: in std_logic;
        SET: in std_logic;
        CE: in std_logic;
      -- Output ports
        Q: out std_logic_vector(1 downto 0));
end component; 

--SIGNAL 
signal Qcount        :  std_logic_vector(1 downto 0); -- fio que liga count ao decoder 
--signal notY :std_logic; -- colocar not Y saida mux 
signal Clear : std_logic;
signal columnsx: std_logic_vector(2 downto 0);  -- Sinal que liga as colunas ao exter
signal reg : std_logic_vector(1 downto 0); 
signal reg_out: std_logic_vector(1 downto 0);
signal notLines : std_logic_vector(3 downto 0);


begin
U0: Counter port map (CE => Kscan(0), CLK => Mclk, Q => Qcount ,RESET=> RESET);
U1: Decoder port map (S(1) => Qcount(1), S(0) => Qcount(0), O => columnsx ); 
U2: PENC port map (I => notLines,Y => reg, GS => Kpress);
U3: REGIST  port map (D(0) => reg(0), D(1) => reg(1), Q=>reg_out, CLK => Mclk, RESET=> Reset, SET=> '0',
								CE=> Kscan(1) );


Columns <= not columnsX;
notLines <= not Lines;
K0_3(0) <= reg_out(0);
K0_3(1) <= reg_out(1);
K0_3(2) <= Qcount(0);
K0_3(3) <= Qcount(1);


end structural;