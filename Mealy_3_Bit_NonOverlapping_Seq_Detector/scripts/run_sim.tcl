vlib work
vmap work work

vcom Mealy_101_Sequence_detector.vhd

vsim work.Mealy_101_Sequence_detector

add wave *

force -deposit clk 0 0ns, 1 5ns -repeat 10ns 

force reset 1
force x 0
run 10 ns

force reset 0
force x 1
run 10 ns

force x 0
run 10 ns

force x 1
run 10 ns

force x 0
run 10 ns

force x 1
run 10 ns

force x 0
run 10 ns

force x 1
run 10 ns

run 50 ns