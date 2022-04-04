// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "shift_line_buffer_array_ap_fixed_4u_config17_s.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic shift_line_buffer_array_ap_fixed_4u_config17_s::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic shift_line_buffer_array_ap_fixed_4u_config17_s::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> shift_line_buffer_array_ap_fixed_4u_config17_s::ap_ST_fsm_state1 = "1";
const sc_lv<32> shift_line_buffer_array_ap_fixed_4u_config17_s::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> shift_line_buffer_array_ap_fixed_4u_config17_s::ap_const_lv1_1 = "1";
const sc_lv<5> shift_line_buffer_array_ap_fixed_4u_config17_s::ap_const_lv5_11 = "10001";
const bool shift_line_buffer_array_ap_fixed_4u_config17_s::ap_const_boolean_1 = true;

shift_line_buffer_array_ap_fixed_4u_config17_s::shift_line_buffer_array_ap_fixed_4u_config17_s(sc_module_name name) : sc_module(name), mVcdFile(0) {
    line_buffer_Array_V_4_0_0_U = new shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW("line_buffer_Array_V_4_0_0_U");
    line_buffer_Array_V_4_0_0_U->clk(ap_clk);
    line_buffer_Array_V_4_0_0_U->reset(ap_rst);
    line_buffer_Array_V_4_0_0_U->address0(ap_var_for_const0);
    line_buffer_Array_V_4_0_0_U->ce0(line_buffer_Array_V_4_0_0_ce0);
    line_buffer_Array_V_4_0_0_U->we0(line_buffer_Array_V_4_0_0_we0);
    line_buffer_Array_V_4_0_0_U->d0(in_elem_data_0_V_read);
    line_buffer_Array_V_4_0_0_U->q0(line_buffer_Array_V_4_0_0_q0);
    line_buffer_Array_V_4_1_0_U = new shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW("line_buffer_Array_V_4_1_0_U");
    line_buffer_Array_V_4_1_0_U->clk(ap_clk);
    line_buffer_Array_V_4_1_0_U->reset(ap_rst);
    line_buffer_Array_V_4_1_0_U->address0(ap_var_for_const0);
    line_buffer_Array_V_4_1_0_U->ce0(line_buffer_Array_V_4_1_0_ce0);
    line_buffer_Array_V_4_1_0_U->we0(line_buffer_Array_V_4_1_0_we0);
    line_buffer_Array_V_4_1_0_U->d0(line_buffer_Array_V_4_0_0_q0);
    line_buffer_Array_V_4_1_0_U->q0(line_buffer_Array_V_4_1_0_q0);
    line_buffer_Array_V_4_0_1_U = new shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW("line_buffer_Array_V_4_0_1_U");
    line_buffer_Array_V_4_0_1_U->clk(ap_clk);
    line_buffer_Array_V_4_0_1_U->reset(ap_rst);
    line_buffer_Array_V_4_0_1_U->address0(ap_var_for_const0);
    line_buffer_Array_V_4_0_1_U->ce0(line_buffer_Array_V_4_0_1_ce0);
    line_buffer_Array_V_4_0_1_U->we0(line_buffer_Array_V_4_0_1_we0);
    line_buffer_Array_V_4_0_1_U->d0(in_elem_data_1_V_read);
    line_buffer_Array_V_4_0_1_U->q0(line_buffer_Array_V_4_0_1_q0);
    line_buffer_Array_V_4_1_1_U = new shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW("line_buffer_Array_V_4_1_1_U");
    line_buffer_Array_V_4_1_1_U->clk(ap_clk);
    line_buffer_Array_V_4_1_1_U->reset(ap_rst);
    line_buffer_Array_V_4_1_1_U->address0(ap_var_for_const0);
    line_buffer_Array_V_4_1_1_U->ce0(line_buffer_Array_V_4_1_1_ce0);
    line_buffer_Array_V_4_1_1_U->we0(line_buffer_Array_V_4_1_1_we0);
    line_buffer_Array_V_4_1_1_U->d0(line_buffer_Array_V_4_0_1_q0);
    line_buffer_Array_V_4_1_1_U->q0(line_buffer_Array_V_4_1_1_q0);
    line_buffer_Array_V_4_0_2_U = new shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW("line_buffer_Array_V_4_0_2_U");
    line_buffer_Array_V_4_0_2_U->clk(ap_clk);
    line_buffer_Array_V_4_0_2_U->reset(ap_rst);
    line_buffer_Array_V_4_0_2_U->address0(ap_var_for_const0);
    line_buffer_Array_V_4_0_2_U->ce0(line_buffer_Array_V_4_0_2_ce0);
    line_buffer_Array_V_4_0_2_U->we0(line_buffer_Array_V_4_0_2_we0);
    line_buffer_Array_V_4_0_2_U->d0(in_elem_data_2_V_read);
    line_buffer_Array_V_4_0_2_U->q0(line_buffer_Array_V_4_0_2_q0);
    line_buffer_Array_V_4_1_2_U = new shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW("line_buffer_Array_V_4_1_2_U");
    line_buffer_Array_V_4_1_2_U->clk(ap_clk);
    line_buffer_Array_V_4_1_2_U->reset(ap_rst);
    line_buffer_Array_V_4_1_2_U->address0(ap_var_for_const0);
    line_buffer_Array_V_4_1_2_U->ce0(line_buffer_Array_V_4_1_2_ce0);
    line_buffer_Array_V_4_1_2_U->we0(line_buffer_Array_V_4_1_2_we0);
    line_buffer_Array_V_4_1_2_U->d0(line_buffer_Array_V_4_0_2_q0);
    line_buffer_Array_V_4_1_2_U->q0(line_buffer_Array_V_4_1_2_q0);
    line_buffer_Array_V_4_0_3_U = new shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW("line_buffer_Array_V_4_0_3_U");
    line_buffer_Array_V_4_0_3_U->clk(ap_clk);
    line_buffer_Array_V_4_0_3_U->reset(ap_rst);
    line_buffer_Array_V_4_0_3_U->address0(ap_var_for_const0);
    line_buffer_Array_V_4_0_3_U->ce0(line_buffer_Array_V_4_0_3_ce0);
    line_buffer_Array_V_4_0_3_U->we0(line_buffer_Array_V_4_0_3_we0);
    line_buffer_Array_V_4_0_3_U->d0(in_elem_data_3_V_read);
    line_buffer_Array_V_4_0_3_U->q0(line_buffer_Array_V_4_0_3_q0);
    line_buffer_Array_V_4_1_3_U = new shift_line_buffer_array_ap_fixed_8u_config5_s_line_bufferlbW("line_buffer_Array_V_4_1_3_U");
    line_buffer_Array_V_4_1_3_U->clk(ap_clk);
    line_buffer_Array_V_4_1_3_U->reset(ap_rst);
    line_buffer_Array_V_4_1_3_U->address0(ap_var_for_const0);
    line_buffer_Array_V_4_1_3_U->ce0(line_buffer_Array_V_4_1_3_ce0);
    line_buffer_Array_V_4_1_3_U->we0(line_buffer_Array_V_4_1_3_we0);
    line_buffer_Array_V_4_1_3_U->d0(line_buffer_Array_V_4_0_3_q0);
    line_buffer_Array_V_4_1_3_U->q0(line_buffer_Array_V_4_1_3_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_return_0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_4_V_read );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_5_V_read );

    SC_METHOD(thread_ap_return_10);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_30_V_read );

    SC_METHOD(thread_ap_return_11);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_31_V_read );

    SC_METHOD(thread_ap_return_12);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_8_V_read );

    SC_METHOD(thread_ap_return_13);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_9_V_read );

    SC_METHOD(thread_ap_return_14);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_10_V_read );

    SC_METHOD(thread_ap_return_15);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_11_V_read );

    SC_METHOD(thread_ap_return_16);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( line_buffer_Array_V_4_1_0_q0 );

    SC_METHOD(thread_ap_return_17);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( line_buffer_Array_V_4_1_1_q0 );

    SC_METHOD(thread_ap_return_18);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( line_buffer_Array_V_4_1_2_q0 );

    SC_METHOD(thread_ap_return_19);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( line_buffer_Array_V_4_1_3_q0 );

    SC_METHOD(thread_ap_return_2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_6_V_read );

    SC_METHOD(thread_ap_return_20);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_20_V_read );

    SC_METHOD(thread_ap_return_21);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_21_V_read );

    SC_METHOD(thread_ap_return_22);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_22_V_read );

    SC_METHOD(thread_ap_return_23);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_23_V_read );

    SC_METHOD(thread_ap_return_24);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( line_buffer_Array_V_4_0_0_q0 );

    SC_METHOD(thread_ap_return_25);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( line_buffer_Array_V_4_0_1_q0 );

    SC_METHOD(thread_ap_return_26);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( line_buffer_Array_V_4_0_2_q0 );

    SC_METHOD(thread_ap_return_27);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( line_buffer_Array_V_4_0_3_q0 );

    SC_METHOD(thread_ap_return_28);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_32_V_read );

    SC_METHOD(thread_ap_return_29);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_33_V_read );

    SC_METHOD(thread_ap_return_3);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_7_V_read );

    SC_METHOD(thread_ap_return_30);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_34_V_read );

    SC_METHOD(thread_ap_return_31);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_35_V_read );

    SC_METHOD(thread_ap_return_32);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( in_elem_data_0_V_read );

    SC_METHOD(thread_ap_return_33);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( in_elem_data_1_V_read );

    SC_METHOD(thread_ap_return_34);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( in_elem_data_2_V_read );

    SC_METHOD(thread_ap_return_35);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( in_elem_data_3_V_read );

    SC_METHOD(thread_ap_return_4);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_16_V_read );

    SC_METHOD(thread_ap_return_5);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_17_V_read );

    SC_METHOD(thread_ap_return_6);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_18_V_read );

    SC_METHOD(thread_ap_return_7);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_19_V_read );

    SC_METHOD(thread_ap_return_8);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_28_V_read );

    SC_METHOD(thread_ap_return_9);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( kernel_window_29_V_read );

    SC_METHOD(thread_line_buffer_Array_V_4_0_0_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_line_buffer_Array_V_4_0_0_we0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_line_buffer_Array_V_4_0_1_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_line_buffer_Array_V_4_0_1_we0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_line_buffer_Array_V_4_0_2_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_line_buffer_Array_V_4_0_2_we0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_line_buffer_Array_V_4_0_3_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_line_buffer_Array_V_4_0_3_we0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_line_buffer_Array_V_4_1_0_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_line_buffer_Array_V_4_1_0_we0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_line_buffer_Array_V_4_1_1_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_line_buffer_Array_V_4_1_1_we0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_line_buffer_Array_V_4_1_2_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_line_buffer_Array_V_4_1_2_we0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_line_buffer_Array_V_4_1_3_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_line_buffer_Array_V_4_1_3_we0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "1";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "shift_line_buffer_array_ap_fixed_4u_config17_s_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, in_elem_data_0_V_read, "(port)in_elem_data_0_V_read");
    sc_trace(mVcdFile, in_elem_data_1_V_read, "(port)in_elem_data_1_V_read");
    sc_trace(mVcdFile, in_elem_data_2_V_read, "(port)in_elem_data_2_V_read");
    sc_trace(mVcdFile, in_elem_data_3_V_read, "(port)in_elem_data_3_V_read");
    sc_trace(mVcdFile, kernel_window_4_V_read, "(port)kernel_window_4_V_read");
    sc_trace(mVcdFile, kernel_window_5_V_read, "(port)kernel_window_5_V_read");
    sc_trace(mVcdFile, kernel_window_6_V_read, "(port)kernel_window_6_V_read");
    sc_trace(mVcdFile, kernel_window_7_V_read, "(port)kernel_window_7_V_read");
    sc_trace(mVcdFile, kernel_window_8_V_read, "(port)kernel_window_8_V_read");
    sc_trace(mVcdFile, kernel_window_9_V_read, "(port)kernel_window_9_V_read");
    sc_trace(mVcdFile, kernel_window_10_V_read, "(port)kernel_window_10_V_read");
    sc_trace(mVcdFile, kernel_window_11_V_read, "(port)kernel_window_11_V_read");
    sc_trace(mVcdFile, kernel_window_16_V_read, "(port)kernel_window_16_V_read");
    sc_trace(mVcdFile, kernel_window_17_V_read, "(port)kernel_window_17_V_read");
    sc_trace(mVcdFile, kernel_window_18_V_read, "(port)kernel_window_18_V_read");
    sc_trace(mVcdFile, kernel_window_19_V_read, "(port)kernel_window_19_V_read");
    sc_trace(mVcdFile, kernel_window_20_V_read, "(port)kernel_window_20_V_read");
    sc_trace(mVcdFile, kernel_window_21_V_read, "(port)kernel_window_21_V_read");
    sc_trace(mVcdFile, kernel_window_22_V_read, "(port)kernel_window_22_V_read");
    sc_trace(mVcdFile, kernel_window_23_V_read, "(port)kernel_window_23_V_read");
    sc_trace(mVcdFile, kernel_window_28_V_read, "(port)kernel_window_28_V_read");
    sc_trace(mVcdFile, kernel_window_29_V_read, "(port)kernel_window_29_V_read");
    sc_trace(mVcdFile, kernel_window_30_V_read, "(port)kernel_window_30_V_read");
    sc_trace(mVcdFile, kernel_window_31_V_read, "(port)kernel_window_31_V_read");
    sc_trace(mVcdFile, kernel_window_32_V_read, "(port)kernel_window_32_V_read");
    sc_trace(mVcdFile, kernel_window_33_V_read, "(port)kernel_window_33_V_read");
    sc_trace(mVcdFile, kernel_window_34_V_read, "(port)kernel_window_34_V_read");
    sc_trace(mVcdFile, kernel_window_35_V_read, "(port)kernel_window_35_V_read");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
    sc_trace(mVcdFile, ap_return_2, "(port)ap_return_2");
    sc_trace(mVcdFile, ap_return_3, "(port)ap_return_3");
    sc_trace(mVcdFile, ap_return_4, "(port)ap_return_4");
    sc_trace(mVcdFile, ap_return_5, "(port)ap_return_5");
    sc_trace(mVcdFile, ap_return_6, "(port)ap_return_6");
    sc_trace(mVcdFile, ap_return_7, "(port)ap_return_7");
    sc_trace(mVcdFile, ap_return_8, "(port)ap_return_8");
    sc_trace(mVcdFile, ap_return_9, "(port)ap_return_9");
    sc_trace(mVcdFile, ap_return_10, "(port)ap_return_10");
    sc_trace(mVcdFile, ap_return_11, "(port)ap_return_11");
    sc_trace(mVcdFile, ap_return_12, "(port)ap_return_12");
    sc_trace(mVcdFile, ap_return_13, "(port)ap_return_13");
    sc_trace(mVcdFile, ap_return_14, "(port)ap_return_14");
    sc_trace(mVcdFile, ap_return_15, "(port)ap_return_15");
    sc_trace(mVcdFile, ap_return_16, "(port)ap_return_16");
    sc_trace(mVcdFile, ap_return_17, "(port)ap_return_17");
    sc_trace(mVcdFile, ap_return_18, "(port)ap_return_18");
    sc_trace(mVcdFile, ap_return_19, "(port)ap_return_19");
    sc_trace(mVcdFile, ap_return_20, "(port)ap_return_20");
    sc_trace(mVcdFile, ap_return_21, "(port)ap_return_21");
    sc_trace(mVcdFile, ap_return_22, "(port)ap_return_22");
    sc_trace(mVcdFile, ap_return_23, "(port)ap_return_23");
    sc_trace(mVcdFile, ap_return_24, "(port)ap_return_24");
    sc_trace(mVcdFile, ap_return_25, "(port)ap_return_25");
    sc_trace(mVcdFile, ap_return_26, "(port)ap_return_26");
    sc_trace(mVcdFile, ap_return_27, "(port)ap_return_27");
    sc_trace(mVcdFile, ap_return_28, "(port)ap_return_28");
    sc_trace(mVcdFile, ap_return_29, "(port)ap_return_29");
    sc_trace(mVcdFile, ap_return_30, "(port)ap_return_30");
    sc_trace(mVcdFile, ap_return_31, "(port)ap_return_31");
    sc_trace(mVcdFile, ap_return_32, "(port)ap_return_32");
    sc_trace(mVcdFile, ap_return_33, "(port)ap_return_33");
    sc_trace(mVcdFile, ap_return_34, "(port)ap_return_34");
    sc_trace(mVcdFile, ap_return_35, "(port)ap_return_35");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, line_buffer_Array_V_4_0_0_ce0, "line_buffer_Array_V_4_0_0_ce0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_0_0_we0, "line_buffer_Array_V_4_0_0_we0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_0_0_q0, "line_buffer_Array_V_4_0_0_q0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_1_0_ce0, "line_buffer_Array_V_4_1_0_ce0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_1_0_we0, "line_buffer_Array_V_4_1_0_we0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_1_0_q0, "line_buffer_Array_V_4_1_0_q0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_0_1_ce0, "line_buffer_Array_V_4_0_1_ce0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_0_1_we0, "line_buffer_Array_V_4_0_1_we0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_0_1_q0, "line_buffer_Array_V_4_0_1_q0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_1_1_ce0, "line_buffer_Array_V_4_1_1_ce0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_1_1_we0, "line_buffer_Array_V_4_1_1_we0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_1_1_q0, "line_buffer_Array_V_4_1_1_q0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_0_2_ce0, "line_buffer_Array_V_4_0_2_ce0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_0_2_we0, "line_buffer_Array_V_4_0_2_we0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_0_2_q0, "line_buffer_Array_V_4_0_2_q0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_1_2_ce0, "line_buffer_Array_V_4_1_2_ce0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_1_2_we0, "line_buffer_Array_V_4_1_2_we0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_1_2_q0, "line_buffer_Array_V_4_1_2_q0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_0_3_ce0, "line_buffer_Array_V_4_0_3_ce0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_0_3_we0, "line_buffer_Array_V_4_0_3_we0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_0_3_q0, "line_buffer_Array_V_4_0_3_q0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_1_3_ce0, "line_buffer_Array_V_4_1_3_ce0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_1_3_we0, "line_buffer_Array_V_4_1_3_we0");
    sc_trace(mVcdFile, line_buffer_Array_V_4_1_3_q0, "line_buffer_Array_V_4_1_3_q0");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

