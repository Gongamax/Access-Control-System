transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Francisco Saraiva/Desktop/4 Semestre/LIC/PROJETO_DESENVOLVIMENTO/HARDWARE/HA.vhd}
vcom -93 -work work {C:/Users/Francisco Saraiva/Desktop/4 Semestre/LIC/PROJETO_DESENVOLVIMENTO/HARDWARE/MUX.vhd}
vcom -93 -work work {C:/Users/Francisco Saraiva/Desktop/4 Semestre/LIC/PROJETO_DESENVOLVIMENTO/HARDWARE/FFD.vhd}
vcom -93 -work work {C:/Users/Francisco Saraiva/Desktop/4 Semestre/LIC/PROJETO_DESENVOLVIMENTO/HARDWARE/FA.vhd}
vcom -93 -work work {C:/Users/Francisco Saraiva/Desktop/4 Semestre/LIC/PROJETO_DESENVOLVIMENTO/HARDWARE/Counter3bits.vhd}
vcom -93 -work work {C:/Users/Francisco Saraiva/Desktop/4 Semestre/LIC/PROJETO_DESENVOLVIMENTO/HARDWARE/Reg3Bit.vhd}
vcom -93 -work work {C:/Users/Francisco Saraiva/Desktop/4 Semestre/LIC/PROJETO_DESENVOLVIMENTO/HARDWARE/Adder3Bit.vhd}
vcom -93 -work work {C:/Users/Francisco Saraiva/Desktop/4 Semestre/LIC/PROJETO_DESENVOLVIMENTO/HARDWARE/MAC.vhd}
vcom -93 -work work {C:/Users/Francisco Saraiva/Desktop/4 Semestre/LIC/PROJETO_DESENVOLVIMENTO/HARDWARE/Subtractor3Bit.vhd}

