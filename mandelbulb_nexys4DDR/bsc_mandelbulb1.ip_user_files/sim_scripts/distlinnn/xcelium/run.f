-makelib xcelium_lib/xpm -sv \
  "D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/dist_mem_gen_v8_0_13 \
  "../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../bsc_mandelbulb1.gen/sources_1/ip/distlinnn/sim/distlinnn.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

