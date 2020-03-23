create_project -force Top {D:\Dokumenty\Pulpit\TutorVHDL\synthesis} -part 7a100tcsg324-1
add_files -norecurse {D:/Dokumenty/Pulpit/TutorVHDL/src/TutorVHDL.vhd}
add_files -norecurse {D:/Dokumenty/Pulpit/TutorVHDL/compile/Top.vhd}
add_files -norecurse {D:/Dokumenty/Pulpit/TutorVHDL/src/Prescaler.vhd}
add_files -norecurse {D:/Dokumenty/Pulpit/TutorVHDL/src/Debouncer.vhd}
set_property top Top [current_fileset]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]

synth_design -top Top -flatten_hierarchy rebuilt -gated_clock_conversion off -fsm_extraction auto -bufg 12 -fanout_limit 10000 -shreg_min_size 3 -max_bram -1 -max_uram -1 -max_dsp -1 -max_bram_cascade_height -1 -max_uram_cascade_height -1 -cascade_dsp auto -directive default -resource_sharing auto -control_set_opt_threshold auto
report_utilization -file {Top_utilization_synth.rpt}
write_edf -force {Top.edn}
write_vhdl -force {Top.vhd}
write_xdc -force {Top.xdc}
write_checkpoint -force Top_synth.dcp
