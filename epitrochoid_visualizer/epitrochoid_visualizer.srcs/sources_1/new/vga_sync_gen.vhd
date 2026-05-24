----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/30/2026 09:12:14 PM
-- Design Name: 
-- Module Name: vga_sync_gen - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity vga_sync_gen is
    generic (
        WIDTH: natural         := 640;
        HEIGHT: natural        := 480;
        H_FRONT_PORCH: natural := 16;
        H_BACK_PORCH: natural  := 48;
        H_SYNC_PULSE: natural  := 96;
        V_FRONT_PORCH: natural := 10;
        V_BACK_PORCH: natural  := 33;
        V_SYNC_PULSE: natural  := 2
    );
    Port (
        clk_i        : in std_logic;
        vga_clk_en_i : in std_logic;
        hsync_o      : out std_logic;
        vsync_o      : out std_logic;
        active_vid_o : out std_logic;
        vga_px_x_o   : out std_logic_vector(natural(ceil(log2(real(WIDTH))))-1 downto 0);
        vga_px_y_o   : out std_logic_vector(natural(ceil(log2(real(HEIGHT))))-1 downto 0)
    );
end vga_sync_gen;

architecture Behavioral of vga_sync_gen is
    constant H_COUNTER_WIDTH: positive:= WIDTH + H_FRONT_PORCH + H_BACK_PORCH + H_SYNC_PULSE;
    constant V_COUNTER_WIDTH: positive:= HEIGHT + V_FRONT_PORCH + V_BACK_PORCH + V_SYNC_PULSE;

    signal hsync_counter: natural range 0 to H_COUNTER_WIDTH - 1 := WIDTH + H_FRONT_PORCH;
    signal vsync_counter: natural range 0 to V_COUNTER_WIDTH - 1 := HEIGHT + H_FRONT_PORCH;
    signal hsync_counter_next: natural range 0 to H_COUNTER_WIDTH - 1 := WIDTH + H_FRONT_PORCH;
    signal vsync_counter_next: natural range 0 to V_COUNTER_WIDTH - 1 := HEIGHT + H_FRONT_PORCH;
begin
    vga_px_x_o <= std_logic_vector(to_unsigned(hsync_counter, vga_px_x_o'length));
    vga_px_y_o <= std_logic_vector(to_unsigned(vsync_counter, vga_px_y_o'length));

    count_regs: process(clk_i, vga_clk_en_i, vsync_counter_next, hsync_counter_next) is
    begin
        if rising_edge(clk_i) then
            if vga_clk_en_i = '1' then
                vsync_counter <= vsync_counter_next;
                hsync_counter <= hsync_counter_next;
            end if;
        end if;
    end process count_regs;

    count_logic: process(vsync_counter, hsync_counter) is
    begin
       vsync_counter_next <= vsync_counter;
       if hsync_counter = H_COUNTER_WIDTH - 1 then
           hsync_counter_next <= 0;
           if vsync_counter = V_COUNTER_WIDTH - 1 then
               vsync_counter_next <= 0;
           else
               vsync_counter_next <= vsync_counter + 1;
           end if;
       else
           hsync_counter_next <= hsync_counter + 1;
       end if; 
    end process count_logic;

    gen_hsync: process(clk_i, vga_clk_en_i, vsync_counter_next, hsync_counter_next) is
    begin
        if rising_edge(clk_i) then
            if vga_clk_en_i = '1' then
                hsync_o <= '1';
                if hsync_counter_next >= WIDTH + H_FRONT_PORCH and
                    hsync_counter_next < WIDTH + H_FRONT_PORCH + H_SYNC_PULSE
                then
                    hsync_o <= '0';
                end if;
            end if;
        end if;
    end process gen_hsync;

    gen_vsync: process(clk_i, vga_clk_en_i, vsync_counter_next, hsync_counter_next) is
    begin
        if rising_edge(clk_i) then
            if vga_clk_en_i = '1' then
                vsync_o <= '1';
                if vsync_counter_next >= HEIGHT + V_FRONT_PORCH and
                    vsync_counter_next < HEIGHT + V_FRONT_PORCH + V_SYNC_PULSE
                then
                    vsync_o <= '0';
                end if;
            end if;
        end if;
    end process gen_vsync;

    gen_video_active: process(clk_i, vga_clk_en_i, hsync_counter_next, vsync_counter_next) is
    begin
        if rising_edge(clk_i) then
            if vga_clk_en_i = '1' then
                active_vid_o <= '0';
                if hsync_counter_next < WIDTH and vsync_counter_next < HEIGHT then
                    active_vid_o <= '1';
                end if;
            end if;
        end if;
    end process gen_video_active;

end Behavioral;
