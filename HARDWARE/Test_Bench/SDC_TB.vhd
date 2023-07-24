library ieee;
use ieee.std_logic_1164.all;

entity SDC_TB is
end SDC_TB;

architecture behavioral of SDC_TB is

	--Constants
	constant CLK_PERIOD: time := 10 ns;
    -- Component declaration
    component SDC is
        Port (
            -- Input ports
            nSS     : in std_logic;
            SCLK    : in std_logic;
            SDX     : in std_logic;
            RESET   : in std_logic;
            Mclk    : in std_logic;
            Sopen   : in std_logic;
            Sclose  : in std_logic;
            Psensor : in std_logic;
            -- Output ports
            OnOff   : out std_logic;
            Dout    : out std_logic_vector(4 downto 0);
            busy    : out std_logic
        );
    end component;

    -- Signals
	signal Mclk  : std_logic := '0';
    signal nSS_sig, SCLK_sig, SDX_sig, RESET_sig, Sopen_sig, Sclose_sig, Psensor_sig : std_logic;
    signal OnOff_sig, busy_sig : std_logic;
    signal Dout_sig : std_logic_vector(4 downto 0);
		
		
begin

    -- Instantiate the SDC component
    UUT: SDC
        port map (
            -- Input ports
            nSS     => nSS_sig,
            SCLK    => SCLK_sig,
            SDX     => SDX_sig,
            RESET   => RESET_sig,
            Mclk    => Mclk,
            Sopen   => Sopen_sig,
            Sclose  => Sclose_sig,
            Psensor => Psensor_sig,
            -- Output ports
            OnOff   => OnOff_sig,
            Dout    => Dout_sig,
            busy    => busy_sig
        );
		
		  -- Clock process
  process
  begin
	  Mclk <= '0';
	  wait for CLK_PERIOD/2;
	  Mclk <= '1';
	  wait for CLK_PERIOD/2;
  end process; 

    -- Test bench logic goes here
    stim_proc: process
    begin
        -- Initialize inputs
        nSS_sig <= '1';
        SCLK_sig <= '1';
        SDX_sig <= '0';
        RESET_sig <= '1';
        Sopen_sig <= '0';
        Sclose_sig <= '0';
        Psensor_sig <= '0';

        -- Wait for a few clock cycles
        wait for CLK_PERIOD;
		RESET_sig <= '0';
		nSS_sig <= '0';
		wait for CLK_PERIOD;
		
        -- Apply test inputs
        SCLK_sig <= '0';
        SDX_sig <= '1';
        Sopen_sig <= '0';
        Sclose_sig <= '0';
        Psensor_sig <= '0';

        -- Wait for a few clock cycles
		wait for CLK_PERIOD;
		SCLK_sig <= '1';
		wait for CLK_PERIOD;
		SCLK_sig <= '0';
		SDX_sig <= '1';
		wait for CLK_PERIOD;
		SCLK_sig <= '1';
		wait for CLK_PERIOD;
		SCLK_sig <= '0';
		SDX_sig <= '0';
		wait for CLK_PERIOD;
		SCLK_sig <= '1';
		wait for CLK_PERIOD;
		SCLK_sig <= '0'; 
		SDX_sig <= '1';
		wait for CLK_PERIOD;
		SCLK_sig <= '1';
		wait for CLK_PERIOD;
		SCLK_sig <= '0'; 
		SDX_sig <= '1';
		wait for CLK_PERIOD;
		SCLK_sig <= '1';
		wait for CLK_PERIOD;
		SCLK_sig <= '0'; 
		SDX_sig <= '1';
		
		wait for CLK_PERIOD;
		nSS_sig <= '1';
		wait for CLK_PERIOD;
		Sopen_sig <= '1';
		wait for CLK_PERIOD;
		        -- Check the outputs
        assert OnOff_sig = '1'
            report "Error: OnOff signal mismatch"
            severity error;

        assert Dout_sig = "10111"
            report "Error: Dout signal mismatch"
            severity error;

        assert busy_sig = '0'
            report "Error: busy signal mismatch"
            severity error;
		
		wait for CLK_PERIOD;
		wait for CLK_PERIOD;
		nSS_sig <= '1';
        SCLK_sig <= '1';
        SDX_sig <= '0';
        

        -- Wait for a few clock cycles
        wait for CLK_PERIOD;
		nSS_sig <= '0';
		wait for CLK_PERIOD;
		
        -- Apply test inputs
        SCLK_sig <= '0';
        SDX_sig <='0';
       

        -- Wait for a few clock cycles
		wait for CLK_PERIOD;
		SCLK_sig <= '1';
		wait for CLK_PERIOD;
		SCLK_sig <= '0';
		SDX_sig <= '1';
		wait for CLK_PERIOD;
		SCLK_sig <= '1';
		wait for CLK_PERIOD;
		SCLK_sig <= '0';
		SDX_sig <= '0';
		wait for CLK_PERIOD;
		SCLK_sig <= '1';
		wait for CLK_PERIOD;
		SCLK_sig <= '0'; 
		SDX_sig <= '1';
		wait for CLK_PERIOD;
		SCLK_sig <= '1';
		wait for CLK_PERIOD;
		SCLK_sig <= '0'; 
		SDX_sig <= '1';
		wait for CLK_PERIOD;
		SCLK_sig <= '1';
		wait for CLK_PERIOD;
		SCLK_sig <= '0'; 
		SDX_sig <= '1';
		
		wait for CLK_PERIOD;
		nSS_sig <= '1';
		
		
		
		
		wait for CLK_PERIOD;
		Psensor_sig <= '1';
		wait for CLK_PERIOD;
		Sopen_sig <= '1';
		Psensor_sig <= '0';
		wait for CLK_PERIOD;
		Sclose_sig <= '1';
		wait for CLK_PERIOD;
		
		        -- Check the outputs
        assert OnOff_sig = '1'
            report "Error: OnOff signal mismatch"
            severity error;

        assert Dout_sig = "00110"
            report "Error: Dout signal mismatch"
            severity error;

        assert busy_sig = '0'
            report "Error: busy signal mismatch"
            severity error;
			
        -- Finish the simulation
        wait;
    end process;

end behavioral;
