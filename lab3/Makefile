TOP_TB=top_tb
FILES=display.vhd encoder.vhd top.vhd

all:
	ghdl -a $(FILES) $(TOP_TB).vhd
	ghdl -e $(TOP_TB)
	ghdl -r $(TOP_TB) --vcd=$(TOP_TB).vcd
	gtkwave $(TOP_TB).vcd

synth:
	 ghdl --synth $(FILES) -e top
