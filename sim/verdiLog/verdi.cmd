verdiWindowResize -win $_Verdi_1 "627" "160" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiWindowResize -win $_Verdi_1 "627" "160" "900" "700"
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/alu.fsdb
verdiSetActWin -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/alu_tb"
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/alu_tb/clk} -height 16 \
{/alu_tb/inst_alu\[13:0\]} -height 16 \
{/alu_tb/inst_so\[7:0\]} -height 16 \
{/alu_tb/inst_bw} -height 16 \
{/alu_tb/op_dst\[15:0\]} -height 16 \
{/alu_tb/op_src\[15:0\]} -height 16 \
{/alu_tb/alu_out\[15:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/alu_tb/clk} -height 16 \
{/alu_tb/inst_alu\[13:0\]} -height 16 \
{/alu_tb/inst_so\[7:0\]} -height 16 \
{/alu_tb/inst_bw} -height 16 \
{/alu_tb/op_dst\[15:0\]} -height 16 \
{/alu_tb/op_src\[15:0\]} -height 16 \
{/alu_tb/alu_out\[15:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetPosition -win $_nWave2 {("G1" 4)}
wvGetSignalClose -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 101501.286611 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 103232.343313 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 103578.554653 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 103232.343313 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 103232.343313 -snap {("G1" 7)}
debExit
