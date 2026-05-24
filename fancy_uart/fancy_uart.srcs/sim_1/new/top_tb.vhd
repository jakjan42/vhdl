----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2026 04:23:34 PM
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
    signal RXD_i, TXD_o: std_logic;
    signal clk_i: std_logic := '0';
begin
    uut: entity work.top
    port map (
        clk_i  => clk_i,
        RXD_i  => RXD_i,
        TXD_o => TXD_o
    );

    clkgen: process is
    begin
        wait for 10 ns;
        clk_i <= not clk_i;
    end process clkgen;

    tb1: process is
    begin
        RXD_i <= '1';
        wait for 0.104 ms;
        RXD_i <= '0'; -- start bit
        wait for 0.104 ms;
        RXD_i <= '1';
        wait for 0.104 ms;
        RXD_i <= '0';
        wait for 0.104 ms;
        RXD_i <= '0';
        wait for 0.104 ms;
        RXD_i <= '0';
        wait for 0.104 ms;
        RXD_i <= '0';
        wait for 0.104 ms;
        RXD_i <= '0';
        wait for 0.104 ms;
        RXD_i <= '1';
        wait for 0.104 ms;
        RXD_i <= '0';
        wait for 0.104 ms;
        RXD_i <= '1'; -- stop bit
        wait for 0.104 ms;

        -- CR
        RXD_i <= '0'; -- start bit
        wait for 0.104 ms;
        RXD_i <= '1';
        wait for 0.104 ms;
        RXD_i <= '0';
        wait for 0.104 ms;
        RXD_i <= '1';
        wait for 0.104 ms;
        RXD_i <= '1';
        wait for 0.104 ms;
        RXD_i <= '0';
        wait for 0.104 ms;
        RXD_i <= '0';
        wait for 0.104 ms;
        RXD_i <= '0';
        wait for 0.104 ms;
        RXD_i <= '0';
        wait for 0.104 ms;
        RXD_i <= '1'; -- stop bit
        wait for 0.104 ms;
        wait for 100 ms;

        wait;
    end process tb1;

end Behavioral;
