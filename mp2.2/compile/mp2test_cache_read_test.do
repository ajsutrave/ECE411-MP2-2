echo "--- Executing initialization force file for ../testcode/mp2test_cache_read_test.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp2test_cache_read_test.asm program code."
run 5
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(0) X"03"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(1) X"62"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(2) X"03"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(3) X"64"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(4) X"FF"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(5) X"0F"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(6) X"34"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(7) X"12"
run 5
echo "Done loading ../testcode/mp2test_cache_read_test.asm program code."
