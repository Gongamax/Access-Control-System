library ieee;
use ieee.std_logic_1164.all;

entity OutputBuffer_TB is
end OutputBuffer_TB;

architecture testbench of OutputBuffer_TB is

    -- Component declaration
    component OutputBuffer is
        port(
            Mclk : in std_logic;
            Reset : in std_logic;
            Load : in std_logic;
            Ack : in std_logic;
            D0_3 : in std_logic_vector(3 downto 0);
            OBfree : out std_logic;
            Q0_3 : out std_logic_vector(3 downto 0);
            Dval : out std_logic
        );
    end component;

    -- Signals
    signal Mclk : std_logic := '0';
    signal Reset : std_logic := '1';
    signal Load : std_logic := '0';
    signal Ack : std_logic := '0';
    signal D0_3 : std_logic_vector(3 downto 0);
    signal OBfree : std_logic;
    signal Q0_3 : std_logic_vector(3 downto 0);
    signal Dval : std_logic;

begin

    -- Instantiate the OutputBuffer
    UUT: OutputBuffer
        port map(
            Mclk => Mclk,
            Reset => Reset,
            Load => Load,
            Ack => Ack,
            D0_3 => D0_3,
            OBfree => OBfree,
            Q0_3 => Q0_3,
            Dval => Dval
        );

    -- Clock generator process
    process
    begin
        while true loop
            Mclk <= '0';
            wait for 5 ns;
            Mclk <= '1';
            wait for 5 ns;
        end loop;
    end process;

    -- Stimulus process
    stimulus_process: process
    begin
        -- Reset the circuit
        Reset <= '1';
        wait for 10 ns;
        Reset <= '0';
        wait for 10 ns;

        -- Test case 1: Load = '1', Ack = '0'
        Load <= '1';
        Ack <= '0';
        D0_3 <= "1010";
        wait for 20 ns;

        -- Test case 2: Load = '1', Ack = '1'
        Load <= '1';
        Ack <= '1';
        D0_3 <= "0011";
        wait for 20 ns;

        -- Test case 3: Load = '0', Ack = '1'
        Load <= '0';
        Ack <= '1';
        D0_3 <= "1100";
        wait for 20 ns;

        -- Test case 4: Load = '0', Ack = '0'
        Load <= '0';
        Ack <= '0';
        D0_3 <= "0101";
        wait for 20 ns;

        wait;
    end process stimulus_process;

end testbench;
