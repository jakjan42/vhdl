----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2026 10:46:29 AM
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_tb is
--  Port ( );
end top_tb;

architecture Behavioral of top_tb is
    
    component top
        Port ( sw_i : in STD_LOGIC_VECTOR (7 downto 0);

           led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);

           led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    signal sw_i : STD_LOGIC_VECTOR (7 downto 0);
    signal led7_an_o : STD_LOGIC_VECTOR (3 downto 0);
    signal led7_seg_o : STD_LOGIC_VECTOR (7 downto 0);

begin

uut: top PORT MAP (
    sw_i => sw_i,
    led7_an_o => led7_an_o,
    led7_seg_o => led7_seg_o
);

tb1 : PROCESS
variable x : integer;
BEGIN
	x := 0;
	while x < 256 loop
		sw_i <= std_logic_vector(to_unsigned(x, 8));
		wait for 100 ns;
		x := x + 1;
	end loop;

	wait;
END PROCESS;

end Behavioral;
