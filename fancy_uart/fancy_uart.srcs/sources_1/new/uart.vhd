library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity uart is
    generic (
        BAUDRATE: positive := 9600;
        CLKI_FREQ: positive := 100000000
    );
    Port (
        clk_i : in std_logic;
        rst_i : in std_logic;
        RXD_i : in std_logic;
        TXD_o : out std_logic;
        data_byte_o : out std_logic_vector (7 downto 0);
        data_byte_i : in std_logic_vector (7 downto 0);
        tx_valid_i : in std_logic;
        tx_ready_o : out std_logic := '1';
        rx_valid_o : out std_logic;
        rx_ready_i : in std_logic
    );

end uart;

architecture Behavioral of uart is
    signal rx_data_buf: std_logic_vector (9 downto 0) := (others => '0');
    signal rx_clk_div_counter: natural range 0 to (CLKI_FREQ / BAUDRATE) + 1;
    signal rx_bit_counter: natural range 0 to 9;
    type uart_rx_state is (rx_wait_start_bit, rx_get_data, rx_complete);
    signal rx_state: uart_rx_state := rx_wait_start_bit;
    signal rx_state_next: uart_rx_state := rx_wait_start_bit;
    signal rx_clk_en: std_logic;
    signal q, rxd_s: std_logic;

    signal tx_clk_div_counter: natural range 0 to (CLKI_FREQ / BAUDRATE) + 1;
    signal tx_bit_counter: natural range 0 to 9;
    type uart_tx_state is (tx_idle, tx_send_data, tx_stop_bit, tx_complete);
    signal tx_state: uart_tx_state := tx_idle;
    signal tx_state_next: uart_tx_state := tx_idle;
    signal tx_clk_en: std_logic;
    signal txd: std_logic := '1';
begin
    TXD_o <= txd;

    rx_sync: process(clk_i, RXD_i) is
    begin
        if rising_edge(clk_i) then
            q <= RXD_i;
            rxd_s <= q;
        end if;
    end process rx_sync;

    uart_rx_logic: process(clk_i, rx_state, rx_bit_counter, rx_clk_en, rst_i, rxd_s) is
    begin
        if rst_i = '1' then
            rx_state <= rx_wait_start_bit;
            rx_data_buf <= (others => '0');
            rx_bit_counter <= 0;
            rx_valid_o <= '0';
        elsif rising_edge(clk_i) then
            case rx_state is
                when rx_wait_start_bit =>
                    rx_valid_o <= '0';
                    if rxd_s = '0' then
                        rx_state <= rx_get_data;
                    end if;
                when rx_get_data =>
                    rx_valid_o <= '0';
                    if rx_clk_en = '1' then
                        if rx_bit_counter = 9 then
                            rx_bit_counter <= 0;
                            if rx_ready_i = '1' then
                                data_byte_o <= rx_data_buf(8 downto 1);
                                rx_valid_o <= '1';
                            end if;
                            rx_state <= rx_complete;
                        else
                            rx_data_buf(rx_bit_counter) <= rxd_s;
                            rx_bit_counter <= rx_bit_counter + 1;
                        end if;
                    end if;
                when rx_complete =>
                    if rx_ready_i = '1' then
                        rx_valid_o <= '0';
                    end if;
                    if rxd_s = '0' then
                        rx_state <= rx_get_data;
                    end if;
                when others =>
                    rx_state <= rx_wait_start_bit;
            end case;
        end if;
    end process uart_rx_logic;

    uart_tx_logic: process(clk_i, tx_state, tx_bit_counter, tx_clk_en, rst_i) is
    begin
        if rst_i = '1' then
            tx_state <= tx_idle;
            tx_bit_counter <= 0;
            txd <= '1';
            tx_ready_o <= '0';
        elsif rising_edge(clk_i) then
            case tx_state is
                when tx_idle =>
                    txd <= '1';
                    tx_ready_o <= '1';
                    if tx_valid_i = '1' then
                        txd <= '0';
                        tx_state <= tx_send_data;
                        tx_ready_o <= '0';
                    end if;
                when tx_send_data =>
                    tx_ready_o <= '0';
                    if tx_clk_en = '1' then
                        if tx_bit_counter = 8 then
                            tx_bit_counter <= 0;
                            tx_state <= tx_stop_bit;
                        else
                            txd <= data_byte_i(tx_bit_counter);
                            tx_bit_counter <= tx_bit_counter + 1;
                        end if;
                    end if;
                when tx_stop_bit =>
                    txd <= '1';
                    tx_ready_o <= '0';
                    if tx_clk_en = '1' then
                        tx_ready_o <= '1';
                        tx_state <= tx_idle;
                    end if;
                when others =>
                    tx_state <= tx_idle;
            end case;
        end if;
    end process uart_tx_logic;


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

    tx_clk_div: process(clk_i, rst_i, tx_state) is
    begin
        if rst_i = '1' or tx_state = tx_idle then
            tx_clk_div_counter <= 0;
            tx_clk_en <= '0';
        elsif rising_edge(clk_i) then
            if tx_clk_div_counter >= CLKI_FREQ / BAUDRATE then
                tx_clk_en <= '1';
                tx_clk_div_counter <= 0;
            else
                tx_clk_en <= '0';
                tx_clk_div_counter <= tx_clk_div_counter + 1;
            end if;
        end if;
    end process tx_clk_div;

end Behavioral;
