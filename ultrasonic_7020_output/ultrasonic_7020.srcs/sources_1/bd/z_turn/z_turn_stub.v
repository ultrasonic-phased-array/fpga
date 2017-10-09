// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Sun Oct  8 12:49:31 2017
// Host        : niklas-precision running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/niklas/xilinx/ultrasonic_7020_output/ultrasonic_7020.srcs/sources_1/bd/z_turn/z_turn_stub.v
// Design      : z_turn
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module z_turn(DDR_addr, DDR_ba, DDR_cas_n, DDR_ck_n, DDR_ck_p, 
  DDR_cke, DDR_cs_n, DDR_dm, DDR_dq, DDR_dqs_n, DDR_dqs_p, DDR_odt, DDR_ras_n, DDR_reset_n, DDR_we_n, 
  FIXED_IO_ddr_vrn, FIXED_IO_ddr_vrp, FIXED_IO_mio, FIXED_IO_ps_clk, FIXED_IO_ps_porb, 
  FIXED_IO_ps_srstb, HDMI_INTn, I2S_FSYNC_IN, IIC_0_scl_i, IIC_0_scl_o, IIC_0_scl_t, 
  IIC_0_sda_i, IIC_0_sda_o, IIC_0_sda_t, IO_B13_LN, IO_B13_LP, IO_B34_LN, IO_B34_LP, IO_B35_LN, 
  IO_B35_LP, MEMS_INTn)
/* synthesis syn_black_box black_box_pad_pin="DDR_addr[14:0],DDR_ba[2:0],DDR_cas_n,DDR_ck_n,DDR_ck_p,DDR_cke,DDR_cs_n,DDR_dm[3:0],DDR_dq[31:0],DDR_dqs_n[3:0],DDR_dqs_p[3:0],DDR_odt,DDR_ras_n,DDR_reset_n,DDR_we_n,FIXED_IO_ddr_vrn,FIXED_IO_ddr_vrp,FIXED_IO_mio[53:0],FIXED_IO_ps_clk,FIXED_IO_ps_porb,FIXED_IO_ps_srstb,HDMI_INTn,I2S_FSYNC_IN,IIC_0_scl_i,IIC_0_scl_o,IIC_0_scl_t,IIC_0_sda_i,IIC_0_sda_o,IIC_0_sda_t,IO_B13_LN[16:11],IO_B13_LP[16:11],IO_B34_LN[19:1],IO_B34_LP[19:1],IO_B35_LN[24:1],IO_B35_LP[24:1],MEMS_INTn" */;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input HDMI_INTn;
  input I2S_FSYNC_IN;
  input IIC_0_scl_i;
  output IIC_0_scl_o;
  output IIC_0_scl_t;
  input IIC_0_sda_i;
  output IIC_0_sda_o;
  output IIC_0_sda_t;
  output [16:11]IO_B13_LN;
  output [16:11]IO_B13_LP;
  output [19:1]IO_B34_LN;
  output [19:1]IO_B34_LP;
  output [24:1]IO_B35_LN;
  output [24:1]IO_B35_LP;
  input MEMS_INTn;
endmodule
