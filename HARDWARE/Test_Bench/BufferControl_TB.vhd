library ieee;
use ieee.std_logic_1164.all;

entity BufferControl_TB is
end BufferControl_TB;

architecture testbench of BufferControl_TB is

    -- Component declaration
    component BufferControl is 
        Port(
            Load    : in std_logic;
            ACK     : in std_logic;
            CLK     : in std_logic;
            reset   : in std_logic;
            Wreg    : out std_logic;
            OBfree  : out std_logic;
            Dval    : out std_logic
        );
    end component;

    -- Signals
    signal Load_in : std_logic := '0';
    signal ACK_in : std_logic := '0';
    signal CLK : std_logic := '0';
    signal RESET : std_logic := '1';
    signal Wreg_out : std_logic;
    signal OBfree_out : std_logic;
    signal Dval_out : std_logic;

begin

    -- Instantiate the BufferControl
    UUT: BufferControl
        port map(
            Load => Load_in,
            ACK => ACK_in,
            CLK => CLK,
            reset => RESET,
            Wreg => Wreg_out,
            OBfree => OBfree_out,
            Dval => Dval_out
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

        -- Test case 1: Load = '1', ACK = '0'
        Load_in <= '1';
        ACK_in <= '0';
        wait for 10 ns;

        -- Test case 2: Load = '1', ACK = '1'
        Load_in <= '1';
        ACK_in <= '1';
        wait for 10 ns;

        -- Test case 3: Load = '0', ACK = '1'
        Load_in <= '0';
        ACK_in <= '1';
        wait for 10 ns;

        -- Test case 4: Load = '0', ACK = '0'
        Load_in <= '0';
        ACK_in <= '0';
        wait for 10 ns;

        wait;
    end process stimulus_process;

end testbench;
