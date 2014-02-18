echo "--- Executing initialization force file for ../testcode/mp2test_given.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp2test_given.asm program code."
run 5
change /mp2_cpu/DRAM/vhdl_memory/mem(0) X"18"
change /mp2_cpu/DRAM/vhdl_memory/mem(1) X"E0"
change /mp2_cpu/DRAM/vhdl_memory/mem(2) X"00"
change /mp2_cpu/DRAM/vhdl_memory/mem(3) X"62"
change /mp2_cpu/DRAM/vhdl_memory/mem(4) X"01"
change /mp2_cpu/DRAM/vhdl_memory/mem(5) X"64"
change /mp2_cpu/DRAM/vhdl_memory/mem(6) X"02"
change /mp2_cpu/DRAM/vhdl_memory/mem(7) X"66"
change /mp2_cpu/DRAM/vhdl_memory/mem(8) X"43"
change /mp2_cpu/DRAM/vhdl_memory/mem(9) X"18"
change /mp2_cpu/DRAM/vhdl_memory/mem(10) X"24"
change /mp2_cpu/DRAM/vhdl_memory/mem(11) X"17"
change /mp2_cpu/DRAM/vhdl_memory/mem(12) X"03"
change /mp2_cpu/DRAM/vhdl_memory/mem(13) X"76"
change /mp2_cpu/DRAM/vhdl_memory/mem(14) X"36"
change /mp2_cpu/DRAM/vhdl_memory/mem(15) X"19"
change /mp2_cpu/DRAM/vhdl_memory/mem(16) X"04"
change /mp2_cpu/DRAM/vhdl_memory/mem(17) X"78"
change /mp2_cpu/DRAM/vhdl_memory/mem(18) X"B3"
change /mp2_cpu/DRAM/vhdl_memory/mem(19) X"5A"
change /mp2_cpu/DRAM/vhdl_memory/mem(20) X"05"
change /mp2_cpu/DRAM/vhdl_memory/mem(21) X"7A"
change /mp2_cpu/DRAM/vhdl_memory/mem(22) X"AC"
change /mp2_cpu/DRAM/vhdl_memory/mem(23) X"5C"
change /mp2_cpu/DRAM/vhdl_memory/mem(24) X"06"
change /mp2_cpu/DRAM/vhdl_memory/mem(25) X"7C"
change /mp2_cpu/DRAM/vhdl_memory/mem(26) X"03"
change /mp2_cpu/DRAM/vhdl_memory/mem(27) X"62"
change /mp2_cpu/DRAM/vhdl_memory/mem(28) X"04"
change /mp2_cpu/DRAM/vhdl_memory/mem(29) X"64"
change /mp2_cpu/DRAM/vhdl_memory/mem(30) X"05"
change /mp2_cpu/DRAM/vhdl_memory/mem(31) X"66"
change /mp2_cpu/DRAM/vhdl_memory/mem(32) X"06"
change /mp2_cpu/DRAM/vhdl_memory/mem(33) X"68"
change /mp2_cpu/DRAM/vhdl_memory/mem(34) X"02"
change /mp2_cpu/DRAM/vhdl_memory/mem(35) X"EA"
change /mp2_cpu/DRAM/vhdl_memory/mem(36) X"40"
change /mp2_cpu/DRAM/vhdl_memory/mem(37) X"C1"
change /mp2_cpu/DRAM/vhdl_memory/mem(38) X"FF"
change /mp2_cpu/DRAM/vhdl_memory/mem(39) X"0F"
change /mp2_cpu/DRAM/vhdl_memory/mem(40) X"FE"
change /mp2_cpu/DRAM/vhdl_memory/mem(41) X"EF"
change /mp2_cpu/DRAM/vhdl_memory/mem(42) X"07"
change /mp2_cpu/DRAM/vhdl_memory/mem(43) X"6C"
change /mp2_cpu/DRAM/vhdl_memory/mem(44) X"C0"
change /mp2_cpu/DRAM/vhdl_memory/mem(45) X"C1"
change /mp2_cpu/DRAM/vhdl_memory/mem(46) X"08"
change /mp2_cpu/DRAM/vhdl_memory/mem(47) X"6C"
change /mp2_cpu/DRAM/vhdl_memory/mem(48) X"FF"
change /mp2_cpu/DRAM/vhdl_memory/mem(49) X"0F"
change /mp2_cpu/DRAM/vhdl_memory/mem(50) X"20"
change /mp2_cpu/DRAM/vhdl_memory/mem(51) X"00"
change /mp2_cpu/DRAM/vhdl_memory/mem(52) X"D5"
change /mp2_cpu/DRAM/vhdl_memory/mem(53) X"00"
change /mp2_cpu/DRAM/vhdl_memory/mem(54) X"0F"
change /mp2_cpu/DRAM/vhdl_memory/mem(55) X"00"
change /mp2_cpu/DRAM/vhdl_memory/mem(64) X"0D"
change /mp2_cpu/DRAM/vhdl_memory/mem(65) X"60"
change /mp2_cpu/DRAM/vhdl_memory/mem(66) X"DD"
change /mp2_cpu/DRAM/vhdl_memory/mem(67) X"BA"
run 5
echo "Done loading ../testcode/mp2test_given.asm program code."
