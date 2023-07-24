library ieee;
use ieee.std_logic_1164.all;

entity OutputRegister is
    PORT(
        D : in std_logic_vector(3 downto 0);
        CLK : in std_logic;
        RESET : in std_logic;	
        Q : out std_logic_vector(3 downto 0)

    );
end OutputRegister;

architecture structural of OutputRegister is

component Reg4Bit is
        PORT(
        D : in std_logic_vector(3 downto 0);
        CLK : in std_logic;
        RESET : in std_logic;
        SET : in std_logic;
        CE : in std_logic;
        Q : out std_logic_vector(3 downto 0)
    );
end component;

begin 
U0 : Reg4Bit port map(D=>D, Q=> Q, CLK => CLK,RESET => RESET , SET => '0', CE => '1');
										  
end structural; 