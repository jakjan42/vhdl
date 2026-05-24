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
    
    signal btn_tmp1, btn_tmp2, btn: std_logic_vector(3 downto 0);
    
    signal sw_tmp1, sw_tmp2, sw: std_logic_vector(7 downto 0);
    signal phase_buf, freq_x_buf, freq_y_buf: std_logic_vector(7 downto 0);
    signal should_reset: boolean := false;

    signal clk_counter: std_logic_vector(1 downto 0) := "00";

    signal wea: std_logic_vector(0 downto 0);
    signal addra: std_logic_vector(17 downto 0);
    signal dina: std_logic_vector(0 downto 0);
    signal addrb: std_logic_vector(17 downto 0);
    signal doutb: std_logic_vector(0 downto 0);

    signal singen_config_valid: std_logic;
    signal singen_config_data: std_logic_vector(31 downto 0);
    signal singen_config_last: std_logic := '0';
    signal singen_data_valid: std_logic := '0';
    signal singen_data_data: std_logic_vector(15 downto 0);
    signal singen_en : std_logic := '1';
    signal singen_reset : std_logic := '1';
    signal singen_tlast_missing, singen_tlast_unexpected: std_logic;
    signal sin_x192 : std_logic_vector(22 downto 0);
    
    signal curr_px: std_logic := '1';
    
    signal pll_locked: std_logic;
    
    signal scr_counter: integer range 0 to 384*384 := 0;
    
    type lissa_state_t is (lissa_reset, lissa_rst_ch1, lissa_rst_ch2, lissa_rst_scr,
                           lissa_wait_x, lissa_wait_y, lissa_write);
    signal lissa_state: lissa_state_t := lissa_wait_x;
    
    signal addra_tmp: unsigned(17 downto 0);
    signal coord_x, coord_tmp: std_logic_vector(12 downto 0);

    component video_mem
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

    component dds_compiler_0
        port (
            aclk : in std_logic;
            aclken : in std_logic;
            aresetn : in std_logic;
            s_axis_config_tvalid : in std_logic;
            s_axis_config_tdata : in std_logic_vector(31 downto 0);
            s_axis_config_tlast : in std_logic;
            m_axis_data_tvalid : out std_logic;
            m_axis_data_tdata : out std_logic_vector(15 downto 0);
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

    clk25MHz <= clk_counter(1);
    
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
    
    
    save_lissa_params: process(clk100MHz, btn, sw) is
    begin
        if rising_edge(clk100MHz) then
            should_reset <= false;       
            case btn is
                when "1000" =>
                    freq_x_buf <= sw;
                when "0100" =>
                    freq_y_buf <= sw;
                when "0010" =>
                    phase_buf <= sw;
                when "0001" =>
                    should_reset <= true;
                when others =>
                    null;               
            end case;
        end if;
    end process save_lissa_params;

    clk_div: process(clk100MHz, clk_counter) is
    begin
        if rising_edge(clk100MHz) then
            clk_counter <= std_logic_vector(unsigned(clk_counter) + 1);
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
                vga_g_o <= "0000";
                vga_b_o <= "0000";
            else
                vga_r_o <= "0000";
                vga_g_o <= "0000";
                vga_b_o <= "0000";
            end if;
        end if;
    end process drive_vga;
    
    test: process(clk100MHz, lissa_state, singen_data_valid,
                  addra_tmp, coord_x, coord_tmp, should_reset, scr_counter) is
    begin
        if rising_edge(clk100MHz) then
            case lissa_state is
                when lissa_reset =>
                    singen_config_data <= X"000000" & freq_x_buf;
                    lissa_state <= lissa_rst_ch1;
                    singen_config_valid <= '1';
                when lissa_rst_ch1 =>
                    singen_config_data <= phase_buf & X"0000" & freq_y_buf;
                    lissa_state <= lissa_rst_ch2;
                    singen_config_last <= '1';
                when lissa_rst_ch2 =>
                    singen_config_last <= '0';
                    singen_config_valid <= '0';
                    scr_counter <= 0;
                    addra <= (others => '0');
                    dina <= "0";
                    wea <= "1";
                    lissa_state <= lissa_rst_scr;
                when lissa_rst_scr =>
                    if scr_counter = 384*384 then
                        wea <= "0";
                        singen_reset <= '1';
                        singen_en <= '1';
                        lissa_state <= lissa_wait_x;
                    else
                        addra <= std_logic_vector(to_unsigned(scr_counter, addra'length));
                        scr_counter <= scr_counter + 1;
                        singen_reset <= '0';
                    end if;
                when lissa_wait_x =>
                    if singen_data_valid = '1' then
                        coord_x <= coord_tmp;
                        lissa_state <= lissa_wait_y;
                    end if;
                    if should_reset then
                        lissa_state <= lissa_reset;
                    end if;
                when lissa_wait_y =>
                    if singen_data_valid = '1' then
                        addra_tmp <= unsigned(coord_tmp(9 downto 0) & "00000000") +
                                     unsigned(coord_tmp(10 downto 0) & "0000000");
                        lissa_state <= lissa_write;
                        singen_en <= '0';
                        wea <= "0";
                    end if;
                    if should_reset then
                        lissa_state <= lissa_reset;
                    end if;
                when lissa_write =>
                    addra <= std_logic_vector(addra_tmp + unsigned("00000" & coord_x));
                    lissa_state <= lissa_wait_x;
                    singen_en <= '1';
                    wea <= "1";
                    dina <= "1";
                    if should_reset then
                        lissa_state <= lissa_reset;
                    end if;
            end case;
        end if;
    end process test;
    
    sin_x192 <= std_logic_vector(signed(singen_data_data & "0000000") +
                                 signed(singen_data_data(15) & singen_data_data & "000000"));
    coord_tmp <= std_logic_vector(signed(sin_x192(22 downto 10)) + 192);
    
    
    sin_gen: dds_compiler_0
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

    vram : video_mem
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
