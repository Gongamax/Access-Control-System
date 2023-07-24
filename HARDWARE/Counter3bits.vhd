library ieee;
use ieee.std_logic_1164.all;

entity Counter3Bit is
    PORT(-- Input ports
          CE : in std_logic;
            CLK : in std_logic;
            clr: in std_logic;
          -- Output ports
            Q: out std_logic_vector (2 downto 0));
    
    end Counter3Bit;
    
    architecture structural of Counter3Bit is
    
    component Adder3Bit is
    PORT(-- Input ports
            A  : in std_logic_vector(2 downto 0);
            B  : in std_logic_vector(2 downto 0);
            Ci : in std_logic;
         -- Output ports
            S  : out std_logic_vector(2 downto 0);
            Co : out std_logic);
    end component;
    
      
    component Reg3Bit is
    PORT(-- Intput ports
            D:in std_logic_vector(2 downto 0);
            CLK: in std_logic;
            RESET: in std_logic;
            SET: in std_logic;
            CE: in std_logic;
          -- Output ports
            Q: out std_logic_vector(2 downto 0));
    end component;
    
    
    
    signal CEx: std_logic; -- sinal da entrada do adder Cex - CE 
    signal Sx: std_logic_vector(2 downto 0); -- sinal de saida para o adder - regist  S - Sx -D 
    signal Q1: std_logic_vector(2 downto 0);
    
    begin
    
    
    U0: Adder3Bit port map ( A => Q1, B => "001", Ci =>'0', S => Sx, Co => open );
    U1: Reg3Bit port map (CLK => CLK, RESET=>clr, CE=> CE , D => Sx, Q=> Q1 , SET=>'0');
    Q<=Q1;
    
    end structural;
    