transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Teresa/Documents/PLDS/Multiplexor para 2 buses de 4 bits/Muxpp.vhd}

