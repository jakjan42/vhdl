# Clock signal
set_property -dict { PACKAGE_PIN U22   IOSTANDARD LVCMOS33 } [get_ports { clk_i }];
create_clock -add -name sys_clk_pin -period 20.00 -waveform {0 5} [get_ports { clk_i }]; 

set_property -dict { PACKAGE_PIN Y22    IOSTANDARD LVCMOS33 } [get_ports { TXD_o }];
set_property -dict { PACKAGE_PIN Y25    IOSTANDARD LVCMOS33 } [get_ports { RXD_i }];

set_property -dict { PACKAGE_PIN V23    IOSTANDARD LVCMOS33 } [get_ports { ld0 }];

set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
