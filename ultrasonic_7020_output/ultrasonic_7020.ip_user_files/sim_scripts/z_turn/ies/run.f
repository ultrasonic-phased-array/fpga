-makelib ies/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "/opt/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/axi_infrastructure_v1_1_0 \
  "../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies/xil_common_vip_v1_0_0 -sv \
  "../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies/smartconnect_v1_0 -sv \
  "../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib ies/axi_protocol_checker_v1_1_13 -sv \
  "../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/8017/hdl/axi_protocol_checker_v1_1_vl_rfs.sv" \
-endlib
-makelib ies/axi_vip_v1_0_1 -sv \
  "../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl/axi_vip_v1_0_vl_rfs.sv" \
  "../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/z_turn/ip/z_turn_processing_system7_0_0/sim/z_turn_processing_system7_0_0.v" \
-endlib
-makelib ies/xlconcat_v2_1_1 \
  "../../../../ultrasonic_7020.srcs/sources_1/ipshared/73b7/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/z_turn/ip/z_turn_xlconcat_0_0/sim/z_turn_xlconcat_0_0.v" \
-endlib
-makelib ies/lib_cdc_v1_0_2 \
  "../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies/proc_sys_reset_v5_0_11 \
  "../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/z_turn/ip/z_turn_rst_ps_7_166M_0/sim/z_turn_rst_ps_7_166M_0.vhd" \
  "../../../bd/z_turn/ip/z_turn_proc_sys_reset1_0/sim/z_turn_proc_sys_reset1_0.vhd" \
  "../../../bd/z_turn/ip/z_turn_proc_sys_reset_1_0/sim/z_turn_proc_sys_reset_1_0.vhd" \
  "../../../bd/z_turn/ip/z_turn_proc_sys_reset_3_0/sim/z_turn_proc_sys_reset_3_0.vhd" \
-endlib
-makelib ies/util_vector_logic_v2_0_1 \
  "../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/6d4d/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/z_turn/ip/z_turn_util_vector_logic_0_0/sim/z_turn_util_vector_logic_0_0.v" \
  "../../../bd/z_turn/ip/z_turn_util_vector_logic_0_1/sim/z_turn_util_vector_logic_0_1.v" \
  "../../../bd/z_turn/ip/z_turn_util_vector_logic_1_0/sim/z_turn_util_vector_logic_1_0.v" \
  "../../../bd/z_turn/ip/z_turn_xlconcat_0_1/sim/z_turn_xlconcat_0_1.v" \
  "../../../bd/z_turn/ip/z_turn_xlconcat_0_2/sim/z_turn_xlconcat_0_2.v" \
  "../../../bd/z_turn/ip/z_turn_xlconcat_1_0/sim/z_turn_xlconcat_1_0.v" \
  "../../../bd/z_turn/ip/z_turn_clk_wiz_0_0/z_turn_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/z_turn/ip/z_turn_clk_wiz_0_0/z_turn_clk_wiz_0_0.v" \
  "../../../bd/z_turn/hdl/z_turn.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/z_turn/ipshared/5f2b/hdl/axi_i2s_adi_v1_2.vhd" \
-endlib
-makelib ies/axi_i2s_adi_v1_00_a \
  "../../../bd/z_turn/ipshared/5f2b/hdl/i2s_rx.vhd" \
  "../../../bd/z_turn/ipshared/5f2b/hdl/i2s_tx.vhd" \
  "../../../bd/z_turn/ipshared/5f2b/hdl/i2s_clkgen.vhd" \
  "../../../bd/z_turn/ipshared/5f2b/hdl/fifo_synchronizer.vhd" \
  "../../../bd/z_turn/ipshared/5f2b/hdl/i2s_controller.vhd" \
-endlib
-makelib ies/adi_common_v1_00_a \
  "../../../bd/z_turn/ipshared/5f2b/hdl/adi_common/axi_ctrlif.vhd" \
  "../../../bd/z_turn/ipshared/5f2b/hdl/adi_common/axi_streaming_dma_rx_fifo.vhd" \
  "../../../bd/z_turn/ipshared/5f2b/hdl/adi_common/pl330_dma_fifo.vhd" \
  "../../../bd/z_turn/ipshared/5f2b/hdl/adi_common/axi_streaming_dma_tx_fifo.vhd" \
  "../../../bd/z_turn/ipshared/5f2b/hdl/adi_common/dma_fifo.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/z_turn/ipshared/5f2b/hdl/axi_i2s_adi_S_AXI.vhd" \
  "../../../bd/z_turn/ip/z_turn_axi_i2s_adi_0_0/sim/z_turn_axi_i2s_adi_0_0.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/z_turn/ip/z_turn_clk_wiz_1_0/z_turn_clk_wiz_1_0_clk_wiz.v" \
  "../../../bd/z_turn/ip/z_turn_clk_wiz_1_0/z_turn_clk_wiz_1_0.v" \
-endlib
-makelib ies/generic_baseblocks_v2_1_0 \
  "../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_register_slice_v2_1_12 \
  "../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/0e33/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies/fifo_generator_v13_1_4 \
  "../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies/fifo_generator_v13_1_4 \
  "../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_4 \
  "../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \
-endlib
-makelib ies/axi_data_fifo_v2_1_11 \
  "../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/5235/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies/axi_crossbar_v2_1_13 \
  "../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/78eb/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/z_turn/ip/z_turn_xbar_0/sim/z_turn_xbar_0.v" \
  "../../../bd/z_turn/ipshared/3448/hdl/ultrasonicShiftControl_v1_0_S00_AXI.v" \
  "../../../bd/z_turn/ipshared/3448/hdl/ultrasonicShiftControl_v1_0.v" \
  "../../../bd/z_turn/ip/z_turn_ultrasonicShiftControl_0_0/sim/z_turn_ultrasonicShiftControl_0_0.v" \
  "../../../bd/z_turn/ipshared/4f4e/hdl/ultrasonicAXItoPWM_v1_0_S00_AXI.v" \
  "../../../bd/z_turn/ipshared/4f4e/hdl/ultrasonicAXItoPWM_v1_0.v" \
  "../../../bd/z_turn/ip/z_turn_ultrasonicAXItoPWM_0_1/sim/z_turn_ultrasonicAXItoPWM_0_1.v" \
-endlib
-makelib ies/axi_protocol_converter_v2_1_12 \
  "../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/138d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/z_turn/ip/z_turn_auto_pc_0/sim/z_turn_auto_pc_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

