verdiWindowResize -win $_Verdi_1 "2560" "427" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiWindowResize -win $_Verdi_1 "2560" "427" "900" "700"
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/min_exec.fsdb
verdiSetActWin -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/omsp_min_exec_tb"
wvGetSignalSetScope -win $_nWave2 "/omsp_min_exec_tb/dut/DP_OP_262_122_9732"
wvGetSignalSetScope -win $_nWave2 "/omsp_min_exec_tb/dut/DP_OP_263_123_7087"
wvGetSignalSetScope -win $_nWave2 "/omsp_min_exec_tb/dut/DP_OP_264_124_7087"
wvGetSignalSetScope -win $_nWave2 "/omsp_min_exec_tb/dut/DP_OP_265_125_7087"
wvGetSignalSetScope -win $_nWave2 "/omsp_min_exec_tb/dut/DP_OP_266_126_7087"
wvGetSignalSetScope -win $_nWave2 "/omsp_min_exec_tb/dut/add_x_91"
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/omsp_min_exec_tb/dmem_addr\[15:0\]} -height 16 \
{/omsp_min_exec_tb/dmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/mclk} -height 16 \
{/omsp_min_exec_tb/pmem_addr\[14:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_en} -height 16 \
{/omsp_min_exec_tb/puc_rst} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/omsp_min_exec_tb/dmem_addr\[15:0\]} -height 16 \
{/omsp_min_exec_tb/dmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/mclk} -height 16 \
{/omsp_min_exec_tb/pmem_addr\[14:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_en} -height 16 \
{/omsp_min_exec_tb/puc_rst} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvGetSignalClose -win $_nWave2
wvZoom -win $_nWave2 117538.750000 654858.750000
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
debExit
