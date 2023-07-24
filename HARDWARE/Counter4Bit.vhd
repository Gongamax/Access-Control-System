library ieee;
use ieee.std_logic_1164.all;

entity Counter4Bit is
    PORT(
        CE : in std_logic;
        CLK : in std_logic;
        clr : in std_logic;
		  UpDown : in std_logic; -- New input port for controlling direction (0 increment, 1 decrement)
        Q : out std_logic_vector (3 downto 0)
    );
end Counter4Bit;

architecture structural of Counter4Bit is

component Adder4Bit is
    PORT(
        A : in std_logic_vector(3 downto 0);
        B : in std_logic_vector(3 downto 0);
        Ci : in std_logic;
        S : out std_logic_vector(3 downto 0);
        Co : out std_logic
    );
end component;



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

component MUX_2x1 is
PORT(
		X 	: 	in std_logic_vector(3 downto 0);
		Y 	: 	in std_logic_vector(3 downto 0);
		S	: 	in std_logic;
		R 	: 	out std_logic_vector(3 downto 0)
		);
end component;	

signal Sx: std_logic_vector(3 downto 0); -- sinal de saida para o adder - regist  S - Sx -D 
signal Q1: std_logic_vector(3 downto 0);
signal inPutB: std_logic_vector(3 downto 0);


	begin

U0: Adder4Bit port map(A => Q1, B => inPutB, Ci => '0', S => Sx, Co => open);

U1: Reg4Bit port map(CLK => CLK, RESET => clr, CE => CE, D => Sx, Q => Q1, SET => '0');

U2: MUX_2x1 port map(X => "0001", Y => "1111", S => UpDown, R => inPutB);

	 
    Q <= Q1;

end structural;