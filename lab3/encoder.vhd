library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;



entity encoder is
  Port ( clk_i : in std_logic;
    btn_i : in std_logic_vector(3 downto 0);
    sw_i : in std_logic_vector(7 downto 0);
    digit_o : out std_logic_vector(31 downto 0)
  );

  type std_logic_vector16_8 is array (0 to 15) of std_logic_vector(7 downto 0);
  type std_logic_vector4_8 is array (0 to 3) of std_logic_vector(7 downto 0);
  constant DISPLAY_HEX_DIGITS: std_logic_vector16_8 := (
    x"03",x"f3",x"25",x"0d",x"99",x"49",x"41",x"1f",
    x"01",x"f9",x"11",x"c1",x"63",x"85",x"61",x"71"
  );

end encoder;

architecture reg of encoder is
  signal digits: std_logic_vector4_8 := (x"ff", x"ff", x"ff", x"ff");
begin
  digit_o <= digits(3)(7 downto 1) & sw_i(7) &
             digits(2)(7 downto 1) & sw_i(6) &
             digits(1)(7 downto 1) & sw_i(5) &
             digits(0)(7 downto 1) & sw_i(4);


  write_digit: process(clk_i, btn_i, digits) is
  begin
    if rising_edge(clk_i) then
      if btn_i(0) = '1' then
        digits(0) <= DISPLAY_HEX_DIGITS(to_integer(unsigned(sw_i(3 downto 0))));
      end if;
      if btn_i(1) = '1' then
        digits(1) <= DISPLAY_HEX_DIGITS(to_integer(unsigned(sw_i(3 downto 0))));
      end if;
      if btn_i(2) = '1' then
        digits(2) <= DISPLAY_HEX_DIGITS(to_integer(unsigned(sw_i(3 downto 0))));
      end if;
      if btn_i(3) = '1' then
        digits(3) <= DISPLAY_HEX_DIGITS(to_integer(unsigned(sw_i(3 downto 0))));
      end if;
    end if;
  end process write_digit;
end reg;
