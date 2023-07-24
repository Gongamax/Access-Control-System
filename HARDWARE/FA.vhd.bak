library ieee;
use ieee.std_logic_1164.all;
entity FA is
port( 
--Input ports 

A: in std_logic;
B: in std_logic;
Cin: in std_logic;

--Output ports
R: out std_logic;

Cout: out std_logic
);
end FA;

architecture structural of FA is
component HA is 
port(
--Input ports
A:in std_logic;
B: in std_logic;
--Output ports
C: out std_logic;
S: out std_logic
);

end component;

signal C, S: std_logic;
begin 
    U0: HA port map (A => A, B => B, C => C, S => S);
    U1: HA port map (A => S, B => Cin, C => C, S => R);
    Cout <= ((A and B) or (Cin and (A xor B)));
end structural;