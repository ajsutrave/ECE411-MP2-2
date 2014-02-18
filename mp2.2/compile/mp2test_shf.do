echo "--- Executing initialization force file for ../testcode/mp2test_shf.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp2test_shf.asm program code."
run 5
change /mp2_cpu/DRAM/vhdl_memory/mem(0) X"23"
change /mp2_cpu/DRAM/vhdl_memory/mem(1) X"12"
change /mp2_cpu/DRAM/vhdl_memory/mem(2) X"3E"
change /mp2_cpu/DRAM/vhdl_memory/mem(3) X"14"
change /mp2_cpu/DRAM/vhdl_memory/mem(4) X"62"
change /mp2_cpu/DRAM/vhdl_memory/mem(5) X"D6"
change /mp2_cpu/DRAM/vhdl_memory/mem(6) X"52"
change /mp2_cpu/DRAM/vhdl_memory/mem(7) X"D6"
change /mp2_cpu/DRAM/vhdl_memory/mem(8) X"72"
change /mp2_cpu/DRAM/vhdl_memory/mem(9) X"D6"
change /mp2_cpu/DRAM/vhdl_memory/mem(10) X"A2"
change /mp2_cpu/DRAM/vhdl_memory/mem(11) X"D6"
change /mp2_cpu/DRAM/vhdl_memory/mem(12) X"92"
change /mp2_cpu/DRAM/vhdl_memory/mem(13) X"D6"
change /mp2_cpu/DRAM/vhdl_memory/mem(14) X"B2"
change /mp2_cpu/DRAM/vhdl_memory/mem(15) X"D6"
change /mp2_cpu/DRAM/vhdl_memory/mem(16) X"FF"
change /mp2_cpu/DRAM/vhdl_memory/mem(17) X"0F"
run 5
echo "Done loading ../testcode/mp2test_shf.asm program code."
