vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/dist_mem_gen_v8_0_13
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap dist_mem_gen_v8_0_13 activehdl/dist_mem_gen_v8_0_13
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_13  -v2k5 \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../bsc_mandelbulb1.gen/sources_1/ip/arctan_data/sim/arctan_data.v" \


vlog -work xil_defaultlib \
"glbl.v"
