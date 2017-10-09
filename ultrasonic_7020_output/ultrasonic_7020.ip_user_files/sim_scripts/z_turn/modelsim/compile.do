vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/axi_infrastructure_v1_1_0
vlib msim/xil_common_vip_v1_0_0
vlib msim/smartconnect_v1_0
vlib msim/axi_protocol_checker_v1_1_13
vlib msim/axi_vip_v1_0_1
vlib msim/xlconcat_v2_1_1
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_11
vlib msim/util_vector_logic_v2_0_1
vlib msim/axi_i2s_adi_v1_00_a
vlib msim/adi_common_v1_00_a
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_register_slice_v2_1_12
vlib msim/fifo_generator_v13_1_4
vlib msim/axi_data_fifo_v2_1_11
vlib msim/axi_crossbar_v2_1_13
vlib msim/axi_protocol_converter_v2_1_12

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap xil_common_vip_v1_0_0 msim/xil_common_vip_v1_0_0
vmap smartconnect_v1_0 msim/smartconnect_v1_0
vmap axi_protocol_checker_v1_1_13 msim/axi_protocol_checker_v1_1_13
vmap axi_vip_v1_0_1 msim/axi_vip_v1_0_1
vmap xlconcat_v2_1_1 msim/xlconcat_v2_1_1
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_11 msim/proc_sys_reset_v5_0_11
vmap util_vector_logic_v2_0_1 msim/util_vector_logic_v2_0_1
vmap axi_i2s_adi_v1_00_a msim/axi_i2s_adi_v1_00_a
vmap adi_common_v1_00_a msim/adi_common_v1_00_a
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_12 msim/axi_register_slice_v2_1_12
vmap fifo_generator_v13_1_4 msim/fifo_generator_v13_1_4
vmap axi_data_fifo_v2_1_11 msim/axi_data_fifo_v2_1_11
vmap axi_crossbar_v2_1_13 msim/axi_crossbar_v2_1_13
vmap axi_protocol_converter_v2_1_12 msim/axi_protocol_converter_v2_1_12

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"/opt/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2017.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_common_vip_v1_0_0 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl/xil_common_vip_v1_0_vl_rfs.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v1_1_13 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/8017/hdl/axi_protocol_checker_v1_1_vl_rfs.sv" \

vlog -work axi_vip_v1_0_1 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L xil_common_vip_v1_0_0 -L axi_vip_v1_0_1 "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl/axi_vip_v1_0_vl_rfs.sv" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../bd/z_turn/ip/z_turn_processing_system7_0_0/sim/z_turn_processing_system7_0_0.v" \

vlog -work xlconcat_v2_1_1 -64 -incr "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/ipshared/73b7/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../bd/z_turn/ip/z_turn_xlconcat_0_0/sim/z_turn_xlconcat_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_11 -64 -93 \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/z_turn/ip/z_turn_rst_ps_7_166M_0/sim/z_turn_rst_ps_7_166M_0.vhd" \
"../../../bd/z_turn/ip/z_turn_proc_sys_reset1_0/sim/z_turn_proc_sys_reset1_0.vhd" \
"../../../bd/z_turn/ip/z_turn_proc_sys_reset_1_0/sim/z_turn_proc_sys_reset_1_0.vhd" \
"../../../bd/z_turn/ip/z_turn_proc_sys_reset_3_0/sim/z_turn_proc_sys_reset_3_0.vhd" \

