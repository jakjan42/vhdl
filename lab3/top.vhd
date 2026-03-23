library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.math_real.all;

entity top is
  Port (
    clk_i : in STD_LOGIC;
    btn_i : in STD_LOGIC_VECTOR (3 downto 0);
    sw_i : in STD_LOGIC_VECTOR (7 downto 0);
    led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
    led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0)
  );
end top;


architecture behavioral of top is
  component display
    Port ( clk_i : in STD_LOGIC;
      rst_i : in STD_LOGIC;
      digit_i : in STD_LOGIC_VECTOR (31 downto 0);
      led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
      led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0)
    );
  end component;

  component encoder
    Port ( clk_i : in std_logic;
      btn_i : in std_logic_vector(3 downto 0);
      sw_i : in std_logic_vector(7 downto 0);
      digit_o : out std_logic_vector(31 downto 0)
    );
  end component;

  constant zero: std_logic := '0';
  signal digit: std_logic_vector(31 downto 0);
begin
  disp: display port map (
    clk_i => clk_i,
    rst_i => zero,
    digit_i => digit,
    led7_an_o => led7_an_o,
    led7_seg_o => led7_seg_o
  );

  enc: encoder port map (
    clk_i => clk_i,
    btn_i => btn_i,
    sw_i => sw_i,
    digit_o => digit
  );
end behavioral;
