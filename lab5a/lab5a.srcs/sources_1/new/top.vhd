library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top is
    Port (clk_i : in STD_LOGIC;
        rst_i : in STD_LOGIC;
        RXD_i : in STD_LOGIC;
        TXD_o : out STD_LOGIC;
        led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
        led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0);
        ld0 : out STD_LOGIC
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
              TXD_o : out STD_LOGIC;
              data_byte_o : out STD_LOGIC_VECTOR (7 downto 0);
              data_byte_i : in STD_LOGIC_VECTOR (7 downto 0);
              tx_finished_o : out std_logic;
              rx_finished_o : out std_logic;
              tx_ack_o : out std_logic;
              tx_start_i : in std_logic    
        );
    end component;

    COMPONENT fifo_mem
      PORT (
        clk : IN STD_LOGIC;
        din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        wr_en : IN STD_LOGIC;
        rd_en : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        full : OUT STD_LOGIC;
        empty : OUT STD_LOGIC
      );
    END COMPONENT;
   
   COMPONENT char_mem
      PORT (
        clka : IN STD_LOGIC;
        addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
      );
   END COMPONENT;

              

    signal tx_finished, rx_finished, tx_start, tx_ack: std_logic;
    signal uart_rx_data, uart_tx_data, rx_buf_out: std_logic_vector (7 downto 0);
    signal digit: std_logic_vector (31 downto 0);
    constant zero: std_logic := '0';
    type mem8x16 is array (0 to 15) of std_logic_vector(7 downto 0);
    constant DISPLAY_HEX_DIGITS: mem8x16 := (
        x"03",x"f3",x"25",x"0d",x"99",x"49",x"41",x"1f",
        x"01",x"f9",x"11",x"c1",x"63",x"85",x"61",x"71"
    );
    constant zero16: std_logic_vector(15 downto 0) := "0000000000000000";
    signal rx_buf_empty, rx_fifo_wr_en, rx_fifo_rd_en: std_logic;
    signal char_mem_addr: std_logic_vector(11 downto 0);
    signal char_bitmap: std_logic_vector(7 downto 0);
    
    type mem8x18 is array (0 to 17) of std_logic_vector(7 downto 0);
    signal line_char_buf: mem8x18;
    signal line_char_idx: natural range 0 to 18;
    
    type tx_control_state is (txc_idle, txc_cpy_rx, txc_transmit);
    signal txc_state, txc_state_next: tx_control_state := txc_idle;
    signal 
begin

    tx_control: process(clk_i, rx_buf_out, rx_buf_empty, char_bitmap, tx_finished, tx_ack) is
    begin
        if rising_edge(clk_i) then
            case txc_state is
                when txc_idle =>
                    -- if ();
                when txc_cpy_rx =>
                    rx_fifo_rd_en <= '1';
                    if rx_buf_out = x"13" or line_char_idx = 18 then
                        txc_state <= txc_begin_transmission;
                    else
                        line_char_buf(line_char_idx) <= rx_buf_out;
                        line_char_idx <= line_char_idx + 1;
                    end if;
                when others =>
                    null;
            end case;
        end if;
    end process tx_control;
    
    
    rx_buf_control: process(clk_i, uart_rx_data, rx_finished) is
    begin
        if rising_edge(clk_i) then
            rx_fifo_wr_en <= '0';
            if rx_finished = '1' then
                rx_fifo_wr_en <= '1';
            end if;
        end if;
    end process rx_buf_control;


    uart: rs232 port map (
        clk_i => clk_i,
        rst_i => rst_i,
        RXD_i => RXD_i,
        TXD_o => TXD_o,
        data_byte_o => uart_rx_data,
        data_byte_i => uart_tx_data,
        tx_finished_o => tx_finished,
        rx_finished_o => rx_finished,
        tx_ack_o => tx_ack,
        tx_start_i => tx_start
    );
    
    rx_buf : fifo_mem
    PORT MAP (
        clk => clk_i,
        din => uart_rx_data,
        wr_en => rx_fifo_wr_en,
        rd_en => rx_fifo_rd_en,
        dout => rx_buf_out,
        full => ld0,
        empty => rx_buf_empty
    );
    
    char_memory : char_mem
    PORT MAP (
        clka => clk_i,
        addra => char_mem_addr,
        douta => char_bitmap
    );

    
    
    

end Behavioral;

