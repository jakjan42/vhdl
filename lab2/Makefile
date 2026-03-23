TOP_TB=gray_tb
FILES=gray.vhd

all:
	ghdl -a $(FILES) $(TOP_TB).vhd
	ghdl -e $(TOP_TB)
	ghdl -r $(TOP_TB) --vcd=$(TOP_TB).vcd
