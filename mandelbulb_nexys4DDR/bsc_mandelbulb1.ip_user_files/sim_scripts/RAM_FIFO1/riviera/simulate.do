onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+RAM_FIFO1  -L xpm -L xbip_utils_v3_0_10 -L c_reg_fd_v12_0_6 -L c_mux_bit_v12_0_6 -L c_shift_ram_v12_0_14 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.RAM_FIFO1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {RAM_FIFO1.udo}

run 1000ns

endsim

quit -force
