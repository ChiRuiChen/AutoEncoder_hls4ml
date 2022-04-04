set moduleName resize_nearest_array_ap_fixed_4u_config13_s
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {resize_nearest<array<ap_fixed,4u>,config13>}
set C_modelType { void 0 }
set C_modelArgList {
	{ image_V_data_0_V int 32 regular {fifo 0 volatile }  }
	{ image_V_data_1_V int 32 regular {fifo 0 volatile }  }
	{ image_V_data_2_V int 32 regular {fifo 0 volatile }  }
	{ image_V_data_3_V int 32 regular {fifo 0 volatile }  }
	{ resized_V_data_0_V int 32 regular {fifo 1 volatile }  }
	{ resized_V_data_1_V int 32 regular {fifo 1 volatile }  }
	{ resized_V_data_2_V int 32 regular {fifo 1 volatile }  }
	{ resized_V_data_3_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "image_V_data_0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "image_V_data_1_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "image_V_data_2_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "image_V_data_3_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "resized_V_data_0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "resized_V_data_1_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "resized_V_data_2_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "resized_V_data_3_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ image_V_data_0_V_dout sc_in sc_lv 32 signal 0 } 
	{ image_V_data_0_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ image_V_data_0_V_read sc_out sc_logic 1 signal 0 } 
	{ image_V_data_1_V_dout sc_in sc_lv 32 signal 1 } 
	{ image_V_data_1_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ image_V_data_1_V_read sc_out sc_logic 1 signal 1 } 
	{ image_V_data_2_V_dout sc_in sc_lv 32 signal 2 } 
	{ image_V_data_2_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ image_V_data_2_V_read sc_out sc_logic 1 signal 2 } 
	{ image_V_data_3_V_dout sc_in sc_lv 32 signal 3 } 
	{ image_V_data_3_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ image_V_data_3_V_read sc_out sc_logic 1 signal 3 } 
	{ resized_V_data_0_V_din sc_out sc_lv 32 signal 4 } 
	{ resized_V_data_0_V_full_n sc_in sc_logic 1 signal 4 } 
	{ resized_V_data_0_V_write sc_out sc_logic 1 signal 4 } 
	{ resized_V_data_1_V_din sc_out sc_lv 32 signal 5 } 
	{ resized_V_data_1_V_full_n sc_in sc_logic 1 signal 5 } 
	{ resized_V_data_1_V_write sc_out sc_logic 1 signal 5 } 
	{ resized_V_data_2_V_din sc_out sc_lv 32 signal 6 } 
	{ resized_V_data_2_V_full_n sc_in sc_logic 1 signal 6 } 
	{ resized_V_data_2_V_write sc_out sc_logic 1 signal 6 } 
	{ resized_V_data_3_V_din sc_out sc_lv 32 signal 7 } 
	{ resized_V_data_3_V_full_n sc_in sc_logic 1 signal 7 } 
	{ resized_V_data_3_V_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "image_V_data_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_V_data_0_V", "role": "dout" }} , 
 	{ "name": "image_V_data_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_V_data_0_V", "role": "empty_n" }} , 
 	{ "name": "image_V_data_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_V_data_0_V", "role": "read" }} , 
 	{ "name": "image_V_data_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_V_data_1_V", "role": "dout" }} , 
 	{ "name": "image_V_data_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_V_data_1_V", "role": "empty_n" }} , 
 	{ "name": "image_V_data_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_V_data_1_V", "role": "read" }} , 
 	{ "name": "image_V_data_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_V_data_2_V", "role": "dout" }} , 
 	{ "name": "image_V_data_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_V_data_2_V", "role": "empty_n" }} , 
 	{ "name": "image_V_data_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_V_data_2_V", "role": "read" }} , 
 	{ "name": "image_V_data_3_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "image_V_data_3_V", "role": "dout" }} , 
 	{ "name": "image_V_data_3_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_V_data_3_V", "role": "empty_n" }} , 
 	{ "name": "image_V_data_3_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "image_V_data_3_V", "role": "read" }} , 
 	{ "name": "resized_V_data_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "resized_V_data_0_V", "role": "din" }} , 
 	{ "name": "resized_V_data_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resized_V_data_0_V", "role": "full_n" }} , 
 	{ "name": "resized_V_data_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resized_V_data_0_V", "role": "write" }} , 
 	{ "name": "resized_V_data_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "resized_V_data_1_V", "role": "din" }} , 
 	{ "name": "resized_V_data_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resized_V_data_1_V", "role": "full_n" }} , 
 	{ "name": "resized_V_data_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resized_V_data_1_V", "role": "write" }} , 
 	{ "name": "resized_V_data_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "resized_V_data_2_V", "role": "din" }} , 
 	{ "name": "resized_V_data_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resized_V_data_2_V", "role": "full_n" }} , 
 	{ "name": "resized_V_data_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resized_V_data_2_V", "role": "write" }} , 
 	{ "name": "resized_V_data_3_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "resized_V_data_3_V", "role": "din" }} , 
 	{ "name": "resized_V_data_3_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resized_V_data_3_V", "role": "full_n" }} , 
 	{ "name": "resized_V_data_3_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "resized_V_data_3_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "resize_nearest_array_ap_fixed_4u_config13_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "image_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "image_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "image_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "image_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "image_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "resized_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "resized_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "resized_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "resized_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	resize_nearest_array_ap_fixed_4u_config13_s {
		image_V_data_0_V {Type I LastRead 8 FirstWrite -1}
		image_V_data_1_V {Type I LastRead 8 FirstWrite -1}
		image_V_data_2_V {Type I LastRead 8 FirstWrite -1}
		image_V_data_3_V {Type I LastRead 8 FirstWrite -1}
		resized_V_data_0_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_1_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_2_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_3_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	image_V_data_0_V { ap_fifo {  { image_V_data_0_V_dout fifo_data 0 32 }  { image_V_data_0_V_empty_n fifo_status 0 1 }  { image_V_data_0_V_read fifo_update 1 1 } } }
	image_V_data_1_V { ap_fifo {  { image_V_data_1_V_dout fifo_data 0 32 }  { image_V_data_1_V_empty_n fifo_status 0 1 }  { image_V_data_1_V_read fifo_update 1 1 } } }
	image_V_data_2_V { ap_fifo {  { image_V_data_2_V_dout fifo_data 0 32 }  { image_V_data_2_V_empty_n fifo_status 0 1 }  { image_V_data_2_V_read fifo_update 1 1 } } }
	image_V_data_3_V { ap_fifo {  { image_V_data_3_V_dout fifo_data 0 32 }  { image_V_data_3_V_empty_n fifo_status 0 1 }  { image_V_data_3_V_read fifo_update 1 1 } } }
	resized_V_data_0_V { ap_fifo {  { resized_V_data_0_V_din fifo_data 1 32 }  { resized_V_data_0_V_full_n fifo_status 0 1 }  { resized_V_data_0_V_write fifo_update 1 1 } } }
	resized_V_data_1_V { ap_fifo {  { resized_V_data_1_V_din fifo_data 1 32 }  { resized_V_data_1_V_full_n fifo_status 0 1 }  { resized_V_data_1_V_write fifo_update 1 1 } } }
	resized_V_data_2_V { ap_fifo {  { resized_V_data_2_V_din fifo_data 1 32 }  { resized_V_data_2_V_full_n fifo_status 0 1 }  { resized_V_data_2_V_write fifo_update 1 1 } } }
	resized_V_data_3_V { ap_fifo {  { resized_V_data_3_V_din fifo_data 1 32 }  { resized_V_data_3_V_full_n fifo_status 0 1 }  { resized_V_data_3_V_write fifo_update 1 1 } } }
}
