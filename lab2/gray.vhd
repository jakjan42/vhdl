library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity gray is
	Port ( clk_i : in STD_LOGIC;
		rst_i : in STD_LOGIC;
		led_o : out STD_LOGIC_VECTOR (2 downto 0));
end gray;

architecture reg of gray is
	signal counter: integer range 0 to 7;
	signal counter_vec: std_logic_vector(2 downto 0);
begin
	inc: process(clk_i, rst_i) is
	begin
		if rst_i = '1' then
			counter <= 0;
		elsif rising_edge(clk_i) then
			if counter < 7 then
				counter <= counter + 1;
			else
				counter <= 0;
			end if;
		end if;
	end process inc;

	counter_vec <= std_logic_vector(to_unsigned(counter, counter_vec'length));

	led_o <= (counter_vec(2), counter_vec(2) xor counter_vec(1), counter_vec(1) xor counter_vec(0));
end reg;
