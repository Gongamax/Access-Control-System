library ieee;
use ieee.std_logic_1164.all;

entity Adder is
PORT( -- Input ports
		A  : in std_logic_vector(1 downto 0);
		B  : in std_logic_vector(1 downto 0);
		Ci : in std_logic;
		-- Output ports
		S  : out std_logic_vector(1 downto 0);
		Co : out std_logic);
end Adder;

architecture structural of Adder is
component FA is
PORT(-- Intput ports
		A  : in std_logic;
		B  : in std_logic;
		Ci : in std_logic;
	  -- Output ports
		S  : out std_logic;
		Co : out std_logic);
end component;

signal carry : std_logic;

begin

U1 : FA port map ( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => carry);

U2 : FA port map ( A => A(1), B => B(1), Ci => carry, S => S(1), Co => Co);


end structural;