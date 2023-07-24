library ieee;
use ieee.std_logic_1164.all;

entity MAC is 
Port(
    -- Input ports
    putget   : in std_logic;
    incPut   : in std_logic;
    incGet   : in std_logic;
    clk      : in std_logic;
    Reset    : in std_logic;
    -- Output ports
    Address  : out std_logic_vector(2 downto 0);
    full     : out std_logic;
    empty    : out std_logic
);
end MAC;

architecture structural of MAC is

    component MUX is
        port(
            -- Input ports
            A, B: in std_logic_vector(2 downto 0);
            S: in std_logic;
            -- Output ports
            Y: out std_logic_vector(2 downto 0)
        );
    end component;

    component Subtractor3Bit is
        port (
        A, B : in std_logic_vector(2 downto 0);
        Ci : in std_logic;
        Difference : out std_logic_vector(2 downto 0);
        Borrow : out std_logic
    );
    end component;

    component FFD is
        port(
            CLK : in std_logic;
            RESET : in std_logic;
            SET : in std_logic;
            D : in std_logic;
            EN : in std_logic;
            Q : out std_logic
        );
    end component;

    component Counter3Bit is
        port(
            CE : in std_logic;
            CLK : in std_logic;
            clr: in std_logic;
            Q: out std_logic_vector(2 downto 0)
        );
    end component;
    
    -- Signals
    signal Ax : std_logic_vector(2 downto 0);
    signal Bx : std_logic_vector(2 downto 0);
    signal flipFlopOutput : std_logic;
    signal subtractorOutput : std_logic_vector(2 downto 0);
	 signal enableSignal : std_logic;
	 
	 
begin
    idxPut: Counter3Bit port map (CE => incPut, Q => Ax, CLK => clk, clr => Reset);
    idxGet: Counter3Bit port map (CE => incGet, Q => Bx	, CLK => clk, clr => Reset);
    
    Mux_putandget: MUX port map (A => Bx, B => Ax, Y => Address, S => putget);
    
    Subtractor: Subtractor3Bit port map (A => Ax, B => Bx, Difference => subtractorOutput, Ci => '1', Borrow => open);
	  enableSignal <= incPut or incGet; 
  
    
    FFD1: FFD port map (CLK => clk, RESET => Reset, SET => '0', D => incPut, EN =>enableSignal, Q => flipFlopOutput);
    
	empty <= ( not subtractorOutput(2) ) and ( not subtractorOutput(1) ) and (not subtractorOutput(0) ) and (not flipFlopOutput);



    full <=  ( not subtractorOutput(2) ) and ( not subtractorOutput(1) ) and (not subtractorOutput(0) ) and ( flipFlopOutput);
	 

	 
    
end structural;
