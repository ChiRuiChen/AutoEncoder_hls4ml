// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _shift_line_buffer_array_ap_fixed_8u_config5_s_HH_
#define _shift_line_buffer_array_ap_fixed_8u_config5_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW.h"

namespace ap_rtl {

struct shift_line_buffer_array_ap_fixed_8u_config5_s : public sc_module {
    // Port declarations 134
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > in_elem_data_0_V_read;
    sc_in< sc_lv<32> > in_elem_data_1_V_read;
    sc_in< sc_lv<32> > in_elem_data_2_V_read;
    sc_in< sc_lv<32> > in_elem_data_3_V_read;
    sc_in< sc_lv<32> > in_elem_data_4_V_read;
    sc_in< sc_lv<32> > in_elem_data_5_V_read;
    sc_in< sc_lv<32> > in_elem_data_6_V_read;
    sc_in< sc_lv<32> > in_elem_data_7_V_read;
    sc_in< sc_lv<32> > kernel_window_8_V_read;
    sc_in< sc_lv<32> > kernel_window_9_V_read;
    sc_in< sc_lv<32> > kernel_window_10_V_read;
    sc_in< sc_lv<32> > kernel_window_11_V_read;
    sc_in< sc_lv<32> > kernel_window_12_V_read;
    sc_in< sc_lv<32> > kernel_window_13_V_read;
    sc_in< sc_lv<32> > kernel_window_14_V_read;
    sc_in< sc_lv<32> > kernel_window_15_V_read;
    sc_in< sc_lv<32> > kernel_window_16_V_read;
    sc_in< sc_lv<32> > kernel_window_17_V_read;
    sc_in< sc_lv<32> > kernel_window_18_V_read;
    sc_in< sc_lv<32> > kernel_window_19_V_read;
    sc_in< sc_lv<32> > kernel_window_20_V_read;
    sc_in< sc_lv<32> > kernel_window_21_V_read;
    sc_in< sc_lv<32> > kernel_window_22_V_read;
    sc_in< sc_lv<32> > kernel_window_23_V_read;
    sc_in< sc_lv<32> > kernel_window_32_V_read;
    sc_in< sc_lv<32> > kernel_window_33_V_read;
    sc_in< sc_lv<32> > kernel_window_34_V_read;
    sc_in< sc_lv<32> > kernel_window_35_V_read;
    sc_in< sc_lv<32> > kernel_window_36_V_read;
    sc_in< sc_lv<32> > kernel_window_37_V_read;
    sc_in< sc_lv<32> > kernel_window_38_V_read;
    sc_in< sc_lv<32> > kernel_window_39_V_read;
    sc_in< sc_lv<32> > kernel_window_40_V_read;
    sc_in< sc_lv<32> > kernel_window_41_V_read;
    sc_in< sc_lv<32> > kernel_window_42_V_read;
    sc_in< sc_lv<32> > kernel_window_43_V_read;
    sc_in< sc_lv<32> > kernel_window_44_V_read;
    sc_in< sc_lv<32> > kernel_window_45_V_read;
    sc_in< sc_lv<32> > kernel_window_46_V_read;
    sc_in< sc_lv<32> > kernel_window_47_V_read;
    sc_in< sc_lv<32> > kernel_window_56_V_read;
    sc_in< sc_lv<32> > kernel_window_57_V_read;
    sc_in< sc_lv<32> > kernel_window_58_V_read;
    sc_in< sc_lv<32> > kernel_window_59_V_read;
    sc_in< sc_lv<32> > kernel_window_60_V_read;
    sc_in< sc_lv<32> > kernel_window_61_V_read;
    sc_in< sc_lv<32> > kernel_window_62_V_read;
    sc_in< sc_lv<32> > kernel_window_63_V_read;
    sc_in< sc_lv<32> > kernel_window_64_V_read;
    sc_in< sc_lv<32> > kernel_window_65_V_read;
    sc_in< sc_lv<32> > kernel_window_66_V_read;
    sc_in< sc_lv<32> > kernel_window_67_V_read;
    sc_in< sc_lv<32> > kernel_window_68_V_read;
    sc_in< sc_lv<32> > kernel_window_69_V_read;
    sc_in< sc_lv<32> > kernel_window_70_V_read;
    sc_in< sc_lv<32> > kernel_window_71_V_read;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;
    sc_out< sc_lv<32> > ap_return_2;
    sc_out< sc_lv<32> > ap_return_3;
    sc_out< sc_lv<32> > ap_return_4;
    sc_out< sc_lv<32> > ap_return_5;
    sc_out< sc_lv<32> > ap_return_6;
    sc_out< sc_lv<32> > ap_return_7;
    sc_out< sc_lv<32> > ap_return_8;
    sc_out< sc_lv<32> > ap_return_9;
    sc_out< sc_lv<32> > ap_return_10;
    sc_out< sc_lv<32> > ap_return_11;
    sc_out< sc_lv<32> > ap_return_12;
    sc_out< sc_lv<32> > ap_return_13;
    sc_out< sc_lv<32> > ap_return_14;
    sc_out< sc_lv<32> > ap_return_15;
    sc_out< sc_lv<32> > ap_return_16;
    sc_out< sc_lv<32> > ap_return_17;
    sc_out< sc_lv<32> > ap_return_18;
    sc_out< sc_lv<32> > ap_return_19;
    sc_out< sc_lv<32> > ap_return_20;
    sc_out< sc_lv<32> > ap_return_21;
    sc_out< sc_lv<32> > ap_return_22;
    sc_out< sc_lv<32> > ap_return_23;
    sc_out< sc_lv<32> > ap_return_24;
    sc_out< sc_lv<32> > ap_return_25;
    sc_out< sc_lv<32> > ap_return_26;
    sc_out< sc_lv<32> > ap_return_27;
    sc_out< sc_lv<32> > ap_return_28;
    sc_out< sc_lv<32> > ap_return_29;
    sc_out< sc_lv<32> > ap_return_30;
    sc_out< sc_lv<32> > ap_return_31;
    sc_out< sc_lv<32> > ap_return_32;
    sc_out< sc_lv<32> > ap_return_33;
    sc_out< sc_lv<32> > ap_return_34;
    sc_out< sc_lv<32> > ap_return_35;
    sc_out< sc_lv<32> > ap_return_36;
    sc_out< sc_lv<32> > ap_return_37;
    sc_out< sc_lv<32> > ap_return_38;
    sc_out< sc_lv<32> > ap_return_39;
    sc_out< sc_lv<32> > ap_return_40;
    sc_out< sc_lv<32> > ap_return_41;
    sc_out< sc_lv<32> > ap_return_42;
    sc_out< sc_lv<32> > ap_return_43;
    sc_out< sc_lv<32> > ap_return_44;
    sc_out< sc_lv<32> > ap_return_45;
    sc_out< sc_lv<32> > ap_return_46;
    sc_out< sc_lv<32> > ap_return_47;
    sc_out< sc_lv<32> > ap_return_48;
    sc_out< sc_lv<32> > ap_return_49;
    sc_out< sc_lv<32> > ap_return_50;
    sc_out< sc_lv<32> > ap_return_51;
    sc_out< sc_lv<32> > ap_return_52;
    sc_out< sc_lv<32> > ap_return_53;
    sc_out< sc_lv<32> > ap_return_54;
    sc_out< sc_lv<32> > ap_return_55;
    sc_out< sc_lv<32> > ap_return_56;
    sc_out< sc_lv<32> > ap_return_57;
    sc_out< sc_lv<32> > ap_return_58;
    sc_out< sc_lv<32> > ap_return_59;
    sc_out< sc_lv<32> > ap_return_60;
    sc_out< sc_lv<32> > ap_return_61;
    sc_out< sc_lv<32> > ap_return_62;
    sc_out< sc_lv<32> > ap_return_63;
    sc_out< sc_lv<32> > ap_return_64;
    sc_out< sc_lv<32> > ap_return_65;
    sc_out< sc_lv<32> > ap_return_66;
    sc_out< sc_lv<32> > ap_return_67;
    sc_out< sc_lv<32> > ap_return_68;
    sc_out< sc_lv<32> > ap_return_69;
    sc_out< sc_lv<32> > ap_return_70;
    sc_out< sc_lv<32> > ap_return_71;
    sc_signal< sc_lv<5> > ap_var_for_const0;


