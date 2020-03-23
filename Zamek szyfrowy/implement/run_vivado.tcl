create_project -force Top {D:\Dokumenty\Pulpit\TutorVHDL\implement} -part 7a100tcsg324-1
set_property design_mode GateLvl [current_fileset]
set_property top Top [current_fileset]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
add_files -norecurse {D:\Dokumenty\Pulpit\TutorVHDL\synthesis\Top.edn}
read_xdc {D:\Dokumenty\Pulpit\TutorVHDL\src\TutorVHDL.xdc}
link_design

opt_design -verbose -directive Default
write_checkpoint -force {Top_opt.dcp}
catch { report_drc -file {Top_opted.rpt} }

place_design -verbose -directive Default
catch { write_pcf -force {Top.pcf} }
write_checkpoint -force {Top_placed.dcp}
catch { report_io -file {Top_io_placed.rpt} }
catch { report_clock_utilization -file {Top_clock_utilization_placed.rpt} }
catch { report_utilization -file {Top_utilization_placed.rpt} }
catch { report_control_sets -verbose -file {Top_control_sets_placed.rpt} }
catch { report_timing_summary -file {Top_timing_summary_placed.rpt} }

power_opt_design -verbose
write_checkpoint -force {Top_postplace_pwropt.dcp}
catch { report_drc -file {Top_postplace_pwropted.rpt} }

route_design -verbose -directive Default
write_checkpoint -force {Top_routed.dcp}
write_verilog -mode timesim -sdf_anno false -force {Top.v}
write_sdf -mode timesim -force {Top.sdf}
catch { report_drc -file {Top_drc_routed.rpt} }
catch { report_power -file {Top_power_routed.rpt} }
catch { report_route_status -file {Top_route_status_routed.rpt} }
catch { report_timing_summary -file {Top_timing_summary_routed.rpt} }

write_bitstream -force -file {Top.bit}
