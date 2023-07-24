library ieee;
use ieee.std_logic_1164.all;

entity LCDdispatcher is
port(
--Input ports
		Dval		: in std_logic;
		Din	 	: in std_logic_vector(4 downto 0);
		Mclk 		: in std_logic;
		reset		: in std_logic;
--Output ports
		Wrl 	   : out std_logic;
	   Dout		: out std_logic_vector(4 downto 0);
	   done		: out std_logic
);
end LCDdispatcher;

architecture structural of LCDdispatcher is


component Dispatcher is
Port(
--Input ports
     Dval		: in std_logic;
	  Din			: in std_logic_vector(4 downto 0);
	  clk			: in std_logic;
	  reset		: in std_logic;
	  count12	: in std_logic;
	  count0		: in std_logic;
--Output ports
	  ceCounter	: out std_logic;
	  updown		: out std_logic;
	  Wrl 	   : out std_logic;
	  Dout		: out std_logic_vector(4 downto 0);
	  done		: out std_logic
);
end component;

component Counter4Bit is
port(
		CE : in std_logic;
      CLK : in std_logic;
      clr : in std_logic;
		UpDown : in std_logic;
      Q : out std_logic_vector (3 downto 0)
);
end component;

--signals
signal clk_signal : std_logic;
signal c12, c0 : std_logic;
signal enable : std_logic;
signal updown_signal : std_logic;
signal qx: std_logic_vector(3 downto 0);

begin
U0: Counter4Bit port map(CE => enable, CLK => Mclk, clr => reset, UpDown => updown_signal, Q => qx);
U1: Dispatcher port map(Dval => Dval, Din => Din, clk => Mclk, reset => reset, count12 => c12, count0 => c0,
								ceCounter => enable, updown => updown_signal, Wrl => Wrl, Dout => Dout, done => done);
								
c12 <= qx(3) and qx(2) and not qx(1) and not qx(0);
c0 <= not qx(3) and not qx(2) and not qx(1) and not qx(0);

end structural; 
  