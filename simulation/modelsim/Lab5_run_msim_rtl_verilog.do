transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Sunny/Documents/GitHub/ECE385_Lab5 {C:/Users/Sunny/Documents/GitHub/ECE385_Lab5/mux2to1.sv}
vlog -sv -work work +incdir+C:/Users/Sunny/Documents/GitHub/ECE385_Lab5 {C:/Users/Sunny/Documents/GitHub/ECE385_Lab5/HexDriver.sv}
vlog -sv -work work +incdir+C:/Users/Sunny/Documents/GitHub/ECE385_Lab5 {C:/Users/Sunny/Documents/GitHub/ECE385_Lab5/adder_4_select.sv}
vlog -sv -work work +incdir+C:/Users/Sunny/Documents/GitHub/ECE385_Lab5 {C:/Users/Sunny/Documents/GitHub/ECE385_Lab5/full_adder.sv}
vlog -sv -work work +incdir+C:/Users/Sunny/Documents/GitHub/ECE385_Lab5 {C:/Users/Sunny/Documents/GitHub/ECE385_Lab5/carry_select_adder_9.sv}
vlog -sv -work work +incdir+C:/Users/Sunny/Documents/GitHub/ECE385_Lab5 {C:/Users/Sunny/Documents/GitHub/ECE385_Lab5/control.sv}
vlog -sv -work work +incdir+C:/Users/Sunny/Documents/GitHub/ECE385_Lab5 {C:/Users/Sunny/Documents/GitHub/ECE385_Lab5/computation_module.sv}
vlog -sv -work work +incdir+C:/Users/Sunny/Documents/GitHub/ECE385_Lab5 {C:/Users/Sunny/Documents/GitHub/ECE385_Lab5/shift_reg_8.sv}
vlog -sv -work work +incdir+C:/Users/Sunny/Documents/GitHub/ECE385_Lab5 {C:/Users/Sunny/Documents/GitHub/ECE385_Lab5/processer.sv}

vlog -sv -work work +incdir+C:/Users/Sunny/Documents/GitHub/ECE385_Lab5 {C:/Users/Sunny/Documents/GitHub/ECE385_Lab5/testbench.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
