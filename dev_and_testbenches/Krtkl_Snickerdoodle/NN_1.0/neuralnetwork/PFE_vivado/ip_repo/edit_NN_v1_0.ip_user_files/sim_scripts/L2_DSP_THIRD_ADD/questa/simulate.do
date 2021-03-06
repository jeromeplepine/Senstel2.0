onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib L2_DSP_THIRD_ADD_opt

do {wave.do}

view wave
view structure
view signals

do {L2_DSP_THIRD_ADD.udo}

run -all

quit -force
