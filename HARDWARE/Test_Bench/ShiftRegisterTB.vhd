library ieee;
use ieee.std_logic_1164.all;

entity Shift_Register_tb is
end Shift_Register_tb;

architecture behavioral of Shift_Register_tb is
    component Shift_Register is
        Port (
            clk : in  std_logic;
            D : in  std_logic;
            RESET: in std_logic;
            SET: in std_logic;
            enable : in std_logic;
            Q : out std_logic_vector(4 downto 0)
        );
    end component;

    signal clk : std_logic := '0';
    signal D : std_logic := '0';
    signal RESET : std_logic := '0';
    signal SET : std_logic := '0';
    signal enable : std_logic := '1';
    signal Q : std_logic_vector(4 downto 0);

begin
    uut: Shift_Register 
	port map (
	clk => clk, 
	D => D, 
	RESET => RESET, 
	SET => SET, 
	enable => enable, 
	Q => Q
	);

    -- Clock generator
    process
    begin
        CLK <= '0';
        wait for 5 ns;
        CLK <= '1';
        wait for 5 ns;
    end process;
	
    process
    begin
        RESET <= '1';
        wait for 10 ns;
        RESET <= '0';
        wait for 10 ns;

        -- Test case 1
        D <= '0';
        wait for 10 ns;
        assert (Q = "00000") report "Test case 1 failed" severity error;

        -- Test case 2
        D <= '1';
        wait for 10 ns;
        assert (Q = "00001") report "Test case 2 failed" severity error;

        -- Test case 3
        D <= '0';
        wait for 10 ns;
        assert (Q = "00010") report "Test case 3 failed" severity error;

        -- Test case 4
        SET <= '1';
        wait for 10 ns;
        assert (Q = "11111") report "Test case 4 failed" severity error;
        SET <= '0';

        -- Test case 5
        enable <= '0';
        wait for 10 ns;
        D <= '1';
        wait for 10 ns;
        assert (Q = "11111") report "Test case 5 failed" severity error;
        enable <= '1';
        D <= '0';
        wait for 10 ns;
        assert (Q = "01111") report "Test case 5 failed" severity error;

        wait;
    end process;

end behavioral;
