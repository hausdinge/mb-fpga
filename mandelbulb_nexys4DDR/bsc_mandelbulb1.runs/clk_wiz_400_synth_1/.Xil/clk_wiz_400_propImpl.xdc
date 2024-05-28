set_property SRC_FILE_INFO {cfile:c:/Users/hausd/Dateien/Xilinx_proj/bsc_mandelbulb1/bsc_mandelbulb1.gen/sources_1/ip/clk_wiz_400/clk_wiz_400.xdc rfile:../../../bsc_mandelbulb1.gen/sources_1/ip/clk_wiz_400/clk_wiz_400.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
