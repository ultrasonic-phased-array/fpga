-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
-- Date        : Sun Oct  8 12:49:31 2017
-- Host        : niklas-precision running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/niklas/xilinx/ultrasonic_7020_output/ultrasonic_7020.srcs/sources_1/bd/z_turn/z_turn_stub.vhdl
-- Design      : z_turn
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity z_turn is
  Port ( 
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    HDMI_INTn : in STD_LOGIC;
    I2S_FSYNC_IN : in STD_LOGIC;
    IIC_0_scl_i : in STD_LOGIC;
    IIC_0_scl_o : out STD_LOGIC;
    IIC_0_scl_t : out STD_LOGIC;
    IIC_0_sda_i : in STD_LOGIC;
    IIC_0_sda_o : out STD_LOGIC;
    IIC_0_sda_t : out STD_LOGIC;
    IO_B13_LN : out STD_LOGIC_VECTOR ( 16 downto 11 );
    IO_B13_LP : out STD_LOGIC_VECTOR ( 16 downto 11 );
    IO_B34_LN : out STD_LOGIC_VECTOR ( 19 downto 1 );
    IO_B34_LP : out STD_LOGIC_VECTOR ( 19 downto 1 );
    IO_B35_LN : out STD_LOGIC_VECTOR ( 24 downto 1 );
    IO_B35_LP : out STD_LOGIC_VECTOR ( 24 downto 1 );
    MEMS_INTn : in STD_LOGIC
  );

end z_turn;

architecture stub of z_turn is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "DDR_addr[14:0],DDR_ba[2:0],DDR_cas_n,DDR_ck_n,DDR_ck_p,DDR_cke,DDR_cs_n,DDR_dm[3:0],DDR_dq[31:0],DDR_dqs_n[3:0],DDR_dqs_p[3:0],DDR_odt,DDR_ras_n,DDR_reset_n,DDR_we_n,FIXED_IO_ddr_vrn,FIXED_IO_ddr_vrp,FIXED_IO_mio[53:0],FIXED_IO_ps_clk,FIXED_IO_ps_porb,FIXED_IO_ps_srstb,HDMI_INTn,I2S_FSYNC_IN,IIC_0_scl_i,IIC_0_scl_o,IIC_0_scl_t,IIC_0_sda_i,IIC_0_sda_o,IIC_0_sda_t,IO_B13_LN[16:11],IO_B13_LP[16:11],IO_B34_LN[19:1],IO_B34_LP[19:1],IO_B35_LN[24:1],IO_B35_LP[24:1],MEMS_INTn";
begin
end;
