echo "--- Executing initialization force file for ../testcode/mp2test_ldb.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp2test_ldb.asm program code."
run 5
change /mp2_cpu/DRAM/vhdl_memory/mem(0) X"40"
change /mp2_cpu/DRAM/vhdl_memory/mem(1) X"24"
change /mp2_cpu/DRAM/vhdl_memory/mem(2) X"FF"
change /mp2_cpu/DRAM/vhdl_memory/mem(3) X"0F"
run 5
echo "Done loading ../testcode/mp2test_ldb.asm program code."
