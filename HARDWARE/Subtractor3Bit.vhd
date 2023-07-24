library ieee;
use ieee.std_logic_1164.all;

entity Subtractor3Bit is
    port (
        A, B : in std_logic_vector(2 downto 0);
        Ci : in std_logic;
        Difference : out std_logic_vector(2 downto 0);
        Borrow : out std_logic
    );
end Subtractor3Bit;

architecture Behavioral of Subtractor3Bit is
    component FA is
        port (
            A, B, Ci : in std_logic;
            S, Co : out std_logic
        );
    end component;

    signal inverted_B : std_logic_vector(2 downto 0);
    signal borrow_internal : std_logic_vector(1 downto 0);
begin
    inverted_B <= not B;

    U1 : FA port map(A => A(0), B => inverted_B(0), Ci => Ci, S => Difference(0), Co => borrow_internal(0));
    U2 : FA port map(A => A(1), B => inverted_B(1), Ci => borrow_internal(0), S => Difference(1), Co => borrow_internal(1));
    U3 : FA port map(A => A(2), B => inverted_B(2), Ci => borrow_internal(1), S => Difference(2), Co => Borrow);
end Behavioral;
