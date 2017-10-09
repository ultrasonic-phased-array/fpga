onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+z_turn -L xil_defaultlib -L xpm -L axi_infrastructure_v1_1_0 -L xil_common_vip_v1_0_0 -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_13 -L axi_vip_v1_0_1 -L xlconcat_v2_1_1 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_11 -L util_vector_logic_v2_0_1 -L axi_i2s_adi_v1_00_a -L adi_common_v1_00_a -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_12 -L fifo_generator_v13_1_4 -L axi_data_fifo_v2_1_11 -L axi_crossbar_v2_1_13 -L axi_protocol_converter_v2_1_12 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.z_turn xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {z_turn.udo}

run -all

endsim

quit -force
