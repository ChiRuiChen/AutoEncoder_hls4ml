set moduleName shift_line_buffer_array_ap_fixed_4u_config10_s
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {shift_line_buffer<array<ap_fixed,4u>,config10>}
set C_modelType { int 512 }
set C_modelArgList {
	{ in_elem_data_0_V_read int 32 regular  }
	{ in_elem_data_1_V_read int 32 regular  }
	{ in_elem_data_2_V_read int 32 regular  }
	{ in_elem_data_3_V_read int 32 regular  }
	{ kernel_window_4_V_read int 32 regular  }
	{ kernel_window_5_V_read int 32 regular  }
	{ kernel_window_6_V_read int 32 regular  }
	{ kernel_window_7_V_read int 32 regular  }
	{ kernel_window_12_V_read int 32 regular  }
	{ kernel_window_13_V_read int 32 regular  }
	{ kernel_window_14_V_read int 32 regular  }
	{ kernel_window_15_V_read int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_elem_data_0_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_elem_data_1_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_elem_data_2_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_elem_data_3_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_4_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_5_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_6_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_7_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_12_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_13_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_14_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_15_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 512} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_elem_data_0_V_read sc_in sc_lv 32 signal 0 } 
	{ in_elem_data_1_V_read sc_in sc_lv 32 signal 1 } 
	{ in_elem_data_2_V_read sc_in sc_lv 32 signal 2 } 
	{ in_elem_data_3_V_read sc_in sc_lv 32 signal 3 } 
	{ kernel_window_4_V_read sc_in sc_lv 32 signal 4 } 
	{ kernel_window_5_V_read sc_in sc_lv 32 signal 5 } 
	{ kernel_window_6_V_read sc_in sc_lv 32 signal 6 } 
	{ kernel_window_7_V_read sc_in sc_lv 32 signal 7 } 
	{ kernel_window_12_V_read sc_in sc_lv 32 signal 8 } 
	{ kernel_window_13_V_read sc_in sc_lv 32 signal 9 } 
	{ kernel_window_14_V_read sc_in sc_lv 32 signal 10 } 
	{ kernel_window_15_V_read sc_in sc_lv 32 signal 11 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 32 signal -1 } 
	{ ap_return_5 sc_out sc_lv 32 signal -1 } 
	{ ap_return_6 sc_out sc_lv 32 signal -1 } 
	{ ap_return_7 sc_out sc_lv 32 signal -1 } 
	{ ap_return_8 sc_out sc_lv 32 signal -1 } 
	{ ap_return_9 sc_out sc_lv 32 signal -1 } 
	{ ap_return_10 sc_out sc_lv 32 signal -1 } 
	{ ap_return_11 sc_out sc_lv 32 signal -1 } 
	{ ap_return_12 sc_out sc_lv 32 signal -1 } 
	{ ap_return_13 sc_out sc_lv 32 signal -1 } 
	{ ap_return_14 sc_out sc_lv 32 signal -1 } 
	{ ap_return_15 sc_out sc_lv 32 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_elem_data_0_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_elem_data_0_V_read", "role": "default" }} , 
 	{ "name": "in_elem_data_1_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_elem_data_1_V_read", "role": "default" }} , 
 	{ "name": "in_elem_data_2_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_elem_data_2_V_read", "role": "default" }} , 
 	{ "name": "in_elem_data_3_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_elem_data_3_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_4_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_4_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_5_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_5_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_6_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_6_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_7_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_7_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_12_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_12_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_13_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_13_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_14_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_14_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_15_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_15_V_read", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_4u_config10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_elem_data_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_12_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_13_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_14_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_15_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_Array_V_7_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_7_0_3", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_Array_V_7_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_Array_V_7_0_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_Array_V_7_0_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_Array_V_7_0_3_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	shift_line_buffer_array_ap_fixed_4u_config10_s {
		in_elem_data_0_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_1_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_2_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_3_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_4_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_5_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_6_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_7_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_12_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_13_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_14_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_15_V_read {Type I LastRead 0 FirstWrite -1}
		line_buffer_Array_V_7_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_3 {Type X LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_elem_data_0_V_read { ap_none {  { in_elem_data_0_V_read in_data 0 32 } } }
	in_elem_data_1_V_read { ap_none {  { in_elem_data_1_V_read in_data 0 32 } } }
	in_elem_data_2_V_read { ap_none {  { in_elem_data_2_V_read in_data 0 32 } } }
	in_elem_data_3_V_read { ap_none {  { in_elem_data_3_V_read in_data 0 32 } } }
	kernel_window_4_V_read { ap_none {  { kernel_window_4_V_read in_data 0 32 } } }
	kernel_window_5_V_read { ap_none {  { kernel_window_5_V_read in_data 0 32 } } }
	kernel_window_6_V_read { ap_none {  { kernel_window_6_V_read in_data 0 32 } } }
	kernel_window_7_V_read { ap_none {  { kernel_window_7_V_read in_data 0 32 } } }
	kernel_window_12_V_read { ap_none {  { kernel_window_12_V_read in_data 0 32 } } }
	kernel_window_13_V_read { ap_none {  { kernel_window_13_V_read in_data 0 32 } } }
	kernel_window_14_V_read { ap_none {  { kernel_window_14_V_read in_data 0 32 } } }
	kernel_window_15_V_read { ap_none {  { kernel_window_15_V_read in_data 0 32 } } }
}
