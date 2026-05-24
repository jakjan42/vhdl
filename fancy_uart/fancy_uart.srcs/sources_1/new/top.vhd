library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
    use ieee.math_real.all;

entity top is
    port (
        clk_i : in std_logic;
        RXD_i : in std_logic;
        TXD_o : out std_logic;
        -- led7_an_o : out std_logic_vector (3 downto 0);
        -- led7_seg_o : out std_logic_vector (7 downto 0);
        ld0 : out std_logic
    );
end top;


architecture Behavioral of top is
    component uart is
        generic (
            BAUDRATE: positive;
            CLKI_FREQ: positive
        );
        port (
            clk_i : in std_logic;
            rst_i : in std_logic;
            RXD_i : in std_logic;
            TXD_o : out std_logic;
            data_byte_o : out std_logic_vector (7 downto 0);
            data_byte_i : in std_logic_vector (7 downto 0);
            tx_valid_i : in std_logic;
            tx_ready_o : out std_logic;
            rx_valid_o : out std_logic;
            rx_ready_i : in std_logic
        );
    end component uart;
    component fifo_mem
        port (
            clk : in std_logic;
            din : in std_logic_vector(7 downto 0);
            wr_en : in std_logic;
            rd_en : in std_logic;
            dout : out std_logic_vector(7 downto 0);
            full : out std_logic;
            empty : out std_logic
        );
    end component;

  component char_mem
    port (
        clka : in std_logic;
        addra : in std_logic_vector(11 downto 0);
        douta : out std_logic_vector(7 downto 0) 
    );
  end component;

  component display
    port (clk_i : in std_logic;
          rst_i : in std_logic;
          digit_i : in std_logic_vector (31 downto 0);
          led7_an_o : out std_logic_vector (3 downto 0);
          led7_seg_o : out std_logic_vector (7 downto 0)
    );
  end component;

    signal rx_ready, rx_valid, tx_ready: std_logic;
    signal tx_valid: std_logic := '0';
    signal uart_rx_data, uart_tx_data, rx_buf_out: std_logic_vector (7 downto 0);
    signal digit: std_logic_vector (31 downto 0);
    type mem8x16 is array (0 to 15) of std_logic_vector(7 downto 0);
    constant DISPLAY_HEX_DIGITS: mem8x16 := (
        x"03",x"f3",x"25",x"0d",x"99",x"49",x"41",x"1f",
        x"01",x"f9",x"11",x"c1",x"63",x"85",x"61",x"71"
    );

    signal rx_fifo_empty, rx_fifo_wr_en, rx_fifo_rd_en, rx_fifo_full : std_logic;
    signal char_mem_addr: std_logic_vector(11 downto 0);
    signal char_bitmap: std_logic_vector(7 downto 0);

    type mem8x18 is array (0 to 17) of std_logic_vector(7 downto 0);
    signal line_char_buf: mem8x18;
    signal line_char_idx: natural range 0 to 18;

    signal char_counter: natural range 0 to 18;
    signal char_bit_counter: natural range 0 to 7;
    signal line_counter: natural range 0 to 16;

    signal char_counter_next: natural range 0 to 18;
    signal char_bit_counter_next: natural range 0 to 7;
    signal line_counter_next: natural range 0 to 16;

    type tx_control_state is (txc_idle, txc_wait_cpy_rx, txc_cpy_rx,
                              txc_get_mem, txc_wait_mem, txc_transmit, txc_get_char, txc_write_char,
                              txc_write_newline, txc_transmit_newline);
    signal txc_state: tx_control_state := txc_idle;

    signal wait_rx: boolean := false; 
    signal line_end, line_end_next: boolean := false; 

