set moduleName myproject_axi
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {myproject_axi}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_data float 32 regular {axi_s 0 volatile  { in_r Data } }  }
	{ in_last_V int 1 regular {axi_s 0 volatile  { in_r Last } }  }
	{ out_data float 32 regular {axi_s 1 volatile  { out_r Data } }  }
	{ out_last_V int 1 regular {axi_s 1 volatile  { out_r Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_data", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in.data","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "in_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "out_data", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out.data","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "out_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ in_r_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_r_TLAST sc_in sc_lv 1 signal 1 } 
	{ out_r_TDATA sc_out sc_lv 32 signal 2 } 
	{ out_r_TLAST sc_out sc_lv 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_r_TVALID sc_in sc_logic 1 invld 0 } 
	{ in_r_TREADY sc_out sc_logic 1 inacc 0 } 
	{ out_r_TVALID sc_out sc_logic 1 outvld 3 } 
	{ out_r_TREADY sc_in sc_logic 1 outacc 3 } 
}
set NewPortList {[ 
	{ "name": "in_r_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_data", "role": "TA" }} , 
 	{ "name": "in_r_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_last_V", "role": "" }} , 
 	{ "name": "out_r_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_data", "role": "TA" }} , 
 	{ "name": "out_r_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_last_V", "role": "" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_r_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_data", "role": "LID" }} , 
 	{ "name": "in_r_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_data", "role": "ADY" }} , 
 	{ "name": "out_r_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_last_V", "role": "D" }} , 
 	{ "name": "out_r_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_last_V", "role": "Y" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "7", "329", "334", "335", "336", "337", "338"],
		"CDFG" : "myproject_axi",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "96019", "EstimateLatencyMax" : "96170",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Loop_1_proc574_U0"}],
		"OutputProcess" : [
			{"ID" : "329", "Name" : "Loop_2_proc_U0"}],
		"Port" : [
			{"Name" : "in_data", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Loop_1_proc574_U0", "Port" : "in_data"}]},
			{"Name" : "in_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Loop_1_proc574_U0", "Port" : "in_last_V"}]},
			{"Name" : "out_data", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "329", "SubInstance" : "Loop_2_proc_U0", "Port" : "out_data"}]},
			{"Name" : "out_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "329", "SubInstance" : "Loop_2_proc_U0", "Port" : "out_last_V"}]},
			{"Name" : "kernel_data_V_8473", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_8473"}]},
			{"Name" : "kernel_data_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_0"}]},
			{"Name" : "kernel_data_V_1466", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1466"}]},
			{"Name" : "kernel_data_V_2467", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2467"}]},
			{"Name" : "kernel_data_V_3468", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3468"}]},
			{"Name" : "kernel_data_V_4469", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4469"}]},
			{"Name" : "kernel_data_V_5470", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5470"}]},
			{"Name" : "kernel_data_V_6471", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6471"}]},
			{"Name" : "kernel_data_V_7472", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_7472"}]},
			{"Name" : "w2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "w2_V"}]},
			{"Name" : "pX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pX_3"}]},
			{"Name" : "sX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sX_3"}]},
			{"Name" : "pY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pY_3"}]},
			{"Name" : "sY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sY_3"}]},
			{"Name" : "line_buffer_Array_V_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_0_0"}]},
			{"Name" : "line_buffer_Array_V_1465_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_1465_0"}]},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pX"}]},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sX"}]},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pY"}]},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sY"}]},
			{"Name" : "kernel_data_V_9_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_9_8"}]},
			{"Name" : "kernel_data_V_9_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_9_9"}]},
			{"Name" : "kernel_data_V_9_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_9_10"}]},
			{"Name" : "kernel_data_V_9_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_9_11"}]},
			{"Name" : "kernel_data_V_9_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_9_12"}]},
			{"Name" : "kernel_data_V_9_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_9_13"}]},
			{"Name" : "kernel_data_V_9_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_9_14"}]},
			{"Name" : "kernel_data_V_9_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_9_15"}]},
			{"Name" : "kernel_data_V_9_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_9_24"}]},
			{"Name" : "kernel_data_V_9_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_9_25"}]},
			{"Name" : "kernel_data_V_9_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_9_26"}]},
			{"Name" : "kernel_data_V_9_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_9_27"}]},
			{"Name" : "kernel_data_V_9_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_9_28"}]},
			{"Name" : "kernel_data_V_9_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_9_29"}]},
			{"Name" : "kernel_data_V_9_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_9_30"}]},
			{"Name" : "kernel_data_V_9_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_9_31"}]},
			{"Name" : "line_buffer_Array_V_9_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_9_0_0"}]},
			{"Name" : "line_buffer_Array_V_9_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_9_0_1"}]},
			{"Name" : "line_buffer_Array_V_9_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_9_0_2"}]},
			{"Name" : "line_buffer_Array_V_9_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_9_0_3"}]},
			{"Name" : "line_buffer_Array_V_9_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_9_0_4"}]},
			{"Name" : "line_buffer_Array_V_9_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_9_0_5"}]},
			{"Name" : "line_buffer_Array_V_9_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_9_0_6"}]},
			{"Name" : "line_buffer_Array_V_9_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_9_0_7"}]},
			{"Name" : "kernel_data_V_6_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_0"}]},
			{"Name" : "kernel_data_V_6_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_1"}]},
			{"Name" : "kernel_data_V_6_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_2"}]},
			{"Name" : "kernel_data_V_6_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_3"}]},
			{"Name" : "kernel_data_V_6_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_4"}]},
			{"Name" : "kernel_data_V_6_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_5"}]},
			{"Name" : "kernel_data_V_6_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_6"}]},
			{"Name" : "kernel_data_V_6_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_7"}]},
			{"Name" : "kernel_data_V_6_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_8"}]},
			{"Name" : "kernel_data_V_6_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_9"}]},
			{"Name" : "kernel_data_V_6_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_10"}]},
			{"Name" : "kernel_data_V_6_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_11"}]},
			{"Name" : "kernel_data_V_6_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_12"}]},
			{"Name" : "kernel_data_V_6_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_13"}]},
			{"Name" : "kernel_data_V_6_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_14"}]},
			{"Name" : "kernel_data_V_6_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_15"}]},
			{"Name" : "kernel_data_V_6_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_16"}]},
			{"Name" : "kernel_data_V_6_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_17"}]},
			{"Name" : "kernel_data_V_6_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_18"}]},
			{"Name" : "kernel_data_V_6_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_19"}]},
			{"Name" : "kernel_data_V_6_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_20"}]},
			{"Name" : "kernel_data_V_6_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_21"}]},
			{"Name" : "kernel_data_V_6_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_22"}]},
			{"Name" : "kernel_data_V_6_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_23"}]},
			{"Name" : "kernel_data_V_6_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_24"}]},
			{"Name" : "kernel_data_V_6_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_25"}]},
			{"Name" : "kernel_data_V_6_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_26"}]},
			{"Name" : "kernel_data_V_6_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_27"}]},
			{"Name" : "kernel_data_V_6_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_28"}]},
			{"Name" : "kernel_data_V_6_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_29"}]},
			{"Name" : "kernel_data_V_6_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_30"}]},
			{"Name" : "kernel_data_V_6_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_31"}]},
			{"Name" : "kernel_data_V_6_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_32"}]},
			{"Name" : "kernel_data_V_6_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_33"}]},
			{"Name" : "kernel_data_V_6_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_34"}]},
			{"Name" : "kernel_data_V_6_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_35"}]},
			{"Name" : "kernel_data_V_6_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_36"}]},
			{"Name" : "kernel_data_V_6_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_37"}]},
			{"Name" : "kernel_data_V_6_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_38"}]},
			{"Name" : "kernel_data_V_6_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_39"}]},
			{"Name" : "kernel_data_V_6_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_40"}]},
			{"Name" : "kernel_data_V_6_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_41"}]},
			{"Name" : "kernel_data_V_6_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_42"}]},
			{"Name" : "kernel_data_V_6_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_43"}]},
			{"Name" : "kernel_data_V_6_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_44"}]},
			{"Name" : "kernel_data_V_6_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_45"}]},
			{"Name" : "kernel_data_V_6_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_46"}]},
			{"Name" : "kernel_data_V_6_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_47"}]},
			{"Name" : "kernel_data_V_6_48", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_48"}]},
			{"Name" : "kernel_data_V_6_49", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_49"}]},
			{"Name" : "kernel_data_V_6_50", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_50"}]},
			{"Name" : "kernel_data_V_6_51", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_51"}]},
			{"Name" : "kernel_data_V_6_52", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_52"}]},
			{"Name" : "kernel_data_V_6_53", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_53"}]},
			{"Name" : "kernel_data_V_6_54", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_54"}]},
			{"Name" : "kernel_data_V_6_55", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_55"}]},
			{"Name" : "kernel_data_V_6_56", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_56"}]},
			{"Name" : "kernel_data_V_6_57", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_57"}]},
			{"Name" : "kernel_data_V_6_58", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_58"}]},
			{"Name" : "kernel_data_V_6_59", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_59"}]},
			{"Name" : "kernel_data_V_6_60", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_60"}]},
			{"Name" : "kernel_data_V_6_61", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_61"}]},
			{"Name" : "kernel_data_V_6_62", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_62"}]},
			{"Name" : "kernel_data_V_6_63", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_63"}]},
			{"Name" : "kernel_data_V_6_64", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_64"}]},
			{"Name" : "kernel_data_V_6_65", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_65"}]},
			{"Name" : "kernel_data_V_6_66", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_66"}]},
			{"Name" : "kernel_data_V_6_67", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_67"}]},
			{"Name" : "kernel_data_V_6_68", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_68"}]},
			{"Name" : "kernel_data_V_6_69", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_69"}]},
			{"Name" : "kernel_data_V_6_70", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_70"}]},
			{"Name" : "kernel_data_V_6_71", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_6_71"}]},
			{"Name" : "w5_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "w5_V"}]},
			{"Name" : "pX_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pX_6"}]},
			{"Name" : "sX_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sX_6"}]},
			{"Name" : "pY_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pY_6"}]},
			{"Name" : "sY_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sY_6"}]},
			{"Name" : "line_buffer_Array_V_6_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_6_0_0"}]},
			{"Name" : "line_buffer_Array_V_6_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_6_1_0"}]},
			{"Name" : "line_buffer_Array_V_6_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_6_0_1"}]},
			{"Name" : "line_buffer_Array_V_6_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_6_1_1"}]},
			{"Name" : "line_buffer_Array_V_6_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_6_0_2"}]},
			{"Name" : "line_buffer_Array_V_6_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_6_1_2"}]},
			{"Name" : "line_buffer_Array_V_6_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_6_0_3"}]},
			{"Name" : "line_buffer_Array_V_6_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_6_1_3"}]},
			{"Name" : "line_buffer_Array_V_6_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_6_0_4"}]},
			{"Name" : "line_buffer_Array_V_6_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_6_1_4"}]},
			{"Name" : "line_buffer_Array_V_6_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_6_0_5"}]},
			{"Name" : "line_buffer_Array_V_6_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_6_1_5"}]},
			{"Name" : "line_buffer_Array_V_6_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_6_0_6"}]},
			{"Name" : "line_buffer_Array_V_6_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_6_1_6"}]},
			{"Name" : "line_buffer_Array_V_6_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_6_0_7"}]},
			{"Name" : "line_buffer_Array_V_6_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_6_1_7"}]},
			{"Name" : "pX_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pX_4"}]},
			{"Name" : "sX_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sX_4"}]},
			{"Name" : "pY_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pY_4"}]},
			{"Name" : "sY_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sY_4"}]},
			{"Name" : "kernel_data_V_8_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_8_4"}]},
			{"Name" : "kernel_data_V_8_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_8_5"}]},
			{"Name" : "kernel_data_V_8_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_8_6"}]},
			{"Name" : "kernel_data_V_8_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_8_7"}]},
			{"Name" : "kernel_data_V_8_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_8_12"}]},
			{"Name" : "kernel_data_V_8_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_8_13"}]},
			{"Name" : "kernel_data_V_8_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_8_14"}]},
			{"Name" : "kernel_data_V_8_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_8_15"}]},
			{"Name" : "line_buffer_Array_V_8_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_8_0_0"}]},
			{"Name" : "line_buffer_Array_V_8_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_8_0_1"}]},
			{"Name" : "line_buffer_Array_V_8_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_8_0_2"}]},
			{"Name" : "line_buffer_Array_V_8_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_8_0_3"}]},
			{"Name" : "kernel_data_V_3_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_0"}]},
			{"Name" : "kernel_data_V_3_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_1"}]},
			{"Name" : "kernel_data_V_3_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_2"}]},
			{"Name" : "kernel_data_V_3_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_3"}]},
			{"Name" : "kernel_data_V_3_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_4"}]},
			{"Name" : "kernel_data_V_3_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_5"}]},
			{"Name" : "kernel_data_V_3_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_6"}]},
			{"Name" : "kernel_data_V_3_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_7"}]},
			{"Name" : "kernel_data_V_3_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_8"}]},
			{"Name" : "kernel_data_V_3_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_9"}]},
			{"Name" : "kernel_data_V_3_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_10"}]},
			{"Name" : "kernel_data_V_3_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_11"}]},
			{"Name" : "kernel_data_V_3_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_12"}]},
			{"Name" : "kernel_data_V_3_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_13"}]},
			{"Name" : "kernel_data_V_3_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_14"}]},
			{"Name" : "kernel_data_V_3_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_15"}]},
			{"Name" : "kernel_data_V_3_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_16"}]},
			{"Name" : "kernel_data_V_3_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_17"}]},
			{"Name" : "kernel_data_V_3_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_18"}]},
			{"Name" : "kernel_data_V_3_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_19"}]},
			{"Name" : "kernel_data_V_3_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_20"}]},
			{"Name" : "kernel_data_V_3_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_21"}]},
			{"Name" : "kernel_data_V_3_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_22"}]},
			{"Name" : "kernel_data_V_3_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_23"}]},
			{"Name" : "kernel_data_V_3_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_24"}]},
			{"Name" : "kernel_data_V_3_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_25"}]},
			{"Name" : "kernel_data_V_3_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_26"}]},
			{"Name" : "kernel_data_V_3_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_27"}]},
			{"Name" : "kernel_data_V_3_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_28"}]},
			{"Name" : "kernel_data_V_3_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_29"}]},
			{"Name" : "kernel_data_V_3_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_30"}]},
			{"Name" : "kernel_data_V_3_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_31"}]},
			{"Name" : "kernel_data_V_3_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_32"}]},
			{"Name" : "kernel_data_V_3_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_33"}]},
			{"Name" : "kernel_data_V_3_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_34"}]},
			{"Name" : "kernel_data_V_3_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_3_35"}]},
			{"Name" : "w8_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "w8_V"}]},
			{"Name" : "pX_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pX_9"}]},
			{"Name" : "sX_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sX_9"}]},
			{"Name" : "pY_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pY_9"}]},
			{"Name" : "sY_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sY_9"}]},
			{"Name" : "line_buffer_Array_V_3_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_3_0_0"}]},
			{"Name" : "line_buffer_Array_V_3_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_3_1_0"}]},
			{"Name" : "line_buffer_Array_V_3_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_3_0_1"}]},
			{"Name" : "line_buffer_Array_V_3_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_3_1_1"}]},
			{"Name" : "line_buffer_Array_V_3_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_3_0_2"}]},
			{"Name" : "line_buffer_Array_V_3_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_3_1_2"}]},
			{"Name" : "line_buffer_Array_V_3_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_3_0_3"}]},
			{"Name" : "line_buffer_Array_V_3_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_3_1_3"}]},
			{"Name" : "pX_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pX_5"}]},
			{"Name" : "sX_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sX_5"}]},
			{"Name" : "pY_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pY_5"}]},
			{"Name" : "sY_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sY_5"}]},
			{"Name" : "kernel_data_V_7_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_7_4"}]},
			{"Name" : "kernel_data_V_7_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_7_5"}]},
			{"Name" : "kernel_data_V_7_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_7_6"}]},
			{"Name" : "kernel_data_V_7_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_7_7"}]},
			{"Name" : "kernel_data_V_7_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_7_12"}]},
			{"Name" : "kernel_data_V_7_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_7_13"}]},
			{"Name" : "kernel_data_V_7_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_7_14"}]},
			{"Name" : "kernel_data_V_7_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_7_15"}]},
			{"Name" : "line_buffer_Array_V_7_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_7_0_0"}]},
			{"Name" : "line_buffer_Array_V_7_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_7_0_1"}]},
			{"Name" : "line_buffer_Array_V_7_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_7_0_2"}]},
			{"Name" : "line_buffer_Array_V_7_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_7_0_3"}]},
			{"Name" : "kernel_data_V_1_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_0"}]},
			{"Name" : "kernel_data_V_1_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_1"}]},
			{"Name" : "kernel_data_V_1_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_2"}]},
			{"Name" : "kernel_data_V_1_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_3"}]},
			{"Name" : "kernel_data_V_1_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_4"}]},
			{"Name" : "kernel_data_V_1_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_5"}]},
			{"Name" : "kernel_data_V_1_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_6"}]},
			{"Name" : "kernel_data_V_1_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_7"}]},
			{"Name" : "kernel_data_V_1_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_8"}]},
			{"Name" : "kernel_data_V_1_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_9"}]},
			{"Name" : "kernel_data_V_1_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_10"}]},
			{"Name" : "kernel_data_V_1_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_11"}]},
			{"Name" : "kernel_data_V_1_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_12"}]},
			{"Name" : "kernel_data_V_1_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_13"}]},
			{"Name" : "kernel_data_V_1_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_14"}]},
			{"Name" : "kernel_data_V_1_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_15"}]},
			{"Name" : "kernel_data_V_1_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_16"}]},
			{"Name" : "kernel_data_V_1_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_17"}]},
			{"Name" : "kernel_data_V_1_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_18"}]},
			{"Name" : "kernel_data_V_1_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_19"}]},
			{"Name" : "kernel_data_V_1_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_20"}]},
			{"Name" : "kernel_data_V_1_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_21"}]},
			{"Name" : "kernel_data_V_1_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_22"}]},
			{"Name" : "kernel_data_V_1_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_23"}]},
			{"Name" : "kernel_data_V_1_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_24"}]},
			{"Name" : "kernel_data_V_1_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_25"}]},
			{"Name" : "kernel_data_V_1_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_26"}]},
			{"Name" : "kernel_data_V_1_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_27"}]},
			{"Name" : "kernel_data_V_1_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_28"}]},
			{"Name" : "kernel_data_V_1_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_29"}]},
			{"Name" : "kernel_data_V_1_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_30"}]},
			{"Name" : "kernel_data_V_1_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_31"}]},
			{"Name" : "kernel_data_V_1_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_32"}]},
			{"Name" : "kernel_data_V_1_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_33"}]},
			{"Name" : "kernel_data_V_1_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_34"}]},
			{"Name" : "kernel_data_V_1_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_1_35"}]},
			{"Name" : "w11_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "w11_V"}]},
			{"Name" : "pX_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pX_2"}]},
			{"Name" : "sX_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sX_2"}]},
			{"Name" : "pY_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pY_2"}]},
			{"Name" : "sY_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sY_2"}]},
			{"Name" : "line_buffer_Array_V_1_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_1_0_0"}]},
			{"Name" : "line_buffer_Array_V_1_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_1_1_0"}]},
			{"Name" : "line_buffer_Array_V_1_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_1_0_1"}]},
			{"Name" : "line_buffer_Array_V_1_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_1_1_1"}]},
			{"Name" : "line_buffer_Array_V_1_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_1_0_2"}]},
			{"Name" : "line_buffer_Array_V_1_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_1_1_2"}]},
			{"Name" : "line_buffer_Array_V_1_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_1_0_3"}]},
			{"Name" : "line_buffer_Array_V_1_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_1_1_3"}]},
			{"Name" : "kernel_data_V_2_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_0"}]},
			{"Name" : "kernel_data_V_2_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_1"}]},
			{"Name" : "kernel_data_V_2_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_2"}]},
			{"Name" : "kernel_data_V_2_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_3"}]},
			{"Name" : "kernel_data_V_2_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_4"}]},
			{"Name" : "kernel_data_V_2_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_5"}]},
			{"Name" : "kernel_data_V_2_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_6"}]},
			{"Name" : "kernel_data_V_2_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_7"}]},
			{"Name" : "kernel_data_V_2_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_8"}]},
			{"Name" : "kernel_data_V_2_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_9"}]},
			{"Name" : "kernel_data_V_2_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_10"}]},
			{"Name" : "kernel_data_V_2_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_11"}]},
			{"Name" : "kernel_data_V_2_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_12"}]},
			{"Name" : "kernel_data_V_2_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_13"}]},
			{"Name" : "kernel_data_V_2_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_14"}]},
			{"Name" : "kernel_data_V_2_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_15"}]},
			{"Name" : "kernel_data_V_2_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_16"}]},
			{"Name" : "kernel_data_V_2_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_17"}]},
			{"Name" : "kernel_data_V_2_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_18"}]},
			{"Name" : "kernel_data_V_2_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_19"}]},
			{"Name" : "kernel_data_V_2_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_20"}]},
			{"Name" : "kernel_data_V_2_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_21"}]},
			{"Name" : "kernel_data_V_2_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_22"}]},
			{"Name" : "kernel_data_V_2_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_23"}]},
			{"Name" : "kernel_data_V_2_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_24"}]},
			{"Name" : "kernel_data_V_2_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_25"}]},
			{"Name" : "kernel_data_V_2_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_26"}]},
			{"Name" : "kernel_data_V_2_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_27"}]},
			{"Name" : "kernel_data_V_2_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_28"}]},
			{"Name" : "kernel_data_V_2_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_29"}]},
			{"Name" : "kernel_data_V_2_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_30"}]},
			{"Name" : "kernel_data_V_2_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_31"}]},
			{"Name" : "kernel_data_V_2_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_32"}]},
			{"Name" : "kernel_data_V_2_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_33"}]},
			{"Name" : "kernel_data_V_2_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_34"}]},
			{"Name" : "kernel_data_V_2_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_2_35"}]},
			{"Name" : "w14_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "w14_V"}]},
			{"Name" : "pX_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pX_1"}]},
			{"Name" : "sX_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sX_1"}]},
			{"Name" : "pY_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pY_1"}]},
			{"Name" : "sY_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sY_1"}]},
			{"Name" : "line_buffer_Array_V_2_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_2_0_0"}]},
			{"Name" : "line_buffer_Array_V_2_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_2_1_0"}]},
			{"Name" : "line_buffer_Array_V_2_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_2_0_1"}]},
			{"Name" : "line_buffer_Array_V_2_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_2_1_1"}]},
			{"Name" : "line_buffer_Array_V_2_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_2_0_2"}]},
			{"Name" : "line_buffer_Array_V_2_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_2_1_2"}]},
			{"Name" : "line_buffer_Array_V_2_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_2_0_3"}]},
			{"Name" : "line_buffer_Array_V_2_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_2_1_3"}]},
			{"Name" : "kernel_data_V_4_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_0"}]},
			{"Name" : "kernel_data_V_4_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_1"}]},
			{"Name" : "kernel_data_V_4_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_2"}]},
			{"Name" : "kernel_data_V_4_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_3"}]},
			{"Name" : "kernel_data_V_4_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_4"}]},
			{"Name" : "kernel_data_V_4_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_5"}]},
			{"Name" : "kernel_data_V_4_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_6"}]},
			{"Name" : "kernel_data_V_4_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_7"}]},
			{"Name" : "kernel_data_V_4_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_8"}]},
			{"Name" : "kernel_data_V_4_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_9"}]},
			{"Name" : "kernel_data_V_4_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_10"}]},
			{"Name" : "kernel_data_V_4_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_11"}]},
			{"Name" : "kernel_data_V_4_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_12"}]},
			{"Name" : "kernel_data_V_4_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_13"}]},
			{"Name" : "kernel_data_V_4_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_14"}]},
			{"Name" : "kernel_data_V_4_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_15"}]},
			{"Name" : "kernel_data_V_4_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_16"}]},
			{"Name" : "kernel_data_V_4_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_17"}]},
			{"Name" : "kernel_data_V_4_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_18"}]},
			{"Name" : "kernel_data_V_4_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_19"}]},
			{"Name" : "kernel_data_V_4_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_20"}]},
			{"Name" : "kernel_data_V_4_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_21"}]},
			{"Name" : "kernel_data_V_4_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_22"}]},
			{"Name" : "kernel_data_V_4_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_23"}]},
			{"Name" : "kernel_data_V_4_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_24"}]},
			{"Name" : "kernel_data_V_4_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_25"}]},
			{"Name" : "kernel_data_V_4_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_26"}]},
			{"Name" : "kernel_data_V_4_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_27"}]},
			{"Name" : "kernel_data_V_4_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_28"}]},
			{"Name" : "kernel_data_V_4_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_29"}]},
			{"Name" : "kernel_data_V_4_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_30"}]},
			{"Name" : "kernel_data_V_4_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_31"}]},
			{"Name" : "kernel_data_V_4_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_32"}]},
			{"Name" : "kernel_data_V_4_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_33"}]},
			{"Name" : "kernel_data_V_4_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_34"}]},
			{"Name" : "kernel_data_V_4_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_4_35"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "w17_V"}]},
			{"Name" : "pX_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pX_8"}]},
			{"Name" : "sX_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sX_8"}]},
			{"Name" : "pY_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pY_8"}]},
			{"Name" : "sY_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sY_8"}]},
			{"Name" : "line_buffer_Array_V_4_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_4_0_0"}]},
			{"Name" : "line_buffer_Array_V_4_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_4_1_0"}]},
			{"Name" : "line_buffer_Array_V_4_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_4_0_1"}]},
			{"Name" : "line_buffer_Array_V_4_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_4_1_1"}]},
			{"Name" : "line_buffer_Array_V_4_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_4_0_2"}]},
			{"Name" : "line_buffer_Array_V_4_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_4_1_2"}]},
			{"Name" : "line_buffer_Array_V_4_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_4_0_3"}]},
			{"Name" : "line_buffer_Array_V_4_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_4_1_3"}]},
			{"Name" : "kernel_data_V_5_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_0"}]},
			{"Name" : "kernel_data_V_5_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_1"}]},
			{"Name" : "kernel_data_V_5_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_2"}]},
			{"Name" : "kernel_data_V_5_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_3"}]},
			{"Name" : "kernel_data_V_5_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_4"}]},
			{"Name" : "kernel_data_V_5_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_5"}]},
			{"Name" : "kernel_data_V_5_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_6"}]},
			{"Name" : "kernel_data_V_5_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_7"}]},
			{"Name" : "kernel_data_V_5_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_8"}]},
			{"Name" : "kernel_data_V_5_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_9"}]},
			{"Name" : "kernel_data_V_5_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_10"}]},
			{"Name" : "kernel_data_V_5_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_11"}]},
			{"Name" : "kernel_data_V_5_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_12"}]},
			{"Name" : "kernel_data_V_5_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_13"}]},
			{"Name" : "kernel_data_V_5_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_14"}]},
			{"Name" : "kernel_data_V_5_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_15"}]},
			{"Name" : "kernel_data_V_5_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_16"}]},
			{"Name" : "kernel_data_V_5_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_17"}]},
			{"Name" : "kernel_data_V_5_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_18"}]},
			{"Name" : "kernel_data_V_5_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_19"}]},
			{"Name" : "kernel_data_V_5_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_20"}]},
			{"Name" : "kernel_data_V_5_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_21"}]},
			{"Name" : "kernel_data_V_5_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_22"}]},
			{"Name" : "kernel_data_V_5_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_23"}]},
			{"Name" : "kernel_data_V_5_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_24"}]},
			{"Name" : "kernel_data_V_5_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_25"}]},
			{"Name" : "kernel_data_V_5_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_26"}]},
			{"Name" : "kernel_data_V_5_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_27"}]},
			{"Name" : "kernel_data_V_5_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_28"}]},
			{"Name" : "kernel_data_V_5_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_29"}]},
			{"Name" : "kernel_data_V_5_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_30"}]},
			{"Name" : "kernel_data_V_5_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_31"}]},
			{"Name" : "kernel_data_V_5_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_32"}]},
			{"Name" : "kernel_data_V_5_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_33"}]},
			{"Name" : "kernel_data_V_5_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_34"}]},
			{"Name" : "kernel_data_V_5_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_35"}]},
			{"Name" : "kernel_data_V_5_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_36"}]},
			{"Name" : "kernel_data_V_5_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_37"}]},
			{"Name" : "kernel_data_V_5_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_38"}]},
			{"Name" : "kernel_data_V_5_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_39"}]},
			{"Name" : "kernel_data_V_5_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_40"}]},
			{"Name" : "kernel_data_V_5_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_41"}]},
			{"Name" : "kernel_data_V_5_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_42"}]},
			{"Name" : "kernel_data_V_5_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_43"}]},
			{"Name" : "kernel_data_V_5_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_44"}]},
			{"Name" : "kernel_data_V_5_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_45"}]},
			{"Name" : "kernel_data_V_5_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_46"}]},
			{"Name" : "kernel_data_V_5_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_47"}]},
			{"Name" : "kernel_data_V_5_48", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_48"}]},
			{"Name" : "kernel_data_V_5_49", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_49"}]},
			{"Name" : "kernel_data_V_5_50", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_50"}]},
			{"Name" : "kernel_data_V_5_51", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_51"}]},
			{"Name" : "kernel_data_V_5_52", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_52"}]},
			{"Name" : "kernel_data_V_5_53", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_53"}]},
			{"Name" : "kernel_data_V_5_54", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_54"}]},
			{"Name" : "kernel_data_V_5_55", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_55"}]},
			{"Name" : "kernel_data_V_5_56", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_56"}]},
			{"Name" : "kernel_data_V_5_57", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_57"}]},
			{"Name" : "kernel_data_V_5_58", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_58"}]},
			{"Name" : "kernel_data_V_5_59", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_59"}]},
			{"Name" : "kernel_data_V_5_60", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_60"}]},
			{"Name" : "kernel_data_V_5_61", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_61"}]},
			{"Name" : "kernel_data_V_5_62", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_62"}]},
			{"Name" : "kernel_data_V_5_63", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_63"}]},
			{"Name" : "kernel_data_V_5_64", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_64"}]},
			{"Name" : "kernel_data_V_5_65", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_65"}]},
			{"Name" : "kernel_data_V_5_66", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_66"}]},
			{"Name" : "kernel_data_V_5_67", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_67"}]},
			{"Name" : "kernel_data_V_5_68", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_68"}]},
			{"Name" : "kernel_data_V_5_69", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_69"}]},
			{"Name" : "kernel_data_V_5_70", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_70"}]},
			{"Name" : "kernel_data_V_5_71", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "kernel_data_V_5_71"}]},
			{"Name" : "w20_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "w20_V"}]},
			{"Name" : "pX_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pX_7"}]},
			{"Name" : "sX_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sX_7"}]},
			{"Name" : "pY_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "pY_7"}]},
			{"Name" : "sY_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "sY_7"}]},
			{"Name" : "line_buffer_Array_V_5_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_5_0_0"}]},
			{"Name" : "line_buffer_Array_V_5_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_5_1_0"}]},
			{"Name" : "line_buffer_Array_V_5_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_5_0_1"}]},
			{"Name" : "line_buffer_Array_V_5_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_5_1_1"}]},
			{"Name" : "line_buffer_Array_V_5_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_5_0_2"}]},
			{"Name" : "line_buffer_Array_V_5_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_5_1_2"}]},
			{"Name" : "line_buffer_Array_V_5_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_5_0_3"}]},
			{"Name" : "line_buffer_Array_V_5_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_5_1_3"}]},
			{"Name" : "line_buffer_Array_V_5_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_5_0_4"}]},
			{"Name" : "line_buffer_Array_V_5_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_5_1_4"}]},
			{"Name" : "line_buffer_Array_V_5_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_5_0_5"}]},
			{"Name" : "line_buffer_Array_V_5_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_5_1_5"}]},
			{"Name" : "line_buffer_Array_V_5_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_5_0_6"}]},
			{"Name" : "line_buffer_Array_V_5_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_5_1_6"}]},
			{"Name" : "line_buffer_Array_V_5_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_5_0_7"}]},
			{"Name" : "line_buffer_Array_V_5_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "myproject_U0", "Port" : "line_buffer_Array_V_5_1_7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_1_proc574_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6"],
		"CDFG" : "Loop_1_proc574",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7169", "EstimateLatencyMax" : "7169",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "in_local_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "334",
				"BlockSignal" : [
					{"Name" : "in_local_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_data", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "is_last_0_i_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "329", "DependentChan" : "335",
				"BlockSignal" : [
					{"Name" : "is_last_0_i_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_1_proc574_U0.myproject_axi_fpext_32ns_64_3_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_1_proc574_U0.myproject_axi_ashr_54ns_32ns_54_2_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_1_proc574_U0.myproject_axi_shl_32ns_32s_32_2_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_1_proc574_U0.regslice_both_in_last_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_1_proc574_U0.regslice_both_in_data_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_U0", "Parent" : "0", "Child" : ["8", "9", "22", "23", "33", "34", "58", "59", "65", "66", "82", "83", "89", "90", "106", "107", "108", "109", "125", "126", "127", "128", "148", "149", "150", "151", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328"],
		"CDFG" : "myproject",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "96014", "EstimateLatencyMax" : "96165",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_myproject_U0_U",
		"InputProcess" : [
			{"ID" : "8", "Name" : "zeropad2d_cl_array_array_ap_fixed_1u_config22_U0"}],
		"OutputProcess" : [
			{"ID" : "172", "Name" : "relu_array_array_ap_fixed_1u_relu_config21_U0"}],
		"Port" : [
			{"Name" : "conv2d_147_input_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "334",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "zeropad2d_cl_array_array_ap_fixed_1u_config22_U0", "Port" : "data_V_data_V"}]},
			{"Name" : "layer21_out_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "329", "DependentChan" : "336",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "relu_array_array_ap_fixed_1u_relu_config21_U0", "Port" : "res_V_data_V"}]},
			{"Name" : "kernel_data_V_8473", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config2_U0", "Port" : "kernel_data_V_8473"}]},
			{"Name" : "kernel_data_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config2_U0", "Port" : "kernel_data_V_0"}]},
			{"Name" : "kernel_data_V_1466", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config2_U0", "Port" : "kernel_data_V_1466"}]},
			{"Name" : "kernel_data_V_2467", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config2_U0", "Port" : "kernel_data_V_2467"}]},
			{"Name" : "kernel_data_V_3468", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config2_U0", "Port" : "kernel_data_V_3468"}]},
			{"Name" : "kernel_data_V_4469", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config2_U0", "Port" : "kernel_data_V_4469"}]},
			{"Name" : "kernel_data_V_5470", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config2_U0", "Port" : "kernel_data_V_5470"}]},
			{"Name" : "kernel_data_V_6471", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config2_U0", "Port" : "kernel_data_V_6471"}]},
			{"Name" : "kernel_data_V_7472", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config2_U0", "Port" : "kernel_data_V_7472"}]},
			{"Name" : "w2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config2_U0", "Port" : "w2_V"}]},
			{"Name" : "pX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config2_U0", "Port" : "pX_3"}]},
			{"Name" : "sX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config2_U0", "Port" : "sX_3"}]},
			{"Name" : "pY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config2_U0", "Port" : "pY_3"}]},
			{"Name" : "sY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config2_U0", "Port" : "sY_3"}]},
			{"Name" : "line_buffer_Array_V_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config2_U0", "Port" : "line_buffer_Array_V_0_0"}]},
			{"Name" : "line_buffer_Array_V_1465_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config2_U0", "Port" : "line_buffer_Array_V_1465_0"}]},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "pX"}]},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "sX"}]},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "pY"}]},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "sY"}]},
			{"Name" : "kernel_data_V_9_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "kernel_data_V_9_8"}]},
			{"Name" : "kernel_data_V_9_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "kernel_data_V_9_9"}]},
			{"Name" : "kernel_data_V_9_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "kernel_data_V_9_10"}]},
			{"Name" : "kernel_data_V_9_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "kernel_data_V_9_11"}]},
			{"Name" : "kernel_data_V_9_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "kernel_data_V_9_12"}]},
			{"Name" : "kernel_data_V_9_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "kernel_data_V_9_13"}]},
			{"Name" : "kernel_data_V_9_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "kernel_data_V_9_14"}]},
			{"Name" : "kernel_data_V_9_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "kernel_data_V_9_15"}]},
			{"Name" : "kernel_data_V_9_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "kernel_data_V_9_24"}]},
			{"Name" : "kernel_data_V_9_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "kernel_data_V_9_25"}]},
			{"Name" : "kernel_data_V_9_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "kernel_data_V_9_26"}]},
			{"Name" : "kernel_data_V_9_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "kernel_data_V_9_27"}]},
			{"Name" : "kernel_data_V_9_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "kernel_data_V_9_28"}]},
			{"Name" : "kernel_data_V_9_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "kernel_data_V_9_29"}]},
			{"Name" : "kernel_data_V_9_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "kernel_data_V_9_30"}]},
			{"Name" : "kernel_data_V_9_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "kernel_data_V_9_31"}]},
			{"Name" : "line_buffer_Array_V_9_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "line_buffer_Array_V_9_0_0"}]},
			{"Name" : "line_buffer_Array_V_9_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "line_buffer_Array_V_9_0_1"}]},
			{"Name" : "line_buffer_Array_V_9_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "line_buffer_Array_V_9_0_2"}]},
			{"Name" : "line_buffer_Array_V_9_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "line_buffer_Array_V_9_0_3"}]},
			{"Name" : "line_buffer_Array_V_9_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "line_buffer_Array_V_9_0_4"}]},
			{"Name" : "line_buffer_Array_V_9_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "line_buffer_Array_V_9_0_5"}]},
			{"Name" : "line_buffer_Array_V_9_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "line_buffer_Array_V_9_0_6"}]},
			{"Name" : "line_buffer_Array_V_9_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Port" : "line_buffer_Array_V_9_0_7"}]},
			{"Name" : "kernel_data_V_6_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_0"}]},
			{"Name" : "kernel_data_V_6_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_1"}]},
			{"Name" : "kernel_data_V_6_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_2"}]},
			{"Name" : "kernel_data_V_6_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_3"}]},
			{"Name" : "kernel_data_V_6_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_4"}]},
			{"Name" : "kernel_data_V_6_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_5"}]},
			{"Name" : "kernel_data_V_6_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_6"}]},
			{"Name" : "kernel_data_V_6_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_7"}]},
			{"Name" : "kernel_data_V_6_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_8"}]},
			{"Name" : "kernel_data_V_6_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_9"}]},
			{"Name" : "kernel_data_V_6_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_10"}]},
			{"Name" : "kernel_data_V_6_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_11"}]},
			{"Name" : "kernel_data_V_6_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_12"}]},
			{"Name" : "kernel_data_V_6_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_13"}]},
			{"Name" : "kernel_data_V_6_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_14"}]},
			{"Name" : "kernel_data_V_6_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_15"}]},
			{"Name" : "kernel_data_V_6_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_16"}]},
			{"Name" : "kernel_data_V_6_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_17"}]},
			{"Name" : "kernel_data_V_6_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_18"}]},
			{"Name" : "kernel_data_V_6_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_19"}]},
			{"Name" : "kernel_data_V_6_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_20"}]},
			{"Name" : "kernel_data_V_6_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_21"}]},
			{"Name" : "kernel_data_V_6_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_22"}]},
			{"Name" : "kernel_data_V_6_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_23"}]},
			{"Name" : "kernel_data_V_6_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_24"}]},
			{"Name" : "kernel_data_V_6_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_25"}]},
			{"Name" : "kernel_data_V_6_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_26"}]},
			{"Name" : "kernel_data_V_6_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_27"}]},
			{"Name" : "kernel_data_V_6_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_28"}]},
			{"Name" : "kernel_data_V_6_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_29"}]},
			{"Name" : "kernel_data_V_6_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_30"}]},
			{"Name" : "kernel_data_V_6_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_31"}]},
			{"Name" : "kernel_data_V_6_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_32"}]},
			{"Name" : "kernel_data_V_6_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_33"}]},
			{"Name" : "kernel_data_V_6_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_34"}]},
			{"Name" : "kernel_data_V_6_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_35"}]},
			{"Name" : "kernel_data_V_6_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_36"}]},
			{"Name" : "kernel_data_V_6_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_37"}]},
			{"Name" : "kernel_data_V_6_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_38"}]},
			{"Name" : "kernel_data_V_6_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_39"}]},
			{"Name" : "kernel_data_V_6_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_40"}]},
			{"Name" : "kernel_data_V_6_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_41"}]},
			{"Name" : "kernel_data_V_6_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_42"}]},
			{"Name" : "kernel_data_V_6_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_43"}]},
			{"Name" : "kernel_data_V_6_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_44"}]},
			{"Name" : "kernel_data_V_6_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_45"}]},
			{"Name" : "kernel_data_V_6_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_46"}]},
			{"Name" : "kernel_data_V_6_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_47"}]},
			{"Name" : "kernel_data_V_6_48", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_48"}]},
			{"Name" : "kernel_data_V_6_49", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_49"}]},
			{"Name" : "kernel_data_V_6_50", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_50"}]},
			{"Name" : "kernel_data_V_6_51", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_51"}]},
			{"Name" : "kernel_data_V_6_52", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_52"}]},
			{"Name" : "kernel_data_V_6_53", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_53"}]},
			{"Name" : "kernel_data_V_6_54", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_54"}]},
			{"Name" : "kernel_data_V_6_55", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_55"}]},
			{"Name" : "kernel_data_V_6_56", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_56"}]},
			{"Name" : "kernel_data_V_6_57", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_57"}]},
			{"Name" : "kernel_data_V_6_58", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_58"}]},
			{"Name" : "kernel_data_V_6_59", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_59"}]},
			{"Name" : "kernel_data_V_6_60", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_60"}]},
			{"Name" : "kernel_data_V_6_61", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_61"}]},
			{"Name" : "kernel_data_V_6_62", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_62"}]},
			{"Name" : "kernel_data_V_6_63", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_63"}]},
			{"Name" : "kernel_data_V_6_64", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_64"}]},
			{"Name" : "kernel_data_V_6_65", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_65"}]},
			{"Name" : "kernel_data_V_6_66", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_66"}]},
			{"Name" : "kernel_data_V_6_67", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_67"}]},
			{"Name" : "kernel_data_V_6_68", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_68"}]},
			{"Name" : "kernel_data_V_6_69", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_69"}]},
			{"Name" : "kernel_data_V_6_70", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_70"}]},
			{"Name" : "kernel_data_V_6_71", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "kernel_data_V_6_71"}]},
			{"Name" : "w5_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "w5_V"}]},
			{"Name" : "pX_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "pX_6"}]},
			{"Name" : "sX_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "sX_6"}]},
			{"Name" : "pY_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "pY_6"}]},
			{"Name" : "sY_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "sY_6"}]},
			{"Name" : "line_buffer_Array_V_6_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "line_buffer_Array_V_6_0_0"}]},
			{"Name" : "line_buffer_Array_V_6_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "line_buffer_Array_V_6_1_0"}]},
			{"Name" : "line_buffer_Array_V_6_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "line_buffer_Array_V_6_0_1"}]},
			{"Name" : "line_buffer_Array_V_6_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "line_buffer_Array_V_6_1_1"}]},
			{"Name" : "line_buffer_Array_V_6_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "line_buffer_Array_V_6_0_2"}]},
			{"Name" : "line_buffer_Array_V_6_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "line_buffer_Array_V_6_1_2"}]},
			{"Name" : "line_buffer_Array_V_6_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "line_buffer_Array_V_6_0_3"}]},
			{"Name" : "line_buffer_Array_V_6_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "line_buffer_Array_V_6_1_3"}]},
			{"Name" : "line_buffer_Array_V_6_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "line_buffer_Array_V_6_0_4"}]},
			{"Name" : "line_buffer_Array_V_6_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "line_buffer_Array_V_6_1_4"}]},
			{"Name" : "line_buffer_Array_V_6_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "line_buffer_Array_V_6_0_5"}]},
			{"Name" : "line_buffer_Array_V_6_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "line_buffer_Array_V_6_1_5"}]},
			{"Name" : "line_buffer_Array_V_6_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "line_buffer_Array_V_6_0_6"}]},
			{"Name" : "line_buffer_Array_V_6_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "line_buffer_Array_V_6_1_6"}]},
			{"Name" : "line_buffer_Array_V_6_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "line_buffer_Array_V_6_0_7"}]},
			{"Name" : "line_buffer_Array_V_6_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Port" : "line_buffer_Array_V_6_1_7"}]},
			{"Name" : "pX_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config7_U0", "Port" : "pX_4"}]},
			{"Name" : "sX_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config7_U0", "Port" : "sX_4"}]},
			{"Name" : "pY_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config7_U0", "Port" : "pY_4"}]},
			{"Name" : "sY_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config7_U0", "Port" : "sY_4"}]},
			{"Name" : "kernel_data_V_8_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config7_U0", "Port" : "kernel_data_V_8_4"}]},
			{"Name" : "kernel_data_V_8_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config7_U0", "Port" : "kernel_data_V_8_5"}]},
			{"Name" : "kernel_data_V_8_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config7_U0", "Port" : "kernel_data_V_8_6"}]},
			{"Name" : "kernel_data_V_8_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config7_U0", "Port" : "kernel_data_V_8_7"}]},
			{"Name" : "kernel_data_V_8_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config7_U0", "Port" : "kernel_data_V_8_12"}]},
			{"Name" : "kernel_data_V_8_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config7_U0", "Port" : "kernel_data_V_8_13"}]},
			{"Name" : "kernel_data_V_8_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config7_U0", "Port" : "kernel_data_V_8_14"}]},
			{"Name" : "kernel_data_V_8_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config7_U0", "Port" : "kernel_data_V_8_15"}]},
			{"Name" : "line_buffer_Array_V_8_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config7_U0", "Port" : "line_buffer_Array_V_8_0_0"}]},
			{"Name" : "line_buffer_Array_V_8_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config7_U0", "Port" : "line_buffer_Array_V_8_0_1"}]},
			{"Name" : "line_buffer_Array_V_8_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config7_U0", "Port" : "line_buffer_Array_V_8_0_2"}]},
			{"Name" : "line_buffer_Array_V_8_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config7_U0", "Port" : "line_buffer_Array_V_8_0_3"}]},
			{"Name" : "kernel_data_V_3_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_0"}]},
			{"Name" : "kernel_data_V_3_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_1"}]},
			{"Name" : "kernel_data_V_3_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_2"}]},
			{"Name" : "kernel_data_V_3_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_3"}]},
			{"Name" : "kernel_data_V_3_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_4"}]},
			{"Name" : "kernel_data_V_3_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_5"}]},
			{"Name" : "kernel_data_V_3_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_6"}]},
			{"Name" : "kernel_data_V_3_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_7"}]},
			{"Name" : "kernel_data_V_3_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_8"}]},
			{"Name" : "kernel_data_V_3_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_9"}]},
			{"Name" : "kernel_data_V_3_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_10"}]},
			{"Name" : "kernel_data_V_3_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_11"}]},
			{"Name" : "kernel_data_V_3_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_12"}]},
			{"Name" : "kernel_data_V_3_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_13"}]},
			{"Name" : "kernel_data_V_3_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_14"}]},
			{"Name" : "kernel_data_V_3_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_15"}]},
			{"Name" : "kernel_data_V_3_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_16"}]},
			{"Name" : "kernel_data_V_3_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_17"}]},
			{"Name" : "kernel_data_V_3_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_18"}]},
			{"Name" : "kernel_data_V_3_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_19"}]},
			{"Name" : "kernel_data_V_3_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_20"}]},
			{"Name" : "kernel_data_V_3_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_21"}]},
			{"Name" : "kernel_data_V_3_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_22"}]},
			{"Name" : "kernel_data_V_3_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_23"}]},
			{"Name" : "kernel_data_V_3_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_24"}]},
			{"Name" : "kernel_data_V_3_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_25"}]},
			{"Name" : "kernel_data_V_3_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_26"}]},
			{"Name" : "kernel_data_V_3_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_27"}]},
			{"Name" : "kernel_data_V_3_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_28"}]},
			{"Name" : "kernel_data_V_3_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_29"}]},
			{"Name" : "kernel_data_V_3_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_30"}]},
			{"Name" : "kernel_data_V_3_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_31"}]},
			{"Name" : "kernel_data_V_3_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_32"}]},
			{"Name" : "kernel_data_V_3_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_33"}]},
			{"Name" : "kernel_data_V_3_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_34"}]},
			{"Name" : "kernel_data_V_3_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "kernel_data_V_3_35"}]},
			{"Name" : "w8_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "w8_V"}]},
			{"Name" : "pX_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "pX_9"}]},
			{"Name" : "sX_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "sX_9"}]},
			{"Name" : "pY_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "pY_9"}]},
			{"Name" : "sY_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "sY_9"}]},
			{"Name" : "line_buffer_Array_V_3_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "line_buffer_Array_V_3_0_0"}]},
			{"Name" : "line_buffer_Array_V_3_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "line_buffer_Array_V_3_1_0"}]},
			{"Name" : "line_buffer_Array_V_3_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "line_buffer_Array_V_3_0_1"}]},
			{"Name" : "line_buffer_Array_V_3_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "line_buffer_Array_V_3_1_1"}]},
			{"Name" : "line_buffer_Array_V_3_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "line_buffer_Array_V_3_0_2"}]},
			{"Name" : "line_buffer_Array_V_3_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "line_buffer_Array_V_3_1_2"}]},
			{"Name" : "line_buffer_Array_V_3_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "line_buffer_Array_V_3_0_3"}]},
			{"Name" : "line_buffer_Array_V_3_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Port" : "line_buffer_Array_V_3_1_3"}]},
			{"Name" : "pX_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config10_U0", "Port" : "pX_5"}]},
			{"Name" : "sX_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config10_U0", "Port" : "sX_5"}]},
			{"Name" : "pY_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config10_U0", "Port" : "pY_5"}]},
			{"Name" : "sY_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config10_U0", "Port" : "sY_5"}]},
			{"Name" : "kernel_data_V_7_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config10_U0", "Port" : "kernel_data_V_7_4"}]},
			{"Name" : "kernel_data_V_7_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config10_U0", "Port" : "kernel_data_V_7_5"}]},
			{"Name" : "kernel_data_V_7_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config10_U0", "Port" : "kernel_data_V_7_6"}]},
			{"Name" : "kernel_data_V_7_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config10_U0", "Port" : "kernel_data_V_7_7"}]},
			{"Name" : "kernel_data_V_7_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config10_U0", "Port" : "kernel_data_V_7_12"}]},
			{"Name" : "kernel_data_V_7_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config10_U0", "Port" : "kernel_data_V_7_13"}]},
			{"Name" : "kernel_data_V_7_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config10_U0", "Port" : "kernel_data_V_7_14"}]},
			{"Name" : "kernel_data_V_7_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config10_U0", "Port" : "kernel_data_V_7_15"}]},
			{"Name" : "line_buffer_Array_V_7_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config10_U0", "Port" : "line_buffer_Array_V_7_0_0"}]},
			{"Name" : "line_buffer_Array_V_7_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config10_U0", "Port" : "line_buffer_Array_V_7_0_1"}]},
			{"Name" : "line_buffer_Array_V_7_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config10_U0", "Port" : "line_buffer_Array_V_7_0_2"}]},
			{"Name" : "line_buffer_Array_V_7_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "pooling2d_cl_array_array_ap_fixed_4u_config10_U0", "Port" : "line_buffer_Array_V_7_0_3"}]},
			{"Name" : "kernel_data_V_1_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_0"}]},
			{"Name" : "kernel_data_V_1_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_1"}]},
			{"Name" : "kernel_data_V_1_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_2"}]},
			{"Name" : "kernel_data_V_1_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_3"}]},
			{"Name" : "kernel_data_V_1_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_4"}]},
			{"Name" : "kernel_data_V_1_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_5"}]},
			{"Name" : "kernel_data_V_1_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_6"}]},
			{"Name" : "kernel_data_V_1_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_7"}]},
			{"Name" : "kernel_data_V_1_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_8"}]},
			{"Name" : "kernel_data_V_1_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_9"}]},
			{"Name" : "kernel_data_V_1_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_10"}]},
			{"Name" : "kernel_data_V_1_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_11"}]},
			{"Name" : "kernel_data_V_1_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_12"}]},
			{"Name" : "kernel_data_V_1_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_13"}]},
			{"Name" : "kernel_data_V_1_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_14"}]},
			{"Name" : "kernel_data_V_1_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_15"}]},
			{"Name" : "kernel_data_V_1_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_16"}]},
			{"Name" : "kernel_data_V_1_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_17"}]},
			{"Name" : "kernel_data_V_1_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_18"}]},
			{"Name" : "kernel_data_V_1_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_19"}]},
			{"Name" : "kernel_data_V_1_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_20"}]},
			{"Name" : "kernel_data_V_1_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_21"}]},
			{"Name" : "kernel_data_V_1_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_22"}]},
			{"Name" : "kernel_data_V_1_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_23"}]},
			{"Name" : "kernel_data_V_1_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_24"}]},
			{"Name" : "kernel_data_V_1_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_25"}]},
			{"Name" : "kernel_data_V_1_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_26"}]},
			{"Name" : "kernel_data_V_1_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_27"}]},
			{"Name" : "kernel_data_V_1_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_28"}]},
			{"Name" : "kernel_data_V_1_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_29"}]},
			{"Name" : "kernel_data_V_1_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_30"}]},
			{"Name" : "kernel_data_V_1_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_31"}]},
			{"Name" : "kernel_data_V_1_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_32"}]},
			{"Name" : "kernel_data_V_1_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_33"}]},
			{"Name" : "kernel_data_V_1_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_34"}]},
			{"Name" : "kernel_data_V_1_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "kernel_data_V_1_35"}]},
			{"Name" : "w11_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "w11_V"}]},
			{"Name" : "pX_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "pX_2"}]},
			{"Name" : "sX_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "sX_2"}]},
			{"Name" : "pY_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "pY_2"}]},
			{"Name" : "sY_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "sY_2"}]},
			{"Name" : "line_buffer_Array_V_1_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "line_buffer_Array_V_1_0_0"}]},
			{"Name" : "line_buffer_Array_V_1_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "line_buffer_Array_V_1_1_0"}]},
			{"Name" : "line_buffer_Array_V_1_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "line_buffer_Array_V_1_0_1"}]},
			{"Name" : "line_buffer_Array_V_1_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "line_buffer_Array_V_1_1_1"}]},
			{"Name" : "line_buffer_Array_V_1_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "line_buffer_Array_V_1_0_2"}]},
			{"Name" : "line_buffer_Array_V_1_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "line_buffer_Array_V_1_1_2"}]},
			{"Name" : "line_buffer_Array_V_1_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "line_buffer_Array_V_1_0_3"}]},
			{"Name" : "line_buffer_Array_V_1_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Port" : "line_buffer_Array_V_1_1_3"}]},
			{"Name" : "kernel_data_V_2_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_0"}]},
			{"Name" : "kernel_data_V_2_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_1"}]},
			{"Name" : "kernel_data_V_2_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_2"}]},
			{"Name" : "kernel_data_V_2_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_3"}]},
			{"Name" : "kernel_data_V_2_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_4"}]},
			{"Name" : "kernel_data_V_2_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_5"}]},
			{"Name" : "kernel_data_V_2_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_6"}]},
			{"Name" : "kernel_data_V_2_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_7"}]},
			{"Name" : "kernel_data_V_2_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_8"}]},
			{"Name" : "kernel_data_V_2_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_9"}]},
			{"Name" : "kernel_data_V_2_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_10"}]},
			{"Name" : "kernel_data_V_2_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_11"}]},
			{"Name" : "kernel_data_V_2_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_12"}]},
			{"Name" : "kernel_data_V_2_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_13"}]},
			{"Name" : "kernel_data_V_2_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_14"}]},
			{"Name" : "kernel_data_V_2_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_15"}]},
			{"Name" : "kernel_data_V_2_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_16"}]},
			{"Name" : "kernel_data_V_2_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_17"}]},
			{"Name" : "kernel_data_V_2_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_18"}]},
			{"Name" : "kernel_data_V_2_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_19"}]},
			{"Name" : "kernel_data_V_2_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_20"}]},
			{"Name" : "kernel_data_V_2_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_21"}]},
			{"Name" : "kernel_data_V_2_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_22"}]},
			{"Name" : "kernel_data_V_2_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_23"}]},
			{"Name" : "kernel_data_V_2_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_24"}]},
			{"Name" : "kernel_data_V_2_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_25"}]},
			{"Name" : "kernel_data_V_2_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_26"}]},
			{"Name" : "kernel_data_V_2_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_27"}]},
			{"Name" : "kernel_data_V_2_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_28"}]},
			{"Name" : "kernel_data_V_2_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_29"}]},
			{"Name" : "kernel_data_V_2_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_30"}]},
			{"Name" : "kernel_data_V_2_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_31"}]},
			{"Name" : "kernel_data_V_2_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_32"}]},
			{"Name" : "kernel_data_V_2_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_33"}]},
			{"Name" : "kernel_data_V_2_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_34"}]},
			{"Name" : "kernel_data_V_2_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "kernel_data_V_2_35"}]},
			{"Name" : "w14_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "w14_V"}]},
			{"Name" : "pX_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "pX_1"}]},
			{"Name" : "sX_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "sX_1"}]},
			{"Name" : "pY_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "pY_1"}]},
			{"Name" : "sY_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "sY_1"}]},
			{"Name" : "line_buffer_Array_V_2_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "line_buffer_Array_V_2_0_0"}]},
			{"Name" : "line_buffer_Array_V_2_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "line_buffer_Array_V_2_1_0"}]},
			{"Name" : "line_buffer_Array_V_2_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "line_buffer_Array_V_2_0_1"}]},
			{"Name" : "line_buffer_Array_V_2_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "line_buffer_Array_V_2_1_1"}]},
			{"Name" : "line_buffer_Array_V_2_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "line_buffer_Array_V_2_0_2"}]},
			{"Name" : "line_buffer_Array_V_2_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "line_buffer_Array_V_2_1_2"}]},
			{"Name" : "line_buffer_Array_V_2_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "line_buffer_Array_V_2_0_3"}]},
			{"Name" : "line_buffer_Array_V_2_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Port" : "line_buffer_Array_V_2_1_3"}]},
			{"Name" : "kernel_data_V_4_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_0"}]},
			{"Name" : "kernel_data_V_4_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_1"}]},
			{"Name" : "kernel_data_V_4_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_2"}]},
			{"Name" : "kernel_data_V_4_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_3"}]},
			{"Name" : "kernel_data_V_4_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_4"}]},
			{"Name" : "kernel_data_V_4_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_5"}]},
			{"Name" : "kernel_data_V_4_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_6"}]},
			{"Name" : "kernel_data_V_4_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_7"}]},
			{"Name" : "kernel_data_V_4_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_8"}]},
			{"Name" : "kernel_data_V_4_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_9"}]},
			{"Name" : "kernel_data_V_4_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_10"}]},
			{"Name" : "kernel_data_V_4_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_11"}]},
			{"Name" : "kernel_data_V_4_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_12"}]},
			{"Name" : "kernel_data_V_4_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_13"}]},
			{"Name" : "kernel_data_V_4_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_14"}]},
			{"Name" : "kernel_data_V_4_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_15"}]},
			{"Name" : "kernel_data_V_4_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_16"}]},
			{"Name" : "kernel_data_V_4_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_17"}]},
			{"Name" : "kernel_data_V_4_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_18"}]},
			{"Name" : "kernel_data_V_4_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_19"}]},
			{"Name" : "kernel_data_V_4_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_20"}]},
			{"Name" : "kernel_data_V_4_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_21"}]},
			{"Name" : "kernel_data_V_4_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_22"}]},
			{"Name" : "kernel_data_V_4_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_23"}]},
			{"Name" : "kernel_data_V_4_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_24"}]},
			{"Name" : "kernel_data_V_4_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_25"}]},
			{"Name" : "kernel_data_V_4_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_26"}]},
			{"Name" : "kernel_data_V_4_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_27"}]},
			{"Name" : "kernel_data_V_4_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_28"}]},
			{"Name" : "kernel_data_V_4_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_29"}]},
			{"Name" : "kernel_data_V_4_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_30"}]},
			{"Name" : "kernel_data_V_4_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_31"}]},
			{"Name" : "kernel_data_V_4_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_32"}]},
			{"Name" : "kernel_data_V_4_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_33"}]},
			{"Name" : "kernel_data_V_4_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_34"}]},
			{"Name" : "kernel_data_V_4_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "kernel_data_V_4_35"}]},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "w17_V"}]},
			{"Name" : "pX_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "pX_8"}]},
			{"Name" : "sX_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "sX_8"}]},
			{"Name" : "pY_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "pY_8"}]},
			{"Name" : "sY_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "sY_8"}]},
			{"Name" : "line_buffer_Array_V_4_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "line_buffer_Array_V_4_0_0"}]},
			{"Name" : "line_buffer_Array_V_4_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "line_buffer_Array_V_4_1_0"}]},
			{"Name" : "line_buffer_Array_V_4_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "line_buffer_Array_V_4_0_1"}]},
			{"Name" : "line_buffer_Array_V_4_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "line_buffer_Array_V_4_1_1"}]},
			{"Name" : "line_buffer_Array_V_4_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "line_buffer_Array_V_4_0_2"}]},
			{"Name" : "line_buffer_Array_V_4_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "line_buffer_Array_V_4_1_2"}]},
			{"Name" : "line_buffer_Array_V_4_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "line_buffer_Array_V_4_0_3"}]},
			{"Name" : "line_buffer_Array_V_4_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Port" : "line_buffer_Array_V_4_1_3"}]},
			{"Name" : "kernel_data_V_5_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_0"}]},
			{"Name" : "kernel_data_V_5_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_1"}]},
			{"Name" : "kernel_data_V_5_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_2"}]},
			{"Name" : "kernel_data_V_5_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_3"}]},
			{"Name" : "kernel_data_V_5_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_4"}]},
			{"Name" : "kernel_data_V_5_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_5"}]},
			{"Name" : "kernel_data_V_5_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_6"}]},
			{"Name" : "kernel_data_V_5_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_7"}]},
			{"Name" : "kernel_data_V_5_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_8"}]},
			{"Name" : "kernel_data_V_5_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_9"}]},
			{"Name" : "kernel_data_V_5_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_10"}]},
			{"Name" : "kernel_data_V_5_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_11"}]},
			{"Name" : "kernel_data_V_5_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_12"}]},
			{"Name" : "kernel_data_V_5_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_13"}]},
			{"Name" : "kernel_data_V_5_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_14"}]},
			{"Name" : "kernel_data_V_5_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_15"}]},
			{"Name" : "kernel_data_V_5_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_16"}]},
			{"Name" : "kernel_data_V_5_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_17"}]},
			{"Name" : "kernel_data_V_5_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_18"}]},
			{"Name" : "kernel_data_V_5_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_19"}]},
			{"Name" : "kernel_data_V_5_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_20"}]},
			{"Name" : "kernel_data_V_5_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_21"}]},
			{"Name" : "kernel_data_V_5_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_22"}]},
			{"Name" : "kernel_data_V_5_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_23"}]},
			{"Name" : "kernel_data_V_5_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_24"}]},
			{"Name" : "kernel_data_V_5_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_25"}]},
			{"Name" : "kernel_data_V_5_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_26"}]},
			{"Name" : "kernel_data_V_5_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_27"}]},
			{"Name" : "kernel_data_V_5_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_28"}]},
			{"Name" : "kernel_data_V_5_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_29"}]},
			{"Name" : "kernel_data_V_5_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_30"}]},
			{"Name" : "kernel_data_V_5_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_31"}]},
			{"Name" : "kernel_data_V_5_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_32"}]},
			{"Name" : "kernel_data_V_5_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_33"}]},
			{"Name" : "kernel_data_V_5_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_34"}]},
			{"Name" : "kernel_data_V_5_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_35"}]},
			{"Name" : "kernel_data_V_5_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_36"}]},
			{"Name" : "kernel_data_V_5_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_37"}]},
			{"Name" : "kernel_data_V_5_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_38"}]},
			{"Name" : "kernel_data_V_5_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_39"}]},
			{"Name" : "kernel_data_V_5_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_40"}]},
			{"Name" : "kernel_data_V_5_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_41"}]},
			{"Name" : "kernel_data_V_5_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_42"}]},
			{"Name" : "kernel_data_V_5_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_43"}]},
			{"Name" : "kernel_data_V_5_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_44"}]},
			{"Name" : "kernel_data_V_5_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_45"}]},
			{"Name" : "kernel_data_V_5_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_46"}]},
			{"Name" : "kernel_data_V_5_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_47"}]},
			{"Name" : "kernel_data_V_5_48", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_48"}]},
			{"Name" : "kernel_data_V_5_49", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_49"}]},
			{"Name" : "kernel_data_V_5_50", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_50"}]},
			{"Name" : "kernel_data_V_5_51", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_51"}]},
			{"Name" : "kernel_data_V_5_52", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_52"}]},
			{"Name" : "kernel_data_V_5_53", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_53"}]},
			{"Name" : "kernel_data_V_5_54", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_54"}]},
			{"Name" : "kernel_data_V_5_55", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_55"}]},
			{"Name" : "kernel_data_V_5_56", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_56"}]},
			{"Name" : "kernel_data_V_5_57", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_57"}]},
			{"Name" : "kernel_data_V_5_58", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_58"}]},
			{"Name" : "kernel_data_V_5_59", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_59"}]},
			{"Name" : "kernel_data_V_5_60", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_60"}]},
			{"Name" : "kernel_data_V_5_61", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_61"}]},
			{"Name" : "kernel_data_V_5_62", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_62"}]},
			{"Name" : "kernel_data_V_5_63", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_63"}]},
			{"Name" : "kernel_data_V_5_64", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_64"}]},
			{"Name" : "kernel_data_V_5_65", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_65"}]},
			{"Name" : "kernel_data_V_5_66", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_66"}]},
			{"Name" : "kernel_data_V_5_67", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_67"}]},
			{"Name" : "kernel_data_V_5_68", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_68"}]},
			{"Name" : "kernel_data_V_5_69", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_69"}]},
			{"Name" : "kernel_data_V_5_70", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_70"}]},
			{"Name" : "kernel_data_V_5_71", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "kernel_data_V_5_71"}]},
			{"Name" : "w20_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "w20_V"}]},
			{"Name" : "pX_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "pX_7"}]},
			{"Name" : "sX_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "sX_7"}]},
			{"Name" : "pY_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "pY_7"}]},
			{"Name" : "sY_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "sY_7"}]},
			{"Name" : "line_buffer_Array_V_5_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "line_buffer_Array_V_5_0_0"}]},
			{"Name" : "line_buffer_Array_V_5_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "line_buffer_Array_V_5_1_0"}]},
			{"Name" : "line_buffer_Array_V_5_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "line_buffer_Array_V_5_0_1"}]},
			{"Name" : "line_buffer_Array_V_5_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "line_buffer_Array_V_5_1_1"}]},
			{"Name" : "line_buffer_Array_V_5_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "line_buffer_Array_V_5_0_2"}]},
			{"Name" : "line_buffer_Array_V_5_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "line_buffer_Array_V_5_1_2"}]},
			{"Name" : "line_buffer_Array_V_5_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "line_buffer_Array_V_5_0_3"}]},
			{"Name" : "line_buffer_Array_V_5_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "line_buffer_Array_V_5_1_3"}]},
			{"Name" : "line_buffer_Array_V_5_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "line_buffer_Array_V_5_0_4"}]},
			{"Name" : "line_buffer_Array_V_5_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "line_buffer_Array_V_5_1_4"}]},
			{"Name" : "line_buffer_Array_V_5_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "line_buffer_Array_V_5_0_5"}]},
			{"Name" : "line_buffer_Array_V_5_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "line_buffer_Array_V_5_1_5"}]},
			{"Name" : "line_buffer_Array_V_5_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "line_buffer_Array_V_5_0_6"}]},
			{"Name" : "line_buffer_Array_V_5_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "line_buffer_Array_V_5_1_6"}]},
			{"Name" : "line_buffer_Array_V_5_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "line_buffer_Array_V_5_0_7"}]},
			{"Name" : "line_buffer_Array_V_5_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "151", "SubInstance" : "conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Port" : "line_buffer_Array_V_5_1_7"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.zeropad2d_cl_array_array_ap_fixed_1u_config22_U0", "Parent" : "7",
		"CDFG" : "zeropad2d_cl_array_array_ap_fixed_1u_config22_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1159", "EstimateLatencyMax" : "1159",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "334",
				"BlockSignal" : [
					{"Name" : "data_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "173",
				"BlockSignal" : [
					{"Name" : "res_V_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config2_U0", "Parent" : "7", "Child" : ["10", "11", "14", "15", "16", "17", "18", "19", "20", "21"],
		"CDFG" : "conv_2d_cl_array_array_ap_fixed_8u_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4624", "EstimateLatencyMax" : "23120",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "8",
		"StartFifo" : "start_for_conv_2d_cl_array_array_ap_fixed_8u_config2_U0_U",
		"Port" : [
			{"Name" : "data_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "173",
				"BlockSignal" : [
					{"Name" : "data_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "174",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "175",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "176",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "177",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_4_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "178",
				"BlockSignal" : [
					{"Name" : "res_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_5_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "179",
				"BlockSignal" : [
					{"Name" : "res_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_6_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "180",
				"BlockSignal" : [
					{"Name" : "res_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_7_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "181",
				"BlockSignal" : [
					{"Name" : "res_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_data_V_8473", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1466", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2467", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3468", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4469", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5470", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6471", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7472", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pX_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sX_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_1u_config2_s_fu_353", "Port" : "line_buffer_Array_V_0_0"}]},
			{"Name" : "line_buffer_Array_V_1465_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_1u_config2_s_fu_353", "Port" : "line_buffer_Array_V_1465_0"}]}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config2_U0.w2_V_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config2_U0.call_ret_shift_line_buffer_array_ap_fixed_1u_config2_s_fu_353", "Parent" : "9", "Child" : ["12", "13"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_1u_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_elem_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_Array_V_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_1465_0", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config2_U0.call_ret_shift_line_buffer_array_ap_fixed_1u_config2_s_fu_353.line_buffer_Array_V_0_0_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config2_U0.call_ret_shift_line_buffer_array_ap_fixed_1u_config2_s_fu_353.line_buffer_Array_V_1465_0_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config2_U0.myproject_axi_mul_32s_32s_48_5_1_U22", "Parent" : "9"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config2_U0.myproject_axi_mul_32s_32s_48_5_1_U23", "Parent" : "9"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config2_U0.myproject_axi_mul_32s_32s_48_5_1_U24", "Parent" : "9"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config2_U0.myproject_axi_mul_32s_32s_48_5_1_U25", "Parent" : "9"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config2_U0.myproject_axi_mul_32s_32s_48_5_1_U26", "Parent" : "9"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config2_U0.myproject_axi_mul_32s_32s_48_5_1_U27", "Parent" : "9"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config2_U0.myproject_axi_mul_32s_32s_48_5_1_U28", "Parent" : "9"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config2_U0.myproject_axi_mul_14s_32s_46_5_1_U29", "Parent" : "9"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.relu_array_array_ap_fixed_8u_relu_config3_U0", "Parent" : "7",
		"CDFG" : "relu_array_array_ap_fixed_8u_relu_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1028", "EstimateLatencyMax" : "1028",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "9",
		"StartFifo" : "start_for_relu_array_array_ap_fixed_8u_relu_config3_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "174",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "175",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "176",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "177",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "178",
				"BlockSignal" : [
					{"Name" : "data_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "179",
				"BlockSignal" : [
					{"Name" : "data_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "180",
				"BlockSignal" : [
					{"Name" : "data_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "181",
				"BlockSignal" : [
					{"Name" : "data_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "182",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "183",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "184",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "185",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_4_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "186",
				"BlockSignal" : [
					{"Name" : "res_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_5_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "187",
				"BlockSignal" : [
					{"Name" : "res_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_6_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "188",
				"BlockSignal" : [
					{"Name" : "res_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_7_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "189",
				"BlockSignal" : [
					{"Name" : "res_V_data_7_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_8u_config4_U0", "Parent" : "7", "Child" : ["24"],
		"CDFG" : "pooling2d_cl_array_array_ap_fixed_8u_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2052", "EstimateLatencyMax" : "2052",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "22",
		"StartFifo" : "start_for_pooling2d_cl_array_array_ap_fixed_8u_config4_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "182",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "183",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "184",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "185",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "186",
				"BlockSignal" : [
					{"Name" : "data_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "187",
				"BlockSignal" : [
					{"Name" : "data_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "188",
				"BlockSignal" : [
					{"Name" : "data_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "189",
				"BlockSignal" : [
					{"Name" : "data_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_4_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "res_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_5_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "res_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_6_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "196",
				"BlockSignal" : [
					{"Name" : "res_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_7_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "197",
				"BlockSignal" : [
					{"Name" : "res_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_9_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_9_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_9_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_9_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_9_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_9_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_9_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_9_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_9_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_9_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_9_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_9_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_9_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_9_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_9_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_9_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_9_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config4_s_fu_206", "Port" : "line_buffer_Array_V_9_0_0"}]},
			{"Name" : "line_buffer_Array_V_9_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config4_s_fu_206", "Port" : "line_buffer_Array_V_9_0_1"}]},
			{"Name" : "line_buffer_Array_V_9_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config4_s_fu_206", "Port" : "line_buffer_Array_V_9_0_2"}]},
			{"Name" : "line_buffer_Array_V_9_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config4_s_fu_206", "Port" : "line_buffer_Array_V_9_0_3"}]},
			{"Name" : "line_buffer_Array_V_9_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config4_s_fu_206", "Port" : "line_buffer_Array_V_9_0_4"}]},
			{"Name" : "line_buffer_Array_V_9_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config4_s_fu_206", "Port" : "line_buffer_Array_V_9_0_5"}]},
			{"Name" : "line_buffer_Array_V_9_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config4_s_fu_206", "Port" : "line_buffer_Array_V_9_0_6"}]},
			{"Name" : "line_buffer_Array_V_9_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config4_s_fu_206", "Port" : "line_buffer_Array_V_9_0_7"}]}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_8u_config4_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config4_s_fu_206", "Parent" : "23", "Child" : ["25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_8u_config4_s",
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
			{"Name" : "in_elem_data_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_9_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_10_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_11_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_12_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_13_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_14_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_15_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_24_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_25_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_26_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_27_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_28_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_29_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_30_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_31_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_Array_V_9_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_9_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_9_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_9_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_9_0_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_9_0_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_9_0_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_9_0_7", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_8u_config4_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config4_s_fu_206.line_buffer_Array_V_9_0_0_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_8u_config4_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config4_s_fu_206.line_buffer_Array_V_9_0_1_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_8u_config4_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config4_s_fu_206.line_buffer_Array_V_9_0_2_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_8u_config4_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config4_s_fu_206.line_buffer_Array_V_9_0_3_U", "Parent" : "24"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_8u_config4_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config4_s_fu_206.line_buffer_Array_V_9_0_4_U", "Parent" : "24"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_8u_config4_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config4_s_fu_206.line_buffer_Array_V_9_0_5_U", "Parent" : "24"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_8u_config4_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config4_s_fu_206.line_buffer_Array_V_9_0_6_U", "Parent" : "24"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_8u_config4_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config4_s_fu_206.line_buffer_Array_V_9_0_7_U", "Parent" : "24"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.zeropad2d_cl_array_array_ap_fixed_8u_config23_U0", "Parent" : "7",
		"CDFG" : "zeropad2d_cl_array_array_ap_fixed_8u_config23_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "327", "EstimateLatencyMax" : "327",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "23",
		"StartFifo" : "start_for_zeropad2d_cl_array_array_ap_fixed_8u_config23_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "data_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "data_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "196",
				"BlockSignal" : [
					{"Name" : "data_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "197",
				"BlockSignal" : [
					{"Name" : "data_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "198",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "199",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "200",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "201",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_4_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "202",
				"BlockSignal" : [
					{"Name" : "res_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_5_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "203",
				"BlockSignal" : [
					{"Name" : "res_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_6_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "204",
				"BlockSignal" : [
					{"Name" : "res_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_7_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "205",
				"BlockSignal" : [
					{"Name" : "res_V_data_7_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0", "Parent" : "7", "Child" : ["35", "36", "53", "54", "55", "56", "57"],
		"CDFG" : "conv_2d_cl_array_array_ap_fixed_4u_config5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1296", "EstimateLatencyMax" : "26892",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "33",
		"StartFifo" : "start_for_conv_2d_cl_array_array_ap_fixed_4u_config5_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "198",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "199",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "200",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "201",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "202",
				"BlockSignal" : [
					{"Name" : "data_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "203",
				"BlockSignal" : [
					{"Name" : "data_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "204",
				"BlockSignal" : [
					{"Name" : "data_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "205",
				"BlockSignal" : [
					{"Name" : "data_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "206",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "207",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "208",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "209",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_data_V_6_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_64", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_6_71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w5_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pX_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sX_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_6_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_0_0"}]},
			{"Name" : "line_buffer_Array_V_6_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_1_0"}]},
			{"Name" : "line_buffer_Array_V_6_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_0_1"}]},
			{"Name" : "line_buffer_Array_V_6_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_1_1"}]},
			{"Name" : "line_buffer_Array_V_6_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_0_2"}]},
			{"Name" : "line_buffer_Array_V_6_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_1_2"}]},
			{"Name" : "line_buffer_Array_V_6_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_0_3"}]},
			{"Name" : "line_buffer_Array_V_6_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_1_3"}]},
			{"Name" : "line_buffer_Array_V_6_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_0_4"}]},
			{"Name" : "line_buffer_Array_V_6_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_1_4"}]},
			{"Name" : "line_buffer_Array_V_6_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_0_5"}]},
			{"Name" : "line_buffer_Array_V_6_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_1_5"}]},
			{"Name" : "line_buffer_Array_V_6_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_0_6"}]},
			{"Name" : "line_buffer_Array_V_6_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_1_6"}]},
			{"Name" : "line_buffer_Array_V_6_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_0_7"}]},
			{"Name" : "line_buffer_Array_V_6_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_1_7"}]}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.w5_V_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Parent" : "34", "Child" : ["37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_8u_config5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_elem_data_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_9_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_10_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_11_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_12_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_13_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_14_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_15_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_16_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_17_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_18_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_19_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_20_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_21_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_22_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_23_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_32_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_33_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_34_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_35_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_36_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_37_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_38_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_39_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_40_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_41_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_42_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_43_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_44_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_45_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_46_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_47_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_56_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_57_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_58_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_59_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_60_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_61_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_62_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_63_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_64_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_65_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_66_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_67_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_68_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_69_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_70_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_71_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_Array_V_6_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_1_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_0_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_1_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_0_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_1_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_0_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_1_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_0_7", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_6_1_7", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_0_0_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_1_0_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_0_1_U", "Parent" : "36"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_1_1_U", "Parent" : "36"},
	{"ID" : "41", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_0_2_U", "Parent" : "36"},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_1_2_U", "Parent" : "36"},
	{"ID" : "43", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_0_3_U", "Parent" : "36"},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_1_3_U", "Parent" : "36"},
	{"ID" : "45", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_0_4_U", "Parent" : "36"},
	{"ID" : "46", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_1_4_U", "Parent" : "36"},
	{"ID" : "47", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_0_5_U", "Parent" : "36"},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_1_5_U", "Parent" : "36"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_0_6_U", "Parent" : "36"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_1_6_U", "Parent" : "36"},
	{"ID" : "51", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_0_7_U", "Parent" : "36"},
	{"ID" : "52", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_1_7_U", "Parent" : "36"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.myproject_axi_mux_727_32_1_1_U172", "Parent" : "34"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.myproject_axi_mul_32s_32s_48_5_1_U173", "Parent" : "34"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.myproject_axi_mul_32s_32s_48_5_1_U174", "Parent" : "34"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.myproject_axi_mul_32s_32s_48_5_1_U175", "Parent" : "34"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config5_U0.myproject_axi_mul_32s_17s_48_5_1_U176", "Parent" : "34"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.relu_array_array_ap_fixed_4u_relu_config6_U0", "Parent" : "7",
		"CDFG" : "relu_array_array_ap_fixed_4u_relu_config6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "260", "EstimateLatencyMax" : "260",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "34",
		"StartFifo" : "start_for_relu_array_array_ap_fixed_4u_relu_config6_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "206",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "207",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "208",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "209",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "210",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "211",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "212",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "213",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_4u_config7_U0", "Parent" : "7", "Child" : ["60"],
		"CDFG" : "pooling2d_cl_array_array_ap_fixed_4u_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "516", "EstimateLatencyMax" : "516",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "58",
		"StartFifo" : "start_for_pooling2d_cl_array_array_ap_fixed_4u_config7_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "210",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "211",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "212",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "213",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "214",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "215",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "216",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "217",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pX_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sX_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_8_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_8_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_8_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_8_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_8_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_8_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_8_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_8_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_8_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config7_s_fu_146", "Port" : "line_buffer_Array_V_8_0_0"}]},
			{"Name" : "line_buffer_Array_V_8_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config7_s_fu_146", "Port" : "line_buffer_Array_V_8_0_1"}]},
			{"Name" : "line_buffer_Array_V_8_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config7_s_fu_146", "Port" : "line_buffer_Array_V_8_0_2"}]},
			{"Name" : "line_buffer_Array_V_8_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config7_s_fu_146", "Port" : "line_buffer_Array_V_8_0_3"}]}]},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_4u_config7_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config7_s_fu_146", "Parent" : "59", "Child" : ["61", "62", "63", "64"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_4u_config7_s",
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
			{"Name" : "line_buffer_Array_V_8_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_8_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_8_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_8_0_3", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "61", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_4u_config7_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config7_s_fu_146.line_buffer_Array_V_8_0_0_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_4u_config7_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config7_s_fu_146.line_buffer_Array_V_8_0_1_U", "Parent" : "60"},
	{"ID" : "63", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_4u_config7_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config7_s_fu_146.line_buffer_Array_V_8_0_2_U", "Parent" : "60"},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_4u_config7_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config7_s_fu_146.line_buffer_Array_V_8_0_3_U", "Parent" : "60"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.zeropad2d_cl_array_array_ap_fixed_4u_config24_U0", "Parent" : "7",
		"CDFG" : "zeropad2d_cl_array_array_ap_fixed_4u_config24_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "103", "EstimateLatencyMax" : "103",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "59",
		"StartFifo" : "start_for_zeropad2d_cl_array_array_ap_fixed_4u_config24_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "214",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "215",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "216",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "217",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "218",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "219",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "220",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "221",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config8_U0", "Parent" : "7", "Child" : ["67", "68", "77", "78", "79", "80", "81"],
		"CDFG" : "conv_2d_cl_array_array_ap_fixed_4u_config8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "400", "EstimateLatencyMax" : "4700",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "65",
		"StartFifo" : "start_for_conv_2d_cl_array_array_ap_fixed_4u_config8_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "218",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "219",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "220",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "221",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "222",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "223",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "224",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "225",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_data_V_3_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_3_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w8_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pX_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sX_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_3_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config8_s_fu_330", "Port" : "line_buffer_Array_V_3_0_0"}]},
			{"Name" : "line_buffer_Array_V_3_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config8_s_fu_330", "Port" : "line_buffer_Array_V_3_1_0"}]},
			{"Name" : "line_buffer_Array_V_3_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config8_s_fu_330", "Port" : "line_buffer_Array_V_3_0_1"}]},
			{"Name" : "line_buffer_Array_V_3_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config8_s_fu_330", "Port" : "line_buffer_Array_V_3_1_1"}]},
			{"Name" : "line_buffer_Array_V_3_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config8_s_fu_330", "Port" : "line_buffer_Array_V_3_0_2"}]},
			{"Name" : "line_buffer_Array_V_3_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config8_s_fu_330", "Port" : "line_buffer_Array_V_3_1_2"}]},
			{"Name" : "line_buffer_Array_V_3_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config8_s_fu_330", "Port" : "line_buffer_Array_V_3_0_3"}]},
			{"Name" : "line_buffer_Array_V_3_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config8_s_fu_330", "Port" : "line_buffer_Array_V_3_1_3"}]}]},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config8_U0.w8_V_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config8_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config8_s_fu_330", "Parent" : "66", "Child" : ["69", "70", "71", "72", "73", "74", "75", "76"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_4u_config8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
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
			{"Name" : "kernel_window_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_9_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_10_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_11_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_16_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_17_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_18_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_19_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_20_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_21_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_22_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_23_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_28_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_29_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_30_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_31_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_32_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_33_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_34_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_35_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_Array_V_3_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_3_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_3_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_3_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_3_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_3_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_3_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_3_1_3", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config8_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config8_s_fu_330.line_buffer_Array_V_3_0_0_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config8_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config8_s_fu_330.line_buffer_Array_V_3_1_0_U", "Parent" : "68"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config8_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config8_s_fu_330.line_buffer_Array_V_3_0_1_U", "Parent" : "68"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config8_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config8_s_fu_330.line_buffer_Array_V_3_1_1_U", "Parent" : "68"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config8_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config8_s_fu_330.line_buffer_Array_V_3_0_2_U", "Parent" : "68"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config8_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config8_s_fu_330.line_buffer_Array_V_3_1_2_U", "Parent" : "68"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config8_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config8_s_fu_330.line_buffer_Array_V_3_0_3_U", "Parent" : "68"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config8_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config8_s_fu_330.line_buffer_Array_V_3_1_3_U", "Parent" : "68"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config8_U0.myproject_axi_mux_366_32_1_1_U258", "Parent" : "66"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config8_U0.myproject_axi_mul_32s_32s_48_5_1_U259", "Parent" : "66"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config8_U0.myproject_axi_mul_32s_32s_48_5_1_U260", "Parent" : "66"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config8_U0.myproject_axi_mul_32s_32s_48_5_1_U261", "Parent" : "66"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config8_U0.myproject_axi_mul_32s_17s_48_5_1_U262", "Parent" : "66"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.relu_array_array_ap_fixed_4u_relu_config9_U0", "Parent" : "7",
		"CDFG" : "relu_array_array_ap_fixed_4u_relu_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "68",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "66",
		"StartFifo" : "start_for_relu_array_array_ap_fixed_4u_relu_config9_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "222",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "223",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "224",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "225",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "226",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "227",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "228",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "229",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_4u_config10_U0", "Parent" : "7", "Child" : ["84"],
		"CDFG" : "pooling2d_cl_array_array_ap_fixed_4u_config10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "132", "EstimateLatencyMax" : "132",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "82",
		"StartFifo" : "start_for_pooling2d_cl_array_array_ap_fixed_4u_config10_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "226",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "227",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "228",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "229",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "230",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "231",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "232",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "233",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "pX_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sX_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_7_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_7_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config10_s_fu_146", "Port" : "line_buffer_Array_V_7_0_0"}]},
			{"Name" : "line_buffer_Array_V_7_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config10_s_fu_146", "Port" : "line_buffer_Array_V_7_0_1"}]},
			{"Name" : "line_buffer_Array_V_7_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config10_s_fu_146", "Port" : "line_buffer_Array_V_7_0_2"}]},
			{"Name" : "line_buffer_Array_V_7_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config10_s_fu_146", "Port" : "line_buffer_Array_V_7_0_3"}]}]},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_4u_config10_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config10_s_fu_146", "Parent" : "83", "Child" : ["85", "86", "87", "88"],
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
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_4u_config10_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config10_s_fu_146.line_buffer_Array_V_7_0_0_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_4u_config10_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config10_s_fu_146.line_buffer_Array_V_7_0_1_U", "Parent" : "84"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_4u_config10_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config10_s_fu_146.line_buffer_Array_V_7_0_2_U", "Parent" : "84"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.pooling2d_cl_array_array_ap_fixed_4u_config10_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config10_s_fu_146.line_buffer_Array_V_7_0_3_U", "Parent" : "84"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.zeropad2d_cl_array_array_ap_fixed_4u_config25_U0", "Parent" : "7",
		"CDFG" : "zeropad2d_cl_array_array_ap_fixed_4u_config25_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "83",
		"StartFifo" : "start_for_zeropad2d_cl_array_array_ap_fixed_4u_config25_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "230",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "231",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "232",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "233",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "234",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "235",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "236",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "237",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config11_U0", "Parent" : "7", "Child" : ["91", "92", "101", "102", "103", "104", "105"],
		"CDFG" : "conv_2d_cl_array_array_ap_fixed_4u_config11_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "144", "EstimateLatencyMax" : "1692",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "89",
		"StartFifo" : "start_for_conv_2d_cl_array_array_ap_fixed_4u_config11_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "234",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "235",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "236",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "237",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "106", "DependentChan" : "238",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "106", "DependentChan" : "239",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "106", "DependentChan" : "240",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "106", "DependentChan" : "241",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_data_V_1_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_1_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w11_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pX_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sX_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_1_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config11_s_fu_322", "Port" : "line_buffer_Array_V_1_0_0"}]},
			{"Name" : "line_buffer_Array_V_1_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config11_s_fu_322", "Port" : "line_buffer_Array_V_1_1_0"}]},
			{"Name" : "line_buffer_Array_V_1_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config11_s_fu_322", "Port" : "line_buffer_Array_V_1_0_1"}]},
			{"Name" : "line_buffer_Array_V_1_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config11_s_fu_322", "Port" : "line_buffer_Array_V_1_1_1"}]},
			{"Name" : "line_buffer_Array_V_1_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config11_s_fu_322", "Port" : "line_buffer_Array_V_1_0_2"}]},
			{"Name" : "line_buffer_Array_V_1_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config11_s_fu_322", "Port" : "line_buffer_Array_V_1_1_2"}]},
			{"Name" : "line_buffer_Array_V_1_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config11_s_fu_322", "Port" : "line_buffer_Array_V_1_0_3"}]},
			{"Name" : "line_buffer_Array_V_1_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config11_s_fu_322", "Port" : "line_buffer_Array_V_1_1_3"}]}]},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config11_U0.w11_V_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config11_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config11_s_fu_322", "Parent" : "90", "Child" : ["93", "94", "95", "96", "97", "98", "99", "100"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_4u_config11_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
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
			{"Name" : "kernel_window_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_9_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_10_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_11_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_16_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_17_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_18_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_19_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_20_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_21_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_22_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_23_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_28_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_29_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_30_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_31_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_32_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_33_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_34_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_35_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_Array_V_1_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_1_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_1_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_1_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_1_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_1_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_1_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_1_1_3", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config11_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config11_s_fu_322.line_buffer_Array_V_1_0_0_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config11_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config11_s_fu_322.line_buffer_Array_V_1_1_0_U", "Parent" : "92"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config11_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config11_s_fu_322.line_buffer_Array_V_1_0_1_U", "Parent" : "92"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config11_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config11_s_fu_322.line_buffer_Array_V_1_1_1_U", "Parent" : "92"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config11_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config11_s_fu_322.line_buffer_Array_V_1_0_2_U", "Parent" : "92"},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config11_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config11_s_fu_322.line_buffer_Array_V_1_1_2_U", "Parent" : "92"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config11_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config11_s_fu_322.line_buffer_Array_V_1_0_3_U", "Parent" : "92"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config11_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config11_s_fu_322.line_buffer_Array_V_1_1_3_U", "Parent" : "92"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config11_U0.myproject_axi_mux_366_32_1_1_U339", "Parent" : "90"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config11_U0.myproject_axi_mul_32s_32s_48_5_1_U340", "Parent" : "90"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config11_U0.myproject_axi_mul_32s_32s_48_5_1_U341", "Parent" : "90"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config11_U0.myproject_axi_mul_32s_32s_48_5_1_U342", "Parent" : "90"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config11_U0.myproject_axi_mul_32s_17s_48_5_1_U343", "Parent" : "90"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.relu_array_array_ap_fixed_4u_relu_config12_U0", "Parent" : "7",
		"CDFG" : "relu_array_array_ap_fixed_4u_relu_config12_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "90",
		"StartFifo" : "start_for_relu_array_array_ap_fixed_4u_relu_config12_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "238",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "239",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "240",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "241",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "107", "DependentChan" : "242",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "107", "DependentChan" : "243",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "107", "DependentChan" : "244",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "107", "DependentChan" : "245",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.resize_nearest_array_ap_fixed_4u_config13_U0", "Parent" : "7",
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
		"StartSource" : "106",
		"StartFifo" : "start_for_resize_nearest_array_ap_fixed_4u_config13_U0_U",
		"Port" : [
			{"Name" : "image_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "106", "DependentChan" : "242",
				"BlockSignal" : [
					{"Name" : "image_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "106", "DependentChan" : "243",
				"BlockSignal" : [
					{"Name" : "image_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "106", "DependentChan" : "244",
				"BlockSignal" : [
					{"Name" : "image_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "106", "DependentChan" : "245",
				"BlockSignal" : [
					{"Name" : "image_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "108", "DependentChan" : "246",
				"BlockSignal" : [
					{"Name" : "resized_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "108", "DependentChan" : "247",
				"BlockSignal" : [
					{"Name" : "resized_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "108", "DependentChan" : "248",
				"BlockSignal" : [
					{"Name" : "resized_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "108", "DependentChan" : "249",
				"BlockSignal" : [
					{"Name" : "resized_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.zeropad2d_cl_array_array_ap_fixed_4u_config26_U0", "Parent" : "7",
		"CDFG" : "zeropad2d_cl_array_array_ap_fixed_4u_config26_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "103", "EstimateLatencyMax" : "103",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "107",
		"StartFifo" : "start_for_zeropad2d_cl_array_array_ap_fixed_4u_config26_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "246",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "247",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "248",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "107", "DependentChan" : "249",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "250",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "251",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "252",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "109", "DependentChan" : "253",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config14_U0", "Parent" : "7", "Child" : ["110", "111", "120", "121", "122", "123", "124"],
		"CDFG" : "conv_2d_cl_array_array_ap_fixed_4u_config14_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "400", "EstimateLatencyMax" : "4700",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "108",
		"StartFifo" : "start_for_conv_2d_cl_array_array_ap_fixed_4u_config14_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "108", "DependentChan" : "250",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "108", "DependentChan" : "251",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "108", "DependentChan" : "252",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "108", "DependentChan" : "253",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "125", "DependentChan" : "254",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "125", "DependentChan" : "255",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "125", "DependentChan" : "256",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "125", "DependentChan" : "257",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_data_V_2_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_2_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w14_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pX_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sX_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_2_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config14_s_fu_330", "Port" : "line_buffer_Array_V_2_0_0"}]},
			{"Name" : "line_buffer_Array_V_2_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config14_s_fu_330", "Port" : "line_buffer_Array_V_2_1_0"}]},
			{"Name" : "line_buffer_Array_V_2_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config14_s_fu_330", "Port" : "line_buffer_Array_V_2_0_1"}]},
			{"Name" : "line_buffer_Array_V_2_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config14_s_fu_330", "Port" : "line_buffer_Array_V_2_1_1"}]},
			{"Name" : "line_buffer_Array_V_2_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config14_s_fu_330", "Port" : "line_buffer_Array_V_2_0_2"}]},
			{"Name" : "line_buffer_Array_V_2_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config14_s_fu_330", "Port" : "line_buffer_Array_V_2_1_2"}]},
			{"Name" : "line_buffer_Array_V_2_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config14_s_fu_330", "Port" : "line_buffer_Array_V_2_0_3"}]},
			{"Name" : "line_buffer_Array_V_2_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config14_s_fu_330", "Port" : "line_buffer_Array_V_2_1_3"}]}]},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config14_U0.w14_V_U", "Parent" : "109"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config14_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config14_s_fu_330", "Parent" : "109", "Child" : ["112", "113", "114", "115", "116", "117", "118", "119"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_4u_config14_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
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
			{"Name" : "kernel_window_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_9_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_10_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_11_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_16_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_17_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_18_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_19_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_20_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_21_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_22_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_23_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_28_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_29_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_30_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_31_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_32_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_33_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_34_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_35_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_Array_V_2_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_2_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_2_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_2_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_2_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_2_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_2_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_2_1_3", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config14_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config14_s_fu_330.line_buffer_Array_V_2_0_0_U", "Parent" : "111"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config14_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config14_s_fu_330.line_buffer_Array_V_2_1_0_U", "Parent" : "111"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config14_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config14_s_fu_330.line_buffer_Array_V_2_0_1_U", "Parent" : "111"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config14_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config14_s_fu_330.line_buffer_Array_V_2_1_1_U", "Parent" : "111"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config14_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config14_s_fu_330.line_buffer_Array_V_2_0_2_U", "Parent" : "111"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config14_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config14_s_fu_330.line_buffer_Array_V_2_1_2_U", "Parent" : "111"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config14_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config14_s_fu_330.line_buffer_Array_V_2_0_3_U", "Parent" : "111"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config14_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config14_s_fu_330.line_buffer_Array_V_2_1_3_U", "Parent" : "111"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config14_U0.myproject_axi_mux_366_32_1_1_U405", "Parent" : "109"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config14_U0.myproject_axi_mul_32s_32s_48_5_1_U406", "Parent" : "109"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config14_U0.myproject_axi_mul_32s_32s_48_5_1_U407", "Parent" : "109"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config14_U0.myproject_axi_mul_32s_32s_48_5_1_U408", "Parent" : "109"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_4u_config14_U0.myproject_axi_mul_32s_17s_48_5_1_U409", "Parent" : "109"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.relu_array_array_ap_fixed_4u_relu_config15_U0", "Parent" : "7",
		"CDFG" : "relu_array_array_ap_fixed_4u_relu_config15_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "68",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "109",
		"StartFifo" : "start_for_relu_array_array_ap_fixed_4u_relu_config15_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "254",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "255",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "256",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "109", "DependentChan" : "257",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "126", "DependentChan" : "258",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "126", "DependentChan" : "259",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "126", "DependentChan" : "260",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "126", "DependentChan" : "261",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.resize_nearest_array_ap_fixed_4u_config16_U0", "Parent" : "7",
		"CDFG" : "resize_nearest_array_ap_fixed_4u_config16_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "125",
		"StartFifo" : "start_for_resize_nearest_array_ap_fixed_4u_config16_U0_U",
		"Port" : [
			{"Name" : "image_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "258",
				"BlockSignal" : [
					{"Name" : "image_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "259",
				"BlockSignal" : [
					{"Name" : "image_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "260",
				"BlockSignal" : [
					{"Name" : "image_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "125", "DependentChan" : "261",
				"BlockSignal" : [
					{"Name" : "image_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "127", "DependentChan" : "262",
				"BlockSignal" : [
					{"Name" : "resized_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "127", "DependentChan" : "263",
				"BlockSignal" : [
					{"Name" : "resized_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "127", "DependentChan" : "264",
				"BlockSignal" : [
					{"Name" : "resized_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "127", "DependentChan" : "265",
				"BlockSignal" : [
					{"Name" : "resized_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.zeropad2d_cl_array_array_ap_fixed_4u_config27_U0", "Parent" : "7",
		"CDFG" : "zeropad2d_cl_array_array_ap_fixed_4u_config27_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "327", "EstimateLatencyMax" : "327",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "126",
		"StartFifo" : "start_for_zeropad2d_cl_array_array_ap_fixed_4u_config27_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "126", "DependentChan" : "262",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "126", "DependentChan" : "263",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "126", "DependentChan" : "264",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "126", "DependentChan" : "265",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "128", "DependentChan" : "266",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "128", "DependentChan" : "267",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "128", "DependentChan" : "268",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "128", "DependentChan" : "269",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0", "Parent" : "7", "Child" : ["129", "130", "139", "140", "141", "142", "143", "144", "145", "146", "147"],
		"CDFG" : "conv_2d_cl_array_array_ap_fixed_8u_config17_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1296", "EstimateLatencyMax" : "15228",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "127",
		"StartFifo" : "start_for_conv_2d_cl_array_array_ap_fixed_8u_config17_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "127", "DependentChan" : "266",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "127", "DependentChan" : "267",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "127", "DependentChan" : "268",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "127", "DependentChan" : "269",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "270",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "271",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "272",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "273",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_4_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "274",
				"BlockSignal" : [
					{"Name" : "res_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_5_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "275",
				"BlockSignal" : [
					{"Name" : "res_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_6_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "276",
				"BlockSignal" : [
					{"Name" : "res_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_7_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "277",
				"BlockSignal" : [
					{"Name" : "res_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_data_V_4_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_4_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w17_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pX_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sX_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_4_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config17_s_fu_418", "Port" : "line_buffer_Array_V_4_0_0"}]},
			{"Name" : "line_buffer_Array_V_4_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config17_s_fu_418", "Port" : "line_buffer_Array_V_4_1_0"}]},
			{"Name" : "line_buffer_Array_V_4_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config17_s_fu_418", "Port" : "line_buffer_Array_V_4_0_1"}]},
			{"Name" : "line_buffer_Array_V_4_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config17_s_fu_418", "Port" : "line_buffer_Array_V_4_1_1"}]},
			{"Name" : "line_buffer_Array_V_4_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config17_s_fu_418", "Port" : "line_buffer_Array_V_4_0_2"}]},
			{"Name" : "line_buffer_Array_V_4_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config17_s_fu_418", "Port" : "line_buffer_Array_V_4_1_2"}]},
			{"Name" : "line_buffer_Array_V_4_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config17_s_fu_418", "Port" : "line_buffer_Array_V_4_0_3"}]},
			{"Name" : "line_buffer_Array_V_4_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "130", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_4u_config17_s_fu_418", "Port" : "line_buffer_Array_V_4_1_3"}]}]},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.w17_V_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config17_s_fu_418", "Parent" : "128", "Child" : ["131", "132", "133", "134", "135", "136", "137", "138"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_4u_config17_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
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
			{"Name" : "kernel_window_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_9_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_10_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_11_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_16_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_17_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_18_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_19_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_20_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_21_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_22_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_23_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_28_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_29_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_30_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_31_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_32_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_33_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_34_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_35_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_Array_V_4_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_4_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_4_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_4_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_4_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_4_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_4_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_4_1_3", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config17_s_fu_418.line_buffer_Array_V_4_0_0_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config17_s_fu_418.line_buffer_Array_V_4_1_0_U", "Parent" : "130"},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config17_s_fu_418.line_buffer_Array_V_4_0_1_U", "Parent" : "130"},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config17_s_fu_418.line_buffer_Array_V_4_1_1_U", "Parent" : "130"},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config17_s_fu_418.line_buffer_Array_V_4_0_2_U", "Parent" : "130"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config17_s_fu_418.line_buffer_Array_V_4_1_2_U", "Parent" : "130"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config17_s_fu_418.line_buffer_Array_V_4_0_3_U", "Parent" : "130"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.call_ret_shift_line_buffer_array_ap_fixed_4u_config17_s_fu_418.line_buffer_Array_V_4_1_3_U", "Parent" : "130"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.myproject_axi_mux_366_32_1_1_U471", "Parent" : "128"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.myproject_axi_mul_32s_32s_48_5_1_U472", "Parent" : "128"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.myproject_axi_mul_32s_32s_48_5_1_U473", "Parent" : "128"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.myproject_axi_mul_32s_32s_48_5_1_U474", "Parent" : "128"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.myproject_axi_mul_32s_32s_48_5_1_U475", "Parent" : "128"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.myproject_axi_mul_32s_32s_48_5_1_U476", "Parent" : "128"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.myproject_axi_mul_32s_32s_48_5_1_U477", "Parent" : "128"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.myproject_axi_mul_32s_32s_48_5_1_U478", "Parent" : "128"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_8u_config17_U0.myproject_axi_mul_32s_17s_48_5_1_U479", "Parent" : "128"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.relu_array_array_ap_fixed_8u_relu_config18_U0", "Parent" : "7",
		"CDFG" : "relu_array_array_ap_fixed_8u_relu_config18_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "260", "EstimateLatencyMax" : "260",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "128",
		"StartFifo" : "start_for_relu_array_array_ap_fixed_8u_relu_config18_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "128", "DependentChan" : "270",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "128", "DependentChan" : "271",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "128", "DependentChan" : "272",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "128", "DependentChan" : "273",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "128", "DependentChan" : "274",
				"BlockSignal" : [
					{"Name" : "data_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "128", "DependentChan" : "275",
				"BlockSignal" : [
					{"Name" : "data_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "128", "DependentChan" : "276",
				"BlockSignal" : [
					{"Name" : "data_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "128", "DependentChan" : "277",
				"BlockSignal" : [
					{"Name" : "data_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "149", "DependentChan" : "278",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "149", "DependentChan" : "279",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "149", "DependentChan" : "280",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "149", "DependentChan" : "281",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_4_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "149", "DependentChan" : "282",
				"BlockSignal" : [
					{"Name" : "res_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_5_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "149", "DependentChan" : "283",
				"BlockSignal" : [
					{"Name" : "res_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_6_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "149", "DependentChan" : "284",
				"BlockSignal" : [
					{"Name" : "res_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_7_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "149", "DependentChan" : "285",
				"BlockSignal" : [
					{"Name" : "res_V_data_7_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.resize_nearest_array_ap_fixed_8u_config19_U0", "Parent" : "7",
		"CDFG" : "resize_nearest_array_ap_fixed_8u_config19_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "148",
		"StartFifo" : "start_for_resize_nearest_array_ap_fixed_8u_config19_U0_U",
		"Port" : [
			{"Name" : "image_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "278",
				"BlockSignal" : [
					{"Name" : "image_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "279",
				"BlockSignal" : [
					{"Name" : "image_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "280",
				"BlockSignal" : [
					{"Name" : "image_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "281",
				"BlockSignal" : [
					{"Name" : "image_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "282",
				"BlockSignal" : [
					{"Name" : "image_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "283",
				"BlockSignal" : [
					{"Name" : "image_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "284",
				"BlockSignal" : [
					{"Name" : "image_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "image_V_data_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "148", "DependentChan" : "285",
				"BlockSignal" : [
					{"Name" : "image_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "286",
				"BlockSignal" : [
					{"Name" : "resized_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "287",
				"BlockSignal" : [
					{"Name" : "resized_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "288",
				"BlockSignal" : [
					{"Name" : "resized_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "289",
				"BlockSignal" : [
					{"Name" : "resized_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_4_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "290",
				"BlockSignal" : [
					{"Name" : "resized_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_5_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "291",
				"BlockSignal" : [
					{"Name" : "resized_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_6_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "292",
				"BlockSignal" : [
					{"Name" : "resized_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "resized_V_data_7_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "293",
				"BlockSignal" : [
					{"Name" : "resized_V_data_7_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.zeropad2d_cl_array_array_ap_fixed_8u_config28_U0", "Parent" : "7",
		"CDFG" : "zeropad2d_cl_array_array_ap_fixed_8u_config28_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1159", "EstimateLatencyMax" : "1159",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "149",
		"StartFifo" : "start_for_zeropad2d_cl_array_array_ap_fixed_8u_config28_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "286",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "287",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "288",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "289",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "290",
				"BlockSignal" : [
					{"Name" : "data_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "291",
				"BlockSignal" : [
					{"Name" : "data_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "292",
				"BlockSignal" : [
					{"Name" : "data_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "149", "DependentChan" : "293",
				"BlockSignal" : [
					{"Name" : "data_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "294",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "295",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "296",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "297",
				"BlockSignal" : [
					{"Name" : "res_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_4_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "298",
				"BlockSignal" : [
					{"Name" : "res_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_5_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "299",
				"BlockSignal" : [
					{"Name" : "res_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_6_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "300",
				"BlockSignal" : [
					{"Name" : "res_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_7_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "151", "DependentChan" : "301",
				"BlockSignal" : [
					{"Name" : "res_V_data_7_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0", "Parent" : "7", "Child" : ["152", "153", "170", "171"],
		"CDFG" : "conv_2d_cl_array_array_ap_fixed_1u_config20_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4624", "EstimateLatencyMax" : "95948",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "150",
		"StartFifo" : "start_for_conv_2d_cl_array_array_ap_fixed_1u_config20_U0_U",
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "294",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "295",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "296",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "297",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "298",
				"BlockSignal" : [
					{"Name" : "data_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "299",
				"BlockSignal" : [
					{"Name" : "data_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "300",
				"BlockSignal" : [
					{"Name" : "data_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "301",
				"BlockSignal" : [
					{"Name" : "data_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "172", "DependentChan" : "302",
				"BlockSignal" : [
					{"Name" : "res_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kernel_data_V_5_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_64", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kernel_data_V_5_71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w20_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pX_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sX_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "line_buffer_Array_V_5_0_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364", "Port" : "line_buffer_Array_V_5_0_0"}]},
			{"Name" : "line_buffer_Array_V_5_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364", "Port" : "line_buffer_Array_V_5_1_0"}]},
			{"Name" : "line_buffer_Array_V_5_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364", "Port" : "line_buffer_Array_V_5_0_1"}]},
			{"Name" : "line_buffer_Array_V_5_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364", "Port" : "line_buffer_Array_V_5_1_1"}]},
			{"Name" : "line_buffer_Array_V_5_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364", "Port" : "line_buffer_Array_V_5_0_2"}]},
			{"Name" : "line_buffer_Array_V_5_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364", "Port" : "line_buffer_Array_V_5_1_2"}]},
			{"Name" : "line_buffer_Array_V_5_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364", "Port" : "line_buffer_Array_V_5_0_3"}]},
			{"Name" : "line_buffer_Array_V_5_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364", "Port" : "line_buffer_Array_V_5_1_3"}]},
			{"Name" : "line_buffer_Array_V_5_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364", "Port" : "line_buffer_Array_V_5_0_4"}]},
			{"Name" : "line_buffer_Array_V_5_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364", "Port" : "line_buffer_Array_V_5_1_4"}]},
			{"Name" : "line_buffer_Array_V_5_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364", "Port" : "line_buffer_Array_V_5_0_5"}]},
			{"Name" : "line_buffer_Array_V_5_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364", "Port" : "line_buffer_Array_V_5_1_5"}]},
			{"Name" : "line_buffer_Array_V_5_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364", "Port" : "line_buffer_Array_V_5_0_6"}]},
			{"Name" : "line_buffer_Array_V_5_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364", "Port" : "line_buffer_Array_V_5_1_6"}]},
			{"Name" : "line_buffer_Array_V_5_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364", "Port" : "line_buffer_Array_V_5_0_7"}]},
			{"Name" : "line_buffer_Array_V_5_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "153", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364", "Port" : "line_buffer_Array_V_5_1_7"}]}]},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.w20_V_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364", "Parent" : "151", "Child" : ["154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_8u_config20_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_elem_data_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_4_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_5_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_6_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_elem_data_7_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_8_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_9_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_10_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_11_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_12_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_13_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_14_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_15_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_16_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_17_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_18_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_19_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_20_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_21_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_22_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_23_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_32_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_33_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_34_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_35_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_36_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_37_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_38_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_39_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_40_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_41_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_42_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_43_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_44_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_45_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_46_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_47_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_56_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_57_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_58_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_59_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_60_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_61_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_62_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_63_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_64_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_65_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_66_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_67_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_68_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_69_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_70_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel_window_71_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_Array_V_5_0_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_1_0", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_0_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_1_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_0_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_1_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_0_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_1_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_0_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_1_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_0_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_1_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_0_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_1_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_0_7", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "line_buffer_Array_V_5_1_7", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364.line_buffer_Array_V_5_0_0_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364.line_buffer_Array_V_5_1_0_U", "Parent" : "153"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364.line_buffer_Array_V_5_0_1_U", "Parent" : "153"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364.line_buffer_Array_V_5_1_1_U", "Parent" : "153"},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364.line_buffer_Array_V_5_0_2_U", "Parent" : "153"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364.line_buffer_Array_V_5_1_2_U", "Parent" : "153"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364.line_buffer_Array_V_5_0_3_U", "Parent" : "153"},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364.line_buffer_Array_V_5_1_3_U", "Parent" : "153"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364.line_buffer_Array_V_5_0_4_U", "Parent" : "153"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364.line_buffer_Array_V_5_1_4_U", "Parent" : "153"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364.line_buffer_Array_V_5_0_5_U", "Parent" : "153"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364.line_buffer_Array_V_5_1_5_U", "Parent" : "153"},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364.line_buffer_Array_V_5_0_6_U", "Parent" : "153"},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364.line_buffer_Array_V_5_1_6_U", "Parent" : "153"},
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364.line_buffer_Array_V_5_0_7_U", "Parent" : "153"},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364.line_buffer_Array_V_5_1_7_U", "Parent" : "153"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.myproject_axi_mux_727_32_1_1_U597", "Parent" : "151"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.myproject_U0.conv_2d_cl_array_array_ap_fixed_1u_config20_U0.myproject_axi_mul_32s_17s_48_5_1_U598", "Parent" : "151"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.relu_array_array_ap_fixed_1u_relu_config21_U0", "Parent" : "7",
		"CDFG" : "relu_array_array_ap_fixed_1u_relu_config21_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1028", "EstimateLatencyMax" : "1028",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "151",
		"StartFifo" : "start_for_relu_array_array_ap_fixed_1u_relu_config21_U0_U",
		"Port" : [
			{"Name" : "data_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "151", "DependentChan" : "302",
				"BlockSignal" : [
					{"Name" : "data_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "329", "DependentChan" : "336",
				"BlockSignal" : [
					{"Name" : "res_V_data_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer22_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer2_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer2_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer2_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer2_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer2_out_V_data_4_V_U", "Parent" : "7"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer2_out_V_data_5_V_U", "Parent" : "7"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer2_out_V_data_6_V_U", "Parent" : "7"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer2_out_V_data_7_V_U", "Parent" : "7"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer3_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer3_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer3_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer3_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer3_out_V_data_4_V_U", "Parent" : "7"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer3_out_V_data_5_V_U", "Parent" : "7"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer3_out_V_data_6_V_U", "Parent" : "7"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer3_out_V_data_7_V_U", "Parent" : "7"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer4_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer4_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer4_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer4_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer4_out_V_data_4_V_U", "Parent" : "7"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer4_out_V_data_5_V_U", "Parent" : "7"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer4_out_V_data_6_V_U", "Parent" : "7"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer4_out_V_data_7_V_U", "Parent" : "7"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer23_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer23_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer23_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer23_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer23_out_V_data_4_V_U", "Parent" : "7"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer23_out_V_data_5_V_U", "Parent" : "7"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer23_out_V_data_6_V_U", "Parent" : "7"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer23_out_V_data_7_V_U", "Parent" : "7"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer5_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer5_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer5_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer5_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer6_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer6_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer6_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer6_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer7_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer7_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer7_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer7_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer24_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer24_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer24_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer24_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer8_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer8_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer8_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer8_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer9_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer9_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer9_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer9_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer10_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer10_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer10_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer10_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer25_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer25_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer25_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer25_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer11_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer11_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer11_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer11_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer12_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer12_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer12_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer12_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer13_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer13_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer13_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer13_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer26_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer26_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer26_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer26_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer14_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer14_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer14_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer14_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer15_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer15_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer15_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer15_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer16_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer16_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer16_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer16_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer27_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer27_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer27_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer27_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer17_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer17_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer17_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer17_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer17_out_V_data_4_V_U", "Parent" : "7"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer17_out_V_data_5_V_U", "Parent" : "7"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer17_out_V_data_6_V_U", "Parent" : "7"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer17_out_V_data_7_V_U", "Parent" : "7"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer18_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer18_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer18_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer18_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer18_out_V_data_4_V_U", "Parent" : "7"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer18_out_V_data_5_V_U", "Parent" : "7"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer18_out_V_data_6_V_U", "Parent" : "7"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer18_out_V_data_7_V_U", "Parent" : "7"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer19_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer19_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer19_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer19_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer19_out_V_data_4_V_U", "Parent" : "7"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer19_out_V_data_5_V_U", "Parent" : "7"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer19_out_V_data_6_V_U", "Parent" : "7"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer19_out_V_data_7_V_U", "Parent" : "7"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer28_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer28_out_V_data_1_V_U", "Parent" : "7"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer28_out_V_data_2_V_U", "Parent" : "7"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer28_out_V_data_3_V_U", "Parent" : "7"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer28_out_V_data_4_V_U", "Parent" : "7"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer28_out_V_data_5_V_U", "Parent" : "7"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer28_out_V_data_6_V_U", "Parent" : "7"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer28_out_V_data_7_V_U", "Parent" : "7"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.layer20_out_V_data_0_V_U", "Parent" : "7"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_conv_2d_cl_array_array_ap_fixed_8u_config2_U0_U", "Parent" : "7"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_relu_array_array_ap_fixed_8u_relu_config3_U0_U", "Parent" : "7"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_pooling2d_cl_array_array_ap_fixed_8u_config4_U0_U", "Parent" : "7"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_zeropad2d_cl_array_array_ap_fixed_8u_config23_U0_U", "Parent" : "7"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_conv_2d_cl_array_array_ap_fixed_4u_config5_U0_U", "Parent" : "7"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_relu_array_array_ap_fixed_4u_relu_config6_U0_U", "Parent" : "7"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_pooling2d_cl_array_array_ap_fixed_4u_config7_U0_U", "Parent" : "7"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_zeropad2d_cl_array_array_ap_fixed_4u_config24_U0_U", "Parent" : "7"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_conv_2d_cl_array_array_ap_fixed_4u_config8_U0_U", "Parent" : "7"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_relu_array_array_ap_fixed_4u_relu_config9_U0_U", "Parent" : "7"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_pooling2d_cl_array_array_ap_fixed_4u_config10_U0_U", "Parent" : "7"},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_zeropad2d_cl_array_array_ap_fixed_4u_config25_U0_U", "Parent" : "7"},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_conv_2d_cl_array_array_ap_fixed_4u_config11_U0_U", "Parent" : "7"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_relu_array_array_ap_fixed_4u_relu_config12_U0_U", "Parent" : "7"},
	{"ID" : "317", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_resize_nearest_array_ap_fixed_4u_config13_U0_U", "Parent" : "7"},
	{"ID" : "318", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_zeropad2d_cl_array_array_ap_fixed_4u_config26_U0_U", "Parent" : "7"},
	{"ID" : "319", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_conv_2d_cl_array_array_ap_fixed_4u_config14_U0_U", "Parent" : "7"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_relu_array_array_ap_fixed_4u_relu_config15_U0_U", "Parent" : "7"},
	{"ID" : "321", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_resize_nearest_array_ap_fixed_4u_config16_U0_U", "Parent" : "7"},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_zeropad2d_cl_array_array_ap_fixed_4u_config27_U0_U", "Parent" : "7"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_conv_2d_cl_array_array_ap_fixed_8u_config17_U0_U", "Parent" : "7"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_relu_array_array_ap_fixed_8u_relu_config18_U0_U", "Parent" : "7"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_resize_nearest_array_ap_fixed_8u_config19_U0_U", "Parent" : "7"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_zeropad2d_cl_array_array_ap_fixed_8u_config28_U0_U", "Parent" : "7"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_conv_2d_cl_array_array_ap_fixed_1u_config20_U0_U", "Parent" : "7"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.myproject_U0.start_for_relu_array_array_ap_fixed_1u_relu_config21_U0_U", "Parent" : "7"},
	{"ID" : "329", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_2_proc_U0", "Parent" : "0", "Child" : ["330", "331", "332", "333"],
		"CDFG" : "Loop_2_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11265", "EstimateLatencyMax" : "11265",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_Loop_2_proc_U0_U",
		"Port" : [
			{"Name" : "out_data", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_r_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_local_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "336",
				"BlockSignal" : [
					{"Name" : "out_local_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "is_last_0_i_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "335",
				"BlockSignal" : [
					{"Name" : "is_last_0_i_loc_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_2_proc_U0.myproject_axi_lshr_32ns_32ns_32_2_1_U769", "Parent" : "329"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_2_proc_U0.myproject_axi_shl_64ns_32ns_64_2_1_U770", "Parent" : "329"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_2_proc_U0.regslice_both_out_data_U", "Parent" : "329"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_2_proc_U0.regslice_both_out_last_V_U", "Parent" : "329"},
	{"ID" : "334", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_local_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "335", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.is_last_0_i_loc_c_U", "Parent" : "0"},
	{"ID" : "336", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_local_V_data_0_V_U", "Parent" : "0"},
	{"ID" : "337", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_myproject_U0_U", "Parent" : "0"},
	{"ID" : "338", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Loop_2_proc_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	myproject_axi {
		in_data {Type I LastRead 1 FirstWrite -1}
		in_last_V {Type I LastRead 1 FirstWrite -1}
		out_data {Type O LastRead -1 FirstWrite 10}
		out_last_V {Type O LastRead -1 FirstWrite 10}
		kernel_data_V_8473 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1466 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2467 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3468 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4469 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5470 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6471 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7472 {Type IO LastRead -1 FirstWrite -1}
		w2_V {Type I LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1465_0 {Type X LastRead -1 FirstWrite -1}
		pX {Type IO LastRead -1 FirstWrite -1}
		sX {Type IO LastRead -1 FirstWrite -1}
		pY {Type IO LastRead -1 FirstWrite -1}
		sY {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_31 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_7 {Type X LastRead -1 FirstWrite -1}
		kernel_data_V_6_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_35 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_36 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_37 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_38 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_39 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_40 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_41 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_42 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_43 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_44 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_45 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_46 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_47 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_48 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_49 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_50 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_51 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_52 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_53 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_54 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_55 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_56 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_57 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_58 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_59 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_60 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_61 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_62 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_63 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_64 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_65 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_66 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_67 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_68 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_69 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_70 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_71 {Type IO LastRead -1 FirstWrite -1}
		w5_V {Type I LastRead -1 FirstWrite -1}
		pX_6 {Type IO LastRead -1 FirstWrite -1}
		sX_6 {Type IO LastRead -1 FirstWrite -1}
		pY_6 {Type IO LastRead -1 FirstWrite -1}
		sY_6 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_7 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_7 {Type X LastRead -1 FirstWrite -1}
		pX_4 {Type IO LastRead -1 FirstWrite -1}
		sX_4 {Type IO LastRead -1 FirstWrite -1}
		pY_4 {Type IO LastRead -1 FirstWrite -1}
		sY_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_15 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_8_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_8_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_8_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_8_0_3 {Type X LastRead -1 FirstWrite -1}
		kernel_data_V_3_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_35 {Type IO LastRead -1 FirstWrite -1}
		w8_V {Type I LastRead -1 FirstWrite -1}
		pX_9 {Type IO LastRead -1 FirstWrite -1}
		sX_9 {Type IO LastRead -1 FirstWrite -1}
		pY_9 {Type IO LastRead -1 FirstWrite -1}
		sY_9 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_3 {Type X LastRead -1 FirstWrite -1}
		pX_5 {Type IO LastRead -1 FirstWrite -1}
		sX_5 {Type IO LastRead -1 FirstWrite -1}
		pY_5 {Type IO LastRead -1 FirstWrite -1}
		sY_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_15 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_3 {Type X LastRead -1 FirstWrite -1}
		kernel_data_V_1_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_35 {Type IO LastRead -1 FirstWrite -1}
		w11_V {Type I LastRead -1 FirstWrite -1}
		pX_2 {Type IO LastRead -1 FirstWrite -1}
		sX_2 {Type IO LastRead -1 FirstWrite -1}
		pY_2 {Type IO LastRead -1 FirstWrite -1}
		sY_2 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_3 {Type X LastRead -1 FirstWrite -1}
		kernel_data_V_2_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_35 {Type IO LastRead -1 FirstWrite -1}
		w14_V {Type I LastRead -1 FirstWrite -1}
		pX_1 {Type IO LastRead -1 FirstWrite -1}
		sX_1 {Type IO LastRead -1 FirstWrite -1}
		pY_1 {Type IO LastRead -1 FirstWrite -1}
		sY_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_3 {Type X LastRead -1 FirstWrite -1}
		kernel_data_V_4_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_35 {Type IO LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}
		pX_8 {Type IO LastRead -1 FirstWrite -1}
		sX_8 {Type IO LastRead -1 FirstWrite -1}
		pY_8 {Type IO LastRead -1 FirstWrite -1}
		sY_8 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_3 {Type X LastRead -1 FirstWrite -1}
		kernel_data_V_5_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_35 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_36 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_37 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_38 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_39 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_40 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_41 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_42 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_43 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_44 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_45 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_46 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_47 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_48 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_49 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_50 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_51 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_52 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_53 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_54 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_55 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_56 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_57 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_58 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_59 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_60 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_61 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_62 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_63 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_64 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_65 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_66 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_67 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_68 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_69 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_70 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_71 {Type IO LastRead -1 FirstWrite -1}
		w20_V {Type I LastRead -1 FirstWrite -1}
		pX_7 {Type IO LastRead -1 FirstWrite -1}
		sX_7 {Type IO LastRead -1 FirstWrite -1}
		pY_7 {Type IO LastRead -1 FirstWrite -1}
		sY_7 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_7 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_7 {Type X LastRead -1 FirstWrite -1}}
	Loop_1_proc574 {
		in_last_V {Type I LastRead 1 FirstWrite -1}
		in_local_V_data_0_V {Type O LastRead -1 FirstWrite 7}
		in_data {Type I LastRead 1 FirstWrite -1}
		is_last_0_i_out_out {Type O LastRead -1 FirstWrite 1}}
	myproject {
		conv2d_147_input_V_data_V {Type I LastRead 3 FirstWrite -1}
		layer21_out_V_data_V {Type O LastRead -1 FirstWrite 4}
		kernel_data_V_8473 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1466 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2467 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3468 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4469 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5470 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6471 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7472 {Type IO LastRead -1 FirstWrite -1}
		w2_V {Type I LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1465_0 {Type X LastRead -1 FirstWrite -1}
		pX {Type IO LastRead -1 FirstWrite -1}
		sX {Type IO LastRead -1 FirstWrite -1}
		pY {Type IO LastRead -1 FirstWrite -1}
		sY {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_31 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_7 {Type X LastRead -1 FirstWrite -1}
		kernel_data_V_6_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_35 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_36 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_37 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_38 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_39 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_40 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_41 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_42 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_43 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_44 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_45 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_46 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_47 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_48 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_49 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_50 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_51 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_52 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_53 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_54 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_55 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_56 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_57 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_58 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_59 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_60 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_61 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_62 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_63 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_64 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_65 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_66 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_67 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_68 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_69 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_70 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_71 {Type IO LastRead -1 FirstWrite -1}
		w5_V {Type I LastRead -1 FirstWrite -1}
		pX_6 {Type IO LastRead -1 FirstWrite -1}
		sX_6 {Type IO LastRead -1 FirstWrite -1}
		pY_6 {Type IO LastRead -1 FirstWrite -1}
		sY_6 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_7 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_7 {Type X LastRead -1 FirstWrite -1}
		pX_4 {Type IO LastRead -1 FirstWrite -1}
		sX_4 {Type IO LastRead -1 FirstWrite -1}
		pY_4 {Type IO LastRead -1 FirstWrite -1}
		sY_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_15 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_8_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_8_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_8_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_8_0_3 {Type X LastRead -1 FirstWrite -1}
		kernel_data_V_3_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_35 {Type IO LastRead -1 FirstWrite -1}
		w8_V {Type I LastRead -1 FirstWrite -1}
		pX_9 {Type IO LastRead -1 FirstWrite -1}
		sX_9 {Type IO LastRead -1 FirstWrite -1}
		pY_9 {Type IO LastRead -1 FirstWrite -1}
		sY_9 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_3 {Type X LastRead -1 FirstWrite -1}
		pX_5 {Type IO LastRead -1 FirstWrite -1}
		sX_5 {Type IO LastRead -1 FirstWrite -1}
		pY_5 {Type IO LastRead -1 FirstWrite -1}
		sY_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_15 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_3 {Type X LastRead -1 FirstWrite -1}
		kernel_data_V_1_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_35 {Type IO LastRead -1 FirstWrite -1}
		w11_V {Type I LastRead -1 FirstWrite -1}
		pX_2 {Type IO LastRead -1 FirstWrite -1}
		sX_2 {Type IO LastRead -1 FirstWrite -1}
		pY_2 {Type IO LastRead -1 FirstWrite -1}
		sY_2 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_3 {Type X LastRead -1 FirstWrite -1}
		kernel_data_V_2_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_35 {Type IO LastRead -1 FirstWrite -1}
		w14_V {Type I LastRead -1 FirstWrite -1}
		pX_1 {Type IO LastRead -1 FirstWrite -1}
		sX_1 {Type IO LastRead -1 FirstWrite -1}
		pY_1 {Type IO LastRead -1 FirstWrite -1}
		sY_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_3 {Type X LastRead -1 FirstWrite -1}
		kernel_data_V_4_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_35 {Type IO LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}
		pX_8 {Type IO LastRead -1 FirstWrite -1}
		sX_8 {Type IO LastRead -1 FirstWrite -1}
		pY_8 {Type IO LastRead -1 FirstWrite -1}
		sY_8 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_3 {Type X LastRead -1 FirstWrite -1}
		kernel_data_V_5_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_35 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_36 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_37 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_38 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_39 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_40 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_41 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_42 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_43 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_44 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_45 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_46 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_47 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_48 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_49 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_50 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_51 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_52 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_53 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_54 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_55 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_56 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_57 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_58 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_59 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_60 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_61 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_62 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_63 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_64 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_65 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_66 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_67 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_68 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_69 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_70 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_71 {Type IO LastRead -1 FirstWrite -1}
		w20_V {Type I LastRead -1 FirstWrite -1}
		pX_7 {Type IO LastRead -1 FirstWrite -1}
		sX_7 {Type IO LastRead -1 FirstWrite -1}
		pY_7 {Type IO LastRead -1 FirstWrite -1}
		sY_7 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_7 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_7 {Type X LastRead -1 FirstWrite -1}}
	zeropad2d_cl_array_array_ap_fixed_1u_config22_s {
		data_V_data_V {Type I LastRead 3 FirstWrite -1}
		res_V_data_V {Type O LastRead -1 FirstWrite 1}}
	conv_2d_cl_array_array_ap_fixed_8u_config2_s {
		data_V_data_V {Type I LastRead 1 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_4_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_5_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_6_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_7_V {Type O LastRead -1 FirstWrite 11}
		kernel_data_V_8473 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1466 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2467 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3468 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4469 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5470 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6471 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7472 {Type IO LastRead -1 FirstWrite -1}
		w2_V {Type I LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1465_0 {Type X LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_1u_config2_s {
		in_elem_data_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_1_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_2_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_4_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_5_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_7_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_8_V_read {Type I LastRead 0 FirstWrite -1}
		line_buffer_Array_V_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1465_0 {Type X LastRead -1 FirstWrite -1}}
	relu_array_array_ap_fixed_8u_relu_config3_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_4_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_5_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_6_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_7_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_4_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_5_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_6_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_7_V {Type O LastRead -1 FirstWrite 4}}
	pooling2d_cl_array_array_ap_fixed_8u_config4_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_4_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_5_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_6_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_7_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 5}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 5}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 5}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 5}
		res_V_data_4_V {Type O LastRead -1 FirstWrite 5}
		res_V_data_5_V {Type O LastRead -1 FirstWrite 5}
		res_V_data_6_V {Type O LastRead -1 FirstWrite 5}
		res_V_data_7_V {Type O LastRead -1 FirstWrite 5}
		pX {Type IO LastRead -1 FirstWrite -1}
		sX {Type IO LastRead -1 FirstWrite -1}
		pY {Type IO LastRead -1 FirstWrite -1}
		sY {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_9_31 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_7 {Type X LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_8u_config4_s {
		in_elem_data_0_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_1_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_2_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_3_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_4_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_5_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_6_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_7_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_8_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_9_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_10_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_11_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_12_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_13_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_14_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_15_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_24_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_25_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_26_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_27_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_28_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_29_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_30_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_31_V_read {Type I LastRead 0 FirstWrite -1}
		line_buffer_Array_V_9_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_9_0_7 {Type X LastRead -1 FirstWrite -1}}
	zeropad2d_cl_array_array_ap_fixed_8u_config23_s {
		data_V_data_0_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_4_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_5_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_6_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_7_V {Type I LastRead 3 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_4_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_5_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_6_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_7_V {Type O LastRead -1 FirstWrite 1}}
	conv_2d_cl_array_array_ap_fixed_4u_config5_s {
		data_V_data_0_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_4_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_5_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_6_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_7_V {Type I LastRead 1 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 11}
		kernel_data_V_6_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_35 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_36 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_37 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_38 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_39 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_40 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_41 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_42 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_43 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_44 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_45 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_46 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_47 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_48 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_49 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_50 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_51 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_52 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_53 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_54 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_55 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_56 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_57 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_58 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_59 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_60 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_61 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_62 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_63 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_64 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_65 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_66 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_67 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_68 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_69 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_70 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_6_71 {Type IO LastRead -1 FirstWrite -1}
		w5_V {Type I LastRead -1 FirstWrite -1}
		pX_6 {Type IO LastRead -1 FirstWrite -1}
		sX_6 {Type IO LastRead -1 FirstWrite -1}
		pY_6 {Type IO LastRead -1 FirstWrite -1}
		sY_6 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_7 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_7 {Type X LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_8u_config5_s {
		in_elem_data_0_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_1_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_2_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_3_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_4_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_5_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_6_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_7_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_8_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_9_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_10_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_11_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_12_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_13_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_14_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_15_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_16_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_17_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_18_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_19_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_20_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_21_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_22_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_23_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_32_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_33_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_34_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_35_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_36_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_37_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_38_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_39_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_40_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_41_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_42_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_43_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_44_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_45_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_46_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_47_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_56_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_57_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_58_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_59_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_60_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_61_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_62_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_63_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_64_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_65_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_66_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_67_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_68_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_69_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_70_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_71_V_read {Type I LastRead 0 FirstWrite -1}
		line_buffer_Array_V_6_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_0_7 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_6_1_7 {Type X LastRead -1 FirstWrite -1}}
	relu_array_array_ap_fixed_4u_relu_config6_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 4}}
	pooling2d_cl_array_array_ap_fixed_4u_config7_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 5}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 5}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 5}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 5}
		pX_4 {Type IO LastRead -1 FirstWrite -1}
		sX_4 {Type IO LastRead -1 FirstWrite -1}
		pY_4 {Type IO LastRead -1 FirstWrite -1}
		sY_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_8_15 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_8_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_8_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_8_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_8_0_3 {Type X LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_4u_config7_s {
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
		line_buffer_Array_V_8_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_8_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_8_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_8_0_3 {Type X LastRead -1 FirstWrite -1}}
	zeropad2d_cl_array_array_ap_fixed_4u_config24_s {
		data_V_data_0_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 3 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 1}}
	conv_2d_cl_array_array_ap_fixed_4u_config8_s {
		data_V_data_0_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 1 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 11}
		kernel_data_V_3_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_3_35 {Type IO LastRead -1 FirstWrite -1}
		w8_V {Type I LastRead -1 FirstWrite -1}
		pX_9 {Type IO LastRead -1 FirstWrite -1}
		sX_9 {Type IO LastRead -1 FirstWrite -1}
		pY_9 {Type IO LastRead -1 FirstWrite -1}
		sY_9 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_3 {Type X LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_4u_config8_s {
		in_elem_data_0_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_1_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_2_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_3_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_4_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_5_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_6_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_7_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_8_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_9_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_10_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_11_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_16_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_17_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_18_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_19_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_20_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_21_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_22_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_23_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_28_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_29_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_30_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_31_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_32_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_33_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_34_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_35_V_read {Type I LastRead 0 FirstWrite -1}
		line_buffer_Array_V_3_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_3_1_3 {Type X LastRead -1 FirstWrite -1}}
	relu_array_array_ap_fixed_4u_relu_config9_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 4}}
	pooling2d_cl_array_array_ap_fixed_4u_config10_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 5}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 5}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 5}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 5}
		pX_5 {Type IO LastRead -1 FirstWrite -1}
		sX_5 {Type IO LastRead -1 FirstWrite -1}
		pY_5 {Type IO LastRead -1 FirstWrite -1}
		sY_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_7_15 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_7_0_3 {Type X LastRead -1 FirstWrite -1}}
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
		line_buffer_Array_V_7_0_3 {Type X LastRead -1 FirstWrite -1}}
	zeropad2d_cl_array_array_ap_fixed_4u_config25_s {
		data_V_data_0_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 3 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 1}}
	conv_2d_cl_array_array_ap_fixed_4u_config11_s {
		data_V_data_0_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 1 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 11}
		kernel_data_V_1_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_1_35 {Type IO LastRead -1 FirstWrite -1}
		w11_V {Type I LastRead -1 FirstWrite -1}
		pX_2 {Type IO LastRead -1 FirstWrite -1}
		sX_2 {Type IO LastRead -1 FirstWrite -1}
		pY_2 {Type IO LastRead -1 FirstWrite -1}
		sY_2 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_3 {Type X LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_4u_config11_s {
		in_elem_data_0_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_1_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_2_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_3_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_4_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_5_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_6_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_7_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_8_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_9_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_10_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_11_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_16_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_17_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_18_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_19_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_20_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_21_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_22_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_23_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_28_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_29_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_30_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_31_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_32_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_33_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_34_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_35_V_read {Type I LastRead 0 FirstWrite -1}
		line_buffer_Array_V_1_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_1_1_3 {Type X LastRead -1 FirstWrite -1}}
	relu_array_array_ap_fixed_4u_relu_config12_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 4}}
	resize_nearest_array_ap_fixed_4u_config13_s {
		image_V_data_0_V {Type I LastRead 8 FirstWrite -1}
		image_V_data_1_V {Type I LastRead 8 FirstWrite -1}
		image_V_data_2_V {Type I LastRead 8 FirstWrite -1}
		image_V_data_3_V {Type I LastRead 8 FirstWrite -1}
		resized_V_data_0_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_1_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_2_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_3_V {Type O LastRead -1 FirstWrite 2}}
	zeropad2d_cl_array_array_ap_fixed_4u_config26_s {
		data_V_data_0_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 3 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 1}}
	conv_2d_cl_array_array_ap_fixed_4u_config14_s {
		data_V_data_0_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 1 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 11}
		kernel_data_V_2_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_2_35 {Type IO LastRead -1 FirstWrite -1}
		w14_V {Type I LastRead -1 FirstWrite -1}
		pX_1 {Type IO LastRead -1 FirstWrite -1}
		sX_1 {Type IO LastRead -1 FirstWrite -1}
		pY_1 {Type IO LastRead -1 FirstWrite -1}
		sY_1 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_3 {Type X LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_4u_config14_s {
		in_elem_data_0_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_1_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_2_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_3_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_4_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_5_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_6_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_7_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_8_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_9_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_10_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_11_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_16_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_17_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_18_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_19_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_20_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_21_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_22_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_23_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_28_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_29_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_30_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_31_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_32_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_33_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_34_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_35_V_read {Type I LastRead 0 FirstWrite -1}
		line_buffer_Array_V_2_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_2_1_3 {Type X LastRead -1 FirstWrite -1}}
	relu_array_array_ap_fixed_4u_relu_config15_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 4}}
	resize_nearest_array_ap_fixed_4u_config16_s {
		image_V_data_0_V {Type I LastRead 13 FirstWrite -1}
		image_V_data_1_V {Type I LastRead 13 FirstWrite -1}
		image_V_data_2_V {Type I LastRead 13 FirstWrite -1}
		image_V_data_3_V {Type I LastRead 13 FirstWrite -1}
		resized_V_data_0_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_1_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_2_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_3_V {Type O LastRead -1 FirstWrite 2}}
	zeropad2d_cl_array_array_ap_fixed_4u_config27_s {
		data_V_data_0_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 3 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 1}}
	conv_2d_cl_array_array_ap_fixed_8u_config17_s {
		data_V_data_0_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 1 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_4_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_5_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_6_V {Type O LastRead -1 FirstWrite 11}
		res_V_data_7_V {Type O LastRead -1 FirstWrite 11}
		kernel_data_V_4_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_4_35 {Type IO LastRead -1 FirstWrite -1}
		w17_V {Type I LastRead -1 FirstWrite -1}
		pX_8 {Type IO LastRead -1 FirstWrite -1}
		sX_8 {Type IO LastRead -1 FirstWrite -1}
		pY_8 {Type IO LastRead -1 FirstWrite -1}
		sY_8 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_3 {Type X LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_4u_config17_s {
		in_elem_data_0_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_1_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_2_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_3_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_4_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_5_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_6_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_7_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_8_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_9_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_10_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_11_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_16_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_17_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_18_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_19_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_20_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_21_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_22_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_23_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_28_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_29_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_30_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_31_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_32_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_33_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_34_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_35_V_read {Type I LastRead 0 FirstWrite -1}
		line_buffer_Array_V_4_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_4_1_3 {Type X LastRead -1 FirstWrite -1}}
	relu_array_array_ap_fixed_8u_relu_config18_s {
		data_V_data_0_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_4_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_5_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_6_V {Type I LastRead 2 FirstWrite -1}
		data_V_data_7_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_4_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_5_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_6_V {Type O LastRead -1 FirstWrite 4}
		res_V_data_7_V {Type O LastRead -1 FirstWrite 4}}
	resize_nearest_array_ap_fixed_8u_config19_s {
		image_V_data_0_V {Type I LastRead 25 FirstWrite -1}
		image_V_data_1_V {Type I LastRead 25 FirstWrite -1}
		image_V_data_2_V {Type I LastRead 25 FirstWrite -1}
		image_V_data_3_V {Type I LastRead 25 FirstWrite -1}
		image_V_data_4_V {Type I LastRead 25 FirstWrite -1}
		image_V_data_5_V {Type I LastRead 25 FirstWrite -1}
		image_V_data_6_V {Type I LastRead 25 FirstWrite -1}
		image_V_data_7_V {Type I LastRead 25 FirstWrite -1}
		resized_V_data_0_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_1_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_2_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_3_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_4_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_5_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_6_V {Type O LastRead -1 FirstWrite 2}
		resized_V_data_7_V {Type O LastRead -1 FirstWrite 2}}
	zeropad2d_cl_array_array_ap_fixed_8u_config28_s {
		data_V_data_0_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_4_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_5_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_6_V {Type I LastRead 3 FirstWrite -1}
		data_V_data_7_V {Type I LastRead 3 FirstWrite -1}
		res_V_data_0_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_1_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_2_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_3_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_4_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_5_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_6_V {Type O LastRead -1 FirstWrite 1}
		res_V_data_7_V {Type O LastRead -1 FirstWrite 1}}
	conv_2d_cl_array_array_ap_fixed_1u_config20_s {
		data_V_data_0_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_1_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_2_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_3_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_4_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_5_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_6_V {Type I LastRead 1 FirstWrite -1}
		data_V_data_7_V {Type I LastRead 1 FirstWrite -1}
		res_V_data_V {Type O LastRead -1 FirstWrite 11}
		kernel_data_V_5_0 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_1 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_2 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_3 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_4 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_5 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_6 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_7 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_8 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_9 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_10 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_11 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_12 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_13 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_14 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_15 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_16 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_17 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_18 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_19 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_20 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_21 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_22 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_23 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_24 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_25 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_26 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_27 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_28 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_29 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_30 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_31 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_32 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_33 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_34 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_35 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_36 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_37 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_38 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_39 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_40 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_41 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_42 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_43 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_44 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_45 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_46 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_47 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_48 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_49 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_50 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_51 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_52 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_53 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_54 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_55 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_56 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_57 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_58 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_59 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_60 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_61 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_62 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_63 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_64 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_65 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_66 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_67 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_68 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_69 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_70 {Type IO LastRead -1 FirstWrite -1}
		kernel_data_V_5_71 {Type IO LastRead -1 FirstWrite -1}
		w20_V {Type I LastRead -1 FirstWrite -1}
		pX_7 {Type IO LastRead -1 FirstWrite -1}
		sX_7 {Type IO LastRead -1 FirstWrite -1}
		pY_7 {Type IO LastRead -1 FirstWrite -1}
		sY_7 {Type IO LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_7 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_7 {Type X LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_8u_config20_s {
		in_elem_data_0_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_1_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_2_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_3_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_4_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_5_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_6_V_read {Type I LastRead 0 FirstWrite -1}
		in_elem_data_7_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_8_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_9_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_10_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_11_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_12_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_13_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_14_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_15_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_16_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_17_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_18_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_19_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_20_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_21_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_22_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_23_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_32_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_33_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_34_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_35_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_36_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_37_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_38_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_39_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_40_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_41_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_42_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_43_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_44_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_45_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_46_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_47_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_56_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_57_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_58_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_59_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_60_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_61_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_62_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_63_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_64_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_65_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_66_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_67_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_68_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_69_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_70_V_read {Type I LastRead 0 FirstWrite -1}
		kernel_window_71_V_read {Type I LastRead 0 FirstWrite -1}
		line_buffer_Array_V_5_0_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_0 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_1 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_2 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_3 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_4 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_5 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_6 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_0_7 {Type X LastRead -1 FirstWrite -1}
		line_buffer_Array_V_5_1_7 {Type X LastRead -1 FirstWrite -1}}
	relu_array_array_ap_fixed_1u_relu_config21_s {
		data_V_data_V {Type I LastRead 2 FirstWrite -1}
		res_V_data_V {Type O LastRead -1 FirstWrite 4}}
	Loop_2_proc {
		out_data {Type O LastRead -1 FirstWrite 10}
		out_last_V {Type O LastRead -1 FirstWrite 10}
		out_local_V_data_0_V {Type I LastRead 1 FirstWrite -1}
		is_last_0_i_loc {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "96019", "Max" : "96170"}
	, {"Name" : "Interval", "Min" : "11266", "Max" : "95949"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_data { axis {  { in_r_TDATA in_data 0 32 }  { in_r_TVALID in_vld 0 1 }  { in_r_TREADY in_acc 1 1 } } }
	in_last_V { axis {  { in_r_TLAST in_data 0 1 } } }
	out_data { axis {  { out_r_TDATA out_data 1 32 } } }
	out_last_V { axis {  { out_r_TLAST out_data 1 1 }  { out_r_TVALID out_vld 1 1 }  { out_r_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