    // Module declarations
    shift_line_buffer_array_ap_fixed_8u_config5_s(sc_module_name name);
    SC_HAS_PROCESS(shift_line_buffer_array_ap_fixed_8u_config5_s);

    ~shift_line_buffer_array_ap_fixed_8u_config5_s();

    sc_trace_file* mVcdFile;

    shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW* line_buffer_Array_V_6_0_0_U;
    shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW* line_buffer_Array_V_6_1_0_U;
    shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW* line_buffer_Array_V_6_0_1_U;
    shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW* line_buffer_Array_V_6_1_1_U;
    shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW* line_buffer_Array_V_6_0_2_U;
    shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW* line_buffer_Array_V_6_1_2_U;
    shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW* line_buffer_Array_V_6_0_3_U;
    shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW* line_buffer_Array_V_6_1_3_U;
    shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW* line_buffer_Array_V_6_0_4_U;
    shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW* line_buffer_Array_V_6_1_4_U;
    shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW* line_buffer_Array_V_6_0_5_U;
    shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW* line_buffer_Array_V_6_1_5_U;
    shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW* line_buffer_Array_V_6_0_6_U;
    shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW* line_buffer_Array_V_6_1_6_U;
    shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW* line_buffer_Array_V_6_0_7_U;
    shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW* line_buffer_Array_V_6_1_7_U;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > line_buffer_Array_V_6_0_0_ce0;
    sc_signal< sc_logic > line_buffer_Array_V_6_0_0_we0;
    sc_signal< sc_lv<32> > line_buffer_Array_V_6_0_0_q0;
    sc_signal< sc_logic > line_buffer_Array_V_6_1_0_ce0;
    sc_signal< sc_logic > line_buffer_Array_V_6_1_0_we0;
    sc_signal< sc_lv<32> > line_buffer_Array_V_6_1_0_q0;
    sc_signal< sc_logic > line_buffer_Array_V_6_0_1_ce0;
    sc_signal< sc_logic > line_buffer_Array_V_6_0_1_we0;
    sc_signal< sc_lv<32> > line_buffer_Array_V_6_0_1_q0;
    sc_signal< sc_logic > line_buffer_Array_V_6_1_1_ce0;
    sc_signal< sc_logic > line_buffer_Array_V_6_1_1_we0;
    sc_signal< sc_lv<32> > line_buffer_Array_V_6_1_1_q0;
    sc_signal< sc_logic > line_buffer_Array_V_6_0_2_ce0;
    sc_signal< sc_logic > line_buffer_Array_V_6_0_2_we0;
    sc_signal< sc_lv<32> > line_buffer_Array_V_6_0_2_q0;
    sc_signal< sc_logic > line_buffer_Array_V_6_1_2_ce0;
    sc_signal< sc_logic > line_buffer_Array_V_6_1_2_we0;
    sc_signal< sc_lv<32> > line_buffer_Array_V_6_1_2_q0;
    sc_signal< sc_logic > line_buffer_Array_V_6_0_3_ce0;
    sc_signal< sc_logic > line_buffer_Array_V_6_0_3_we0;
    sc_signal< sc_lv<32> > line_buffer_Array_V_6_0_3_q0;
    sc_signal< sc_logic > line_buffer_Array_V_6_1_3_ce0;
    sc_signal< sc_logic > line_buffer_Array_V_6_1_3_we0;
    sc_signal< sc_lv<32> > line_buffer_Array_V_6_1_3_q0;
    sc_signal< sc_logic > line_buffer_Array_V_6_0_4_ce0;
    sc_signal< sc_logic > line_buffer_Array_V_6_0_4_we0;
    sc_signal< sc_lv<32> > line_buffer_Array_V_6_0_4_q0;
    sc_signal< sc_logic > line_buffer_Array_V_6_1_4_ce0;
    sc_signal< sc_logic > line_buffer_Array_V_6_1_4_we0;
    sc_signal< sc_lv<32> > line_buffer_Array_V_6_1_4_q0;
    sc_signal< sc_logic > line_buffer_Array_V_6_0_5_ce0;
    sc_signal< sc_logic > line_buffer_Array_V_6_0_5_we0;
    sc_signal< sc_lv<32> > line_buffer_Array_V_6_0_5_q0;
    sc_signal< sc_logic > line_buffer_Array_V_6_1_5_ce0;
    sc_signal< sc_logic > line_buffer_Array_V_6_1_5_we0;
    sc_signal< sc_lv<32> > line_buffer_Array_V_6_1_5_q0;
    sc_signal< sc_logic > line_buffer_Array_V_6_0_6_ce0;
    sc_signal< sc_logic > line_buffer_Array_V_6_0_6_we0;
    sc_signal< sc_lv<32> > line_buffer_Array_V_6_0_6_q0;
    sc_signal< sc_logic > line_buffer_Array_V_6_1_6_ce0;
    sc_signal< sc_logic > line_buffer_Array_V_6_1_6_we0;
    sc_signal< sc_lv<32> > line_buffer_Array_V_6_1_6_q0;
    sc_signal< sc_logic > line_buffer_Array_V_6_0_7_ce0;
    sc_signal< sc_logic > line_buffer_Array_V_6_0_7_we0;
    sc_signal< sc_lv<32> > line_buffer_Array_V_6_0_7_q0;
    sc_signal< sc_logic > line_buffer_Array_V_6_1_7_ce0;
    sc_signal< sc_logic > line_buffer_Array_V_6_1_7_we0;
    sc_signal< sc_lv<32> > line_buffer_Array_V_6_1_7_q0;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_state1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<5> ap_const_lv5_11;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_10();
    void thread_ap_return_11();
    void thread_ap_return_12();
    void thread_ap_return_13();
    void thread_ap_return_14();
    void thread_ap_return_15();
    void thread_ap_return_16();
    void thread_ap_return_17();
    void thread_ap_return_18();
    void thread_ap_return_19();
    void thread_ap_return_2();
    void thread_ap_return_20();
    void thread_ap_return_21();
    void thread_ap_return_22();
    void thread_ap_return_23();
    void thread_ap_return_24();
    void thread_ap_return_25();
    void thread_ap_return_26();
    void thread_ap_return_27();
    void thread_ap_return_28();
    void thread_ap_return_29();
    void thread_ap_return_3();
    void thread_ap_return_30();
    void thread_ap_return_31();
    void thread_ap_return_32();
    void thread_ap_return_33();
    void thread_ap_return_34();
    void thread_ap_return_35();
    void thread_ap_return_36();
    void thread_ap_return_37();
    void thread_ap_return_38();
    void thread_ap_return_39();
    void thread_ap_return_4();
    void thread_ap_return_40();
    void thread_ap_return_41();
    void thread_ap_return_42();
    void thread_ap_return_43();
    void thread_ap_return_44();
    void thread_ap_return_45();
    void thread_ap_return_46();
    void thread_ap_return_47();
    void thread_ap_return_48();
    void thread_ap_return_49();
    void thread_ap_return_5();
    void thread_ap_return_50();
    void thread_ap_return_51();
    void thread_ap_return_52();
    void thread_ap_return_53();
    void thread_ap_return_54();
    void thread_ap_return_55();
    void thread_ap_return_56();
    void thread_ap_return_57();
    void thread_ap_return_58();
    void thread_ap_return_59();
    void thread_ap_return_6();
    void thread_ap_return_60();
    void thread_ap_return_61();
    void thread_ap_return_62();
    void thread_ap_return_63();
    void thread_ap_return_64();
    void thread_ap_return_65();
    void thread_ap_return_66();
    void thread_ap_return_67();
    void thread_ap_return_68();
    void thread_ap_return_69();
    void thread_ap_return_7();
    void thread_ap_return_70();
    void thread_ap_return_71();
    void thread_ap_return_8();
    void thread_ap_return_9();
    void thread_line_buffer_Array_V_6_0_0_ce0();
    void thread_line_buffer_Array_V_6_0_0_we0();
    void thread_line_buffer_Array_V_6_0_1_ce0();
    void thread_line_buffer_Array_V_6_0_1_we0();
    void thread_line_buffer_Array_V_6_0_2_ce0();
    void thread_line_buffer_Array_V_6_0_2_we0();
    void thread_line_buffer_Array_V_6_0_3_ce0();
    void thread_line_buffer_Array_V_6_0_3_we0();
    void thread_line_buffer_Array_V_6_0_4_ce0();
    void thread_line_buffer_Array_V_6_0_4_we0();
    void thread_line_buffer_Array_V_6_0_5_ce0();
    void thread_line_buffer_Array_V_6_0_5_we0();
    void thread_line_buffer_Array_V_6_0_6_ce0();
    void thread_line_buffer_Array_V_6_0_6_we0();
    void thread_line_buffer_Array_V_6_0_7_ce0();
    void thread_line_buffer_Array_V_6_0_7_we0();
    void thread_line_buffer_Array_V_6_1_0_ce0();
    void thread_line_buffer_Array_V_6_1_0_we0();
    void thread_line_buffer_Array_V_6_1_1_ce0();
    void thread_line_buffer_Array_V_6_1_1_we0();
    void thread_line_buffer_Array_V_6_1_2_ce0();
    void thread_line_buffer_Array_V_6_1_2_we0();
    void thread_line_buffer_Array_V_6_1_3_ce0();
    void thread_line_buffer_Array_V_6_1_3_we0();
    void thread_line_buffer_Array_V_6_1_4_ce0();
    void thread_line_buffer_Array_V_6_1_4_we0();
    void thread_line_buffer_Array_V_6_1_5_ce0();
    void thread_line_buffer_Array_V_6_1_5_we0();
    void thread_line_buffer_Array_V_6_1_6_ce0();
    void thread_line_buffer_Array_V_6_1_6_we0();
    void thread_line_buffer_Array_V_6_1_7_ce0();
    void thread_line_buffer_Array_V_6_1_7_we0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
