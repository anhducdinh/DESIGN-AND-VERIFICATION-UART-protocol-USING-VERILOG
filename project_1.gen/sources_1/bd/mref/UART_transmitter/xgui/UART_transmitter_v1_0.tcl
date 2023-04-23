# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "dbit" -parent ${Page_0}
  ipgui::add_param $IPINST -name "sb_tick" -parent ${Page_0}


}

proc update_PARAM_VALUE.dbit { PARAM_VALUE.dbit } {
	# Procedure called to update dbit when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.dbit { PARAM_VALUE.dbit } {
	# Procedure called to validate dbit
	return true
}

proc update_PARAM_VALUE.sb_tick { PARAM_VALUE.sb_tick } {
	# Procedure called to update sb_tick when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sb_tick { PARAM_VALUE.sb_tick } {
	# Procedure called to validate sb_tick
	return true
}


proc update_MODELPARAM_VALUE.dbit { MODELPARAM_VALUE.dbit PARAM_VALUE.dbit } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.dbit}] ${MODELPARAM_VALUE.dbit}
}

proc update_MODELPARAM_VALUE.sb_tick { MODELPARAM_VALUE.sb_tick PARAM_VALUE.sb_tick } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sb_tick}] ${MODELPARAM_VALUE.sb_tick}
}

