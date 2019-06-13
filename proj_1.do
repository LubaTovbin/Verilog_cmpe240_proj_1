quit -sim
vlog -reportprogress 300 -work work CounterA.v
vlog -reportprogress 300 -work work CounterB.v
vlog -reportprogress 300 -work work MemoryA.v
vlog -reportprogress 300 -work work MemoryB.v
vlog -reportprogress 300 -work work Controller.v
vlog -reportprogress 300 -work work Comparator.v
vlog -reportprogress 300 -work work Top_Proj_1.v
vlog -reportprogress 300 -work work Top_Proj_1_TB.v
vsim -gui work.Top_Proj_1_TB
do wave.do
run 300