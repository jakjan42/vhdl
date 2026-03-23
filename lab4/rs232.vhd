library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rs232 is
  generic (
    BAUDRATE: positive := 9600;
    CLKI_FREQ: positive := 100000000
  );
  Port (clk_i : in STD_LOGIC;
        rst_i : in STD_LOGIC;
        RXD_i : in STD_LOGIC;
        data_byte_o : out STD_LOGIC_VECTOR (7 downto 0)
  );

end rs232;

architecture Behavioral of rs232 is
  signal rx_data_buf: std_logic_vector (7 downto 0);
  signal rx_clk_div_counter: natural range 0 to (CLKI_FREQ / BAUDRATE) + 1;
  signal rx_bit_counter: natural range 0 to 7;
  type uart_rx_state is (rx_wait_start_bit, rx_get_data, rx_stop_bit);
  signal rx_state, rx_state_next: uart_rx_state;
  signal rx_clk_en: std_logic_vector;
begin
  data_byte_o <= data_buf;

  uart_rx_logic: process(clk_i, state, bit_counter, rx_clk_en, rst_i, RXD_i) is
  begin
    if rsc_i = '1' then
      rx_state <= rx_wait_start_bit;
      rx_data_buf <= (others => '0');
      rx_bit_counter <= 0;
    elsif rising_edge(clk_i) then
      case rx_state is
        when rx_wait_start_bit =>
          if RXD_i = '0' then
            rx_state <= rx_get_data;
          end if;
        when rx_get_data =>
          if rx_clk_en = '1' then
            if rx_bit_counter >= 7 then
              rx_bit_counter <= 0;
              rx_state <= rx_stop_bit;
            else
              rx_bit_counter <= rx_bit_counter + 1;
            end if;
          end if;
        when others =>
          rx_state <= rx_wait_start_bit;
      end case;
    end if;
  end process uart_rx_logic;


  rx_clk_div: process(clk_i, rst_i, rx_state) is
  begin
    if rst_i = '1' or rx_state = rx_wait_start_bit then
      rx_clk_div_counter <= CLKI_FREQ / BAUDRATE / 2;
      rx_clk_en <= '0';
    elsif rising_edge(clk_i) then
      if rx_clk_div_counter >= CLKI_FREQ / BAUDRATE then
        rx_clk_en <= '1';
        rx_clk_div_counter <= 0;
      else
        rx_clk_en <= '0';
        rx_clk_div_counter <= rx_clk_div_counter + 1;
      end if;
    end if;
  end process rx_clk_div;

end Behavioral;
