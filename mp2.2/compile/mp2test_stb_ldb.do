echo "--- Executing initialization force file for ../testcode/mp2test_stb_ldb.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp2test_stb_ldb.asm program code."
run 5
change /mp2_cpu/DRAM/vhdl_memory/mem(0) X"06"
change /mp2_cpu/DRAM/vhdl_memory/mem(1) X"E0"
change /mp2_cpu/DRAM/vhdl_memory/mem(2) X"7F"
change /mp2_cpu/DRAM/vhdl_memory/mem(3) X"12"
change /mp2_cpu/DRAM/vhdl_memory/mem(4) X"00"
change /mp2_cpu/DRAM/vhdl_memory/mem(5) X"32"
change /mp2_cpu/DRAM/vhdl_memory/mem(6) X"00"
change /mp2_cpu/DRAM/vhdl_memory/mem(7) X"24"
change /mp2_cpu/DRAM/vhdl_memory/mem(8) X"01"
change /mp2_cpu/DRAM/vhdl_memory/mem(9) X"26"
change /mp2_cpu/DRAM/vhdl_memory/mem(10) X"07"
change /mp2_cpu/DRAM/vhdl_memory/mem(11) X"69"
change /mp2_cpu/DRAM/vhdl_memory/mem(12) X"FF"
change /mp2_cpu/DRAM/vhdl_memory/mem(13) X"0F"
change /mp2_cpu/DRAM/vhdl_memory/mem(14) X"34"
change /mp2_cpu/DRAM/vhdl_memory/mem(15) X"12"
run 5
echo "Done loading ../testcode/mp2test_stb_ldb.asm program code."
