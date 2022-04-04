set moduleName shift_line_buffer_array_ap_fixed_4u_config14_s
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
set C_modelName {shift_line_buffer<array<ap_fixed,4u>,config14>}
set C_modelType { int 1152 }
set C_modelArgList {
	{ in_elem_data_0_V_read int 32 regular  }
	{ in_elem_data_1_V_read int 32 regular  }
	{ in_elem_data_2_V_read int 32 regular  }
	{ in_elem_data_3_V_read int 32 regular  }
	{ kernel_window_4_V_read int 32 regular  }
	{ kernel_window_5_V_read int 32 regular  }
	{ kernel_window_6_V_read int 32 regular  }
	{ kernel_window_7_V_read int 32 regular  }
	{ kernel_window_8_V_read int 32 regular  }
	{ kernel_window_9_V_read int 32 regular  }
	{ kernel_window_10_V_read int 32 regular  }
	{ kernel_window_11_V_read int 32 regular  }
	{ kernel_window_16_V_read int 32 regular  }
	{ kernel_window_17_V_read int 32 regular  }
	{ kernel_window_18_V_read int 32 regular  }
	{ kernel_window_19_V_read int 32 regular  }
	{ kernel_window_20_V_read int 32 regular  }
	{ kernel_window_21_V_read int 32 regular  }
	{ kernel_window_22_V_read int 32 regular  }
	{ kernel_window_23_V_read int 32 regular  }
	{ kernel_window_28_V_read int 32 regular  }
	{ kernel_window_29_V_read int 32 regular  }
	{ kernel_window_30_V_read int 32 regular  }
	{ kernel_window_31_V_read int 32 regular  }
	{ kernel_window_32_V_read int 32 regular  }
	{ kernel_window_33_V_read int 32 regular  }
	{ kernel_window_34_V_read int 32 regular  }
	{ kernel_window_35_V_read int 32 regular  }
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
 	{ "Name" : "kernel_window_8_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_9_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_10_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_11_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_16_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_17_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_18_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_19_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_20_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_21_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_22_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_23_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_28_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_29_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_30_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_31_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_32_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_33_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_34_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "kernel_window_35_V_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1152} ]}
