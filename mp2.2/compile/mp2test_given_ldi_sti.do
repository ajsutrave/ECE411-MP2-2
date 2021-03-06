echo "--- Executing initialization force file for ../testcode/mp2test_given_ldi_sti.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp2test_given_ldi_sti.asm program code."
run 5
change /mp2_cpu/DRAM/vhdl_memory/mem(0) X"03"
change /mp2_cpu/DRAM/vhdl_memory/mem(1) X"AE"
change /mp2_cpu/DRAM/vhdl_memory/mem(2) X"05"
change /mp2_cpu/DRAM/vhdl_memory/mem(3) X"BE"
change /mp2_cpu/DRAM/vhdl_memory/mem(4) X"FF"
change /mp2_cpu/DRAM/vhdl_memory/mem(5) X"0F"
change /mp2_cpu/DRAM/vhdl_memory/mem(6) X"08"
change /mp2_cpu/DRAM/vhdl_memory/mem(7) X"00"
change /mp2_cpu/DRAM/vhdl_memory/mem(8) X"0D"
change /mp2_cpu/DRAM/vhdl_memory/mem(9) X"60"
change /mp2_cpu/DRAM/vhdl_memory/mem(10) X"0C"
change /mp2_cpu/DRAM/vhdl_memory/mem(11) X"00"
run 5
echo "Done loading ../testcode/mp2test_given_ldi_sti.asm program code."
