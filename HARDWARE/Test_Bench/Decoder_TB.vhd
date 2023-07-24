library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Decoder_tb is
end entity;

architecture Behavioral of Decoder_tb is
  -- Component declaration
  component Decoder is
    Port (
      S : in  STD_LOGIC_VECTOR(1 downto 0);
      O : out STD_LOGIC_VECTOR(2 downto 0)
    );
  end component;

  -- Signal declaration
  signal S : STD_LOGIC_VECTOR(1 downto 0) := "00";
  signal O : STD_LOGIC_VECTOR(2 downto 0);

begin
  -- Instantiate the Decoder component
  uut: Decoder port map (S => S, O => O);

	process begin
  -- Apply all possible input combinations
  S <= "00";
  wait for 10 ns;
  S <= "01";
  wait for 10 ns;
  S <= "10";
  wait for 10 ns;
  S <= "11";
  wait for 10 ns;

  -- Check the output for each input combination
  S <= "01";
  wait for 10 ns;

  S <= "10";
  wait for 10 ns;

  S <= "11";
  wait for 10 ns;

  wait;
  end process;
end Behavioral;
