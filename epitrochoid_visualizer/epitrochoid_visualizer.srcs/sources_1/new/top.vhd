----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/30/2026 09:12:14 PM
-- Design Name: 
-- Module Name: top - Behavioral -- Project Name: -- Target Devices: -- Tool Versions: -- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top is
    port (
        clk_i : in std_logic;
        sw_i : in std_logic_vector(7 downto 0);
        btn_i : in std_logic_vector(3 downto 0);
        vga_r_o : out std_logic_vector(3 downto 0);
        vga_g_o : out std_logic_vector(3 downto 0);
        vga_b_o : out std_logic_vector(3 downto 0);
        vga_hsync_o : out std_logic;
        vga_vsync_o : out std_logic
    );
end top;

architecture Behavioral of top is
    signal vga_vid_active: std_logic;
    signal vga_px_x : std_logic_vector(9 downto 0);
    signal vga_px_y : std_logic_vector(8 downto 0);
    signal clk25MHz, clk100MHz: std_logic;
    signal clk_counter: unsigned(1 downto 0) := "00";

    signal btn_tmp1, btn_tmp2, btn: std_logic_vector(3 downto 0);
    signal sw_tmp1, sw_tmp2, sw: std_logic_vector(7 downto 0);

    signal freq_x_buf, freq_y_buf: std_logic_vector(7 downto 0);
    signal A_buf, B_buf: signed(8 downto 0) := to_signed(16, 9);
    signal A, B: signed(8 downto 0) := to_signed(16, 9);

    signal should_reset: boolean := false;

    signal wea: std_logic_vector(0 downto 0);
    signal addra, addrb: std_logic_vector(17 downto 0);
    signal dina, doutb: std_logic_vector(0 downto 0);
    signal addra_tmp: unsigned(17 downto 0);

    signal singen_config_valid: std_logic;
    signal singen_config_data: std_logic_vector(15 downto 0);
    signal singen_config_last: std_logic := '0';
    signal singen_data_valid: std_logic := '0';
    signal singen_data_data: std_logic_vector(31 downto 0);
    signal singen_en : std_logic := '1';
    signal singen_reset : std_logic := '1';
    signal singen_tlast_missing, singen_tlast_unexpected: std_logic;
    signal sin_xA, sin_xB, cos_xA, cos_xB: signed(24 downto 0);
    signal x_tmp, y_tmp, x_tmp2, y_tmp2: signed(24 downto 0); 
    signal sin, cos: signed(15 downto 0);
    signal x_coord, y_coord: unsigned(8 downto 0);
    signal x_sub_tmp, y_sub_tmp: signed(24 downto 0);

    signal curr_px: std_logic := '1';
    signal pll_locked: std_logic;
    signal scr_counter: integer range 0 to 384*384 := 0;

    type epi_state_t is (epi_reset, epi_rst_ch1, epi_rst_ch2, epi_rst_scr,
                           epi_wait_x, epi_wait_y, epi_compute, epi_write);
    signal epi_state: epi_state_t := epi_wait_x;

    component vram
        port (
            clka : in std_logic;
            wea : in std_logic_vector(0 downto 0);
            addra : in std_logic_vector(17 downto 0);
            dina : in std_logic_vector(0 downto 0);
            clkb : in std_logic;
            addrb : in std_logic_vector(17 downto 0);
            doutb : out std_logic_vector(0 downto 0)
        );
    end component;

    component singen
        port (
            aclk : in std_logic;
            aclken : in std_logic;
            aresetn : in std_logic;
            s_axis_config_tvalid : in std_logic;
            s_axis_config_tdata : in std_logic_vector(15 downto 0);
            s_axis_config_tlast : in std_logic;
            m_axis_data_tvalid : out std_logic;
            m_axis_data_tdata : out std_logic_vector(31 downto 0);
            event_s_config_tlast_missing : out std_logic;
            event_s_config_tlast_unexpected : out std_logic 
        );
    end component;

    component clk_wiz_0
        port (
        clk_out1 : out std_logic;
        reset : in std_logic;
        locked : out std_logic;
        clk_in1 : in std_logic
        );
    end component;
