library ieee;
use ieee.std_logic_1164.all;

entity Subtractor4Bit is
port(
    -- Input ports
    A, B: in std_logic_vector(3 downto 0);
    -- Output ports
    Result: out std_logic_vector(3 downto 0);
    Empty: out std_logic;
    Full: out std_logic
);
end Subtractor4Bit;

architecture behavioral of Subtractor4Bit is
    signal Borrow: std_logic;
begin
    Result(0) <= A(0) xor B(0) xor Borrow;
    Result(1) <= A(1) xor B(1) xor (Borrow and (A(0) xor B(0)));
    Result(2) <= A(2) xor B(2) xor (Borrow and ((A(0) xor B(0)) or (A(1) xor B(1))));
    Result(3) <= A(3) xor B(3) xor (Borrow and ((A(0) xor B(0)) or (A(1) xor B(1)) or (A(2) xor B(2))));

    Borrow <= (A(0) and not B(0)) or ((not A(0)) and B(0));
    Empty <= '0' ;
    Full <= '1';
end behavioral;