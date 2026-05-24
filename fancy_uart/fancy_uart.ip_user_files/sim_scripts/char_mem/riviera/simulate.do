transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+char_mem  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.char_mem xil_defaultlib.glbl

do {char_mem.udo}

run 1000ns

endsim

quit -force