begin

    sync_in: process(clk100MHz, btn_i, sw_i) is
    begin
        if rising_edge(clk100MHz) then
            btn_tmp1 <= btn_i;
            btn_tmp2 <= btn_tmp1;
            sw_tmp1 <= sw_i;
            sw_tmp2 <= sw_tmp1;
        end if;
    end process sync_in;

    sw <= not sw_tmp2;
    btn <= not btn_tmp2;

    save_epi_params: process(clk100MHz, btn, sw) is
    begin
        if rising_edge(clk100MHz) then
            should_reset <= false;       
            case btn is
                when "1000" =>
                    freq_x_buf <= sw;
                when "0100" =>
                    freq_y_buf <= sw;
                when "0010" =>
                    A_buf <= signed("0" & sw(7 downto 4) & "0000");
                    B_buf <= signed("000" & sw(3 downto 0) & "00");
                when "0001" =>
                    should_reset <= true;
                when others =>
                    null;               
            end case;
        end if;
    end process save_epi_params;

    clk_div: process(clk100MHz, clk_counter) is
    begin
        if rising_edge(clk100MHz) then
            if clk_counter = 3 then
                clk_counter <= (others => '0');
                clk25MHz <= '1';
            else
                clk_counter <= clk_counter + 1;
                clk25MHz <= '0';  
            end if;
        end if;
    end process clk_div;

    clk_wiz: clk_wiz_0
    port map (
        clk_out1 => clk100MHz,
        reset => '0',
        locked => pll_locked,
        clk_in1 => clk_i
    );

    px_gen: entity work.pixel_gen
     port map(
        clk_i => clk100MHz,
        curr_px_o => curr_px,
        vid_active_i => vga_vid_active,
        px_x_i => vga_px_x,
        px_y_i => vga_px_y,
        vram_addr_o => addrb,
        vram_px_i =>  doutb
    );

    vga_sync_gen_inst: entity work.vga_sync_gen
    port map(
        clk_i => clk100MHz,
        vga_clk_en_i => clk25MHz,
        hsync_o => vga_hsync_o,
        vsync_o => vga_vsync_o,
        active_vid_o => vga_vid_active,
        vga_px_x_o => vga_px_x,
        vga_px_y_o => vga_px_y
    );

    drive_vga: process(clk100MHz, vga_vid_active, curr_px) is
    begin
        if rising_edge(clk100MHz) then
            if vga_vid_active = '1' then
                vga_r_o <= (others => curr_px);
                vga_g_o <= (others => '0');
                vga_b_o <= (others => '0');
            else
                vga_r_o <= "0000";
                vga_g_o <= "0000";
                vga_b_o <= "0000";
            end if;
        end if;
    end process drive_vga;

    epi_logic: process(clk100MHz, epi_state, singen_data_valid,
                  addra_tmp, x_coord, y_coord, should_reset, scr_counter, 
                  cos_xA, sin_xA, cos_xB, sin_xB, A_buf, B_buf) is
    begin
        if rising_edge(clk100MHz) then
            case epi_state is
                when epi_reset =>
                    singen_config_data <= X"00" & freq_x_buf;
                    A <= A_buf;
                    B <= B_buf;
                    epi_state <= epi_rst_ch1;
                    singen_config_valid <= '1';
                when epi_rst_ch1 =>
                    singen_config_data <= X"00" & freq_y_buf;
                    epi_state <= epi_rst_ch2;
                    singen_config_last <= '1';
                when epi_rst_ch2 =>
                    singen_config_last <= '0';
                    singen_config_valid <= '0';
                    scr_counter <= 0;
                    addra <= (others => '0');
                    dina <= "0";
                    wea <= "1";
                    epi_state <= epi_rst_scr;
                when epi_rst_scr =>
                    if scr_counter = 384*384 then
                        wea <= "0";
                        singen_reset <= '1';
                        singen_en <= '1';
                        epi_state <= epi_wait_x;
                    else
                        addra <= std_logic_vector(to_unsigned(scr_counter, addra'length));
                        scr_counter <= scr_counter + 1;
                        singen_reset <= '0';
                    end if;
                when epi_wait_x =>
                    if singen_data_valid = '1' then
                        x_tmp <= cos_xA;
                        y_tmp <= sin_xA;
                        epi_state <= epi_wait_y;
                    end if;
                    if should_reset then
                        epi_state <= epi_reset;
                    end if;
                when epi_wait_y =>
                    if singen_data_valid = '1' then
                        epi_state <= epi_compute;
                        singen_en <= '0';
                        x_tmp2 <= cos_xB;
                        y_tmp2 <= sin_xB;
                        wea <= "0";
                    end if;
                    if should_reset then
                        epi_state <= epi_reset;
                    end if;
                when epi_compute =>
                    addra_tmp <= unsigned("0" & y_coord & "00000000") +
                                 unsigned("00" & y_coord & "0000000");
                    epi_state <= epi_write;
                    if should_reset then
                        epi_state <= epi_reset;
                    end if;
                when epi_write =>
                    addra <= std_logic_vector(addra_tmp + unsigned("000000000" & x_coord));
                    epi_state <= epi_wait_x;
                    singen_en <= '1';
                    wea <= "1";
                    dina <= "1";
                    if should_reset then
                        epi_state <= epi_reset;
                    end if;
            end case;
        end if;
    end process epi_logic;

    sin <= signed(singen_data_data(31 downto 16));
    cos <= signed(singen_data_data(15 downto 0));

    sin_xA <= sin * A;
    sin_xB <= sin * B;
    cos_xA <= cos * A;
    cos_xB <= cos * B;

    y_sub_tmp <= y_tmp - y_tmp2;
    y_coord <= unsigned(y_sub_tmp(19 downto 11) + 192);
    x_sub_tmp <= x_tmp - x_tmp2;
    x_coord <= unsigned(x_sub_tmp(19 downto 11) + 192);

    sin_gen: singen
    port map (
        aclk => clk100MHz,
        aclken => singen_en,
        aresetn => singen_reset,
        s_axis_config_tvalid => singen_config_valid,
        s_axis_config_tdata => singen_config_data,
        s_axis_config_tlast => singen_config_last,
        m_axis_data_tvalid => singen_data_valid,
        m_axis_data_tdata => singen_data_data,
        event_s_config_tlast_missing => singen_tlast_missing,
        event_s_config_tlast_unexpected => singen_tlast_unexpected
    );

    vram1 : vram
    port map (
        clka => clk100MHz,
        wea => wea,
        addra => addra,
        dina => dina,
        clkb => clk100MHz,
        addrb => addrb,
        doutb => doutb
    );

end Behavioral;
