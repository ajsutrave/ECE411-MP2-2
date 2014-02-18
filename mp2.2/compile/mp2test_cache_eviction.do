echo "--- Executing initialization force file for ../testcode/mp2test_cache_eviction.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp2test_cache_eviction.asm program code."
run 5
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(0) X"06"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(1) X"E0"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(2) X"00"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(3) X"A2"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(4) X"05"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(5) X"E0"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(6) X"00"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(7) X"A4"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(8) X"04"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(9) X"E0"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(10) X"00"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(11) X"A6"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(12) X"FF"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(13) X"0F"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(14) X"00"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(15) X"01"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(16) X"00"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(17) X"02"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(18) X"00"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(19) X"03"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(256) X"34"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(257) X"12"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(512) X"21"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(513) X"43"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(768) X"0D"
change /mp2_cpu/DRAM/PDRAM/VHDL_MEMORY/mem(769) X"60"
run 5
echo "Done loading ../testcode/mp2test_cache_eviction.asm program code."
