@ echo off
@ del *.ana >nul
@ del *.bgn >nul
@ del *.bit >nul
@ del *.bld >nul
@ del *.cel >nul
@ del *.csv >nul
@ del *.cmd >nul
@ del *.cmd_log >nul
@ del *.dhp >nul
@ del *.dly >nul
@ del *.drc >nul
@ del *.err >nul
@ del *.jhd >nul
@ del *.ldo >nul
@ del *.lfp >nul
@ del *.log >nul
@ del *.lso >nul
@ del *.mrp >nul
@ del *.nav >nul
@ del *.nc1 >nul
@ del *.ncd >nul
@ del *.ngc >nul
@ del *.ngd >nul
@ del *.ngm >nul
@ del *.ngr >nul
@ del *.npl >nul
@ del *.pad >nul
@ del *.par >nul
@ del *.pcf >nul
@ del *.prj >nul
@ del *.ptf >nul
@ del *.sprj >nul
@ del *.spl >nul
@ del *.stx >nul
@ del *.syr >nul
@ del *.tpl >nul
@ del *.twr >nul
@ del *.twx >nul
@ del *.ut >nul
@ del *.untf >nul
@ del *.xpi >nul
@ del _pace.ucf >nul
@ del transcript >nul
@ del *.placed_ncd_tracker >nul
@ del *.routed_ncd_tracker >nul
rem CoreGen clearing
@ del *.fin >nul
@ del *.asy >nul
@ del *.edn >nul
@ del *.v >nul
@ del *.veo >nul
@ del *.vho >nul
@ del *.xcp >nul
@ del *.txt >nul
@ del *.coregen_log >nul
@ del coregen_lock >nul
rem useful, but large coregen files
@ del *.ngo >nul
@ del *.lock >nul
@ del *.xml >nul
@ del *.html >nul
@ del *.ise >nul
@ del *.xst >nul
@ del *.unroutes >nul
@ del *.ntrc_log >nul
@ del *.ipf >nul

rem added for ISE 13.1
@ del *.xwbt >nul
@ del *.xsl >nul
@ del *.ptwx >nul
@ del *.xrpt >nul
@ del *.map >nul
@ del *.gise >nul
@ del *.exe >nul
@ del *.wdb >nul
@ del *.mif >nul
@ del *.xmsgs >nul
@ del *.ini >nul
@ del *.wcfg >nul

@ rd _ngo /S /Q
@ rd _xmsgs /S /Q
@ rd iseconfig /S /Q
@ rd xlnx_auto_0_xdb /S /Q
@ rd xst /S /Q