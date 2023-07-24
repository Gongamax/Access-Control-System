library ieee;
use ieee.std_logic_1164.all;

entity Counter4BitTeste is
    PORT(
        -- Input ports
        CE : in std_logic;
        CLK : in std_logic;
        clr : in std_logic;
        UpDown : in std_logic;
        -- Output ports
        Q : out std_logic_vector (3 downto 0)
    );
end Counter4BitTeste;

architecture structural of Counter4BitTeste is

component Adder4Bit is
    PORT(
        -- Input ports
        A  : in std_logic_vector(3 downto 0);
        B  : in std_logic_vector(3 downto 0);
        Ci : in std_logic;
        -- Output ports
        S  : out std_logic_vector(3 downto 0);
        Co : out std_logic
    );
end component;

component Reg4Bit is
    PORT(
        -- Input ports
        D: in std_logic_vector(3 downto 0);
        CLK: in std_logic;
        RESET: in std_logic;
        SET: in std_logic;
        CE: in std_logic;
        -- Output ports
        Q: out std_logic_vector(3 downto 0)
    );
end component;

signal CEx: std_logic; -- sinal da entrada do adder Cex - CE 
signal Sx: std_logic_vector(3 downto 0); -- sinal de saida para o adder - regist  S - Sx -D 
signal Q1: std_logic_vector(3 downto 0);

begin
    U0: Adder4Bit port map(A => Q1, B => "0001", Ci => '0', S => Sx, Co => open);
    U1: Reg4Bit port map(CLK => CLK, RESET => clr, CE => CE, D => Sx, Q => Q1, SET => '0');
    Q <= Q1;

end structural;