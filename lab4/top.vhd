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
    Port (clk_i : in STD_LOGIC;
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
  signal digit: std_logic_vector (31 downto 0);
  constant zero: std_logic := '0';
  type std_logic_vector16_8 is array (0 to 15) of std_logic_vector(7 downto 0);
  constant DISPLAY_HEX_DIGITS: std_logic_vector16_8 := (
    x"03",x"f3",x"25",x"0d",x"99",x"49",x"41",x"1f",
    x"01",x"f9",x"11",x"c1",x"63",x"85",x"61",x"71"
  );
  constant zero16: std_logic_vector(15 downto 0) := "0000000000000000";
begin
  digit <= zero16 & 
           DISPLAY_HEX_DIGITS(to_integer(unsigned(uart_data(7 downto 4)))) &
           DISPLAY_HEX_DIGITS(to_integer(unsigned(uart_data(3 downto 0))));
           

  disp: display port map (
    clk_i => clk_i,
    rst_i => zero,
    digit_i => digit,
    led7_an_o => led7_an_o,
    led7_seg_o => led7_seg_o
  );

  uart: rs232 port map (
    clk_i => clk_i,
    rst_i => rst_i,
    RXD_i => RXD_i,
    data_byte_o => uart_data
  );

end Behavioral;

