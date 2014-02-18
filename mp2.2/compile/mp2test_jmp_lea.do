echo "--- Executing initialization force file for ../testcode/mp2test_jmp_lea.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp2test_jmp_lea.asm program code."
run 5
change /mp1_cpu/DRAM/vhdl_memory/mem(0) X"02"
change /mp1_cpu/DRAM/vhdl_memory/mem(1) X"E2"
change /mp1_cpu/DRAM/vhdl_memory/mem(2) X"40"
change /mp1_cpu/DRAM/vhdl_memory/mem(3) X"C0"
change /mp1_cpu/DRAM/vhdl_memory/mem(4) X"FF"
change /mp1_cpu/DRAM/vhdl_memory/mem(5) X"0F"
change /mp1_cpu/DRAM/vhdl_memory/mem(6) X"A1"
change /mp1_cpu/DRAM/vhdl_memory/mem(7) X"14"
change /mp1_cpu/DRAM/vhdl_memory/mem(8) X"FD"
change /mp1_cpu/DRAM/vhdl_memory/mem(9) X"E3"
change /mp1_cpu/DRAM/vhdl_memory/mem(10) X"40"
change /mp1_cpu/DRAM/vhdl_memory/mem(11) X"C0"
run 5
echo "Done loading ../testcode/mp2test_jmp_lea.asm program code."
