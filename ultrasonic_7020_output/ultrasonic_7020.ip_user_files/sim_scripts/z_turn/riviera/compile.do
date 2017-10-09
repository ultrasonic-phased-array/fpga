vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/xil_common_vip_v1_0_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v1_1_13
vlib riviera/axi_vip_v1_0_1
vlib riviera/xlconcat_v2_1_1
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_11
vlib riviera/util_vector_logic_v2_0_1
vlib riviera/axi_i2s_adi_v1_00_a
vlib riviera/adi_common_v1_00_a
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_12
vlib riviera/fifo_generator_v13_1_4
vlib riviera/axi_data_fifo_v2_1_11
vlib riviera/axi_crossbar_v2_1_13
vlib riviera/axi_protocol_converter_v2_1_12

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap xil_common_vip_v1_0_0 riviera/xil_common_vip_v1_0_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v1_1_13 riviera/axi_protocol_checker_v1_1_13
vmap axi_vip_v1_0_1 riviera/axi_vip_v1_0_1
vmap xlconcat_v2_1_1 riviera/xlconcat_v2_1_1
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_11 riviera/proc_sys_reset_v5_0_11
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap axi_i2s_adi_v1_00_a riviera/axi_i2s_adi_v1_00_a
vmap adi_common_v1_00_a riviera/adi_common_v1_00_a
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_12 riviera/axi_register_slice_v2_1_12
vmap fifo_generator_v13_1_4 riviera/fifo_generator_v13_1_4
vmap axi_data_fifo_v2_1_11 riviera/axi_data_fifo_v2_1_11
vmap axi_crossbar_v2_1_13 riviera/axi_crossbar_v2_1_13
vmap axi_protocol_converter_v2_1_12 riviera/axi_protocol_converter_v2_1_12

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"/opt/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_common_vip_v1_0_0  -sv2k12 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v1_1_13  -sv2k12 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/8017/hdl/axi_protocol_checker_v1_1_vl_rfs.sv" \

vlog -work axi_vip_v1_0_1  -sv2k12 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl/axi_vip_v1_0_vl_rfs.sv" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../bd/z_turn/ip/z_turn_processing_system7_0_0/sim/z_turn_processing_system7_0_0.v" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/ipshared/73b7/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../bd/z_turn/ip/z_turn_xlconcat_0_0/sim/z_turn_xlconcat_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_11 -93 \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/z_turn/ip/z_turn_rst_ps_7_166M_0/sim/z_turn_rst_ps_7_166M_0.vhd" \
"../../../bd/z_turn/ip/z_turn_proc_sys_reset1_0/sim/z_turn_proc_sys_reset1_0.vhd" \
"../../../bd/z_turn/ip/z_turn_proc_sys_reset_1_0/sim/z_turn_proc_sys_reset_1_0.vhd" \
"../../../bd/z_turn/ip/z_turn_proc_sys_reset_3_0/sim/z_turn_proc_sys_reset_3_0.vhd" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/6d4d/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../bd/z_turn/ip/z_turn_util_vector_logic_0_0/sim/z_turn_util_vector_logic_0_0.v" \
"../../../bd/z_turn/ip/z_turn_util_vector_logic_0_1/sim/z_turn_util_vector_logic_0_1.v" \
"../../../bd/z_turn/ip/z_turn_util_vector_logic_1_0/sim/z_turn_util_vector_logic_1_0.v" \
"../../../bd/z_turn/ip/z_turn_xlconcat_0_1/sim/z_turn_xlconcat_0_1.v" \
"../../../bd/z_turn/ip/z_turn_xlconcat_0_2/sim/z_turn_xlconcat_0_2.v" \
"../../../bd/z_turn/ip/z_turn_xlconcat_1_0/sim/z_turn_xlconcat_1_0.v" \
"../../../bd/z_turn/ip/z_turn_clk_wiz_0_0/z_turn_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/z_turn/ip/z_turn_clk_wiz_0_0/z_turn_clk_wiz_0_0.v" \
"../../../bd/z_turn/hdl/z_turn.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/z_turn/ipshared/5f2b/hdl/axi_i2s_adi_v1_2.vhd" \

vcom -work axi_i2s_adi_v1_00_a -93 \
"../../../bd/z_turn/ipshared/5f2b/hdl/i2s_rx.vhd" \
"../../../bd/z_turn/ipshared/5f2b/hdl/i2s_tx.vhd" \
"../../../bd/z_turn/ipshared/5f2b/hdl/i2s_clkgen.vhd" \
"../../../bd/z_turn/ipshared/5f2b/hdl/fifo_synchronizer.vhd" \
"../../../bd/z_turn/ipshared/5f2b/hdl/i2s_controller.vhd" \

vcom -work adi_common_v1_00_a -93 \
"../../../bd/z_turn/ipshared/5f2b/hdl/adi_common/axi_ctrlif.vhd" \
"../../../bd/z_turn/ipshared/5f2b/hdl/adi_common/axi_streaming_dma_rx_fifo.vhd" \
"../../../bd/z_turn/ipshared/5f2b/hdl/adi_common/pl330_dma_fifo.vhd" \
"../../../bd/z_turn/ipshared/5f2b/hdl/adi_common/axi_streaming_dma_tx_fifo.vhd" \
"../../../bd/z_turn/ipshared/5f2b/hdl/adi_common/dma_fifo.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/z_turn/ipshared/5f2b/hdl/axi_i2s_adi_S_AXI.vhd" \
"../../../bd/z_turn/ip/z_turn_axi_i2s_adi_0_0/sim/z_turn_axi_i2s_adi_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../bd/z_turn/ip/z_turn_clk_wiz_1_0/z_turn_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/z_turn/ip/z_turn_clk_wiz_1_0/z_turn_clk_wiz_1_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_12  -v2k5 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/0e33/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_4  -v2k5 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4 -93 \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4  -v2k5 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_11  -v2k5 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/5235/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_13  -v2k5 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/78eb/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../bd/z_turn/ip/z_turn_xbar_0/sim/z_turn_xbar_0.v" \
"../../../bd/z_turn/ipshared/3448/hdl/ultrasonicShiftControl_v1_0_S00_AXI.v" \
"../../../bd/z_turn/ipshared/3448/hdl/ultrasonicShiftControl_v1_0.v" \
"../../../bd/z_turn/ip/z_turn_ultrasonicShiftControl_0_0/sim/z_turn_ultrasonicShiftControl_0_0.v" \
"../../../bd/z_turn/ipshared/4f4e/hdl/ultrasonicAXItoPWM_v1_0_S00_AXI.v" \
"../../../bd/z_turn/ipshared/4f4e/hdl/ultrasonicAXItoPWM_v1_0.v" \
"../../../bd/z_turn/ip/z_turn_ultrasonicAXItoPWM_0_1/sim/z_turn_ultrasonicAXItoPWM_0_1.v" \

vlog -work axi_protocol_converter_v2_1_12  -v2k5 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/138d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../bd/z_turn/ip/z_turn_auto_pc_0/sim/z_turn_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

