verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiWindowResize -win $_Verdi_1 -26 -5 "900" "700"
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/min_exec.fsdb
verdiSetActWin -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/omsp_min_exec_tb"
wvGetSignalSetScope -win $_nWave2 "/omsp_min_exec_tb/dut/execution_unit_0"
wvGetSignalSetScope -win $_nWave2 "/omsp_min_exec_tb/dut/frontend_0"
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/omsp_min_exec_tb/mclk} -height 16 \
{/omsp_min_exec_tb/dmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_addr\[14:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/puc_rst} -height 16 \
{/omsp_min_exec_tb/dut/execution_unit_0/pc\[15:0\]} -height 16 \
{/omsp_min_exec_tb/dut/frontend_0/pc\[15:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/omsp_min_exec_tb/mclk} -height 16 \
{/omsp_min_exec_tb/dmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_addr\[14:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/puc_rst} -height 16 \
{/omsp_min_exec_tb/dut/execution_unit_0/pc\[15:0\]} -height 16 \
{/omsp_min_exec_tb/dut/frontend_0/pc\[15:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvGetSignalClose -win $_nWave2
wvZoomAll -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/omsp_min_exec_tb"
wvGetSignalSetScope -win $_nWave2 "/omsp_min_exec_tb/dut"
wvGetSignalSetScope -win $_nWave2 "/omsp_min_exec_tb/dut/frontend_0"
wvGetSignalSetScope -win $_nWave2 "/omsp_min_exec_tb/dut/execution_unit_0"
wvGetSignalSetScope -win $_nWave2 "/omsp_min_exec_tb/dut/frontend_0"
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/omsp_min_exec_tb/mclk} -height 16 \
{/omsp_min_exec_tb/dmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_addr\[14:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/puc_rst} -height 16 \
{/omsp_min_exec_tb/dut/execution_unit_0/pc\[15:0\]} -height 16 \
{/omsp_min_exec_tb/dut/frontend_0/pc\[15:0\]} -height 16 \
{/omsp_min_exec_tb/dut/frontend_0/pc_nxt\[15:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/omsp_min_exec_tb/mclk} -height 16 \
{/omsp_min_exec_tb/dmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_addr\[14:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/puc_rst} -height 16 \
{/omsp_min_exec_tb/dut/execution_unit_0/pc\[15:0\]} -height 16 \
{/omsp_min_exec_tb/dut/frontend_0/pc\[15:0\]} -height 16 \
{/omsp_min_exec_tb/dut/frontend_0/pc_nxt\[15:0\]} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetPosition -win $_nWave2 {("G1" 8)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 217886.081243 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 194530.585424 -snap {("G2" 0)}
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/min_exec.fsdb
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/omsp_min_exec_tb"
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/omsp_min_exec_tb/mclk} -height 16 \
{/omsp_min_exec_tb/dmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_addr\[14:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/puc_rst} -height 16 \
{/omsp_min_exec_tb/dut/execution_unit_0/pc\[15:0\]} -height 16 \
{/omsp_min_exec_tb/dut/frontend_0/pc\[15:0\]} -height 16 \
{/omsp_min_exec_tb/dut/frontend_0/pc_nxt\[15:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_en} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/omsp_min_exec_tb/mclk} -height 16 \
{/omsp_min_exec_tb/dmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_addr\[14:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/puc_rst} -height 16 \
{/omsp_min_exec_tb/dut/execution_unit_0/pc\[15:0\]} -height 16 \
{/omsp_min_exec_tb/dut/frontend_0/pc\[15:0\]} -height 16 \
{/omsp_min_exec_tb/dut/frontend_0/pc_nxt\[15:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_en} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvGetSignalClose -win $_nWave2
wvZoomAll -win $_nWave2
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/min_exec.fsdb
debCloseSimResult -IsShowWarn 1
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/min_exec.fsdb
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/min_exec.fsdb
wvGetSignalOpen -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/omsp_min_exec_tb/mclk} -height 16 \
{/omsp_min_exec_tb/dmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_addr\[14:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/puc_rst} -height 16 \
{/omsp_min_exec_tb/dut/execution_unit_0/pc\[15:0\]} -height 16 \
{/omsp_min_exec_tb/dut/frontend_0/pc\[15:0\]} -height 16 \
{/omsp_min_exec_tb/dut/frontend_0/pc_nxt\[15:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_en} -height 16 \
{/omsp_min_exec_tb/dut/execution_unit_0/mb_en} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/omsp_min_exec_tb/mclk} -height 16 \
{/omsp_min_exec_tb/dmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_addr\[14:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_dout\[15:0\]} -height 16 \
{/omsp_min_exec_tb/puc_rst} -height 16 \
{/omsp_min_exec_tb/dut/execution_unit_0/pc\[15:0\]} -height 16 \
{/omsp_min_exec_tb/dut/frontend_0/pc\[15:0\]} -height 16 \
{/omsp_min_exec_tb/dut/frontend_0/pc_nxt\[15:0\]} -height 16 \
{/omsp_min_exec_tb/pmem_en} -height 16 \
{/omsp_min_exec_tb/dut/execution_unit_0/mb_en} -height 16 \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 10)}
wvGetSignalClose -win $_nWave2
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/min_exec.fsdb
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/min_exec.fsdb
wvZoomAll -win $_nWave2
verdiSetActWin -dock widgetDock_<Inst._Tree>
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/min_exec.fsdb
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/min_exec.fsdb
verdiSetActWin -win $_nWave2
wvZoomAll -win $_nWave2
verdiSetActWin -dock widgetDock_<Inst._Tree>
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/min_exec.fsdb
wvSetCursor -win $_nWave2 107599.703791 -snap {("G2" 0)}
verdiSetActWin -win $_nWave2
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/min_exec.fsdb
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 112583.886256 -snap {("G2" 0)}
verdiSetActWin -win $_nWave2
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/min_exec.fsdb
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/min_exec.fsdb
wvSetCursor -win $_nWave2 50721.386256 -snap {("G1" 3)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetCursor -win $_nWave2 196435.426540 -snap {("G2" 0)}
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 215492.594787 -snap {("G2" 0)}
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/min_exec.fsdb
wvSetCursor -win $_nWave2 173273.637441 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 69778.554502 -snap {("G2" 0)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvGetSignalOpen -win $_nWave2
wvSetCursor -win $_nWave2 120793.127962 -snap {("G2" 0)}
debLoadSimResult /home/cegrad/cclab002/cs220-final-project/sim/min_exec.fsdb
debExit
