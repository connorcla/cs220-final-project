verdiWindowResize -win $_Verdi_1 "0" "0" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiWindowResize -win $_Verdi_1 "0" "0" "900" "700"
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/novas.fsdb
verdiSetActWin -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/openMSP430_mini_tb"
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/openMSP430_mini_tb/mclk} -height 16 \
{/openMSP430_mini_tb/inst_pc\[15:0\]} -height 16 \
{/openMSP430_mini_tb/inst_full\[255:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/openMSP430_mini_tb/mclk} -height 16 \
{/openMSP430_mini_tb/inst_pc\[15:0\]} -height 16 \
{/openMSP430_mini_tb/inst_full\[255:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvGetSignalClose -win $_nWave2
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 18445.364336 -snap {("G2" 0)}
debExit
