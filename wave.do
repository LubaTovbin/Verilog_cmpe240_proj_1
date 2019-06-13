onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Top_Proj_1_TB/Top_Proj_1/CLK
add wave -noupdate /Top_Proj_1_TB/Top_Proj_1/RESET
add wave -noupdate -divider MemoryA
add wave -noupdate -color Violet -itemcolor Violet /Top_Proj_1_TB/Top_Proj_1/WEA
add wave -noupdate -color Cyan -itemcolor Cyan /Top_Proj_1_TB/Top_Proj_1/IncA
add wave -noupdate /Top_Proj_1_TB/Top_Proj_1/AddrA
add wave -noupdate /Top_Proj_1_TB/Top_Proj_1/RAM_A_DATA_IN
add wave -noupdate -divider {DOut1, 2}
add wave -noupdate -color Violet -itemcolor Violet /Top_Proj_1_TB/Top_Proj_1/DOut1
add wave -noupdate -color Violet -itemcolor Violet /Top_Proj_1_TB/Top_Proj_1/DOut2
add wave -noupdate /Top_Proj_1_TB/Top_Proj_1/ADDOut
add wave -noupdate /Top_Proj_1_TB/Top_Proj_1/SUBOut
add wave -noupdate -divider Mux
add wave -noupdate /Top_Proj_1_TB/Top_Proj_1/Sign
add wave -noupdate -divider MemoryB
add wave -noupdate -color Orange -itemcolor Orange /Top_Proj_1_TB/Top_Proj_1/WEB
add wave -noupdate -color Orange -itemcolor Orange /Top_Proj_1_TB/Top_Proj_1/IncB
add wave -noupdate -divider {New Divider}
add wave -noupdate /Top_Proj_1_TB/Top_Proj_1/AddrB
add wave -noupdate /Top_Proj_1_TB/Top_Proj_1/DataInB
add wave -noupdate -expand -subitemconfig {{/Top_Proj_1_TB/Top_Proj_1/MemoryB_inst/RAM_B[0]} {-color {Sky Blue} -itemcolor {Sky Blue}} {/Top_Proj_1_TB/Top_Proj_1/MemoryB_inst/RAM_B[1]} {-color {Sky Blue} -itemcolor {Sky Blue}} {/Top_Proj_1_TB/Top_Proj_1/MemoryB_inst/RAM_B[2]} {-color {Sky Blue} -itemcolor {Sky Blue}} {/Top_Proj_1_TB/Top_Proj_1/MemoryB_inst/RAM_B[3]} {-color {Sky Blue} -itemcolor {Sky Blue}}} /Top_Proj_1_TB/Top_Proj_1/MemoryB_inst/RAM_B
add wave -noupdate /Top_Proj_1_TB/Top_Proj_1/RAM_B_DATA_OUT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {143 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 339
configure wave -valuecolwidth 100
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
WaveRestoreZoom {11 ns} {315 ns}
