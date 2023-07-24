library ieee;
use ieee.std_logic_1164.all;

entity OutputRegister_TB is
end OutputRegister_TB;

architecture testbench of OutputRegister_TB is

    -- Component declaration
    component OutputRegister is
        PORT(
            D : in std_logic_vector(3 downto 0);
            CLK : in std_logic;
            RESET : in std_logic;	
            Q : out std_logic_vector(3 downto 0)
        );
    end component;

    -- Signals
    signal D_in : std_logic_vector(3 downto 0);
    signal CLK : std_logic := '0';
    signal RESET : std_logic := '1';
    signal Q_out : std_logic_vector(3 downto 0);

begin

    -- Instantiate the OutputRegister
    UUT: OutputRegister
        port map(
            D => D_in,
            CLK => CLK,
            RESET => RESET,
            Q => Q_out
        );

    -- Clock generator process
    process
    begin
        while true loop
            CLK <= '0';
            wait for 5 ns;
            CLK <= '1';
            wait for 5 ns;
        end loop;
    end process;

    -- Stimulus process
    stimulus_process: process
    begin
        -- Reset the circuit
        RESET <= '1';
        wait for 10 ns;
        RESET <= '0';
        wait for 10 ns;

        -- Provide input data
        D_in <= "1010";
        wait for 10 ns;

        D_in <= "0011";
        wait for 10 ns;

        wait;
    end process stimulus_process;

end testbench;
