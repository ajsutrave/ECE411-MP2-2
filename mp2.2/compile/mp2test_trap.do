echo "--- Executing initialization force file for ../testcode/mp2test_trap.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp2test_trap.asm program code."
run 5
change /mp2_cpu/DRAM/vhdl_memory/mem(0) X"03"
change /mp2_cpu/DRAM/vhdl_memory/mem(1) X"F0"
change /mp2_cpu/DRAM/vhdl_memory/mem(2) X"E1"
change /mp2_cpu/DRAM/vhdl_memory/mem(3) X"16"
change /mp2_cpu/DRAM/vhdl_memory/mem(4) X"FF"
change /mp2_cpu/DRAM/vhdl_memory/mem(5) X"0F"
change /mp2_cpu/DRAM/vhdl_memory/mem(6) X"08"
change /mp2_cpu/DRAM/vhdl_memory/mem(7) X"00"
change /mp2_cpu/DRAM/vhdl_memory/mem(8) X"A1"
change /mp2_cpu/DRAM/vhdl_memory/mem(9) X"14"
change /mp2_cpu/DRAM/vhdl_memory/mem(10) X"C0"
change /mp2_cpu/DRAM/vhdl_memory/mem(11) X"C1"
run 5
echo "Done loading ../testcode/mp2test_trap.asm program code."
