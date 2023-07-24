library ieee;
use ieee.std_logic_1164.all;

entity Shift_Register is
    Port ( clk : in  std_logic;
           D : in  std_logic;
			  RESET: in std_logic;
           enable : in std_logic;
           Q : out std_logic_vector(4 downto 0)
        );
end shift_register;

architecture structural of Shift_Register is


component FFD is
PORT(-- Intput ports
		CLK : in std_logic;
		RESET : in std_logic;
		SET : in std_logic;
		D : in std_logic;
		EN : in std_logic;
    -- Output ports
		Q : out std_logic);
end component;

signal Qs: std_logic_vector(4 downto 0);
--signal Qout: std_logic_vector(3 downto 0);

begin
U0:    FFD port map (CLK=> CLK,RESET=>RESET, EN=>enable,SET=> '0', D=>D, Q =>Qs(4));
U1:    FFD port map (CLK=> CLK,RESET=>RESET, EN=>enable,SET=>'0', D=>Qs(4),Q=>Qs(3));
U2:    FFD port map (CLK=> CLK,RESET=>RESET, EN=>enable,SET=>'0', D=>Qs(3),Q=>Qs(2));
U3:    FFD port map (CLK=> CLK,RESET=>RESET, EN=>enable,SET=>'0', D=>Qs(2),Q=>Qs(1));
U4:    FFD port map (CLK=> CLK,RESET=>RESET, EN=>enable,SET=>'0', D=>Qs(1),Q=>Qs(0));

Q<= Qs;

end structural;

