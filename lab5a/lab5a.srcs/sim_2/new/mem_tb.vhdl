----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/30/2026 03:42:11 PM
-- Design Name: 
-- Module Name: mem_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mem_tb is
--  Port ( );
end mem_tb;

architecture Behavioral of mem_tb is
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

    signal clk, wr_en, rd_en: std_logic := '0';
    signal full, empty: std_logic;
    signal douta, din, dout: std_logic_vector(7 downto 0);
    signal addra: std_logic_vector(11 downto 0) := B"0000_0000_0000";
    

begin
    rx_buf : fifo_mem
    PORT MAP (
        clk => clk,
        din => din,
        wr_en => wr_en,
        rd_en => rd_en,
        dout => dout,
        full => full,
        empty => empty
    );
    
    char_memory : char_mem
    PORT MAP (
        clka => clk,
        addra => addra,
        douta => douta
    );
    
     clock : process
  begin
      wait for 10 ns;
    clk <= not clk;
  end process;
    
    
    tb1: process is
    begin
        addra <= std_logic_vector(unsigned(addra) + 1);
        if unsigned(addra) = 100 then
            addra <= B"0000_0000_0000";
        end if;
    end process tb1;
    
    tb2: process is
    begin
        wait for 10 ns;
        din <= X"67";
        wr_en <= '1';
        wait for 20 ns;
        din <= X"68";
        wr_en <= '1';
        wait for 20 ns;
        din <= X"69";
        wr_en <= '1';
        wait for 10 ns;
        wr_en <= '0';
        rd_en <= '1';
        wait for 60 ns;
        wait;
    end process tb2;
    

end Behavioral;