# RTL Port declarations: 
set portNum 70
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
	{ kernel_window_8_V_read sc_in sc_lv 32 signal 8 } 
	{ kernel_window_9_V_read sc_in sc_lv 32 signal 9 } 
	{ kernel_window_10_V_read sc_in sc_lv 32 signal 10 } 
	{ kernel_window_11_V_read sc_in sc_lv 32 signal 11 } 
	{ kernel_window_16_V_read sc_in sc_lv 32 signal 12 } 
	{ kernel_window_17_V_read sc_in sc_lv 32 signal 13 } 
	{ kernel_window_18_V_read sc_in sc_lv 32 signal 14 } 
	{ kernel_window_19_V_read sc_in sc_lv 32 signal 15 } 
	{ kernel_window_20_V_read sc_in sc_lv 32 signal 16 } 
	{ kernel_window_21_V_read sc_in sc_lv 32 signal 17 } 
	{ kernel_window_22_V_read sc_in sc_lv 32 signal 18 } 
	{ kernel_window_23_V_read sc_in sc_lv 32 signal 19 } 
	{ kernel_window_28_V_read sc_in sc_lv 32 signal 20 } 
	{ kernel_window_29_V_read sc_in sc_lv 32 signal 21 } 
	{ kernel_window_30_V_read sc_in sc_lv 32 signal 22 } 
	{ kernel_window_31_V_read sc_in sc_lv 32 signal 23 } 
	{ kernel_window_32_V_read sc_in sc_lv 32 signal 24 } 
	{ kernel_window_33_V_read sc_in sc_lv 32 signal 25 } 
	{ kernel_window_34_V_read sc_in sc_lv 32 signal 26 } 
	{ kernel_window_35_V_read sc_in sc_lv 32 signal 27 } 
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
	{ ap_return_16 sc_out sc_lv 32 signal -1 } 
	{ ap_return_17 sc_out sc_lv 32 signal -1 } 
	{ ap_return_18 sc_out sc_lv 32 signal -1 } 
	{ ap_return_19 sc_out sc_lv 32 signal -1 } 
	{ ap_return_20 sc_out sc_lv 32 signal -1 } 
	{ ap_return_21 sc_out sc_lv 32 signal -1 } 
	{ ap_return_22 sc_out sc_lv 32 signal -1 } 
	{ ap_return_23 sc_out sc_lv 32 signal -1 } 
	{ ap_return_24 sc_out sc_lv 32 signal -1 } 
	{ ap_return_25 sc_out sc_lv 32 signal -1 } 
	{ ap_return_26 sc_out sc_lv 32 signal -1 } 
	{ ap_return_27 sc_out sc_lv 32 signal -1 } 
	{ ap_return_28 sc_out sc_lv 32 signal -1 } 
	{ ap_return_29 sc_out sc_lv 32 signal -1 } 
	{ ap_return_30 sc_out sc_lv 32 signal -1 } 
	{ ap_return_31 sc_out sc_lv 32 signal -1 } 
	{ ap_return_32 sc_out sc_lv 32 signal -1 } 
	{ ap_return_33 sc_out sc_lv 32 signal -1 } 
	{ ap_return_34 sc_out sc_lv 32 signal -1 } 
	{ ap_return_35 sc_out sc_lv 32 signal -1 } 
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
 	{ "name": "kernel_window_8_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_8_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_9_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_9_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_10_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_10_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_11_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_11_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_16_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_16_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_17_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_17_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_18_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_18_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_19_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_19_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_20_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_20_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_21_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_21_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_22_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_22_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_23_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_23_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_28_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_28_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_29_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_29_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_30_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_30_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_31_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_31_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_32_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_32_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_33_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_33_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_34_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_34_V_read", "role": "default" }} , 
 	{ "name": "kernel_window_35_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "kernel_window_35_V_read", "role": "default" }} , 
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
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }} , 
 	{ "name": "ap_return_23", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_23", "role": "default" }} , 
 	{ "name": "ap_return_24", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_24", "role": "default" }} , 
 	{ "name": "ap_return_25", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_25", "role": "default" }} , 
 	{ "name": "ap_return_26", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_26", "role": "default" }} , 
 	{ "name": "ap_return_27", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_27", "role": "default" }} , 
 	{ "name": "ap_return_28", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_28", "role": "default" }} , 
 	{ "name": "ap_return_29", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_29", "role": "default" }} , 
 	{ "name": "ap_return_30", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_30", "role": "default" }} , 
 	{ "name": "ap_return_31", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_31", "role": "default" }} , 
 	{ "name": "ap_return_32", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_32", "role": "default" }} , 
 	{ "name": "ap_return_33", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_33", "role": "default" }} , 
 	{ "name": "ap_return_34", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_34", "role": "default" }} , 
 	{ "name": "ap_return_35", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_35", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_Array_V_2_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_Array_V_2_1_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_Array_V_2_0_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_Array_V_2_1_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_Array_V_2_0_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_Array_V_2_1_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_Array_V_2_0_3_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buffer_Array_V_2_1_3_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		line_buffer_Array_V_2_1_3 {Type X LastRead -1 FirstWrite -1}}}

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
	kernel_window_8_V_read { ap_none {  { kernel_window_8_V_read in_data 0 32 } } }
	kernel_window_9_V_read { ap_none {  { kernel_window_9_V_read in_data 0 32 } } }
	kernel_window_10_V_read { ap_none {  { kernel_window_10_V_read in_data 0 32 } } }
	kernel_window_11_V_read { ap_none {  { kernel_window_11_V_read in_data 0 32 } } }
	kernel_window_16_V_read { ap_none {  { kernel_window_16_V_read in_data 0 32 } } }
	kernel_window_17_V_read { ap_none {  { kernel_window_17_V_read in_data 0 32 } } }
	kernel_window_18_V_read { ap_none {  { kernel_window_18_V_read in_data 0 32 } } }
	kernel_window_19_V_read { ap_none {  { kernel_window_19_V_read in_data 0 32 } } }
	kernel_window_20_V_read { ap_none {  { kernel_window_20_V_read in_data 0 32 } } }
	kernel_window_21_V_read { ap_none {  { kernel_window_21_V_read in_data 0 32 } } }
	kernel_window_22_V_read { ap_none {  { kernel_window_22_V_read in_data 0 32 } } }
	kernel_window_23_V_read { ap_none {  { kernel_window_23_V_read in_data 0 32 } } }
	kernel_window_28_V_read { ap_none {  { kernel_window_28_V_read in_data 0 32 } } }
	kernel_window_29_V_read { ap_none {  { kernel_window_29_V_read in_data 0 32 } } }
	kernel_window_30_V_read { ap_none {  { kernel_window_30_V_read in_data 0 32 } } }
	kernel_window_31_V_read { ap_none {  { kernel_window_31_V_read in_data 0 32 } } }
	kernel_window_32_V_read { ap_none {  { kernel_window_32_V_read in_data 0 32 } } }
	kernel_window_33_V_read { ap_none {  { kernel_window_33_V_read in_data 0 32 } } }
	kernel_window_34_V_read { ap_none {  { kernel_window_34_V_read in_data 0 32 } } }
	kernel_window_35_V_read { ap_none {  { kernel_window_35_V_read in_data 0 32 } } }
}
