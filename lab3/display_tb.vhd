library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity display_tb is
end display_tb;

architecture behavioral of display_tb is
	component display
		generic (
			CLKDIV_COEFF: positive := 3
		);
		Port ( clk_i : in STD_LOGIC;
			rst_i : in STD_LOGIC;
			digit_i : in STD_LOGIC_VECTOR (31 downto 0);
			led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
			led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0)
		);
	end component;

	signal clk_i : STD_LOGIC := '0';
	signal rst_i : STD_LOGIC := '0';
	signal digit_i : STD_LOGIC_VECTOR (31 downto 0) := X"AABBCCDD";

	signal led7_an_o : STD_LOGIC_VECTOR(3 downto 0);
	signal led7_seg_o : STD_LOGIC_VECTOR(7 downto 0);
begin
	uut: display port map (
		clk_i => clk_i,
		rst_i => rst_i,
		digit_i => digit_i,
		led7_an_o => led7_an_o,
		led7_seg_o => led7_seg_o
	);

	clk_i <= not clk_i after 1 ns;

	tb : process
	begin
		wait for 100 ns;
		rst_i <= '1';
		wait for 30 ns;
		rst_i <= '0';
		wait for 100 ns;

		assert false report "TB finished" severity failure;
	end process;

end behavioral;
