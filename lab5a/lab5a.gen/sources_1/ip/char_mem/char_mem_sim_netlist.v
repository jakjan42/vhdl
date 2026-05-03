// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Apr 30 16:03:53 2026
// Host        : TwinkPad running 64-bit Linux Mint 22.3
// Command     : write_verilog -force -mode funcsim
//               /home/jak_jan/subjects/ISP/lab5a/lab5a.gen/sources_1/ip/char_mem/char_mem_sim_netlist.v
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