shift_line_buffer_array_ap_fixed_4u_config17_s::~shift_line_buffer_array_ap_fixed_4u_config17_s() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete line_buffer_Array_V_4_0_0_U;
    delete line_buffer_Array_V_4_1_0_U;
    delete line_buffer_Array_V_4_0_1_U;
    delete line_buffer_Array_V_4_1_1_U;
    delete line_buffer_Array_V_4_0_2_U;
    delete line_buffer_Array_V_4_1_2_U;
    delete line_buffer_Array_V_4_0_3_U;
    delete line_buffer_Array_V_4_1_3_U;
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_lv5_11;
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_0() {
    ap_return_0 = kernel_window_4_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_1() {
    ap_return_1 = kernel_window_5_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_10() {
    ap_return_10 = kernel_window_30_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_11() {
    ap_return_11 = kernel_window_31_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_12() {
    ap_return_12 = kernel_window_8_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_13() {
    ap_return_13 = kernel_window_9_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_14() {
    ap_return_14 = kernel_window_10_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_15() {
    ap_return_15 = kernel_window_11_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_16() {
    ap_return_16 = line_buffer_Array_V_4_1_0_q0.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_17() {
    ap_return_17 = line_buffer_Array_V_4_1_1_q0.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_18() {
    ap_return_18 = line_buffer_Array_V_4_1_2_q0.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_19() {
    ap_return_19 = line_buffer_Array_V_4_1_3_q0.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_2() {
    ap_return_2 = kernel_window_6_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_20() {
    ap_return_20 = kernel_window_20_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_21() {
    ap_return_21 = kernel_window_21_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_22() {
    ap_return_22 = kernel_window_22_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_23() {
    ap_return_23 = kernel_window_23_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_24() {
    ap_return_24 = line_buffer_Array_V_4_0_0_q0.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_25() {
    ap_return_25 = line_buffer_Array_V_4_0_1_q0.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_26() {
    ap_return_26 = line_buffer_Array_V_4_0_2_q0.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_27() {
    ap_return_27 = line_buffer_Array_V_4_0_3_q0.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_28() {
    ap_return_28 = kernel_window_32_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_29() {
    ap_return_29 = kernel_window_33_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_3() {
    ap_return_3 = kernel_window_7_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_30() {
    ap_return_30 = kernel_window_34_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_31() {
    ap_return_31 = kernel_window_35_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_32() {
    ap_return_32 = in_elem_data_0_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_33() {
    ap_return_33 = in_elem_data_1_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_34() {
    ap_return_34 = in_elem_data_2_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_35() {
    ap_return_35 = in_elem_data_3_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_4() {
    ap_return_4 = kernel_window_16_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_5() {
    ap_return_5 = kernel_window_17_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_6() {
    ap_return_6 = kernel_window_18_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_7() {
    ap_return_7 = kernel_window_19_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_8() {
    ap_return_8 = kernel_window_28_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_return_9() {
    ap_return_9 = kernel_window_29_V_read.read();
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_line_buffer_Array_V_4_0_0_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        line_buffer_Array_V_4_0_0_ce0 =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        line_buffer_Array_V_4_0_0_ce0 = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_line_buffer_Array_V_4_0_0_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        line_buffer_Array_V_4_0_0_we0 =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        line_buffer_Array_V_4_0_0_we0 = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_line_buffer_Array_V_4_0_1_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        line_buffer_Array_V_4_0_1_ce0 =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        line_buffer_Array_V_4_0_1_ce0 = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_line_buffer_Array_V_4_0_1_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        line_buffer_Array_V_4_0_1_we0 =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        line_buffer_Array_V_4_0_1_we0 = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_line_buffer_Array_V_4_0_2_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        line_buffer_Array_V_4_0_2_ce0 =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        line_buffer_Array_V_4_0_2_ce0 = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_line_buffer_Array_V_4_0_2_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        line_buffer_Array_V_4_0_2_we0 =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        line_buffer_Array_V_4_0_2_we0 = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_line_buffer_Array_V_4_0_3_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        line_buffer_Array_V_4_0_3_ce0 =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        line_buffer_Array_V_4_0_3_ce0 = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_line_buffer_Array_V_4_0_3_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        line_buffer_Array_V_4_0_3_we0 =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        line_buffer_Array_V_4_0_3_we0 = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_line_buffer_Array_V_4_1_0_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        line_buffer_Array_V_4_1_0_ce0 =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        line_buffer_Array_V_4_1_0_ce0 = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_line_buffer_Array_V_4_1_0_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        line_buffer_Array_V_4_1_0_we0 =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        line_buffer_Array_V_4_1_0_we0 = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_line_buffer_Array_V_4_1_1_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        line_buffer_Array_V_4_1_1_ce0 =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        line_buffer_Array_V_4_1_1_ce0 = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_line_buffer_Array_V_4_1_1_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        line_buffer_Array_V_4_1_1_we0 =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        line_buffer_Array_V_4_1_1_we0 = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_line_buffer_Array_V_4_1_2_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        line_buffer_Array_V_4_1_2_ce0 =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        line_buffer_Array_V_4_1_2_ce0 = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_line_buffer_Array_V_4_1_2_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        line_buffer_Array_V_4_1_2_we0 =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        line_buffer_Array_V_4_1_2_we0 = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_line_buffer_Array_V_4_1_3_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        line_buffer_Array_V_4_1_3_ce0 =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        line_buffer_Array_V_4_1_3_ce0 = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_line_buffer_Array_V_4_1_3_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        line_buffer_Array_V_4_1_3_we0 =  (sc_logic) (ap_const_lv1_1[0]);
    } else {
        line_buffer_Array_V_4_1_3_we0 = ap_const_logic_0;
    }
}

void shift_line_buffer_array_ap_fixed_4u_config17_s::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_fsm_state1;
break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}

}

