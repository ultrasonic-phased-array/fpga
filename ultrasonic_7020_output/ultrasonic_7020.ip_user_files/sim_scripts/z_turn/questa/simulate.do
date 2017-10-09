onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib z_turn_opt

do {wave.do}

view wave
view structure
view signals

do {z_turn.udo}

run -all

quit -force
