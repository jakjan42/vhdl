# Clock signal
set_property -dict { PACKAGE_PIN U22   IOSTANDARD LVCMOS33 } [get_ports { clk_i }];
create_clock -add -name sys_clk_pin -period 20.00 -waveform {0 5} [get_ports { clk_i }]; 
#VGA Connector
set_property -dict { PACKAGE_PIN K21    IOSTANDARD LVCMOS33 } [get_ports { vga_r_o[0] }];
set_property -dict { PACKAGE_PIN J21    IOSTANDARD LVCMOS33 } [get_ports { vga_r_o[1] }];
set_property -dict { PACKAGE_PIN D25    IOSTANDARD LVCMOS33 } [get_ports { vga_r_o[2] }];
set_property -dict { PACKAGE_PIN E25    IOSTANDARD LVCMOS33 } [get_ports { vga_r_o[3] }];
set_property -dict { PACKAGE_PIN K25    IOSTANDARD LVCMOS33 } [get_ports { vga_g_o[0] }];
set_property -dict { PACKAGE_PIN K26    IOSTANDARD LVCMOS33 } [get_ports { vga_g_o[1] }];
set_property -dict { PACKAGE_PIN G26    IOSTANDARD LVCMOS33 } [get_ports { vga_g_o[2] }];
set_property -dict { PACKAGE_PIN H26    IOSTANDARD LVCMOS33 } [get_ports { vga_g_o[3] }];
set_property -dict { PACKAGE_PIN K22    IOSTANDARD LVCMOS33 } [get_ports { vga_b_o[0] }];
set_property -dict { PACKAGE_PIN K23    IOSTANDARD LVCMOS33 } [get_ports { vga_b_o[1] }];
set_property -dict { PACKAGE_PIN F23    IOSTANDARD LVCMOS33 } [get_ports { vga_b_o[2] }];
set_property -dict { PACKAGE_PIN E23    IOSTANDARD LVCMOS33 } [get_ports { vga_b_o[3] }];
set_property -dict { PACKAGE_PIN E26    IOSTANDARD LVCMOS33 } [get_ports { vga_hsync_o }];
set_property -dict { PACKAGE_PIN D26    IOSTANDARD LVCMOS33 } [get_ports { vga_vsync_o }];

set_property -dict { PACKAGE_PIN N26    IOSTANDARD LVCMOS33    PULLTYPE PULLUP } [get_ports { sw_i[0] }];
set_property -dict { PACKAGE_PIN L22    IOSTANDARD LVCMOS33    PULLTYPE PULLUP } [get_ports { sw_i[1] }];
set_property -dict { PACKAGE_PIN R26    IOSTANDARD LVCMOS33    PULLTYPE PULLUP } [get_ports { sw_i[2] }];
set_property -dict { PACKAGE_PIN M24    IOSTANDARD LVCMOS33    PULLTYPE PULLUP } [get_ports { sw_i[3] }];
set_property -dict { PACKAGE_PIN N21    IOSTANDARD LVCMOS33    PULLTYPE PULLUP } [get_ports { sw_i[4] }];
set_property -dict { PACKAGE_PIN P23    IOSTANDARD LVCMOS33    PULLTYPE PULLUP } [get_ports { sw_i[5] }];
set_property -dict { PACKAGE_PIN R25    IOSTANDARD LVCMOS33    PULLTYPE PULLUP } [get_ports { sw_i[6] }];
set_property -dict { PACKAGE_PIN T24    IOSTANDARD LVCMOS33    PULLTYPE PULLUP } [get_ports { sw_i[7] }];

set_property -dict { PACKAGE_PIN U21    IOSTANDARD LVCMOS33    PULLTYPE PULLUP } [get_ports { btn_i[0] }];
set_property -dict { PACKAGE_PIN V23    IOSTANDARD LVCMOS33    PULLTYPE PULLUP } [get_ports { btn_i[1] }];
set_property -dict { PACKAGE_PIN Y22    IOSTANDARD LVCMOS33    PULLTYPE PULLUP } [get_ports { btn_i[2] }];
set_property -dict { PACKAGE_PIN Y25    IOSTANDARD LVCMOS33    PULLTYPE PULLUP } [get_ports { btn_i[3] }];

## Configuration options, can be used for all designs
# set_property CONFIG_VOLTAGE 3.3 [current_design]
# set_property CFGBVS VCCO [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]