begin
    ld0 <= rx_fifo_full;

    digit <= X"0000"& 
             DISPLAY_HEX_DIGITS(unsigned(uart_tx_data(7 downto 4))) &
             DISPLAY_HEX_DIGITS(unsigned(uart_tx_data(3 downto 0)));

    tx_control: process(clk_i, rx_buf_out, rx_fifo_empty, char_bitmap, tx_ready, wait_rx, line_end_next,
                        char_bit_counter_next, char_counter_next, line_counter_next, line_char_idx,
                        line_counter, char_counter, line_end, char_bit_counter) is
    begin
        if rising_edge(clk_i) then
            case txc_state is
                when txc_idle =>
                    txc_state <= txc_idle;
                    rx_fifo_rd_en <= '0';
                    tx_valid <= '0';
                    line_char_idx <= 0;
                    if rx_fifo_empty = '0' then
                        txc_state <= txc_wait_cpy_rx;
                        rx_fifo_rd_en <= '1';
                        wait_rx <= false;
                    end if;
                when txc_wait_cpy_rx =>
                    txc_state <= txc_cpy_rx;
                when txc_cpy_rx =>
                    tx_valid <= '0';
                    if wait_rx then
                        txc_state <= txc_cpy_rx;
                        if rx_fifo_empty = '0' then
                            wait_rx <= false;
                        end if;
                    elsif rx_buf_out = X"0d" or line_char_idx = 18 then
                        rx_fifo_rd_en <= '0';
                        char_counter <= 0;
                        line_counter <= 0;
                        txc_state <= txc_get_mem;
                    else
                        rx_fifo_rd_en <= '1';
                        if line_char_idx = 17 then
                            rx_fifo_rd_en <= '0';
                        end if;

                        line_char_buf(line_char_idx) <= rx_buf_out;
                        line_char_idx <= line_char_idx + 1;
                        if rx_fifo_empty = '1' then
                            wait_rx <= true;
                        end if;
                    end if;
                when txc_get_mem =>
                    tx_valid <= '0';
                    if line_counter = 16 then
                        txc_state <= txc_idle;
                    elsif char_counter = line_char_idx then
                        char_counter <= char_counter_next;
                        line_counter <= line_counter_next;
                        uart_tx_data <= x"0a";
                        tx_valid <= '1';
                        txc_state <= txc_write_newline;
                    else
                        char_mem_addr <= line_char_buf(char_counter) &
                                         std_logic_vector(to_unsigned(line_counter, 4));
                        txc_state <= txc_wait_mem;
                    end if;
                when txc_wait_mem =>
                    txc_state <= txc_get_char;
                when txc_get_char =>
                    uart_tx_data <= x"20";
                    if char_bitmap(7 - char_bit_counter) = '1' then
                        uart_tx_data <= line_char_buf(char_counter);
                        if unsigned(line_char_buf(char_counter)) < 32 and
                           unsigned(line_char_buf(char_counter)) > 127
                        then
                            uart_rx_data <= X"2a";
                        end if;
                    end if;
                    txc_state <= txc_write_char;
                    tx_valid <= '1';
                when txc_write_char =>
                    txc_state <= txc_transmit;
                when txc_transmit =>
                    if tx_ready = '1' then
                        tx_valid <= '0';
                        if char_bit_counter = 7 then
                            char_bit_counter <= char_bit_counter_next;
                            char_counter <= char_counter_next;
                            txc_state <= txc_get_mem;
                        else
                            txc_state <= txc_get_char;
                            char_bit_counter <= char_bit_counter_next;
                        end if;
                    end if;
                when txc_write_newline =>
                    txc_state <= txc_transmit_newline;
                when txc_transmit_newline =>
                    tx_valid <= '0';
                    if tx_ready = '1' then
                        txc_state <= txc_get_mem;
                    end if;
                when others =>
                    txc_state <= txc_idle;
            end case;
        end if;
    end process tx_control;

    tx_counter_logic: process(char_counter, char_bit_counter, line_counter) is
    begin
        line_counter_next <= line_counter;
        char_counter_next <= char_counter;
        char_bit_counter_next <= char_bit_counter;
        line_end_next <= false;

        if char_bit_counter = 7 then
            char_bit_counter_next <= 0;
            char_counter_next <= char_counter + 1;
        else
            char_bit_counter_next <= char_bit_counter + 1;
        end if;

        if char_counter = line_char_idx then
            char_counter_next <= 0;
            line_end_next <= true;
            line_counter_next <= line_counter + 1;
        end if;

        if line_counter = 16 then
            line_counter_next <= 0;
        end if;
    end process tx_counter_logic;

    rx_buf_control: process(clk_i, uart_rx_data, rx_valid) is
    begin
        if rising_edge(clk_i) then
            rx_ready <= '1';
            if rx_fifo_full = '1' then
                rx_ready <= '0';
            end if;

            rx_fifo_wr_en <= '0';
            if rx_valid = '1' then
                rx_fifo_wr_en <= '1';
            end if;
        end if;
    end process rx_buf_control;

    uart1: uart
    generic map (
        BAUDRATE => 9600,
        CLKI_FREQ => 50000000
    )
    port map (
        clk_i => clk_i,
        rst_i => '0',
        RXD_i => RXD_i,
        TXD_o => TXD_o,
        data_byte_o => uart_rx_data,
        data_byte_i => uart_tx_data,
        tx_valid_i => tx_valid,
        tx_ready_o => tx_ready,
        rx_valid_o => rx_valid,
        rx_ready_i => rx_ready
    );

    rx_buf: fifo_mem
    port map (
        clk => clk_i,
        din => uart_rx_data,
        wr_en => rx_fifo_wr_en,
        rd_en => rx_fifo_rd_en,
        dout => rx_buf_out,
        full => rx_fifo_full,
        empty => rx_fifo_empty
    );

    char_memory: char_mem
    port map (
        clka => clk_i,
        addra => char_mem_addr,
        douta => char_bitmap
    );

    disp: display
     port map(
        clk_i => clk_i,
        rst_i => '0',
        digit_i => digit
        -- led7_an_o => led7_an_o,
        -- led7_seg_o => led7_seg_o
    );

end Behavioral;
