library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top is
  Port (clk_i : in STD_LOGIC;
        rst_i : in STD_LOGIC;
        RXD_i : in STD_LOGIC;
        led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
        led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0)
  );
end top;

architecture Behavioral of top is
  component display
    Port ( clk_i : in STD_LOGIC;
      rst_i : in STD_LOGIC;
      digit_i : in STD_LOGIC_VECTOR (31 downto 0);
      led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
      led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0)
    );
  end component;

  component rs232
    Port (clk_i : in STD_LOGIC;
          rst_i : in STD_LOGIC;
          RXD_i : in STD_LOGIC;
          data_byte_o : out STD_LOGIC_VECTOR (7 downto 0)
    );
  end component;

  signal uart_data: std_logic_vector (7 downto 0);
  constant zero: std_logic := '0';
begin
  disp: display port map (
    clk_i => clk_i,
    rst_i => zero,
    digit_i => digit,
    led7_an_o => led7_an_o,
    led7_seg_o => led7_seg_o
  );

end Behavioral;

