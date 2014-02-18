echo "--- Executing initialization force file for ../testcode/mp1fact5.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp1fact5.asm program code."
run 5
change /mp2_cpu/DRAM/vhdl_memory/mem(0) X"12"
change /mp2_cpu/DRAM/vhdl_memory/mem(1) X"62"
change /mp2_cpu/DRAM/vhdl_memory/mem(2) X"11"
change /mp2_cpu/DRAM/vhdl_memory/mem(3) X"64"
change /mp2_cpu/DRAM/vhdl_memory/mem(4) X"13"
change /mp2_cpu/DRAM/vhdl_memory/mem(5) X"66"
change /mp2_cpu/DRAM/vhdl_memory/mem(6) X"C1"
change /mp2_cpu/DRAM/vhdl_memory/mem(7) X"16"
change /mp2_cpu/DRAM/vhdl_memory/mem(8) X"C0"
change /mp2_cpu/DRAM/vhdl_memory/mem(9) X"16"
change /mp2_cpu/DRAM/vhdl_memory/mem(10) X"09"
change /mp2_cpu/DRAM/vhdl_memory/mem(11) X"0C"
change /mp2_cpu/DRAM/vhdl_memory/mem(12) X"10"
change /mp2_cpu/DRAM/vhdl_memory/mem(13) X"6A"
change /mp2_cpu/DRAM/vhdl_memory/mem(14) X"C0"
change /mp2_cpu/DRAM/vhdl_memory/mem(15) X"18"
change /mp2_cpu/DRAM/vhdl_memory/mem(16) X"42"
change /mp2_cpu/DRAM/vhdl_memory/mem(17) X"1B"
change /mp2_cpu/DRAM/vhdl_memory/mem(18) X"01"
change /mp2_cpu/DRAM/vhdl_memory/mem(19) X"19"
change /mp2_cpu/DRAM/vhdl_memory/mem(20) X"FD"
change /mp2_cpu/DRAM/vhdl_memory/mem(21) X"07"
change /mp2_cpu/DRAM/vhdl_memory/mem(22) X"40"
change /mp2_cpu/DRAM/vhdl_memory/mem(23) X"15"
change /mp2_cpu/DRAM/vhdl_memory/mem(24) X"C1"
change /mp2_cpu/DRAM/vhdl_memory/mem(25) X"16"
change /mp2_cpu/DRAM/vhdl_memory/mem(26) X"14"
change /mp2_cpu/DRAM/vhdl_memory/mem(27) X"74"
change /mp2_cpu/DRAM/vhdl_memory/mem(28) X"F5"
change /mp2_cpu/DRAM/vhdl_memory/mem(29) X"0F"
change /mp2_cpu/DRAM/vhdl_memory/mem(30) X"FF"
change /mp2_cpu/DRAM/vhdl_memory/mem(31) X"0F"
change /mp2_cpu/DRAM/vhdl_memory/mem(32) X"00"
change /mp2_cpu/DRAM/vhdl_memory/mem(33) X"00"
change /mp2_cpu/DRAM/vhdl_memory/mem(34) X"01"
change /mp2_cpu/DRAM/vhdl_memory/mem(35) X"00"
change /mp2_cpu/DRAM/vhdl_memory/mem(36) X"FF"
change /mp2_cpu/DRAM/vhdl_memory/mem(37) X"FF"
change /mp2_cpu/DRAM/vhdl_memory/mem(38) X"05"
change /mp2_cpu/DRAM/vhdl_memory/mem(39) X"00"
change /mp2_cpu/DRAM/vhdl_memory/mem(40) X"00"
change /mp2_cpu/DRAM/vhdl_memory/mem(41) X"00"
run 5
echo "Done loading ../testcode/mp1fact5.asm program code."
