library ieee;
use ieee.std_logic_1164.all;

entity Reg3Bit is
PORT(
D:in std_logic_vector(2 downto 0);
CLK: in std_logic;
RESET: in std_logic;
SET: in std_logic;
CE: in std_logic;
Q: out std_logic_vector(2 downto 0)
);
end Reg3Bit;

architecture structural of Reg3Bit is

component FFD is
PORT(
CLK : in std_logic;
RESET : in std_logic;
SET : in std_logic;
D : in std_logic;
EN : in std_logic;
Q : out std_logic
);
end component;

signal Qs: std_logic_vector(2 downto 0);

begin
U0: FFD port map (CLK => CLK, RESET => RESET, EN => CE, SET => SET, D => D(2), Q => Qs(2));
U1: FFD port map (CLK => CLK, RESET => RESET, EN => CE, SET => SET, D => D(1), Q => Qs(1));
U2: FFD port map (CLK => CLK, RESET => RESET, EN => CE, SET => SET, D => D(0), Q => Qs(0));
Q <= Qs;

end structural;