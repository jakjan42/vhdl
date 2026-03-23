library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity top_tb is
end top_tb;

architecture Behavioral of top_tb is
	component top
		Port (
			clk_i : in STD_LOGIC;
			btn_i : in STD_LOGIC_VECTOR (3 downto 0);
			sw_i : in STD_LOGIC_VECTOR (7 downto 0);
			led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
			led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0)
		);
	end component;

	signal clk_i : STD_LOGIC := '0';
	signal btn_i : STD_LOGIC_VECTOR (3 downto 0) := "0000";
	signal sw_i : STD_LOGIC_VECTOR (7 downto 0) := x"67";
	signal led7_an_o : STD_LOGIC_VECTOR (3 downto 0);
	signal led7_seg_o : STD_LOGIC_VECTOR (7 downto 0);
begin
	uut: top port map (
		clk_i => clk_i,
		btn_i => btn_i,
		sw_i => sw_i,
		led7_an_o => led7_an_o,
		led7_seg_o => led7_seg_o
	);

	clock : process
	begin
		clk_i <= not clk_i;
		wait for 5 ns;
	end process;
	
	tb1 : process
	begin
		wait for 1 ms;
		for i in 0 to 3 loop
			btn_i(i) <= '1';
			wait for 1 ms;
			btn_i(i) <= '0';
			wait for 1 ms;
			sw_i(3 downto 0) <= std_logic_vector(to_unsigned(i, 4));
			sw_i(7 downto 4) <= std_logic_vector(to_unsigned(i + 1, 4));
			wait for 1 ms;
		end loop;

		assert false report "TB finished" severity failure;
		wait;
	end process;

end Behavioral;
