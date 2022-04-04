set moduleName conv_2d_cl_array_array_ap_fixed_4u_config5_s
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
set C_modelName {conv_2d_cl<array,array<ap_fixed,4u>,config5>}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_V_data_0_V int 32 regular {fifo 0 volatile }  }
	{ data_V_data_1_V int 32 regular {fifo 0 volatile }  }
	{ data_V_data_2_V int 32 regular {fifo 0 volatile }  }
	{ data_V_data_3_V int 32 regular {fifo 0 volatile }  }
	{ data_V_data_4_V int 32 regular {fifo 0 volatile }  }
	{ data_V_data_5_V int 32 regular {fifo 0 volatile }  }
	{ data_V_data_6_V int 32 regular {fifo 0 volatile }  }
	{ data_V_data_7_V int 32 regular {fifo 0 volatile }  }
	{ res_V_data_0_V int 32 regular {fifo 1 volatile }  }
	{ res_V_data_1_V int 32 regular {fifo 1 volatile }  }
	{ res_V_data_2_V int 32 regular {fifo 1 volatile }  }
	{ res_V_data_3_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_V_data_0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_data_1_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_data_2_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_data_3_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_data_4_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_data_5_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_data_6_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_V_data_7_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "res_V_data_0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_V_data_1_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_V_data_2_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "res_V_data_3_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 46
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
	{ data_V_data_0_V_dout sc_in sc_lv 32 signal 0 } 
	{ data_V_data_0_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ data_V_data_0_V_read sc_out sc_logic 1 signal 0 } 
	{ data_V_data_1_V_dout sc_in sc_lv 32 signal 1 } 
	{ data_V_data_1_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ data_V_data_1_V_read sc_out sc_logic 1 signal 1 } 
	{ data_V_data_2_V_dout sc_in sc_lv 32 signal 2 } 
	{ data_V_data_2_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ data_V_data_2_V_read sc_out sc_logic 1 signal 2 } 
	{ data_V_data_3_V_dout sc_in sc_lv 32 signal 3 } 
	{ data_V_data_3_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ data_V_data_3_V_read sc_out sc_logic 1 signal 3 } 
	{ data_V_data_4_V_dout sc_in sc_lv 32 signal 4 } 
	{ data_V_data_4_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ data_V_data_4_V_read sc_out sc_logic 1 signal 4 } 
	{ data_V_data_5_V_dout sc_in sc_lv 32 signal 5 } 
	{ data_V_data_5_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ data_V_data_5_V_read sc_out sc_logic 1 signal 5 } 
	{ data_V_data_6_V_dout sc_in sc_lv 32 signal 6 } 
	{ data_V_data_6_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ data_V_data_6_V_read sc_out sc_logic 1 signal 6 } 
	{ data_V_data_7_V_dout sc_in sc_lv 32 signal 7 } 
	{ data_V_data_7_V_empty_n sc_in sc_logic 1 signal 7 } 
	{ data_V_data_7_V_read sc_out sc_logic 1 signal 7 } 
	{ res_V_data_0_V_din sc_out sc_lv 32 signal 8 } 
	{ res_V_data_0_V_full_n sc_in sc_logic 1 signal 8 } 
	{ res_V_data_0_V_write sc_out sc_logic 1 signal 8 } 
	{ res_V_data_1_V_din sc_out sc_lv 32 signal 9 } 
	{ res_V_data_1_V_full_n sc_in sc_logic 1 signal 9 } 
	{ res_V_data_1_V_write sc_out sc_logic 1 signal 9 } 
	{ res_V_data_2_V_din sc_out sc_lv 32 signal 10 } 
	{ res_V_data_2_V_full_n sc_in sc_logic 1 signal 10 } 
	{ res_V_data_2_V_write sc_out sc_logic 1 signal 10 } 
	{ res_V_data_3_V_din sc_out sc_lv 32 signal 11 } 
	{ res_V_data_3_V_full_n sc_in sc_logic 1 signal 11 } 
	{ res_V_data_3_V_write sc_out sc_logic 1 signal 11 } 
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
 	{ "name": "data_V_data_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_V_data_0_V", "role": "dout" }} , 
 	{ "name": "data_V_data_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_0_V", "role": "empty_n" }} , 
 	{ "name": "data_V_data_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_0_V", "role": "read" }} , 
 	{ "name": "data_V_data_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_V_data_1_V", "role": "dout" }} , 
 	{ "name": "data_V_data_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_1_V", "role": "empty_n" }} , 
 	{ "name": "data_V_data_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_1_V", "role": "read" }} , 
 	{ "name": "data_V_data_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_V_data_2_V", "role": "dout" }} , 
 	{ "name": "data_V_data_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_2_V", "role": "empty_n" }} , 
 	{ "name": "data_V_data_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_2_V", "role": "read" }} , 
 	{ "name": "data_V_data_3_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_V_data_3_V", "role": "dout" }} , 
 	{ "name": "data_V_data_3_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_3_V", "role": "empty_n" }} , 
 	{ "name": "data_V_data_3_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_3_V", "role": "read" }} , 
 	{ "name": "data_V_data_4_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_V_data_4_V", "role": "dout" }} , 
 	{ "name": "data_V_data_4_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_4_V", "role": "empty_n" }} , 
 	{ "name": "data_V_data_4_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_4_V", "role": "read" }} , 
 	{ "name": "data_V_data_5_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_V_data_5_V", "role": "dout" }} , 
 	{ "name": "data_V_data_5_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_5_V", "role": "empty_n" }} , 
 	{ "name": "data_V_data_5_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_5_V", "role": "read" }} , 
 	{ "name": "data_V_data_6_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_V_data_6_V", "role": "dout" }} , 
 	{ "name": "data_V_data_6_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_6_V", "role": "empty_n" }} , 
 	{ "name": "data_V_data_6_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_6_V", "role": "read" }} , 
 	{ "name": "data_V_data_7_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_V_data_7_V", "role": "dout" }} , 
 	{ "name": "data_V_data_7_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_7_V", "role": "empty_n" }} , 
 	{ "name": "data_V_data_7_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_V_data_7_V", "role": "read" }} , 
 	{ "name": "res_V_data_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_V_data_0_V", "role": "din" }} , 
 	{ "name": "res_V_data_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_0_V", "role": "full_n" }} , 
 	{ "name": "res_V_data_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_0_V", "role": "write" }} , 
 	{ "name": "res_V_data_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_V_data_1_V", "role": "din" }} , 
 	{ "name": "res_V_data_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_1_V", "role": "full_n" }} , 
 	{ "name": "res_V_data_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_1_V", "role": "write" }} , 
 	{ "name": "res_V_data_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_V_data_2_V", "role": "din" }} , 
 	{ "name": "res_V_data_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_2_V", "role": "full_n" }} , 
 	{ "name": "res_V_data_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_2_V", "role": "write" }} , 
 	{ "name": "res_V_data_3_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "res_V_data_3_V", "role": "din" }} , 
 	{ "name": "res_V_data_3_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_3_V", "role": "full_n" }} , 
 	{ "name": "res_V_data_3_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "res_V_data_3_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "19", "20", "21", "22", "23"],
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
		"Port" : [
			{"Name" : "data_V_data_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_data_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_data_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_data_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_data_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_V_data_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_V_data_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_data_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_data_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "res_V_data_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "res_V_data_3_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
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
					{"ID" : "2", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_0_0"}]},
			{"Name" : "line_buffer_Array_V_6_1_0", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_1_0"}]},
			{"Name" : "line_buffer_Array_V_6_0_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_0_1"}]},
			{"Name" : "line_buffer_Array_V_6_1_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_1_1"}]},
			{"Name" : "line_buffer_Array_V_6_0_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_0_2"}]},
			{"Name" : "line_buffer_Array_V_6_1_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_1_2"}]},
			{"Name" : "line_buffer_Array_V_6_0_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_0_3"}]},
			{"Name" : "line_buffer_Array_V_6_1_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_1_3"}]},
			{"Name" : "line_buffer_Array_V_6_0_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_0_4"}]},
			{"Name" : "line_buffer_Array_V_6_1_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_1_4"}]},
			{"Name" : "line_buffer_Array_V_6_0_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_0_5"}]},
			{"Name" : "line_buffer_Array_V_6_1_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_1_5"}]},
			{"Name" : "line_buffer_Array_V_6_0_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_0_6"}]},
			{"Name" : "line_buffer_Array_V_6_1_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_1_6"}]},
			{"Name" : "line_buffer_Array_V_6_0_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_0_7"}]},
			{"Name" : "line_buffer_Array_V_6_1_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Port" : "line_buffer_Array_V_6_1_7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w5_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_0_0_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_1_0_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_0_1_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_1_1_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_0_2_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_1_2_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_0_3_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_1_3_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_0_4_U", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_1_4_U", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_0_5_U", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_1_5_U", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_0_6_U", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_1_6_U", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_0_7_U", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ret_shift_line_buffer_array_ap_fixed_8u_config5_s_fu_434.line_buffer_Array_V_6_1_7_U", "Parent" : "2"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mux_727_32_1_1_U172", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_32s_32s_48_5_1_U173", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_32s_32s_48_5_1_U174", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_32s_32s_48_5_1_U175", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myproject_axi_mul_32s_17s_48_5_1_U176", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		line_buffer_Array_V_6_1_7 {Type X LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1296", "Max" : "26892"}
	, {"Name" : "Interval", "Min" : "1296", "Max" : "26892"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_V_data_0_V { ap_fifo {  { data_V_data_0_V_dout fifo_data 0 32 }  { data_V_data_0_V_empty_n fifo_status 0 1 }  { data_V_data_0_V_read fifo_update 1 1 } } }
	data_V_data_1_V { ap_fifo {  { data_V_data_1_V_dout fifo_data 0 32 }  { data_V_data_1_V_empty_n fifo_status 0 1 }  { data_V_data_1_V_read fifo_update 1 1 } } }
	data_V_data_2_V { ap_fifo {  { data_V_data_2_V_dout fifo_data 0 32 }  { data_V_data_2_V_empty_n fifo_status 0 1 }  { data_V_data_2_V_read fifo_update 1 1 } } }
	data_V_data_3_V { ap_fifo {  { data_V_data_3_V_dout fifo_data 0 32 }  { data_V_data_3_V_empty_n fifo_status 0 1 }  { data_V_data_3_V_read fifo_update 1 1 } } }
	data_V_data_4_V { ap_fifo {  { data_V_data_4_V_dout fifo_data 0 32 }  { data_V_data_4_V_empty_n fifo_status 0 1 }  { data_V_data_4_V_read fifo_update 1 1 } } }
	data_V_data_5_V { ap_fifo {  { data_V_data_5_V_dout fifo_data 0 32 }  { data_V_data_5_V_empty_n fifo_status 0 1 }  { data_V_data_5_V_read fifo_update 1 1 } } }
	data_V_data_6_V { ap_fifo {  { data_V_data_6_V_dout fifo_data 0 32 }  { data_V_data_6_V_empty_n fifo_status 0 1 }  { data_V_data_6_V_read fifo_update 1 1 } } }
	data_V_data_7_V { ap_fifo {  { data_V_data_7_V_dout fifo_data 0 32 }  { data_V_data_7_V_empty_n fifo_status 0 1 }  { data_V_data_7_V_read fifo_update 1 1 } } }
	res_V_data_0_V { ap_fifo {  { res_V_data_0_V_din fifo_data 1 32 }  { res_V_data_0_V_full_n fifo_status 0 1 }  { res_V_data_0_V_write fifo_update 1 1 } } }
	res_V_data_1_V { ap_fifo {  { res_V_data_1_V_din fifo_data 1 32 }  { res_V_data_1_V_full_n fifo_status 0 1 }  { res_V_data_1_V_write fifo_update 1 1 } } }
	res_V_data_2_V { ap_fifo {  { res_V_data_2_V_din fifo_data 1 32 }  { res_V_data_2_V_full_n fifo_status 0 1 }  { res_V_data_2_V_write fifo_update 1 1 } } }
	res_V_data_3_V { ap_fifo {  { res_V_data_3_V_din fifo_data 1 32 }  { res_V_data_3_V_full_n fifo_status 0 1 }  { res_V_data_3_V_write fifo_update 1 1 } } }
}
