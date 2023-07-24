library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SLCDC_tb is
end SLCDC_tb;

architecture tb of SLCDC_tb is

	-- Component declaration
	component SLCDC
	port (
		nSS 		: in std_logic;
		SCLK	 	: in std_logic;
		SDX			: in std_logic;
		RESET		: in std_logic;
		Mclk		: in std_logic;
		Wrl			: out std_logic;
		Dout		: out std_logic_vector(4 downto 0)
	);
	end component;

	-- Signals
		--Input ports
	signal nSS		: std_logic := '0';
	signal SCLK		: std_logic := '0';
	signal SDX		: std_logic := '0';
	signal RESET	: std_logic := '1';
	signal Mclk		: std_logic := '1';
		--Output ports
	signal Wrl		: std_logic;
	signal Dout		: std_logic_vector(4 downto 0);
	
	constant CLK_PERIOD : time := 10 ns; -- 100 MHz clock

begin
	-- Component instantiation
	DUT: SLCDC
	port map (
		nSS => nSS,
		SCLK => SCLK,
		SDX => SDX,
		RESET => RESET,
		Mclk => Mclk,
		Wrl => Wrl,
		Dout => Dout
	);

	-- Clock generator
    Mclk <= not Mclk after CLK_PERIOD/2;

	process
    begin
		--Reset and input init
		RESET <= '1';
		nSS <= '1';
		SDX <= '1';
		SCLK <= '0';
		wait for CLK_PERIOD;
		RESET <= '0';
		nSS <= '0';
		wait for CLK_PERIOD;
		
		-- First transaction
		wait for CLK_PERIOD;
		SCLK <= '1';
		wait for CLK_PERIOD;
		SCLK <= '0';
		SDX <= '1';
		wait for CLK_PERIOD;
		SCLK <= '1';
		wait for CLK_PERIOD;
		SCLK <= '0';
		SDX <= '1';
		wait for CLK_PERIOD;
		SCLK <= '1';
		wait for CLK_PERIOD;
		SCLK <= '0';
		SDX <= '1';
		wait for CLK_PERIOD;
		SCLK <= '1';
		wait for CLK_PERIOD;
		SCLK <= '0';
		SDX <= '0';
		wait for CLK_PERIOD;
		SCLK <= '1';
		wait for CLK_PERIOD;
		SCLK <= '0'; 
		SDX <= '1';
		wait for CLK_PERIOD;
		nSS <= '1';
		wait for CLK_PERIOD*4;	--wait a few clocks
		assert Dout = "01111" and Wrl = '1' 
		  report "Error: Unexpected values on Dout and Wrl after first transaction"
		  severity error;
	-- End simulation
	wait;
end process;
end tb;