vlog -work util_vector_logic_v2_0_1 -64 -incr "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/6d4d/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../bd/z_turn/ip/z_turn_util_vector_logic_0_0/sim/z_turn_util_vector_logic_0_0.v" \
"../../../bd/z_turn/ip/z_turn_util_vector_logic_0_1/sim/z_turn_util_vector_logic_0_1.v" \
"../../../bd/z_turn/ip/z_turn_util_vector_logic_1_0/sim/z_turn_util_vector_logic_1_0.v" \
"../../../bd/z_turn/ip/z_turn_xlconcat_0_1/sim/z_turn_xlconcat_0_1.v" \
"../../../bd/z_turn/ip/z_turn_xlconcat_0_2/sim/z_turn_xlconcat_0_2.v" \
"../../../bd/z_turn/ip/z_turn_xlconcat_1_0/sim/z_turn_xlconcat_1_0.v" \
"../../../bd/z_turn/ip/z_turn_clk_wiz_0_0/z_turn_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/z_turn/ip/z_turn_clk_wiz_0_0/z_turn_clk_wiz_0_0.v" \
"../../../bd/z_turn/hdl/z_turn.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/z_turn/ipshared/5f2b/hdl/axi_i2s_adi_v1_2.vhd" \

vcom -work axi_i2s_adi_v1_00_a -64 -93 \
"../../../bd/z_turn/ipshared/5f2b/hdl/i2s_rx.vhd" \
"../../../bd/z_turn/ipshared/5f2b/hdl/i2s_tx.vhd" \
"../../../bd/z_turn/ipshared/5f2b/hdl/i2s_clkgen.vhd" \
"../../../bd/z_turn/ipshared/5f2b/hdl/fifo_synchronizer.vhd" \
"../../../bd/z_turn/ipshared/5f2b/hdl/i2s_controller.vhd" \

vcom -work adi_common_v1_00_a -64 -93 \
"../../../bd/z_turn/ipshared/5f2b/hdl/adi_common/axi_ctrlif.vhd" \
"../../../bd/z_turn/ipshared/5f2b/hdl/adi_common/axi_streaming_dma_rx_fifo.vhd" \
"../../../bd/z_turn/ipshared/5f2b/hdl/adi_common/pl330_dma_fifo.vhd" \
"../../../bd/z_turn/ipshared/5f2b/hdl/adi_common/axi_streaming_dma_tx_fifo.vhd" \
"../../../bd/z_turn/ipshared/5f2b/hdl/adi_common/dma_fifo.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/z_turn/ipshared/5f2b/hdl/axi_i2s_adi_S_AXI.vhd" \
"../../../bd/z_turn/ip/z_turn_axi_i2s_adi_0_0/sim/z_turn_axi_i2s_adi_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../bd/z_turn/ip/z_turn_clk_wiz_1_0/z_turn_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/z_turn/ip/z_turn_clk_wiz_1_0/z_turn_clk_wiz_1_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_12 -64 -incr "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/0e33/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_4 -64 -incr "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4 -64 -93 \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4 -64 -incr "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_11 -64 -incr "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/5235/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_13 -64 -incr "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/78eb/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../bd/z_turn/ip/z_turn_xbar_0/sim/z_turn_xbar_0.v" \
"../../../bd/z_turn/ipshared/3448/hdl/ultrasonicShiftControl_v1_0_S00_AXI.v" \
"../../../bd/z_turn/ipshared/3448/hdl/ultrasonicShiftControl_v1_0.v" \
"../../../bd/z_turn/ip/z_turn_ultrasonicShiftControl_0_0/sim/z_turn_ultrasonicShiftControl_0_0.v" \
"../../../bd/z_turn/ipshared/4f4e/hdl/ultrasonicAXItoPWM_v1_0_S00_AXI.v" \
"../../../bd/z_turn/ipshared/4f4e/hdl/ultrasonicAXItoPWM_v1_0.v" \
"../../../bd/z_turn/ip/z_turn_ultrasonicAXItoPWM_0_1/sim/z_turn_ultrasonicAXItoPWM_0_1.v" \

vlog -work axi_protocol_converter_v2_1_12 -64 -incr "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/138d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/7e3a/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/2ad9/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/16a2/hdl/verilog" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/856d/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/d5eb/hdl" "+incdir+../../../../ultrasonic_7020.srcs/sources_1/bd/z_turn/ipshared/65a4" \
"../../../bd/z_turn/ip/z_turn_auto_pc_0/sim/z_turn_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

