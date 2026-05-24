----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/11/2026 01:34:37 AM
-- Design Name: 
-- Module Name: pixel_gen - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pixel_gen is
    port (
        clk_i : in std_logic;
        vga_r_o : out std_logic_vector(3 downto 0);
        vga_g_o : out std_logic_vector(3 downto 0);
        vga_b_o : out std_logic_vector(3 downto 0);
        
        curr_px_o : out std_logic;

        vid_active_i : in std_logic;
        px_x_i : in std_logic_vector(9 downto 0);
        px_y_i : in std_logic_vector(8 downto 0);

        vram_addr_o : out std_logic_vector(17 downto 0);
        vram_px_i   : in std_logic_vector(0 downto 0)
    );
end pixel_gen;

architecture Behavioral of pixel_gen is
    signal curr_px: std_logic;
    signal display_x: std_logic_vector(9 downto 0);
    signal display_y: std_logic_vector(9 downto 0);
    signal display_y_x384 : unsigned(17 downto 0);
begin

    curr_px_o <= curr_px;

    display_y_x384 <= unsigned(display_y & "00000000") + unsigned("0" & display_y & "0000000");
    
    
    display_x <= std_logic_vector(signed(px_x_i) - (640 - 384) / 2); 
    display_y <= std_logic_vector(signed("0" & px_y_i) - (480 - 384) / 2); 

    px_gen: process(clk_i, px_x_i, px_y_i, vid_active_i, vram_px_i) is
    begin
        if rising_edge(clk_i) then
            curr_px <= '1';
            if signed(display_x) < 0 or signed(display_x) >= 384 or
                signed(display_y) < 0 or signed(display_y) >= 384
            then
                curr_px <= '0';
                vram_addr_o <= std_logic_vector(display_y_x384);
            else
                vram_addr_o <= std_logic_vector(display_y_x384 + unsigned(display_x) + 1);
                if vram_px_i = "1" then
                    curr_px <= '1';
                else
                    curr_px <= '0';
                end if;
            end if;
        end if;
    end process px_gen;

end Behavioral;
