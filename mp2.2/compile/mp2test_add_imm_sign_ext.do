echo "--- Executing initialization force file for ../testcode/mp2test_add_imm_sign_ext.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp2test_add_imm_sign_ext.asm program code."
run 5
change /mp2_cpu/DRAM/vhdl_memory/mem(0) X"3F"
change /mp2_cpu/DRAM/vhdl_memory/mem(1) X"12"
change /mp2_cpu/DRAM/vhdl_memory/mem(2) X"FF"
change /mp2_cpu/DRAM/vhdl_memory/mem(3) X"0F"
run 5
echo "Done loading ../testcode/mp2test_add_imm_sign_ext.asm program code."
