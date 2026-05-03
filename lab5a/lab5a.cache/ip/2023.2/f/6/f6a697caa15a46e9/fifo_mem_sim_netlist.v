// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Apr 30 16:04:56 2026
// Host        : TwinkPad running 64-bit Linux Mint 22.3
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_mem_sim_netlist.v
// Design      : fifo_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_mem,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "62" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "61" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "64" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "6" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "64" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "6" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_9 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 76608)
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
