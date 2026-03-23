library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity gray_tb is
end gray_tb;

architecture behavioral of gray_tb is
	component gray
		Port ( clk_i : in STD_LOGIC;
			rst_i : in STD_LOGIC;
			led_o : out STD_LOGIC_VECTOR (2 downto 0));
	end component;

	signal clk_i : STD_LOGIC := '0';
	signal rst_i : STD_LOGIC := '0';
	signal led_o : STD_LOGIC_VECTOR (2 downto 0);

begin
	uut: gray port map (
		clk_i => clk_i,
		rst_i => rst_i,
		led_o => led_o
	);

	clk_i <= not clk_i after 5 ns;

	tb : process
	begin
		rst_i <= '1';
		wait for 1 ns;
		rst_i <= '0';
		wait for 50.5 ns;
		rst_i <= '1';
		wait for 1 ns;
		rst_i <= '0';
		wait for 25 ns;

		assert false report "TB finished" severity failure;
	end process;

end behavioral;
