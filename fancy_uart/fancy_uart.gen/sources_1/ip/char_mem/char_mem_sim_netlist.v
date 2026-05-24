// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat May 23 17:29:54 2026
// Host        : TwinkPad running 64-bit Linux Mint 22.3
// Command     : write_verilog -force -mode funcsim
//               /home/jak_jan/subjects/ISP/test/test.gen/sources_1/ip/char_mem/char_mem_sim_netlist.v
// Design      : char_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_mem,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module char_mem
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [7:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.326399 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "char_mem.mem" *) 
  (* C_INIT_FILE_NAME = "char_mem.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  char_mem_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25472)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
