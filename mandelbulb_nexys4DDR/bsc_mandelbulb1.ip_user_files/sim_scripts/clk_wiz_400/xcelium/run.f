-makelib xcelium_lib/xpm -sv \
  "D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../bsc_mandelbulb1.gen/sources_1/ip/clk_wiz_400/clk_wiz_400_clk_wiz.v" \
  "../../../../bsc_mandelbulb1.gen/sources_1/ip/clk_wiz_400/clk_wiz_400.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

