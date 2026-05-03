// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Apr 30 16:04:56 2026
// Host        : TwinkPad running 64-bit Linux Mint 22.3
// Command     : write_verilog -force -mode funcsim
//               /home/jak_jan/subjects/ISP/lab5a/lab5a.gen/sources_1/ip/fifo_mem/fifo_mem_sim_netlist.v
// Design      : fifo_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_mem,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module fifo_mem
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
  fifo_mem_fifo_generator_v13_2_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 76272)
`pragma protect data_block
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
ltozal/G
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
