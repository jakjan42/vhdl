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
  signal clk_en: std_logic := '0';
  signal counter: natural range 0 to CLKDIV_COEFF - 1;
  constant seg: unsigned (3 downto 0) := X"1";
  signal seg_bit: natural range 0 to 3 := 0;
begin

  clk_div: process(clk_i, counter) is
  begin
    if rising_edge(clk_i) then
      if counter < CLKDIV_COEFF - 1 then
          counter <= counter + 1;
          clk_en <= '0';
        else
          counter <= 0;
          clk_en <= '1';
      end if;
    end if;
  end process clk_div;

  seg_count: process(clk_i, clk_en) is
  begin
    if rising_edge(clk_i) and clk_en = '1' then
      if seg_bit < 3 then
        seg_bit <= seg_bit + 1;
      else
        seg_bit <= 0;
      end if;
    end if;
  end process seg_count;


  seg_sel: process(clk_i, seg_bit, rst_i) is
  begin
      if rst_i = '1' then
        led7_an_o <= "1111";
        led7_seg_o <= "11111111";
      elsif rising_edge(clk_i) then
        led7_an_o <= not std_logic_vector(seg sll seg_bit);
        led7_seg_o <= digit_i((seg_bit + 1) * 8 - 1 downto seg_bit * 8);
      end if;
  end process seg_sel;
end reg;
