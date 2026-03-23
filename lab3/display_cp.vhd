library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

entity display is
	generic (
		CLKDIV_COEFF: positive := 100000
	);
	Port ( clk_i : in STD_LOGIC;
		rst_i : in STD_LOGIC;
		digit_i : in STD_LOGIC_VECTOR (31 downto 0);
		led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
		led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0)
	);


end display;

architecture reg of display is
	signal seg: natural range 0 to 3 := 0;
	signal clk: std_logic := '0';
	signal counter: natural range 0 to CLKDIV_COEFF - 1;
begin
	clk_div: process(clk_i) is
	begin
		if counter < CLKDIV_COEFF - 1 then
			counter <= counter + 1;
		else
			counter <= 0;
			clk <= not clk;
		end if;
	end process clk_div;

	seg_count: process(clk) is
	begin
		if seg < 3 then
			seg <= seg + 1;
		else
			seg <= 0;
		end if;
	end process seg_count;

	seg_sel: process(seg, rst_i) is
	begin
		if rst_i = '1' then
			led7_an_o <= "1111";
			led7_seg_o <= "11111111";
		else
			case seg is 
				when 0 => 
					led7_an_o <= "0001";
					led7_seg_o <= digit_i(31 downto 24);
				when 1 => 
					led7_an_o <= "0010";
					led7_seg_o <= digit_i(23 downto 16);
				when 2 => 
					led7_an_o <= "0100";
					led7_seg_o <= digit_i(15 downto 8);
				when 3 => 
					led7_an_o <= "1000";
					led7_seg_o <= digit_i(7 downto 0);
			end case;
		end if;
	end process seg_sel;
end reg;
