//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
//Date        : Sun Oct  8 12:46:42 2017
//Host        : niklas-precision running 64-bit Ubuntu 16.04.3 LTS
//Command     : generate_target z_turn.bd
//Design      : z_turn
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_O531XQ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_1X7AK9R
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_1LVYIGD
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [2:0]m02_couplers_to_m02_couplers_ARPROT;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [2:0]m02_couplers_to_m02_couplers_AWPROT;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_1N0XG9
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arburst;
  output M_AXI_arcache;
  output M_AXI_arid;
  output M_AXI_arlen;
  output M_AXI_arlock;
  output M_AXI_arprot;
  output M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arsize;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awburst;
  output M_AXI_awcache;
  output M_AXI_awid;
  output M_AXI_awlen;
  output M_AXI_awlock;
  output M_AXI_awprot;
  output M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awsize;
  output M_AXI_awvalid;
  input M_AXI_bid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  input M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  output M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arid;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awid;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  output S_AXI_bid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire s00_couplers_to_s00_couplers_ARADDR;
  wire s00_couplers_to_s00_couplers_ARBURST;
  wire s00_couplers_to_s00_couplers_ARCACHE;
  wire s00_couplers_to_s00_couplers_ARID;
  wire s00_couplers_to_s00_couplers_ARLEN;
  wire s00_couplers_to_s00_couplers_ARLOCK;
  wire s00_couplers_to_s00_couplers_ARPROT;
  wire s00_couplers_to_s00_couplers_ARQOS;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARSIZE;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire s00_couplers_to_s00_couplers_AWADDR;
  wire s00_couplers_to_s00_couplers_AWBURST;
  wire s00_couplers_to_s00_couplers_AWCACHE;
  wire s00_couplers_to_s00_couplers_AWID;
  wire s00_couplers_to_s00_couplers_AWLEN;
  wire s00_couplers_to_s00_couplers_AWLOCK;
  wire s00_couplers_to_s00_couplers_AWPROT;
  wire s00_couplers_to_s00_couplers_AWQOS;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWSIZE;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RID;
  wire s00_couplers_to_s00_couplers_RLAST;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WID;
  wire s00_couplers_to_s00_couplers_WLAST;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arburst = s00_couplers_to_s00_couplers_ARBURST;
  assign M_AXI_arcache = s00_couplers_to_s00_couplers_ARCACHE;
  assign M_AXI_arid = s00_couplers_to_s00_couplers_ARID;
  assign M_AXI_arlen = s00_couplers_to_s00_couplers_ARLEN;
  assign M_AXI_arlock = s00_couplers_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arqos = s00_couplers_to_s00_couplers_ARQOS;
  assign M_AXI_arsize = s00_couplers_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awburst = s00_couplers_to_s00_couplers_AWBURST;
  assign M_AXI_awcache = s00_couplers_to_s00_couplers_AWCACHE;
  assign M_AXI_awid = s00_couplers_to_s00_couplers_AWID;
  assign M_AXI_awlen = s00_couplers_to_s00_couplers_AWLEN;
  assign M_AXI_awlock = s00_couplers_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awqos = s00_couplers_to_s00_couplers_AWQOS;
  assign M_AXI_awsize = s00_couplers_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wid = s00_couplers_to_s00_couplers_WID;
  assign M_AXI_wlast = s00_couplers_to_s00_couplers_WLAST;
  assign M_AXI_wstrb = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bid = s00_couplers_to_s00_couplers_BID;
  assign S_AXI_bresp = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rid = s00_couplers_to_s00_couplers_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_couplers_RLAST;
  assign S_AXI_rresp = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr;
  assign s00_couplers_to_s00_couplers_ARBURST = S_AXI_arburst;
  assign s00_couplers_to_s00_couplers_ARCACHE = S_AXI_arcache;
  assign s00_couplers_to_s00_couplers_ARID = S_AXI_arid;
  assign s00_couplers_to_s00_couplers_ARLEN = S_AXI_arlen;
  assign s00_couplers_to_s00_couplers_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot;
  assign s00_couplers_to_s00_couplers_ARQOS = S_AXI_arqos;
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARSIZE = S_AXI_arsize;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr;
  assign s00_couplers_to_s00_couplers_AWBURST = S_AXI_awburst;
  assign s00_couplers_to_s00_couplers_AWCACHE = S_AXI_awcache;
  assign s00_couplers_to_s00_couplers_AWID = S_AXI_awid;
  assign s00_couplers_to_s00_couplers_AWLEN = S_AXI_awlen;
  assign s00_couplers_to_s00_couplers_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot;
  assign s00_couplers_to_s00_couplers_AWQOS = S_AXI_awqos;
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWSIZE = S_AXI_awsize;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BID = M_AXI_bid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp;
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata;
  assign s00_couplers_to_s00_couplers_RID = M_AXI_rid;
  assign s00_couplers_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp;
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata;
  assign s00_couplers_to_s00_couplers_WID = S_AXI_wid;
  assign s00_couplers_to_s00_couplers_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb;
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_QSJACF
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  z_turn_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

