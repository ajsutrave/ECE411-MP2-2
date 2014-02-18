onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {CPU signals}
add wave -noupdate /mp2_cpu/theDatapath/PCout
add wave -noupdate /mp2_cpu/theDatapath/aIR/VAL_IR
add wave -noupdate /mp2_cpu/theDatapath/aRegFile/RAM
add wave -noupdate /mp2_cpu/ControlUnit/current_state
add wave -noupdate -divider DRAM
add wave -noupdate /mp2_cpu/DRAM/ADDRESS
add wave -noupdate /mp2_cpu/DRAM/MWRITEL_L
add wave -noupdate /mp2_cpu/DRAM/MWRITEH_L
add wave -noupdate /mp2_cpu/DRAM/MREAD_L
add wave -noupdate /mp2_cpu/DRAM/MRESP_H
add wave -noupdate /mp2_cpu/ControlUnit/clk
add wave -noupdate /mp2_cpu/DRAM/DATAOUT
add wave -noupdate /mp2_cpu/DRAM/DATAIN
add wave -noupdate -divider {cache control}
add wave -noupdate /mp2_cpu/DRAM/Cache_Cont/mem_req
add wave -noupdate /mp2_cpu/DRAM/Cache_Cont/next_state
add wave -noupdate -divider PDRAM
add wave -noupdate /mp2_cpu/DRAM/PMADDRESS
add wave -noupdate /mp2_cpu/DRAM/PMDATAIN
add wave -noupdate /mp2_cpu/DRAM/PMDATAOUT
add wave -noupdate /mp2_cpu/DRAM/PMREAD_L
add wave -noupdate /mp2_cpu/DRAM/PMRESP_H
add wave -noupdate /mp2_cpu/DRAM/PMWRITE_L
add wave -noupdate -divider {cache datapath}
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/CacheLineWrite0
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/CacheLineWrite1
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/cache_write
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/LRUBit
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/DirtyBit0
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/DirtyBit1
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/ValidBit0
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/ValidBit1
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/ADDRESS
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/cache_full
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/cache_empty
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/cache_miss
add wave -noupdate -divider {Cache Set 0}
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/cache_set0/theDataArray/Data
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/cache_set0/theTagArray/Tag
add wave -noupdate -radix binary -childformat {{/mp2_cpu/DRAM/Cache_DP/cache_set0/theValidBitArray/ValidBit(7) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set0/theValidBitArray/ValidBit(6) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set0/theValidBitArray/ValidBit(5) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set0/theValidBitArray/ValidBit(4) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set0/theValidBitArray/ValidBit(3) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set0/theValidBitArray/ValidBit(2) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set0/theValidBitArray/ValidBit(1) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set0/theValidBitArray/ValidBit(0) -radix binary}} -subitemconfig {/mp2_cpu/DRAM/Cache_DP/cache_set0/theValidBitArray/ValidBit(7) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set0/theValidBitArray/ValidBit(6) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set0/theValidBitArray/ValidBit(5) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set0/theValidBitArray/ValidBit(4) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set0/theValidBitArray/ValidBit(3) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set0/theValidBitArray/ValidBit(2) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set0/theValidBitArray/ValidBit(1) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set0/theValidBitArray/ValidBit(0) {-height 16 -radix binary}} /mp2_cpu/DRAM/Cache_DP/cache_set0/theValidBitArray/ValidBit
add wave -noupdate -radix binary -childformat {{/mp2_cpu/DRAM/Cache_DP/cache_set0/theDirtyBitArray/DirtyBit(7) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set0/theDirtyBitArray/DirtyBit(6) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set0/theDirtyBitArray/DirtyBit(5) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set0/theDirtyBitArray/DirtyBit(4) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set0/theDirtyBitArray/DirtyBit(3) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set0/theDirtyBitArray/DirtyBit(2) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set0/theDirtyBitArray/DirtyBit(1) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set0/theDirtyBitArray/DirtyBit(0) -radix binary}} -subitemconfig {/mp2_cpu/DRAM/Cache_DP/cache_set0/theDirtyBitArray/DirtyBit(7) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set0/theDirtyBitArray/DirtyBit(6) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set0/theDirtyBitArray/DirtyBit(5) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set0/theDirtyBitArray/DirtyBit(4) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set0/theDirtyBitArray/DirtyBit(3) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set0/theDirtyBitArray/DirtyBit(2) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set0/theDirtyBitArray/DirtyBit(1) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set0/theDirtyBitArray/DirtyBit(0) {-height 16 -radix binary}} /mp2_cpu/DRAM/Cache_DP/cache_set0/theDirtyBitArray/DirtyBit
add wave -noupdate -divider {Cache Set 1}
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/cache_set1/theDataArray/Data
add wave -noupdate /mp2_cpu/DRAM/Cache_DP/cache_set1/theTagArray/Tag
add wave -noupdate -radix binary -childformat {{/mp2_cpu/DRAM/Cache_DP/cache_set1/theValidBitArray/ValidBit(7) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set1/theValidBitArray/ValidBit(6) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set1/theValidBitArray/ValidBit(5) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set1/theValidBitArray/ValidBit(4) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set1/theValidBitArray/ValidBit(3) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set1/theValidBitArray/ValidBit(2) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set1/theValidBitArray/ValidBit(1) -radix binary} {/mp2_cpu/DRAM/Cache_DP/cache_set1/theValidBitArray/ValidBit(0) -radix binary}} -subitemconfig {/mp2_cpu/DRAM/Cache_DP/cache_set1/theValidBitArray/ValidBit(7) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set1/theValidBitArray/ValidBit(6) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set1/theValidBitArray/ValidBit(5) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set1/theValidBitArray/ValidBit(4) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set1/theValidBitArray/ValidBit(3) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set1/theValidBitArray/ValidBit(2) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set1/theValidBitArray/ValidBit(1) {-height 16 -radix binary} /mp2_cpu/DRAM/Cache_DP/cache_set1/theValidBitArray/ValidBit(0) {-height 16 -radix binary}} /mp2_cpu/DRAM/Cache_DP/cache_set1/theValidBitArray/ValidBit
add wave -noupdate -radix binary /mp2_cpu/DRAM/Cache_DP/cache_set1/theDirtyBitArray/DirtyBit
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {674 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 441
configure wave -valuecolwidth 258
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {337 ns} {911 ns}
