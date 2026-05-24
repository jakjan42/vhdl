transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+fifo_mem  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.fifo_mem xil_defaultlib.glbl

do {fifo_mem.udo}

run

endsim

quit -force