(* CORE_GENERATION_INFO = "z_turn,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=z_turn,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=26,numReposBlks=19,numNonXlnxBlks=3,numHierBlks=7,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=21,da_board_cnt=1,da_clkrst_cnt=7,synth_mode=OOC_per_BD}" *) (* HW_HANDOFF = "z_turn.hwdef" *) 
module z_turn
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    HDMI_INTn,
    I2S_FSYNC_IN,
    IIC_0_scl_i,
    IIC_0_scl_o,
    IIC_0_scl_t,
    IIC_0_sda_i,
    IIC_0_sda_o,
    IIC_0_sda_t,
    IO_B13_LN,
    IO_B13_LP,
    IO_B34_LN,
    IO_B34_LP,
    IO_B35_LN,
    IO_B35_LP,
    MEMS_INTn);
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

  wire HDMI_INTn_1;
  wire MEMS_INTn_1;
  wire axi_i2s_adi_0_DMA_TX_REQ_TLAST;
  wire axi_i2s_adi_0_DMA_TX_REQ_TREADY;
  wire [1:0]axi_i2s_adi_0_DMA_TX_REQ_TUSER;
  wire axi_i2s_adi_0_DMA_TX_REQ_TVALID;
  wire [0:0]axi_i2s_adi_0_LRCLK_O;
  wire [23:0]axi_i2s_adi_0_PARDATA_O;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_1_clk_out1;
  wire io2axis_M00_AXI_ARADDR;
  wire io2axis_M00_AXI_ARBURST;
  wire io2axis_M00_AXI_ARCACHE;
  wire io2axis_M00_AXI_ARID;
  wire io2axis_M00_AXI_ARLEN;
  wire io2axis_M00_AXI_ARLOCK;
  wire io2axis_M00_AXI_ARPROT;
  wire io2axis_M00_AXI_ARQOS;
  wire io2axis_M00_AXI_ARREADY;
  wire io2axis_M00_AXI_ARSIZE;
  wire io2axis_M00_AXI_ARVALID;
  wire io2axis_M00_AXI_AWADDR;
  wire io2axis_M00_AXI_AWBURST;
  wire io2axis_M00_AXI_AWCACHE;
  wire io2axis_M00_AXI_AWID;
  wire io2axis_M00_AXI_AWLEN;
  wire io2axis_M00_AXI_AWLOCK;
  wire io2axis_M00_AXI_AWPROT;
  wire io2axis_M00_AXI_AWQOS;
  wire io2axis_M00_AXI_AWREADY;
  wire io2axis_M00_AXI_AWSIZE;
  wire io2axis_M00_AXI_AWVALID;
  wire [5:0]io2axis_M00_AXI_BID;
  wire io2axis_M00_AXI_BREADY;
  wire [1:0]io2axis_M00_AXI_BRESP;
  wire io2axis_M00_AXI_BVALID;
  wire [63:0]io2axis_M00_AXI_RDATA;
  wire [5:0]io2axis_M00_AXI_RID;
  wire io2axis_M00_AXI_RLAST;
  wire io2axis_M00_AXI_RREADY;
  wire [1:0]io2axis_M00_AXI_RRESP;
  wire io2axis_M00_AXI_RVALID;
  wire io2axis_M00_AXI_WDATA;
  wire io2axis_M00_AXI_WID;
  wire io2axis_M00_AXI_WLAST;
  wire io2axis_M00_AXI_WREADY;
  wire io2axis_M00_AXI_WSTRB;
  wire io2axis_M00_AXI_WVALID;
  wire [0:0]proc_sys_reset2_interconnect_aresetn;
  wire [0:0]proc_sys_reset2_peripheral_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire ps7_DMA0_ACK_TREADY;
  wire [1:0]ps7_DMA0_ACK_TUSER;
  wire ps7_DMA0_ACK_TVALID;
  wire ps7_IIC_0_SCL_I;
  wire ps7_IIC_0_SCL_O;
  wire ps7_IIC_0_SCL_T;
  wire ps7_IIC_0_SDA_I;
  wire ps7_IIC_0_SDA_O;
  wire ps7_IIC_0_SDA_T;
  wire [14:0]ps_7_DDR_ADDR;
  wire [2:0]ps_7_DDR_BA;
  wire ps_7_DDR_CAS_N;
  wire ps_7_DDR_CKE;
  wire ps_7_DDR_CK_N;
  wire ps_7_DDR_CK_P;
  wire ps_7_DDR_CS_N;
  wire [3:0]ps_7_DDR_DM;
  wire [31:0]ps_7_DDR_DQ;
  wire [3:0]ps_7_DDR_DQS_N;
  wire [3:0]ps_7_DDR_DQS_P;
  wire ps_7_DDR_ODT;
  wire ps_7_DDR_RAS_N;
  wire ps_7_DDR_RESET_N;
  wire ps_7_DDR_WE_N;
  wire ps_7_FCLK_CLK0;
  wire ps_7_FCLK_CLK1;
  wire ps_7_FCLK_CLK2;
  wire ps_7_FCLK_CLK3;
  wire ps_7_FCLK_RESET0_N;
  wire ps_7_FCLK_RESET1_N;
  wire ps_7_FCLK_RESET2_N;
  wire ps_7_FCLK_RESET3_N;
  wire ps_7_FIXED_IO_DDR_VRN;
  wire ps_7_FIXED_IO_DDR_VRP;
  wire [53:0]ps_7_FIXED_IO_MIO;
  wire ps_7_FIXED_IO_PS_CLK;
  wire ps_7_FIXED_IO_PS_PORB;
  wire ps_7_FIXED_IO_PS_SRSTB;
  wire [31:0]ps_7_M_AXI_GP0_ARADDR;
  wire [1:0]ps_7_M_AXI_GP0_ARBURST;
  wire [3:0]ps_7_M_AXI_GP0_ARCACHE;
  wire [11:0]ps_7_M_AXI_GP0_ARID;
  wire [3:0]ps_7_M_AXI_GP0_ARLEN;
  wire [1:0]ps_7_M_AXI_GP0_ARLOCK;
  wire [2:0]ps_7_M_AXI_GP0_ARPROT;
  wire [3:0]ps_7_M_AXI_GP0_ARQOS;
  wire ps_7_M_AXI_GP0_ARREADY;
  wire [2:0]ps_7_M_AXI_GP0_ARSIZE;
  wire ps_7_M_AXI_GP0_ARVALID;
  wire [31:0]ps_7_M_AXI_GP0_AWADDR;
  wire [1:0]ps_7_M_AXI_GP0_AWBURST;
  wire [3:0]ps_7_M_AXI_GP0_AWCACHE;
  wire [11:0]ps_7_M_AXI_GP0_AWID;
  wire [3:0]ps_7_M_AXI_GP0_AWLEN;
  wire [1:0]ps_7_M_AXI_GP0_AWLOCK;
  wire [2:0]ps_7_M_AXI_GP0_AWPROT;
  wire [3:0]ps_7_M_AXI_GP0_AWQOS;
  wire ps_7_M_AXI_GP0_AWREADY;
  wire [2:0]ps_7_M_AXI_GP0_AWSIZE;
  wire ps_7_M_AXI_GP0_AWVALID;
  wire [11:0]ps_7_M_AXI_GP0_BID;
  wire ps_7_M_AXI_GP0_BREADY;
  wire [1:0]ps_7_M_AXI_GP0_BRESP;
  wire ps_7_M_AXI_GP0_BVALID;
  wire [31:0]ps_7_M_AXI_GP0_RDATA;
  wire [11:0]ps_7_M_AXI_GP0_RID;
  wire ps_7_M_AXI_GP0_RLAST;
  wire ps_7_M_AXI_GP0_RREADY;
  wire [1:0]ps_7_M_AXI_GP0_RRESP;
  wire ps_7_M_AXI_GP0_RVALID;
  wire [31:0]ps_7_M_AXI_GP0_WDATA;
  wire [11:0]ps_7_M_AXI_GP0_WID;
  wire ps_7_M_AXI_GP0_WLAST;
  wire ps_7_M_AXI_GP0_WREADY;
  wire [3:0]ps_7_M_AXI_GP0_WSTRB;
  wire ps_7_M_AXI_GP0_WVALID;
  wire [0:0]rst_ps_7_166M_interconnect_aresetn;
  wire [0:0]rst_ps_7_166M_peripheral_aresetn;
  wire ultrasonicAXItoPWM_0_data_rdy;
  wire [360:0]ultrasonicAXItoPWM_0_output_enable;
  wire [360:0]ultrasonicAXItoPWM_0_output_signal;
  wire ultrasonicAXItoPWM_0_power;
  wire [16:11]ultrasonicShiftControl_0_OUT_B13_LN;
  wire [16:11]ultrasonicShiftControl_0_OUT_B13_LP;
  wire [19:1]ultrasonicShiftControl_0_OUT_B34_LN;
  wire [19:1]ultrasonicShiftControl_0_OUT_B34_LP;
  wire [24:1]ultrasonicShiftControl_0_OUT_B35_LN;
  wire [24:1]ultrasonicShiftControl_0_OUT_B35_LP;
  wire ultrasonicShiftControl_0_latch;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [15:0]xlconcat_0_dout;
  wire [63:0]xlconcat_0_dout1;
  wire [31:0]xlconcat_1_dout;
  wire [31:0]xlconcat_2_dout;
  wire [31:0]z_turn_ps_7_axi_periph_0_M00_AXI_ARADDR;
  wire [2:0]z_turn_ps_7_axi_periph_0_M00_AXI_ARPROT;
  wire z_turn_ps_7_axi_periph_0_M00_AXI_ARREADY;
  wire z_turn_ps_7_axi_periph_0_M00_AXI_ARVALID;
  wire [31:0]z_turn_ps_7_axi_periph_0_M00_AXI_AWADDR;
  wire [2:0]z_turn_ps_7_axi_periph_0_M00_AXI_AWPROT;
  wire z_turn_ps_7_axi_periph_0_M00_AXI_AWREADY;
  wire z_turn_ps_7_axi_periph_0_M00_AXI_AWVALID;
  wire z_turn_ps_7_axi_periph_0_M00_AXI_BREADY;
  wire [1:0]z_turn_ps_7_axi_periph_0_M00_AXI_BRESP;
  wire z_turn_ps_7_axi_periph_0_M00_AXI_BVALID;
  wire [31:0]z_turn_ps_7_axi_periph_0_M00_AXI_RDATA;
  wire z_turn_ps_7_axi_periph_0_M00_AXI_RREADY;
  wire [1:0]z_turn_ps_7_axi_periph_0_M00_AXI_RRESP;
  wire z_turn_ps_7_axi_periph_0_M00_AXI_RVALID;
  wire [31:0]z_turn_ps_7_axi_periph_0_M00_AXI_WDATA;
  wire z_turn_ps_7_axi_periph_0_M00_AXI_WREADY;
  wire [3:0]z_turn_ps_7_axi_periph_0_M00_AXI_WSTRB;
  wire z_turn_ps_7_axi_periph_0_M00_AXI_WVALID;
  wire [31:0]z_turn_ps_7_axi_periph_0_M01_AXI_ARADDR;
  wire [2:0]z_turn_ps_7_axi_periph_0_M01_AXI_ARPROT;
  wire z_turn_ps_7_axi_periph_0_M01_AXI_ARREADY;
  wire z_turn_ps_7_axi_periph_0_M01_AXI_ARVALID;
  wire [31:0]z_turn_ps_7_axi_periph_0_M01_AXI_AWADDR;
  wire [2:0]z_turn_ps_7_axi_periph_0_M01_AXI_AWPROT;
  wire z_turn_ps_7_axi_periph_0_M01_AXI_AWREADY;
  wire z_turn_ps_7_axi_periph_0_M01_AXI_AWVALID;
  wire z_turn_ps_7_axi_periph_0_M01_AXI_BREADY;
  wire [1:0]z_turn_ps_7_axi_periph_0_M01_AXI_BRESP;
  wire z_turn_ps_7_axi_periph_0_M01_AXI_BVALID;
  wire [31:0]z_turn_ps_7_axi_periph_0_M01_AXI_RDATA;
  wire z_turn_ps_7_axi_periph_0_M01_AXI_RREADY;
  wire [1:0]z_turn_ps_7_axi_periph_0_M01_AXI_RRESP;
  wire z_turn_ps_7_axi_periph_0_M01_AXI_RVALID;
  wire [31:0]z_turn_ps_7_axi_periph_0_M01_AXI_WDATA;
  wire z_turn_ps_7_axi_periph_0_M01_AXI_WREADY;
  wire [3:0]z_turn_ps_7_axi_periph_0_M01_AXI_WSTRB;
  wire z_turn_ps_7_axi_periph_0_M01_AXI_WVALID;
  wire [31:0]z_turn_ps_7_axi_periph_0_M02_AXI_ARADDR;
  wire [2:0]z_turn_ps_7_axi_periph_0_M02_AXI_ARPROT;
  wire z_turn_ps_7_axi_periph_0_M02_AXI_ARREADY;
  wire z_turn_ps_7_axi_periph_0_M02_AXI_ARVALID;
  wire [31:0]z_turn_ps_7_axi_periph_0_M02_AXI_AWADDR;
  wire [2:0]z_turn_ps_7_axi_periph_0_M02_AXI_AWPROT;
  wire z_turn_ps_7_axi_periph_0_M02_AXI_AWREADY;
  wire z_turn_ps_7_axi_periph_0_M02_AXI_AWVALID;
  wire z_turn_ps_7_axi_periph_0_M02_AXI_BREADY;
  wire [1:0]z_turn_ps_7_axi_periph_0_M02_AXI_BRESP;
  wire z_turn_ps_7_axi_periph_0_M02_AXI_BVALID;
  wire [31:0]z_turn_ps_7_axi_periph_0_M02_AXI_RDATA;
  wire z_turn_ps_7_axi_periph_0_M02_AXI_RREADY;
  wire [1:0]z_turn_ps_7_axi_periph_0_M02_AXI_RRESP;
  wire z_turn_ps_7_axi_periph_0_M02_AXI_RVALID;
  wire [31:0]z_turn_ps_7_axi_periph_0_M02_AXI_WDATA;
  wire z_turn_ps_7_axi_periph_0_M02_AXI_WREADY;
  wire [3:0]z_turn_ps_7_axi_periph_0_M02_AXI_WSTRB;
  wire z_turn_ps_7_axi_periph_0_M02_AXI_WVALID;

  assign HDMI_INTn_1 = HDMI_INTn;
  assign IIC_0_scl_o = ps7_IIC_0_SCL_O;
  assign IIC_0_scl_t = ps7_IIC_0_SCL_T;
  assign IIC_0_sda_o = ps7_IIC_0_SDA_O;
  assign IIC_0_sda_t = ps7_IIC_0_SDA_T;
  assign IO_B13_LN[16:11] = ultrasonicShiftControl_0_OUT_B13_LN;
  assign IO_B13_LP[16:11] = ultrasonicShiftControl_0_OUT_B13_LP;
  assign IO_B34_LN[19:1] = ultrasonicShiftControl_0_OUT_B34_LN;
  assign IO_B34_LP[19:1] = ultrasonicShiftControl_0_OUT_B34_LP;
  assign IO_B35_LN[24:1] = ultrasonicShiftControl_0_OUT_B35_LN;
  assign IO_B35_LP[24:1] = ultrasonicShiftControl_0_OUT_B35_LP;
  assign MEMS_INTn_1 = MEMS_INTn;
  assign ps7_IIC_0_SCL_I = IIC_0_scl_i;
  assign ps7_IIC_0_SDA_I = IIC_0_sda_i;
  z_turn_axi_i2s_adi_0_0 axi_i2s_adi_0
       (.DATA_CLK_I(clk_wiz_1_clk_out1),
        .DMA_REQ_RX_ACLK(ps_7_FCLK_CLK1),
        .DMA_REQ_RX_RSTN(1'b0),
        .DMA_REQ_TX_ACLK(ps_7_FCLK_CLK1),
        .DMA_REQ_TX_DAREADY(ps7_DMA0_ACK_TREADY),
        .DMA_REQ_TX_DATYPE(ps7_DMA0_ACK_TUSER),
        .DMA_REQ_TX_DAVALID(ps7_DMA0_ACK_TVALID),
        .DMA_REQ_TX_DRLAST(axi_i2s_adi_0_DMA_TX_REQ_TLAST),
        .DMA_REQ_TX_DRREADY(axi_i2s_adi_0_DMA_TX_REQ_TREADY),
        .DMA_REQ_TX_DRTYPE(axi_i2s_adi_0_DMA_TX_REQ_TUSER),
        .DMA_REQ_TX_DRVALID(axi_i2s_adi_0_DMA_TX_REQ_TVALID),
        .DMA_REQ_TX_RSTN(proc_sys_reset_0_peripheral_aresetn),
        .LRCLK_O(axi_i2s_adi_0_LRCLK_O),
        .M_AXIS_ACLK(ps_7_FCLK_CLK1),
        .PARDATA_O(axi_i2s_adi_0_PARDATA_O),
        .SDATA_I(1'b0),
        .S_AXIS_ACLK(ps_7_FCLK_CLK1),
        .s00_axi_aclk(ps_7_FCLK_CLK0),
        .s00_axi_araddr(z_turn_ps_7_axi_periph_0_M01_AXI_ARADDR[5:0]),
        .s00_axi_aresetn(rst_ps_7_166M_peripheral_aresetn),
        .s00_axi_arprot(z_turn_ps_7_axi_periph_0_M01_AXI_ARPROT),
        .s00_axi_arready(z_turn_ps_7_axi_periph_0_M01_AXI_ARREADY),
        .s00_axi_arvalid(z_turn_ps_7_axi_periph_0_M01_AXI_ARVALID),
        .s00_axi_awaddr(z_turn_ps_7_axi_periph_0_M01_AXI_AWADDR[5:0]),
        .s00_axi_awprot(z_turn_ps_7_axi_periph_0_M01_AXI_AWPROT),
        .s00_axi_awready(z_turn_ps_7_axi_periph_0_M01_AXI_AWREADY),
        .s00_axi_awvalid(z_turn_ps_7_axi_periph_0_M01_AXI_AWVALID),
        .s00_axi_bready(z_turn_ps_7_axi_periph_0_M01_AXI_BREADY),
        .s00_axi_bresp(z_turn_ps_7_axi_periph_0_M01_AXI_BRESP),
        .s00_axi_bvalid(z_turn_ps_7_axi_periph_0_M01_AXI_BVALID),
        .s00_axi_rdata(z_turn_ps_7_axi_periph_0_M01_AXI_RDATA),
        .s00_axi_rready(z_turn_ps_7_axi_periph_0_M01_AXI_RREADY),
        .s00_axi_rresp(z_turn_ps_7_axi_periph_0_M01_AXI_RRESP),
        .s00_axi_rvalid(z_turn_ps_7_axi_periph_0_M01_AXI_RVALID),
        .s00_axi_wdata(z_turn_ps_7_axi_periph_0_M01_AXI_WDATA),
        .s00_axi_wready(z_turn_ps_7_axi_periph_0_M01_AXI_WREADY),
        .s00_axi_wstrb(z_turn_ps_7_axi_periph_0_M01_AXI_WSTRB),
        .s00_axi_wvalid(z_turn_ps_7_axi_periph_0_M01_AXI_WVALID));
  z_turn_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(ps_7_FCLK_CLK2),
        .clk_out1(clk_wiz_0_clk_out1));
  z_turn_clk_wiz_1_0 clk_wiz_1
       (.clk_in1(ps_7_FCLK_CLK2),
        .clk_out1(clk_wiz_1_clk_out1));
  z_turn_proc_sys_reset_3_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ps_7_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(ps_7_FCLK_CLK1));
  z_turn_rst_ps_7_166M_0 proc_sys_reset_1
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ps_7_FCLK_RESET1_N),
        .interconnect_aresetn(rst_ps_7_166M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps_7_166M_peripheral_aresetn),
        .slowest_sync_clk(ps_7_FCLK_CLK0));
  z_turn_proc_sys_reset1_0 proc_sys_reset_2
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ps_7_FCLK_RESET2_N),
        .interconnect_aresetn(proc_sys_reset2_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset2_peripheral_aresetn),
        .slowest_sync_clk(ps_7_FCLK_CLK2));
  z_turn_proc_sys_reset_1_0 proc_sys_reset_3
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ps_7_FCLK_RESET3_N),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(ps_7_FCLK_CLK3));
  z_turn_processing_system7_0_0 ps7
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .DMA0_ACLK(ps_7_FCLK_CLK1),
        .DMA0_DAREADY(ps7_DMA0_ACK_TREADY),
        .DMA0_DATYPE(ps7_DMA0_ACK_TUSER),
        .DMA0_DAVALID(ps7_DMA0_ACK_TVALID),
        .DMA0_DRLAST(axi_i2s_adi_0_DMA_TX_REQ_TLAST),
        .DMA0_DRREADY(axi_i2s_adi_0_DMA_TX_REQ_TREADY),
        .DMA0_DRTYPE(axi_i2s_adi_0_DMA_TX_REQ_TUSER),
        .DMA0_DRVALID(axi_i2s_adi_0_DMA_TX_REQ_TVALID),
        .FCLK_CLK0(ps_7_FCLK_CLK1),
        .FCLK_CLK1(ps_7_FCLK_CLK0),
        .FCLK_CLK2(ps_7_FCLK_CLK2),
        .FCLK_CLK3(ps_7_FCLK_CLK3),
        .FCLK_RESET0_N(ps_7_FCLK_RESET0_N),
        .FCLK_RESET1_N(ps_7_FCLK_RESET1_N),
        .FCLK_RESET2_N(ps_7_FCLK_RESET2_N),
        .FCLK_RESET3_N(ps_7_FCLK_RESET3_N),
        .GPIO_I(xlconcat_0_dout1),
        .I2C0_SCL_I(ps7_IIC_0_SCL_I),
        .I2C0_SCL_O(ps7_IIC_0_SCL_O),
        .I2C0_SCL_T(ps7_IIC_0_SCL_T),
        .I2C0_SDA_I(ps7_IIC_0_SDA_I),
        .I2C0_SDA_O(ps7_IIC_0_SDA_O),
        .I2C0_SDA_T(ps7_IIC_0_SDA_T),
        .IRQ_F2P(xlconcat_0_dout),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(ps_7_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(ps_7_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(ps_7_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(ps_7_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(ps_7_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(ps_7_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(ps_7_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(ps_7_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(ps_7_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(ps_7_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(ps_7_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(ps_7_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(ps_7_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(ps_7_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(ps_7_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(ps_7_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(ps_7_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(ps_7_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(ps_7_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(ps_7_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(ps_7_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(ps_7_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(ps_7_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(ps_7_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(ps_7_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(ps_7_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(ps_7_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(ps_7_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(ps_7_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(ps_7_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(ps_7_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(ps_7_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(ps_7_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(ps_7_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(ps_7_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(ps_7_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(ps_7_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(ps_7_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(ps_7_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(ps_7_FCLK_CLK2),
        .S_AXI_HP0_ARADDR({io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR,io2axis_M00_AXI_ARADDR}),
        .S_AXI_HP0_ARBURST({io2axis_M00_AXI_ARBURST,io2axis_M00_AXI_ARBURST}),
        .S_AXI_HP0_ARCACHE({io2axis_M00_AXI_ARCACHE,io2axis_M00_AXI_ARCACHE,io2axis_M00_AXI_ARCACHE,io2axis_M00_AXI_ARCACHE}),
        .S_AXI_HP0_ARID({io2axis_M00_AXI_ARID,io2axis_M00_AXI_ARID,io2axis_M00_AXI_ARID,io2axis_M00_AXI_ARID,io2axis_M00_AXI_ARID,io2axis_M00_AXI_ARID}),
        .S_AXI_HP0_ARLEN({io2axis_M00_AXI_ARLEN,io2axis_M00_AXI_ARLEN,io2axis_M00_AXI_ARLEN,io2axis_M00_AXI_ARLEN}),
        .S_AXI_HP0_ARLOCK({io2axis_M00_AXI_ARLOCK,io2axis_M00_AXI_ARLOCK}),
        .S_AXI_HP0_ARPROT({io2axis_M00_AXI_ARPROT,io2axis_M00_AXI_ARPROT,io2axis_M00_AXI_ARPROT}),
        .S_AXI_HP0_ARQOS({io2axis_M00_AXI_ARQOS,io2axis_M00_AXI_ARQOS,io2axis_M00_AXI_ARQOS,io2axis_M00_AXI_ARQOS}),
        .S_AXI_HP0_ARREADY(io2axis_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE({io2axis_M00_AXI_ARSIZE,io2axis_M00_AXI_ARSIZE,io2axis_M00_AXI_ARSIZE}),
        .S_AXI_HP0_ARVALID(io2axis_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR({io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR,io2axis_M00_AXI_AWADDR}),
        .S_AXI_HP0_AWBURST({io2axis_M00_AXI_AWBURST,io2axis_M00_AXI_AWBURST}),
        .S_AXI_HP0_AWCACHE({io2axis_M00_AXI_AWCACHE,io2axis_M00_AXI_AWCACHE,io2axis_M00_AXI_AWCACHE,io2axis_M00_AXI_AWCACHE}),
        .S_AXI_HP0_AWID({io2axis_M00_AXI_AWID,io2axis_M00_AXI_AWID,io2axis_M00_AXI_AWID,io2axis_M00_AXI_AWID,io2axis_M00_AXI_AWID,io2axis_M00_AXI_AWID}),
        .S_AXI_HP0_AWLEN({io2axis_M00_AXI_AWLEN,io2axis_M00_AXI_AWLEN,io2axis_M00_AXI_AWLEN,io2axis_M00_AXI_AWLEN}),
        .S_AXI_HP0_AWLOCK({io2axis_M00_AXI_AWLOCK,io2axis_M00_AXI_AWLOCK}),
        .S_AXI_HP0_AWPROT({io2axis_M00_AXI_AWPROT,io2axis_M00_AXI_AWPROT,io2axis_M00_AXI_AWPROT}),
        .S_AXI_HP0_AWQOS({io2axis_M00_AXI_AWQOS,io2axis_M00_AXI_AWQOS,io2axis_M00_AXI_AWQOS,io2axis_M00_AXI_AWQOS}),
        .S_AXI_HP0_AWREADY(io2axis_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE({io2axis_M00_AXI_AWSIZE,io2axis_M00_AXI_AWSIZE,io2axis_M00_AXI_AWSIZE}),
        .S_AXI_HP0_AWVALID(io2axis_M00_AXI_AWVALID),
        .S_AXI_HP0_BID(io2axis_M00_AXI_BID),
        .S_AXI_HP0_BREADY(io2axis_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(io2axis_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(io2axis_M00_AXI_BVALID),
        .S_AXI_HP0_RDATA(io2axis_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RID(io2axis_M00_AXI_RID),
        .S_AXI_HP0_RLAST(io2axis_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(io2axis_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(io2axis_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(io2axis_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA({io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA,io2axis_M00_AXI_WDATA}),
        .S_AXI_HP0_WID({io2axis_M00_AXI_WID,io2axis_M00_AXI_WID,io2axis_M00_AXI_WID,io2axis_M00_AXI_WID,io2axis_M00_AXI_WID,io2axis_M00_AXI_WID}),
        .S_AXI_HP0_WLAST(io2axis_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(io2axis_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB({io2axis_M00_AXI_WSTRB,io2axis_M00_AXI_WSTRB,io2axis_M00_AXI_WSTRB,io2axis_M00_AXI_WSTRB,io2axis_M00_AXI_WSTRB,io2axis_M00_AXI_WSTRB,io2axis_M00_AXI_WSTRB,io2axis_M00_AXI_WSTRB}),
        .S_AXI_HP0_WVALID(io2axis_M00_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  z_turn_ultrasonicAXItoPWM_0_1 ultrasonicAXItoPWM_0
       (.audio_pwr(axi_i2s_adi_0_PARDATA_O),
        .data_rdy(ultrasonicAXItoPWM_0_data_rdy),
        .output_enable(ultrasonicAXItoPWM_0_output_enable),
        .output_signal(ultrasonicAXItoPWM_0_output_signal),
        .power(ultrasonicAXItoPWM_0_power),
        .pwmclk(ultrasonicShiftControl_0_latch),
        .s00_axi_aclk(ps_7_FCLK_CLK0),
        .s00_axi_araddr(z_turn_ps_7_axi_periph_0_M00_AXI_ARADDR[8:0]),
        .s00_axi_aresetn(rst_ps_7_166M_peripheral_aresetn),
        .s00_axi_arprot(z_turn_ps_7_axi_periph_0_M00_AXI_ARPROT),
        .s00_axi_arready(z_turn_ps_7_axi_periph_0_M00_AXI_ARREADY),
        .s00_axi_arvalid(z_turn_ps_7_axi_periph_0_M00_AXI_ARVALID),
        .s00_axi_awaddr(z_turn_ps_7_axi_periph_0_M00_AXI_AWADDR[8:0]),
        .s00_axi_awprot(z_turn_ps_7_axi_periph_0_M00_AXI_AWPROT),
        .s00_axi_awready(z_turn_ps_7_axi_periph_0_M00_AXI_AWREADY),
        .s00_axi_awvalid(z_turn_ps_7_axi_periph_0_M00_AXI_AWVALID),
        .s00_axi_bready(z_turn_ps_7_axi_periph_0_M00_AXI_BREADY),
        .s00_axi_bresp(z_turn_ps_7_axi_periph_0_M00_AXI_BRESP),
        .s00_axi_bvalid(z_turn_ps_7_axi_periph_0_M00_AXI_BVALID),
        .s00_axi_rdata(z_turn_ps_7_axi_periph_0_M00_AXI_RDATA),
        .s00_axi_rready(z_turn_ps_7_axi_periph_0_M00_AXI_RREADY),
        .s00_axi_rresp(z_turn_ps_7_axi_periph_0_M00_AXI_RRESP),
        .s00_axi_rvalid(z_turn_ps_7_axi_periph_0_M00_AXI_RVALID),
        .s00_axi_wdata(z_turn_ps_7_axi_periph_0_M00_AXI_WDATA),
        .s00_axi_wready(z_turn_ps_7_axi_periph_0_M00_AXI_WREADY),
        .s00_axi_wstrb(z_turn_ps_7_axi_periph_0_M00_AXI_WSTRB),
        .s00_axi_wvalid(z_turn_ps_7_axi_periph_0_M00_AXI_WVALID));
  z_turn_ultrasonicShiftControl_0_0 ultrasonicShiftControl_0
       (.OUT_B13_LN(ultrasonicShiftControl_0_OUT_B13_LN),
        .OUT_B13_LP(ultrasonicShiftControl_0_OUT_B13_LP),
        .OUT_B34_LN(ultrasonicShiftControl_0_OUT_B34_LN),
        .OUT_B34_LP(ultrasonicShiftControl_0_OUT_B34_LP),
        .OUT_B35_LN(ultrasonicShiftControl_0_OUT_B35_LN),
        .OUT_B35_LP(ultrasonicShiftControl_0_OUT_B35_LP),
        .Power_Enable(ultrasonicAXItoPWM_0_power),
        .RGB_Blue(axi_i2s_adi_0_LRCLK_O),
        .RGB_Green(ultrasonicAXItoPWM_0_power),
        .RGB_Red(ultrasonicAXItoPWM_0_data_rdy),
        .clock(clk_wiz_0_clk_out1),
        .input_enable(ultrasonicAXItoPWM_0_output_enable),
        .input_signal(ultrasonicAXItoPWM_0_output_signal),
        .latch(ultrasonicShiftControl_0_latch),
        .s00_axi_aclk(ps_7_FCLK_CLK0),
        .s00_axi_araddr(z_turn_ps_7_axi_periph_0_M02_AXI_ARADDR[3:0]),
        .s00_axi_aresetn(rst_ps_7_166M_peripheral_aresetn),
        .s00_axi_arprot(z_turn_ps_7_axi_periph_0_M02_AXI_ARPROT),
        .s00_axi_arready(z_turn_ps_7_axi_periph_0_M02_AXI_ARREADY),
        .s00_axi_arvalid(z_turn_ps_7_axi_periph_0_M02_AXI_ARVALID),
        .s00_axi_awaddr(z_turn_ps_7_axi_periph_0_M02_AXI_AWADDR[3:0]),
        .s00_axi_awprot(z_turn_ps_7_axi_periph_0_M02_AXI_AWPROT),
        .s00_axi_awready(z_turn_ps_7_axi_periph_0_M02_AXI_AWREADY),
        .s00_axi_awvalid(z_turn_ps_7_axi_periph_0_M02_AXI_AWVALID),
        .s00_axi_bready(z_turn_ps_7_axi_periph_0_M02_AXI_BREADY),
        .s00_axi_bresp(z_turn_ps_7_axi_periph_0_M02_AXI_BRESP),
        .s00_axi_bvalid(z_turn_ps_7_axi_periph_0_M02_AXI_BVALID),
        .s00_axi_rdata(z_turn_ps_7_axi_periph_0_M02_AXI_RDATA),
        .s00_axi_rready(z_turn_ps_7_axi_periph_0_M02_AXI_RREADY),
        .s00_axi_rresp(z_turn_ps_7_axi_periph_0_M02_AXI_RRESP),
        .s00_axi_rvalid(z_turn_ps_7_axi_periph_0_M02_AXI_RVALID),
        .s00_axi_wdata(z_turn_ps_7_axi_periph_0_M02_AXI_WDATA),
        .s00_axi_wready(z_turn_ps_7_axi_periph_0_M02_AXI_WREADY),
        .s00_axi_wstrb(z_turn_ps_7_axi_periph_0_M02_AXI_WSTRB),
        .s00_axi_wvalid(z_turn_ps_7_axi_periph_0_M02_AXI_WVALID));
  z_turn_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(HDMI_INTn_1),
        .Res(util_vector_logic_0_Res));
  z_turn_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(MEMS_INTn_1),
        .Res(util_vector_logic_1_Res));
  z_turn_util_vector_logic_1_0 util_vector_logic_2
       (.Op1(MEMS_INTn_1),
        .Res(util_vector_logic_2_Res));
  z_turn_xlconcat_0_0 xlconcat
       (.In0(util_vector_logic_0_Res),
        .In1(1'b0),
        .In10(1'b0),
        .In11(1'b0),
        .In12(1'b0),
        .In13(1'b0),
        .In14(1'b0),
        .In15(1'b0),
        .In2(util_vector_logic_1_Res),
        .In3(util_vector_logic_2_Res),
        .In4(1'b0),
        .In5(1'b0),
        .In6(1'b0),
        .In7(1'b0),
        .In8(1'b0),
        .In9(1'b0),
        .dout(xlconcat_0_dout));
  z_turn_xlconcat_0_1 xlconcat_0
       (.In0(xlconcat_1_dout),
        .In1(xlconcat_2_dout),
        .dout(xlconcat_0_dout1));
  z_turn_xlconcat_0_2 xlconcat_1
       (.In0(1'b0),
        .In1(1'b0),
        .In10(1'b0),
        .In11(1'b0),
        .In12(1'b0),
        .In13(1'b0),
        .In14(1'b0),
        .In15(1'b0),
        .In16(1'b0),
        .In17(1'b0),
        .In18(1'b0),
        .In19(1'b0),
        .In2(1'b0),
        .In20(1'b0),
        .In21(1'b0),
        .In22(1'b0),
        .In23(1'b0),
        .In24(1'b0),
        .In25(1'b0),
        .In26(1'b0),
        .In27(1'b0),
        .In28(1'b0),
        .In29(1'b0),
        .In3(1'b0),
        .In30(1'b0),
        .In31(1'b0),
        .In4(1'b0),
        .In5(1'b0),
        .In6(1'b0),
        .In7(1'b0),
        .In8(1'b0),
        .In9(1'b0),
        .dout(xlconcat_1_dout));
  z_turn_xlconcat_1_0 xlconcat_2
       (.In0(1'b0),
        .In1(1'b0),
        .In10(1'b0),
        .In11(1'b0),
        .In12(1'b0),
        .In13(1'b0),
        .In14(1'b0),
        .In15(1'b0),
        .In16(1'b0),
        .In17(1'b0),
        .In18(1'b0),
        .In19(1'b0),
        .In2(1'b0),
        .In20(1'b0),
        .In21(1'b0),
        .In22(1'b0),
        .In23(1'b0),
        .In24({1'b0,1'b0,1'b0,1'b0}),
        .In25(1'b0),
        .In26(1'b0),
        .In27(1'b0),
        .In28(1'b0),
        .In3(1'b0),
        .In4(1'b0),
        .In5(1'b0),
        .In6(1'b0),
        .In7(1'b0),
        .In8(1'b0),
        .In9(1'b0),
        .dout(xlconcat_2_dout));
  z_turn_ps_7_axi_periph_0 z_turn_ps_7_axi_periph_0
       (.ACLK(ps_7_FCLK_CLK0),
        .ARESETN(rst_ps_7_166M_interconnect_aresetn),
        .M00_ACLK(ps_7_FCLK_CLK0),
        .M00_ARESETN(rst_ps_7_166M_peripheral_aresetn),
        .M00_AXI_araddr(z_turn_ps_7_axi_periph_0_M00_AXI_ARADDR),
        .M00_AXI_arprot(z_turn_ps_7_axi_periph_0_M00_AXI_ARPROT),
        .M00_AXI_arready(z_turn_ps_7_axi_periph_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(z_turn_ps_7_axi_periph_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(z_turn_ps_7_axi_periph_0_M00_AXI_AWADDR),
        .M00_AXI_awprot(z_turn_ps_7_axi_periph_0_M00_AXI_AWPROT),
        .M00_AXI_awready(z_turn_ps_7_axi_periph_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(z_turn_ps_7_axi_periph_0_M00_AXI_AWVALID),
        .M00_AXI_bready(z_turn_ps_7_axi_periph_0_M00_AXI_BREADY),
        .M00_AXI_bresp(z_turn_ps_7_axi_periph_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(z_turn_ps_7_axi_periph_0_M00_AXI_BVALID),
        .M00_AXI_rdata(z_turn_ps_7_axi_periph_0_M00_AXI_RDATA),
        .M00_AXI_rready(z_turn_ps_7_axi_periph_0_M00_AXI_RREADY),
        .M00_AXI_rresp(z_turn_ps_7_axi_periph_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(z_turn_ps_7_axi_periph_0_M00_AXI_RVALID),
        .M00_AXI_wdata(z_turn_ps_7_axi_periph_0_M00_AXI_WDATA),
        .M00_AXI_wready(z_turn_ps_7_axi_periph_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(z_turn_ps_7_axi_periph_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(z_turn_ps_7_axi_periph_0_M00_AXI_WVALID),
        .M01_ACLK(ps_7_FCLK_CLK0),
        .M01_ARESETN(rst_ps_7_166M_peripheral_aresetn),
        .M01_AXI_araddr(z_turn_ps_7_axi_periph_0_M01_AXI_ARADDR),
        .M01_AXI_arprot(z_turn_ps_7_axi_periph_0_M01_AXI_ARPROT),
        .M01_AXI_arready(z_turn_ps_7_axi_periph_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(z_turn_ps_7_axi_periph_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(z_turn_ps_7_axi_periph_0_M01_AXI_AWADDR),
        .M01_AXI_awprot(z_turn_ps_7_axi_periph_0_M01_AXI_AWPROT),
        .M01_AXI_awready(z_turn_ps_7_axi_periph_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(z_turn_ps_7_axi_periph_0_M01_AXI_AWVALID),
        .M01_AXI_bready(z_turn_ps_7_axi_periph_0_M01_AXI_BREADY),
        .M01_AXI_bresp(z_turn_ps_7_axi_periph_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(z_turn_ps_7_axi_periph_0_M01_AXI_BVALID),
        .M01_AXI_rdata(z_turn_ps_7_axi_periph_0_M01_AXI_RDATA),
        .M01_AXI_rready(z_turn_ps_7_axi_periph_0_M01_AXI_RREADY),
        .M01_AXI_rresp(z_turn_ps_7_axi_periph_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(z_turn_ps_7_axi_periph_0_M01_AXI_RVALID),
        .M01_AXI_wdata(z_turn_ps_7_axi_periph_0_M01_AXI_WDATA),
        .M01_AXI_wready(z_turn_ps_7_axi_periph_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(z_turn_ps_7_axi_periph_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(z_turn_ps_7_axi_periph_0_M01_AXI_WVALID),
        .M02_ACLK(ps_7_FCLK_CLK0),
        .M02_ARESETN(rst_ps_7_166M_peripheral_aresetn),
        .M02_AXI_araddr(z_turn_ps_7_axi_periph_0_M02_AXI_ARADDR),
        .M02_AXI_arprot(z_turn_ps_7_axi_periph_0_M02_AXI_ARPROT),
        .M02_AXI_arready(z_turn_ps_7_axi_periph_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(z_turn_ps_7_axi_periph_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(z_turn_ps_7_axi_periph_0_M02_AXI_AWADDR),
        .M02_AXI_awprot(z_turn_ps_7_axi_periph_0_M02_AXI_AWPROT),
        .M02_AXI_awready(z_turn_ps_7_axi_periph_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(z_turn_ps_7_axi_periph_0_M02_AXI_AWVALID),
        .M02_AXI_bready(z_turn_ps_7_axi_periph_0_M02_AXI_BREADY),
        .M02_AXI_bresp(z_turn_ps_7_axi_periph_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(z_turn_ps_7_axi_periph_0_M02_AXI_BVALID),
        .M02_AXI_rdata(z_turn_ps_7_axi_periph_0_M02_AXI_RDATA),
        .M02_AXI_rready(z_turn_ps_7_axi_periph_0_M02_AXI_RREADY),
        .M02_AXI_rresp(z_turn_ps_7_axi_periph_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(z_turn_ps_7_axi_periph_0_M02_AXI_RVALID),
        .M02_AXI_wdata(z_turn_ps_7_axi_periph_0_M02_AXI_WDATA),
        .M02_AXI_wready(z_turn_ps_7_axi_periph_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(z_turn_ps_7_axi_periph_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(z_turn_ps_7_axi_periph_0_M02_AXI_WVALID),
        .S00_ACLK(ps_7_FCLK_CLK0),
        .S00_ARESETN(rst_ps_7_166M_peripheral_aresetn),
        .S00_AXI_araddr(ps_7_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(ps_7_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(ps_7_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(ps_7_M_AXI_GP0_ARID),
        .S00_AXI_arlen(ps_7_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(ps_7_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(ps_7_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(ps_7_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(ps_7_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(ps_7_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(ps_7_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(ps_7_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(ps_7_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(ps_7_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(ps_7_M_AXI_GP0_AWID),
        .S00_AXI_awlen(ps_7_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(ps_7_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(ps_7_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(ps_7_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(ps_7_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(ps_7_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(ps_7_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(ps_7_M_AXI_GP0_BID),
        .S00_AXI_bready(ps_7_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(ps_7_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(ps_7_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(ps_7_M_AXI_GP0_RDATA),
        .S00_AXI_rid(ps_7_M_AXI_GP0_RID),
        .S00_AXI_rlast(ps_7_M_AXI_GP0_RLAST),
        .S00_AXI_rready(ps_7_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(ps_7_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(ps_7_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(ps_7_M_AXI_GP0_WDATA),
        .S00_AXI_wid(ps_7_M_AXI_GP0_WID),
        .S00_AXI_wlast(ps_7_M_AXI_GP0_WLAST),
        .S00_AXI_wready(ps_7_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(ps_7_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(ps_7_M_AXI_GP0_WVALID));
  z_turn_ps_7_axi_periph_1 z_turn_ps_7_axi_periph_1
       (.ACLK(ps_7_FCLK_CLK2),
        .ARESETN(proc_sys_reset2_interconnect_aresetn),
        .M00_ACLK(ps_7_FCLK_CLK2),
        .M00_ARESETN(proc_sys_reset2_peripheral_aresetn),
        .M00_AXI_araddr(io2axis_M00_AXI_ARADDR),
        .M00_AXI_arburst(io2axis_M00_AXI_ARBURST),
        .M00_AXI_arcache(io2axis_M00_AXI_ARCACHE),
        .M00_AXI_arid(io2axis_M00_AXI_ARID),
        .M00_AXI_arlen(io2axis_M00_AXI_ARLEN),
        .M00_AXI_arlock(io2axis_M00_AXI_ARLOCK),
        .M00_AXI_arprot(io2axis_M00_AXI_ARPROT),
        .M00_AXI_arqos(io2axis_M00_AXI_ARQOS),
        .M00_AXI_arready(io2axis_M00_AXI_ARREADY),
        .M00_AXI_arsize(io2axis_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(io2axis_M00_AXI_ARVALID),
        .M00_AXI_awaddr(io2axis_M00_AXI_AWADDR),
        .M00_AXI_awburst(io2axis_M00_AXI_AWBURST),
        .M00_AXI_awcache(io2axis_M00_AXI_AWCACHE),
        .M00_AXI_awid(io2axis_M00_AXI_AWID),
        .M00_AXI_awlen(io2axis_M00_AXI_AWLEN),
        .M00_AXI_awlock(io2axis_M00_AXI_AWLOCK),
        .M00_AXI_awprot(io2axis_M00_AXI_AWPROT),
        .M00_AXI_awqos(io2axis_M00_AXI_AWQOS),
        .M00_AXI_awready(io2axis_M00_AXI_AWREADY),
        .M00_AXI_awsize(io2axis_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(io2axis_M00_AXI_AWVALID),
        .M00_AXI_bid(io2axis_M00_AXI_BID[0]),
        .M00_AXI_bready(io2axis_M00_AXI_BREADY),
        .M00_AXI_bresp(io2axis_M00_AXI_BRESP[0]),
        .M00_AXI_bvalid(io2axis_M00_AXI_BVALID),
        .M00_AXI_rdata(io2axis_M00_AXI_RDATA[0]),
        .M00_AXI_rid(io2axis_M00_AXI_RID[0]),
        .M00_AXI_rlast(io2axis_M00_AXI_RLAST),
        .M00_AXI_rready(io2axis_M00_AXI_RREADY),
        .M00_AXI_rresp(io2axis_M00_AXI_RRESP[0]),
        .M00_AXI_rvalid(io2axis_M00_AXI_RVALID),
        .M00_AXI_wdata(io2axis_M00_AXI_WDATA),
        .M00_AXI_wid(io2axis_M00_AXI_WID),
        .M00_AXI_wlast(io2axis_M00_AXI_WLAST),
        .M00_AXI_wready(io2axis_M00_AXI_WREADY),
        .M00_AXI_wstrb(io2axis_M00_AXI_WSTRB),
        .M00_AXI_wvalid(io2axis_M00_AXI_WVALID),
        .S00_ACLK(ps_7_FCLK_CLK2),
        .S00_ARESETN(proc_sys_reset2_peripheral_aresetn),
        .S00_AXI_araddr(1'b0),
        .S00_AXI_arburst(1'b0),
        .S00_AXI_arcache(1'b0),
        .S00_AXI_arid(1'b0),
        .S00_AXI_arlen(1'b0),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(1'b0),
        .S00_AXI_arqos(1'b0),
        .S00_AXI_arsize(1'b0),
        .S00_AXI_arvalid(1'b0),
        .S00_AXI_awaddr(1'b0),
        .S00_AXI_awburst(1'b0),
        .S00_AXI_awcache(1'b0),
        .S00_AXI_awid(1'b0),
        .S00_AXI_awlen(1'b0),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot(1'b0),
        .S00_AXI_awqos(1'b0),
        .S00_AXI_awsize(1'b0),
        .S00_AXI_awvalid(1'b0),
        .S00_AXI_bready(1'b0),
        .S00_AXI_rready(1'b0),
        .S00_AXI_wdata(1'b0),
        .S00_AXI_wid(1'b0),
        .S00_AXI_wlast(1'b0),
        .S00_AXI_wstrb(1'b0),
        .S00_AXI_wvalid(1'b0));
endmodule

module z_turn_ps_7_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [31:0]m00_couplers_to_z_turn_ps_7_axi_periph_0_ARADDR;
  wire [2:0]m00_couplers_to_z_turn_ps_7_axi_periph_0_ARPROT;
  wire m00_couplers_to_z_turn_ps_7_axi_periph_0_ARREADY;
  wire m00_couplers_to_z_turn_ps_7_axi_periph_0_ARVALID;
  wire [31:0]m00_couplers_to_z_turn_ps_7_axi_periph_0_AWADDR;
  wire [2:0]m00_couplers_to_z_turn_ps_7_axi_periph_0_AWPROT;
  wire m00_couplers_to_z_turn_ps_7_axi_periph_0_AWREADY;
  wire m00_couplers_to_z_turn_ps_7_axi_periph_0_AWVALID;
  wire m00_couplers_to_z_turn_ps_7_axi_periph_0_BREADY;
  wire [1:0]m00_couplers_to_z_turn_ps_7_axi_periph_0_BRESP;
  wire m00_couplers_to_z_turn_ps_7_axi_periph_0_BVALID;
  wire [31:0]m00_couplers_to_z_turn_ps_7_axi_periph_0_RDATA;
  wire m00_couplers_to_z_turn_ps_7_axi_periph_0_RREADY;
  wire [1:0]m00_couplers_to_z_turn_ps_7_axi_periph_0_RRESP;
  wire m00_couplers_to_z_turn_ps_7_axi_periph_0_RVALID;
  wire [31:0]m00_couplers_to_z_turn_ps_7_axi_periph_0_WDATA;
  wire m00_couplers_to_z_turn_ps_7_axi_periph_0_WREADY;
  wire [3:0]m00_couplers_to_z_turn_ps_7_axi_periph_0_WSTRB;
  wire m00_couplers_to_z_turn_ps_7_axi_periph_0_WVALID;
  wire [31:0]m01_couplers_to_z_turn_ps_7_axi_periph_0_ARADDR;
  wire [2:0]m01_couplers_to_z_turn_ps_7_axi_periph_0_ARPROT;
  wire m01_couplers_to_z_turn_ps_7_axi_periph_0_ARREADY;
  wire m01_couplers_to_z_turn_ps_7_axi_periph_0_ARVALID;
  wire [31:0]m01_couplers_to_z_turn_ps_7_axi_periph_0_AWADDR;
  wire [2:0]m01_couplers_to_z_turn_ps_7_axi_periph_0_AWPROT;
  wire m01_couplers_to_z_turn_ps_7_axi_periph_0_AWREADY;
  wire m01_couplers_to_z_turn_ps_7_axi_periph_0_AWVALID;
  wire m01_couplers_to_z_turn_ps_7_axi_periph_0_BREADY;
  wire [1:0]m01_couplers_to_z_turn_ps_7_axi_periph_0_BRESP;
  wire m01_couplers_to_z_turn_ps_7_axi_periph_0_BVALID;
  wire [31:0]m01_couplers_to_z_turn_ps_7_axi_periph_0_RDATA;
  wire m01_couplers_to_z_turn_ps_7_axi_periph_0_RREADY;
  wire [1:0]m01_couplers_to_z_turn_ps_7_axi_periph_0_RRESP;
  wire m01_couplers_to_z_turn_ps_7_axi_periph_0_RVALID;
  wire [31:0]m01_couplers_to_z_turn_ps_7_axi_periph_0_WDATA;
  wire m01_couplers_to_z_turn_ps_7_axi_periph_0_WREADY;
  wire [3:0]m01_couplers_to_z_turn_ps_7_axi_periph_0_WSTRB;
  wire m01_couplers_to_z_turn_ps_7_axi_periph_0_WVALID;
  wire [31:0]m02_couplers_to_z_turn_ps_7_axi_periph_0_ARADDR;
  wire [2:0]m02_couplers_to_z_turn_ps_7_axi_periph_0_ARPROT;
  wire m02_couplers_to_z_turn_ps_7_axi_periph_0_ARREADY;
  wire m02_couplers_to_z_turn_ps_7_axi_periph_0_ARVALID;
  wire [31:0]m02_couplers_to_z_turn_ps_7_axi_periph_0_AWADDR;
  wire [2:0]m02_couplers_to_z_turn_ps_7_axi_periph_0_AWPROT;
  wire m02_couplers_to_z_turn_ps_7_axi_periph_0_AWREADY;
  wire m02_couplers_to_z_turn_ps_7_axi_periph_0_AWVALID;
  wire m02_couplers_to_z_turn_ps_7_axi_periph_0_BREADY;
  wire [1:0]m02_couplers_to_z_turn_ps_7_axi_periph_0_BRESP;
  wire m02_couplers_to_z_turn_ps_7_axi_periph_0_BVALID;
  wire [31:0]m02_couplers_to_z_turn_ps_7_axi_periph_0_RDATA;
  wire m02_couplers_to_z_turn_ps_7_axi_periph_0_RREADY;
  wire [1:0]m02_couplers_to_z_turn_ps_7_axi_periph_0_RRESP;
  wire m02_couplers_to_z_turn_ps_7_axi_periph_0_RVALID;
  wire [31:0]m02_couplers_to_z_turn_ps_7_axi_periph_0_WDATA;
  wire m02_couplers_to_z_turn_ps_7_axi_periph_0_WREADY;
  wire [3:0]m02_couplers_to_z_turn_ps_7_axi_periph_0_WSTRB;
  wire m02_couplers_to_z_turn_ps_7_axi_periph_0_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire z_turn_ps_7_axi_periph_0_ACLK_net;
  wire z_turn_ps_7_axi_periph_0_ARESETN_net;
  wire [31:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_ARADDR;
  wire [1:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_ARBURST;
  wire [3:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_ARCACHE;
  wire [11:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_ARID;
  wire [3:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_ARLEN;
  wire [1:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_ARLOCK;
  wire [2:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_ARPROT;
  wire [3:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_ARQOS;
  wire z_turn_ps_7_axi_periph_0_to_s00_couplers_ARREADY;
  wire [2:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_ARSIZE;
  wire z_turn_ps_7_axi_periph_0_to_s00_couplers_ARVALID;
  wire [31:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_AWADDR;
  wire [1:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_AWBURST;
  wire [3:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_AWCACHE;
  wire [11:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_AWID;
  wire [3:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_AWLEN;
  wire [1:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_AWLOCK;
  wire [2:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_AWPROT;
  wire [3:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_AWQOS;
  wire z_turn_ps_7_axi_periph_0_to_s00_couplers_AWREADY;
  wire [2:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_AWSIZE;
  wire z_turn_ps_7_axi_periph_0_to_s00_couplers_AWVALID;
  wire [11:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_BID;
  wire z_turn_ps_7_axi_periph_0_to_s00_couplers_BREADY;
  wire [1:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_BRESP;
  wire z_turn_ps_7_axi_periph_0_to_s00_couplers_BVALID;
  wire [31:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_RDATA;
  wire [11:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_RID;
  wire z_turn_ps_7_axi_periph_0_to_s00_couplers_RLAST;
  wire z_turn_ps_7_axi_periph_0_to_s00_couplers_RREADY;
  wire [1:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_RRESP;
  wire z_turn_ps_7_axi_periph_0_to_s00_couplers_RVALID;
  wire [31:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_WDATA;
  wire [11:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_WID;
  wire z_turn_ps_7_axi_periph_0_to_s00_couplers_WLAST;
  wire z_turn_ps_7_axi_periph_0_to_s00_couplers_WREADY;
  wire [3:0]z_turn_ps_7_axi_periph_0_to_s00_couplers_WSTRB;
  wire z_turn_ps_7_axi_periph_0_to_s00_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_z_turn_ps_7_axi_periph_0_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_z_turn_ps_7_axi_periph_0_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_z_turn_ps_7_axi_periph_0_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_z_turn_ps_7_axi_periph_0_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_z_turn_ps_7_axi_periph_0_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_z_turn_ps_7_axi_periph_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_z_turn_ps_7_axi_periph_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_z_turn_ps_7_axi_periph_0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_z_turn_ps_7_axi_periph_0_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_z_turn_ps_7_axi_periph_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_z_turn_ps_7_axi_periph_0_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_z_turn_ps_7_axi_periph_0_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_z_turn_ps_7_axi_periph_0_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_z_turn_ps_7_axi_periph_0_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_z_turn_ps_7_axi_periph_0_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_z_turn_ps_7_axi_periph_0_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_z_turn_ps_7_axi_periph_0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_z_turn_ps_7_axi_periph_0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_z_turn_ps_7_axi_periph_0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_z_turn_ps_7_axi_periph_0_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_z_turn_ps_7_axi_periph_0_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_z_turn_ps_7_axi_periph_0_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_z_turn_ps_7_axi_periph_0_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_z_turn_ps_7_axi_periph_0_ARPROT;
  assign M02_AXI_arvalid = m02_couplers_to_z_turn_ps_7_axi_periph_0_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_z_turn_ps_7_axi_periph_0_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_z_turn_ps_7_axi_periph_0_AWPROT;
  assign M02_AXI_awvalid = m02_couplers_to_z_turn_ps_7_axi_periph_0_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_z_turn_ps_7_axi_periph_0_BREADY;
  assign M02_AXI_rready = m02_couplers_to_z_turn_ps_7_axi_periph_0_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_z_turn_ps_7_axi_periph_0_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_z_turn_ps_7_axi_periph_0_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_z_turn_ps_7_axi_periph_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = z_turn_ps_7_axi_periph_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = z_turn_ps_7_axi_periph_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = z_turn_ps_7_axi_periph_0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = z_turn_ps_7_axi_periph_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = z_turn_ps_7_axi_periph_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = z_turn_ps_7_axi_periph_0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = z_turn_ps_7_axi_periph_0_to_s00_couplers_RID;
  assign S00_AXI_rlast = z_turn_ps_7_axi_periph_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = z_turn_ps_7_axi_periph_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = z_turn_ps_7_axi_periph_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = z_turn_ps_7_axi_periph_0_to_s00_couplers_WREADY;
  assign m00_couplers_to_z_turn_ps_7_axi_periph_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_z_turn_ps_7_axi_periph_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_z_turn_ps_7_axi_periph_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_z_turn_ps_7_axi_periph_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_z_turn_ps_7_axi_periph_0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_z_turn_ps_7_axi_periph_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_z_turn_ps_7_axi_periph_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_z_turn_ps_7_axi_periph_0_WREADY = M00_AXI_wready;
  assign m01_couplers_to_z_turn_ps_7_axi_periph_0_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_z_turn_ps_7_axi_periph_0_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_z_turn_ps_7_axi_periph_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_z_turn_ps_7_axi_periph_0_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_z_turn_ps_7_axi_periph_0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_z_turn_ps_7_axi_periph_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_z_turn_ps_7_axi_periph_0_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_z_turn_ps_7_axi_periph_0_WREADY = M01_AXI_wready;
  assign m02_couplers_to_z_turn_ps_7_axi_periph_0_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_z_turn_ps_7_axi_periph_0_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_z_turn_ps_7_axi_periph_0_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_z_turn_ps_7_axi_periph_0_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_z_turn_ps_7_axi_periph_0_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_z_turn_ps_7_axi_periph_0_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_z_turn_ps_7_axi_periph_0_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_z_turn_ps_7_axi_periph_0_WREADY = M02_AXI_wready;
  assign z_turn_ps_7_axi_periph_0_ACLK_net = ACLK;
  assign z_turn_ps_7_axi_periph_0_ARESETN_net = ARESETN;
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign z_turn_ps_7_axi_periph_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_O531XQ m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_z_turn_ps_7_axi_periph_0_ARADDR),
        .M_AXI_arprot(m00_couplers_to_z_turn_ps_7_axi_periph_0_ARPROT),
        .M_AXI_arready(m00_couplers_to_z_turn_ps_7_axi_periph_0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_z_turn_ps_7_axi_periph_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_z_turn_ps_7_axi_periph_0_AWADDR),
        .M_AXI_awprot(m00_couplers_to_z_turn_ps_7_axi_periph_0_AWPROT),
        .M_AXI_awready(m00_couplers_to_z_turn_ps_7_axi_periph_0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_z_turn_ps_7_axi_periph_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_z_turn_ps_7_axi_periph_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_z_turn_ps_7_axi_periph_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_z_turn_ps_7_axi_periph_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_z_turn_ps_7_axi_periph_0_RDATA),
        .M_AXI_rready(m00_couplers_to_z_turn_ps_7_axi_periph_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_z_turn_ps_7_axi_periph_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_z_turn_ps_7_axi_periph_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_z_turn_ps_7_axi_periph_0_WDATA),
        .M_AXI_wready(m00_couplers_to_z_turn_ps_7_axi_periph_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_z_turn_ps_7_axi_periph_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_z_turn_ps_7_axi_periph_0_WVALID),
        .S_ACLK(z_turn_ps_7_axi_periph_0_ACLK_net),
        .S_ARESETN(z_turn_ps_7_axi_periph_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1X7AK9R m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_z_turn_ps_7_axi_periph_0_ARADDR),
        .M_AXI_arprot(m01_couplers_to_z_turn_ps_7_axi_periph_0_ARPROT),
        .M_AXI_arready(m01_couplers_to_z_turn_ps_7_axi_periph_0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_z_turn_ps_7_axi_periph_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_z_turn_ps_7_axi_periph_0_AWADDR),
        .M_AXI_awprot(m01_couplers_to_z_turn_ps_7_axi_periph_0_AWPROT),
        .M_AXI_awready(m01_couplers_to_z_turn_ps_7_axi_periph_0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_z_turn_ps_7_axi_periph_0_AWVALID),
        .M_AXI_bready(m01_couplers_to_z_turn_ps_7_axi_periph_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_z_turn_ps_7_axi_periph_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_z_turn_ps_7_axi_periph_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_z_turn_ps_7_axi_periph_0_RDATA),
        .M_AXI_rready(m01_couplers_to_z_turn_ps_7_axi_periph_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_z_turn_ps_7_axi_periph_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_z_turn_ps_7_axi_periph_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_z_turn_ps_7_axi_periph_0_WDATA),
        .M_AXI_wready(m01_couplers_to_z_turn_ps_7_axi_periph_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_z_turn_ps_7_axi_periph_0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_z_turn_ps_7_axi_periph_0_WVALID),
        .S_ACLK(z_turn_ps_7_axi_periph_0_ACLK_net),
        .S_ARESETN(z_turn_ps_7_axi_periph_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1LVYIGD m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_z_turn_ps_7_axi_periph_0_ARADDR),
        .M_AXI_arprot(m02_couplers_to_z_turn_ps_7_axi_periph_0_ARPROT),
        .M_AXI_arready(m02_couplers_to_z_turn_ps_7_axi_periph_0_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_z_turn_ps_7_axi_periph_0_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_z_turn_ps_7_axi_periph_0_AWADDR),
        .M_AXI_awprot(m02_couplers_to_z_turn_ps_7_axi_periph_0_AWPROT),
        .M_AXI_awready(m02_couplers_to_z_turn_ps_7_axi_periph_0_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_z_turn_ps_7_axi_periph_0_AWVALID),
        .M_AXI_bready(m02_couplers_to_z_turn_ps_7_axi_periph_0_BREADY),
        .M_AXI_bresp(m02_couplers_to_z_turn_ps_7_axi_periph_0_BRESP),
        .M_AXI_bvalid(m02_couplers_to_z_turn_ps_7_axi_periph_0_BVALID),
        .M_AXI_rdata(m02_couplers_to_z_turn_ps_7_axi_periph_0_RDATA),
        .M_AXI_rready(m02_couplers_to_z_turn_ps_7_axi_periph_0_RREADY),
        .M_AXI_rresp(m02_couplers_to_z_turn_ps_7_axi_periph_0_RRESP),
        .M_AXI_rvalid(m02_couplers_to_z_turn_ps_7_axi_periph_0_RVALID),
        .M_AXI_wdata(m02_couplers_to_z_turn_ps_7_axi_periph_0_WDATA),
        .M_AXI_wready(m02_couplers_to_z_turn_ps_7_axi_periph_0_WREADY),
        .M_AXI_wstrb(m02_couplers_to_z_turn_ps_7_axi_periph_0_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_z_turn_ps_7_axi_periph_0_WVALID),
        .S_ACLK(z_turn_ps_7_axi_periph_0_ACLK_net),
        .S_ARESETN(z_turn_ps_7_axi_periph_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  s00_couplers_imp_QSJACF s00_couplers
       (.M_ACLK(z_turn_ps_7_axi_periph_0_ACLK_net),
        .M_ARESETN(z_turn_ps_7_axi_periph_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(z_turn_ps_7_axi_periph_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(z_turn_ps_7_axi_periph_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(z_turn_ps_7_axi_periph_0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(z_turn_ps_7_axi_periph_0_to_s00_couplers_ARID),
        .S_AXI_arlen(z_turn_ps_7_axi_periph_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(z_turn_ps_7_axi_periph_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(z_turn_ps_7_axi_periph_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(z_turn_ps_7_axi_periph_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(z_turn_ps_7_axi_periph_0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(z_turn_ps_7_axi_periph_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(z_turn_ps_7_axi_periph_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(z_turn_ps_7_axi_periph_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(z_turn_ps_7_axi_periph_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(z_turn_ps_7_axi_periph_0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(z_turn_ps_7_axi_periph_0_to_s00_couplers_AWID),
        .S_AXI_awlen(z_turn_ps_7_axi_periph_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(z_turn_ps_7_axi_periph_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(z_turn_ps_7_axi_periph_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(z_turn_ps_7_axi_periph_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(z_turn_ps_7_axi_periph_0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(z_turn_ps_7_axi_periph_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(z_turn_ps_7_axi_periph_0_to_s00_couplers_AWVALID),
        .S_AXI_bid(z_turn_ps_7_axi_periph_0_to_s00_couplers_BID),
        .S_AXI_bready(z_turn_ps_7_axi_periph_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(z_turn_ps_7_axi_periph_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(z_turn_ps_7_axi_periph_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(z_turn_ps_7_axi_periph_0_to_s00_couplers_RDATA),
        .S_AXI_rid(z_turn_ps_7_axi_periph_0_to_s00_couplers_RID),
        .S_AXI_rlast(z_turn_ps_7_axi_periph_0_to_s00_couplers_RLAST),
        .S_AXI_rready(z_turn_ps_7_axi_periph_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(z_turn_ps_7_axi_periph_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(z_turn_ps_7_axi_periph_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(z_turn_ps_7_axi_periph_0_to_s00_couplers_WDATA),
        .S_AXI_wid(z_turn_ps_7_axi_periph_0_to_s00_couplers_WID),
        .S_AXI_wlast(z_turn_ps_7_axi_periph_0_to_s00_couplers_WLAST),
        .S_AXI_wready(z_turn_ps_7_axi_periph_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(z_turn_ps_7_axi_periph_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(z_turn_ps_7_axi_periph_0_to_s00_couplers_WVALID));
  z_turn_xbar_0 xbar
       (.aclk(z_turn_ps_7_axi_periph_0_ACLK_net),
        .aresetn(z_turn_ps_7_axi_periph_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module z_turn_ps_7_axi_periph_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output M00_AXI_araddr;
  output M00_AXI_arburst;
  output M00_AXI_arcache;
  output M00_AXI_arid;
  output M00_AXI_arlen;
  output M00_AXI_arlock;
  output M00_AXI_arprot;
  output M00_AXI_arqos;
  input M00_AXI_arready;
  output M00_AXI_arsize;
  output M00_AXI_arvalid;
  output M00_AXI_awaddr;
  output M00_AXI_awburst;
  output M00_AXI_awcache;
  output M00_AXI_awid;
  output M00_AXI_awlen;
  output M00_AXI_awlock;
  output M00_AXI_awprot;
  output M00_AXI_awqos;
  input M00_AXI_awready;
  output M00_AXI_awsize;
  output M00_AXI_awvalid;
  input M00_AXI_bid;
  output M00_AXI_bready;
  input M00_AXI_bresp;
  input M00_AXI_bvalid;
  input M00_AXI_rdata;
  input M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input M00_AXI_rresp;
  input M00_AXI_rvalid;
  output M00_AXI_wdata;
  output M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input S00_AXI_araddr;
  input S00_AXI_arburst;
  input S00_AXI_arcache;
  input S00_AXI_arid;
  input S00_AXI_arlen;
  input S00_AXI_arlock;
  input S00_AXI_arprot;
  input S00_AXI_arqos;
  output S00_AXI_arready;
  input S00_AXI_arsize;
  input S00_AXI_arvalid;
  input S00_AXI_awaddr;
  input S00_AXI_awburst;
  input S00_AXI_awcache;
  input S00_AXI_awid;
  input S00_AXI_awlen;
  input S00_AXI_awlock;
  input S00_AXI_awprot;
  input S00_AXI_awqos;
  output S00_AXI_awready;
  input S00_AXI_awsize;
  input S00_AXI_awvalid;
  output S00_AXI_bid;
  input S00_AXI_bready;
  output S00_AXI_bresp;
  output S00_AXI_bvalid;
  output S00_AXI_rdata;
  output S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output S00_AXI_rresp;
  output S00_AXI_rvalid;
  input S00_AXI_wdata;
  input S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_ARADDR;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_ARBURST;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_ARCACHE;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_ARID;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_ARLEN;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_ARLOCK;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_ARPROT;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_ARQOS;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_ARREADY;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_ARSIZE;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_ARVALID;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_AWADDR;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_AWBURST;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_AWCACHE;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_AWID;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_AWLEN;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_AWLOCK;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_AWPROT;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_AWQOS;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_AWREADY;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_AWSIZE;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_AWVALID;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_BID;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_BREADY;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_BRESP;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_BVALID;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_RDATA;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_RID;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_RLAST;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_RREADY;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_RRESP;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_RVALID;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_WDATA;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_WID;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_WLAST;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_WREADY;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_WSTRB;
  wire s00_couplers_to_z_turn_ps_7_axi_periph_1_WVALID;
  wire z_turn_ps_7_axi_periph_1_ACLK_net;
  wire z_turn_ps_7_axi_periph_1_ARESETN_net;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_ARADDR;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_ARBURST;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_ARCACHE;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_ARID;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_ARLEN;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_ARLOCK;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_ARPROT;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_ARQOS;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_ARREADY;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_ARSIZE;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_ARVALID;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_AWADDR;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_AWBURST;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_AWCACHE;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_AWID;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_AWLEN;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_AWLOCK;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_AWPROT;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_AWQOS;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_AWREADY;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_AWSIZE;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_AWVALID;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_BID;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_BREADY;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_BRESP;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_BVALID;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_RDATA;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_RID;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_RLAST;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_RREADY;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_RRESP;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_RVALID;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_WDATA;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_WID;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_WLAST;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_WREADY;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_WSTRB;
  wire z_turn_ps_7_axi_periph_1_to_s00_couplers_WVALID;

  assign M00_AXI_araddr = s00_couplers_to_z_turn_ps_7_axi_periph_1_ARADDR;
  assign M00_AXI_arburst = s00_couplers_to_z_turn_ps_7_axi_periph_1_ARBURST;
  assign M00_AXI_arcache = s00_couplers_to_z_turn_ps_7_axi_periph_1_ARCACHE;
  assign M00_AXI_arid = s00_couplers_to_z_turn_ps_7_axi_periph_1_ARID;
  assign M00_AXI_arlen = s00_couplers_to_z_turn_ps_7_axi_periph_1_ARLEN;
  assign M00_AXI_arlock = s00_couplers_to_z_turn_ps_7_axi_periph_1_ARLOCK;
  assign M00_AXI_arprot = s00_couplers_to_z_turn_ps_7_axi_periph_1_ARPROT;
  assign M00_AXI_arqos = s00_couplers_to_z_turn_ps_7_axi_periph_1_ARQOS;
  assign M00_AXI_arsize = s00_couplers_to_z_turn_ps_7_axi_periph_1_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_z_turn_ps_7_axi_periph_1_ARVALID;
  assign M00_AXI_awaddr = s00_couplers_to_z_turn_ps_7_axi_periph_1_AWADDR;
  assign M00_AXI_awburst = s00_couplers_to_z_turn_ps_7_axi_periph_1_AWBURST;
  assign M00_AXI_awcache = s00_couplers_to_z_turn_ps_7_axi_periph_1_AWCACHE;
  assign M00_AXI_awid = s00_couplers_to_z_turn_ps_7_axi_periph_1_AWID;
  assign M00_AXI_awlen = s00_couplers_to_z_turn_ps_7_axi_periph_1_AWLEN;
  assign M00_AXI_awlock = s00_couplers_to_z_turn_ps_7_axi_periph_1_AWLOCK;
  assign M00_AXI_awprot = s00_couplers_to_z_turn_ps_7_axi_periph_1_AWPROT;
  assign M00_AXI_awqos = s00_couplers_to_z_turn_ps_7_axi_periph_1_AWQOS;
  assign M00_AXI_awsize = s00_couplers_to_z_turn_ps_7_axi_periph_1_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_z_turn_ps_7_axi_periph_1_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_z_turn_ps_7_axi_periph_1_BREADY;
  assign M00_AXI_rready = s00_couplers_to_z_turn_ps_7_axi_periph_1_RREADY;
  assign M00_AXI_wdata = s00_couplers_to_z_turn_ps_7_axi_periph_1_WDATA;
  assign M00_AXI_wid = s00_couplers_to_z_turn_ps_7_axi_periph_1_WID;
  assign M00_AXI_wlast = s00_couplers_to_z_turn_ps_7_axi_periph_1_WLAST;
  assign M00_AXI_wstrb = s00_couplers_to_z_turn_ps_7_axi_periph_1_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_z_turn_ps_7_axi_periph_1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = z_turn_ps_7_axi_periph_1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = z_turn_ps_7_axi_periph_1_to_s00_couplers_AWREADY;
  assign S00_AXI_bid = z_turn_ps_7_axi_periph_1_to_s00_couplers_BID;
  assign S00_AXI_bresp = z_turn_ps_7_axi_periph_1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = z_turn_ps_7_axi_periph_1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata = z_turn_ps_7_axi_periph_1_to_s00_couplers_RDATA;
  assign S00_AXI_rid = z_turn_ps_7_axi_periph_1_to_s00_couplers_RID;
  assign S00_AXI_rlast = z_turn_ps_7_axi_periph_1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp = z_turn_ps_7_axi_periph_1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = z_turn_ps_7_axi_periph_1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = z_turn_ps_7_axi_periph_1_to_s00_couplers_WREADY;
  assign s00_couplers_to_z_turn_ps_7_axi_periph_1_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_z_turn_ps_7_axi_periph_1_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_z_turn_ps_7_axi_periph_1_BID = M00_AXI_bid;
  assign s00_couplers_to_z_turn_ps_7_axi_periph_1_BRESP = M00_AXI_bresp;
  assign s00_couplers_to_z_turn_ps_7_axi_periph_1_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_z_turn_ps_7_axi_periph_1_RDATA = M00_AXI_rdata;
  assign s00_couplers_to_z_turn_ps_7_axi_periph_1_RID = M00_AXI_rid;
  assign s00_couplers_to_z_turn_ps_7_axi_periph_1_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_z_turn_ps_7_axi_periph_1_RRESP = M00_AXI_rresp;
  assign s00_couplers_to_z_turn_ps_7_axi_periph_1_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_z_turn_ps_7_axi_periph_1_WREADY = M00_AXI_wready;
  assign z_turn_ps_7_axi_periph_1_ACLK_net = M00_ACLK;
  assign z_turn_ps_7_axi_periph_1_ARESETN_net = M00_ARESETN;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_ARADDR = S00_AXI_araddr;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_ARBURST = S00_AXI_arburst;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_ARCACHE = S00_AXI_arcache;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_ARID = S00_AXI_arid;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_ARLEN = S00_AXI_arlen;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_ARPROT = S00_AXI_arprot;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_ARQOS = S00_AXI_arqos;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_ARSIZE = S00_AXI_arsize;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_AWADDR = S00_AXI_awaddr;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_AWBURST = S00_AXI_awburst;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_AWCACHE = S00_AXI_awcache;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_AWID = S00_AXI_awid;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_AWLEN = S00_AXI_awlen;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_AWPROT = S00_AXI_awprot;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_AWQOS = S00_AXI_awqos;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_AWSIZE = S00_AXI_awsize;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_WDATA = S00_AXI_wdata;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_WID = S00_AXI_wid;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_WSTRB = S00_AXI_wstrb;
  assign z_turn_ps_7_axi_periph_1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  s00_couplers_imp_1N0XG9 s00_couplers
       (.M_ACLK(z_turn_ps_7_axi_periph_1_ACLK_net),
        .M_ARESETN(z_turn_ps_7_axi_periph_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_z_turn_ps_7_axi_periph_1_ARADDR),
        .M_AXI_arburst(s00_couplers_to_z_turn_ps_7_axi_periph_1_ARBURST),
        .M_AXI_arcache(s00_couplers_to_z_turn_ps_7_axi_periph_1_ARCACHE),
        .M_AXI_arid(s00_couplers_to_z_turn_ps_7_axi_periph_1_ARID),
        .M_AXI_arlen(s00_couplers_to_z_turn_ps_7_axi_periph_1_ARLEN),
        .M_AXI_arlock(s00_couplers_to_z_turn_ps_7_axi_periph_1_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_z_turn_ps_7_axi_periph_1_ARPROT),
        .M_AXI_arqos(s00_couplers_to_z_turn_ps_7_axi_periph_1_ARQOS),
        .M_AXI_arready(s00_couplers_to_z_turn_ps_7_axi_periph_1_ARREADY),
        .M_AXI_arsize(s00_couplers_to_z_turn_ps_7_axi_periph_1_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_z_turn_ps_7_axi_periph_1_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_z_turn_ps_7_axi_periph_1_AWADDR),
        .M_AXI_awburst(s00_couplers_to_z_turn_ps_7_axi_periph_1_AWBURST),
        .M_AXI_awcache(s00_couplers_to_z_turn_ps_7_axi_periph_1_AWCACHE),
        .M_AXI_awid(s00_couplers_to_z_turn_ps_7_axi_periph_1_AWID),
        .M_AXI_awlen(s00_couplers_to_z_turn_ps_7_axi_periph_1_AWLEN),
        .M_AXI_awlock(s00_couplers_to_z_turn_ps_7_axi_periph_1_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_z_turn_ps_7_axi_periph_1_AWPROT),
        .M_AXI_awqos(s00_couplers_to_z_turn_ps_7_axi_periph_1_AWQOS),
        .M_AXI_awready(s00_couplers_to_z_turn_ps_7_axi_periph_1_AWREADY),
        .M_AXI_awsize(s00_couplers_to_z_turn_ps_7_axi_periph_1_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_z_turn_ps_7_axi_periph_1_AWVALID),
        .M_AXI_bid(s00_couplers_to_z_turn_ps_7_axi_periph_1_BID),
        .M_AXI_bready(s00_couplers_to_z_turn_ps_7_axi_periph_1_BREADY),
        .M_AXI_bresp(s00_couplers_to_z_turn_ps_7_axi_periph_1_BRESP),
        .M_AXI_bvalid(s00_couplers_to_z_turn_ps_7_axi_periph_1_BVALID),
        .M_AXI_rdata(s00_couplers_to_z_turn_ps_7_axi_periph_1_RDATA),
        .M_AXI_rid(s00_couplers_to_z_turn_ps_7_axi_periph_1_RID),
        .M_AXI_rlast(s00_couplers_to_z_turn_ps_7_axi_periph_1_RLAST),
        .M_AXI_rready(s00_couplers_to_z_turn_ps_7_axi_periph_1_RREADY),
        .M_AXI_rresp(s00_couplers_to_z_turn_ps_7_axi_periph_1_RRESP),
        .M_AXI_rvalid(s00_couplers_to_z_turn_ps_7_axi_periph_1_RVALID),
        .M_AXI_wdata(s00_couplers_to_z_turn_ps_7_axi_periph_1_WDATA),
        .M_AXI_wid(s00_couplers_to_z_turn_ps_7_axi_periph_1_WID),
        .M_AXI_wlast(s00_couplers_to_z_turn_ps_7_axi_periph_1_WLAST),
        .M_AXI_wready(s00_couplers_to_z_turn_ps_7_axi_periph_1_WREADY),
        .M_AXI_wstrb(s00_couplers_to_z_turn_ps_7_axi_periph_1_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_z_turn_ps_7_axi_periph_1_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(z_turn_ps_7_axi_periph_1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(z_turn_ps_7_axi_periph_1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(z_turn_ps_7_axi_periph_1_to_s00_couplers_ARCACHE),
        .S_AXI_arid(z_turn_ps_7_axi_periph_1_to_s00_couplers_ARID),
        .S_AXI_arlen(z_turn_ps_7_axi_periph_1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(z_turn_ps_7_axi_periph_1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(z_turn_ps_7_axi_periph_1_to_s00_couplers_ARPROT),
        .S_AXI_arqos(z_turn_ps_7_axi_periph_1_to_s00_couplers_ARQOS),
        .S_AXI_arready(z_turn_ps_7_axi_periph_1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(z_turn_ps_7_axi_periph_1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(z_turn_ps_7_axi_periph_1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(z_turn_ps_7_axi_periph_1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(z_turn_ps_7_axi_periph_1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(z_turn_ps_7_axi_periph_1_to_s00_couplers_AWCACHE),
        .S_AXI_awid(z_turn_ps_7_axi_periph_1_to_s00_couplers_AWID),
        .S_AXI_awlen(z_turn_ps_7_axi_periph_1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(z_turn_ps_7_axi_periph_1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(z_turn_ps_7_axi_periph_1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(z_turn_ps_7_axi_periph_1_to_s00_couplers_AWQOS),
        .S_AXI_awready(z_turn_ps_7_axi_periph_1_to_s00_couplers_AWREADY),
        .S_AXI_awsize(z_turn_ps_7_axi_periph_1_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(z_turn_ps_7_axi_periph_1_to_s00_couplers_AWVALID),
        .S_AXI_bid(z_turn_ps_7_axi_periph_1_to_s00_couplers_BID),
        .S_AXI_bready(z_turn_ps_7_axi_periph_1_to_s00_couplers_BREADY),
        .S_AXI_bresp(z_turn_ps_7_axi_periph_1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(z_turn_ps_7_axi_periph_1_to_s00_couplers_BVALID),
        .S_AXI_rdata(z_turn_ps_7_axi_periph_1_to_s00_couplers_RDATA),
        .S_AXI_rid(z_turn_ps_7_axi_periph_1_to_s00_couplers_RID),
        .S_AXI_rlast(z_turn_ps_7_axi_periph_1_to_s00_couplers_RLAST),
        .S_AXI_rready(z_turn_ps_7_axi_periph_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(z_turn_ps_7_axi_periph_1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(z_turn_ps_7_axi_periph_1_to_s00_couplers_RVALID),
        .S_AXI_wdata(z_turn_ps_7_axi_periph_1_to_s00_couplers_WDATA),
        .S_AXI_wid(z_turn_ps_7_axi_periph_1_to_s00_couplers_WID),
        .S_AXI_wlast(z_turn_ps_7_axi_periph_1_to_s00_couplers_WLAST),
        .S_AXI_wready(z_turn_ps_7_axi_periph_1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(z_turn_ps_7_axi_periph_1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(z_turn_ps_7_axi_periph_1_to_s00_couplers_WVALID));
endmodule
