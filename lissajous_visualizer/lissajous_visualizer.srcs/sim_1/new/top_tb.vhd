----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/11/2026 02:35:54 AM
-- Design Name: 
-- Module Name: top_tb - Behavioral
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

entity top_tb is
--  Port ( );
end top_tb;

architecture Behavioral of top_tb is
    signal clk_i: std_logic := '0';
    signal vga_r_o : std_logic_vector(3 downto 0);
    signal vga_g_o : std_logic_vector(3 downto 0);
    signal vga_b_o : std_logic_vector(3 downto 0);
    signal vga_hsync_o : std_logic;
    signal vga_vsync_o : std_logic;
    signal sw_i : std_logic_vector(7 downto 0) := X"67";
    signal btn_i : std_logic_vector(3 downto 0) := "0000";
begin
    clk_gen: process
    begin
        clk_i <= not clk_i;
        wait for 10 ns;
    end process;
    
    tb1: process
    begin
        wait for 100 us;
        btn_i <= "0111";
        wait for 1us;
        btn_i <= "1011";
        wait for 1us;
        btn_i <= "1101";
        wait for 1us;
        btn_i <= "1110";
        wait for 1us;
        btn_i <= "1111";
        wait for 100 us;
        wait;
    end process tb1;
    
    uut: entity work.top
    port map(
        clk_i => clk_i,
        sw_i => sw_i,
        btn_i => btn_i,
        vga_r_o => vga_r_o,
        vga_g_o => vga_g_o,
        vga_b_o => vga_b_o,
        vga_hsync_o => vga_hsync_o,
        vga_vsync_o => vga_vsync_o
    );
    
    

end Behavioral;
