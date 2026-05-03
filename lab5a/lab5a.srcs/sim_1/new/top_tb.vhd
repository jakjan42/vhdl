library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity top_tb is
end top_tb;

architecture Behavioral of top_tb is
  component top is
  Port (clk_i : in STD_LOGIC;
        rst_i : in STD_LOGIC;
        RXD_i : in STD_LOGIC;
        led7_seg_o : out STD_LOGIC_VECTOR (5 downto 0)
  );
  end component;

  signal clk_i : STD_LOGIC := '0';
  signal rst_i : STD_LOGIC := '0';
  signal RXD_i: STD_LOGIC := '1';
  signal led7_seg_o : STD_LOGIC_VECTOR (5 downto 0);
begin
  uut: top port map (
    clk_i => clk_i,
    rst_i => rst_i,
    RXD_i => RXD_i,
    led7_seg_o => led7_seg_o
  );

  clock : process
  begin
    clk_i <= not clk_i;
    wait for 10 ns;
  end process;
  
  tb1 : process
  begin
    wait for 0.3 ms;
    RXD_i <= '0';
    wait for 0.104 ms;
    for i in 0 to 3 loop
      RXD_i <= '0';
      wait for 0.104 ms;
      RXD_i <= '1';
      wait for 0.104 ms;
    end loop;
    RXD_i <= '0';
    wait for 0.104 ms;
    RXD_i <= '1';
    wait for 0.104 ms;
    RXD_i <= '0';
    wait for 0.104 ms;
    RXD_i <= '0';
    wait for 0.104 ms;
    RXD_i <= '0';
    wait for 0.104 ms;
    RXD_i <= '0';
    wait for 0.104 ms;
    RXD_i <= '0';
    wait for 0.104 ms;
    RXD_i <= '0';
    wait for 0.104 ms;
    RXD_i <= '0';
    wait for 0.104 ms;
    RXD_i <= '0';
    wait for 0.104 ms;
    RXD_i <= '0';
    wait for 0.104 ms;
    RXD_i <= '0';
    wait for 0.104 ms;

    wait;
  end process;

end Behavioral;