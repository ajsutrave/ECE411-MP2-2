echo "--- Executing initialization force file for ../testcode/mp1multiply.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp1multiply.asm program code."
run 5
change /mp2_cpu/DRAM/vhdl_memory/mem(0) X"08"
change /mp2_cpu/DRAM/vhdl_memory/mem(1) X"62"
change /mp2_cpu/DRAM/vhdl_memory/mem(2) X"09"
change /mp2_cpu/DRAM/vhdl_memory/mem(3) X"64"
change /mp2_cpu/DRAM/vhdl_memory/mem(4) X"0A"
change /mp2_cpu/DRAM/vhdl_memory/mem(5) X"68"
change /mp2_cpu/DRAM/vhdl_memory/mem(6) X"42"
change /mp2_cpu/DRAM/vhdl_memory/mem(7) X"1B"
change /mp2_cpu/DRAM/vhdl_memory/mem(8) X"01"
change /mp2_cpu/DRAM/vhdl_memory/mem(9) X"19"
change /mp2_cpu/DRAM/vhdl_memory/mem(10) X"FD"
change /mp2_cpu/DRAM/vhdl_memory/mem(11) X"07"
change /mp2_cpu/DRAM/vhdl_memory/mem(12) X"0B"
change /mp2_cpu/DRAM/vhdl_memory/mem(13) X"7A"
change /mp2_cpu/DRAM/vhdl_memory/mem(14) X"FF"
change /mp2_cpu/DRAM/vhdl_memory/mem(15) X"0F"
change /mp2_cpu/DRAM/vhdl_memory/mem(16) X"FF"
change /mp2_cpu/DRAM/vhdl_memory/mem(17) X"FF"
change /mp2_cpu/DRAM/vhdl_memory/mem(18) X"03"
change /mp2_cpu/DRAM/vhdl_memory/mem(19) X"00"
change /mp2_cpu/DRAM/vhdl_memory/mem(20) X"05"
change /mp2_cpu/DRAM/vhdl_memory/mem(21) X"00"
change /mp2_cpu/DRAM/vhdl_memory/mem(22) X"00"
change /mp2_cpu/DRAM/vhdl_memory/mem(23) X"00"
run 5
echo "Done loading ../testcode/mp1multiply.asm program code."
