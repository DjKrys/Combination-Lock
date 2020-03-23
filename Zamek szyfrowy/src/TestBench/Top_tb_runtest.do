SetActiveLib -work
comp -include "$dsn\src\Top.vhd" 
comp -include "$dsn\src\TestBench\Top_TB.vhd" 
asim +access +r TESTBENCH_FOR_top
wave -noreg CLK
wave -noreg CLR
wave -noreg PASSWORD
wave -noreg ENTER	  
wave -noreg CE
wave -noreg Q
run 1200.00 ns								   
