onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib mult_35_35_core_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {mult_35_35_core.udo}

run 1000ns

quit -force
