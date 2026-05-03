// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Apr 30 16:03:52 2026
// Host        : TwinkPad running 64-bit Linux Mint 22.3
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ char_mem_sim_netlist.v
// Design      : char_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_mem,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25536)
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
