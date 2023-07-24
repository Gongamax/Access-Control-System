library ieee;
use ieee.std_logic_1164.all;

entity KeyControl_tb is
end entity;

architecture behavioral of KeyControl_tb is

    -- Component declaration
    component KeyControl is
        Port(--Input ports
             reset    : in std_logic;
             clk      : in std_logic;
             Kpress   : in std_logic;
             Kack     : in std_logic;
             --Output ports
             Kval     : out std_logic;
             Kscan    : out std_logic);
    end component;

    -- Signal declarations
    signal reset, clk, Kpress, Kack, Kval, Kscan: std_logic;
    
begin
    
    -- Instantiate the KeyControl component
    DUT: KeyControl
        port map(
            reset   => reset,
            clk     => clk,
            Kpress  => Kpress,
            Kack    => Kack,
            Kval    => Kval,
            Kscan   => Kscan);
			
	-- clock generator process
    process
    begin
        CLK <= '0';
        wait for 5 ns;
        CLK <= '1';
        wait for 5 ns;
    end process;

    -- Stimulus process
    process
    begin
        -- Reset the circuit
        reset <= '1';
        wait for 10 ns;
        reset <= '0';
        
        -- Scanning state
        wait for 10 ns;
        assert Kscan = '1' and Kval = '0'
            report "Error: expected Kscan = '1' and Kval = '0' in Scanning state";
            
        
        -- Kval_true state
        Kpress <= '1';
        wait for 10 ns;
        assert Kscan = '0' and Kval = '1'
            report "Error: expected Kscan = '0' and Kval = '1' in Kval_true state";
            
        Kack <= '1';
        wait for 10 ns;
        assert Kscan = '0' and Kval = '0'
            report "Error: expected Kscan = '0' and Kval = '0' after Kack in Kval_true state";
                    
        -- Kval_false state
        Kpress <= '0';
        wait for 10 ns;
        assert Kscan = '1' and Kval = '0'
            report "Error: expected Kscan = '1' and Kval = '0' in Kval_false state";
            
        Kack <= '0';
        wait for 10 ns;
        assert Kscan = '1' and Kval = '0'
            report "Error: expected Kscan = '1' and Kval = '0' in Kval_false state without Kpress and Kack";
        
        -- Repeat the sequence
        Kpress <= '1';
        wait for 10 ns;
        assert Kscan = '0' and Kval = '1'
            report "Error: expected Kscan = '0' and Kval = '1' in Kval_true state";
            
        Kack <= '1';
        wait for 10 ns;
        assert Kscan = '0' and Kval = '0'
            report "Error: expected Kscan = '0' and Kval = '0' after Kack in Kval_true state";
        
        -- Finish the simulation
        wait;
    end process;

end behavioral;
