// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _resize_nearest_array_ap_fixed_4u_config13_s_HH_
#define _resize_nearest_array_ap_fixed_4u_config13_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct resize_nearest_array_ap_fixed_4u_config13_s : public sc_module {
    // Port declarations 34
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<32> > image_V_data_0_V_dout;
    sc_in< sc_logic > image_V_data_0_V_empty_n;
    sc_out< sc_logic > image_V_data_0_V_read;
    sc_in< sc_lv<32> > image_V_data_1_V_dout;
    sc_in< sc_logic > image_V_data_1_V_empty_n;
    sc_out< sc_logic > image_V_data_1_V_read;
    sc_in< sc_lv<32> > image_V_data_2_V_dout;
    sc_in< sc_logic > image_V_data_2_V_empty_n;
    sc_out< sc_logic > image_V_data_2_V_read;
    sc_in< sc_lv<32> > image_V_data_3_V_dout;
    sc_in< sc_logic > image_V_data_3_V_empty_n;
    sc_out< sc_logic > image_V_data_3_V_read;
    sc_out< sc_lv<32> > resized_V_data_0_V_din;
    sc_in< sc_logic > resized_V_data_0_V_full_n;
    sc_out< sc_logic > resized_V_data_0_V_write;
    sc_out< sc_lv<32> > resized_V_data_1_V_din;
    sc_in< sc_logic > resized_V_data_1_V_full_n;
    sc_out< sc_logic > resized_V_data_1_V_write;
    sc_out< sc_lv<32> > resized_V_data_2_V_din;
    sc_in< sc_logic > resized_V_data_2_V_full_n;
    sc_out< sc_logic > resized_V_data_2_V_write;
    sc_out< sc_lv<32> > resized_V_data_3_V_din;
    sc_in< sc_logic > resized_V_data_3_V_full_n;
    sc_out< sc_logic > resized_V_data_3_V_write;


    // Module declarations
    resize_nearest_array_ap_fixed_4u_config13_s(sc_module_name name);
    SC_HAS_PROCESS(resize_nearest_array_ap_fixed_4u_config13_s);

    ~resize_nearest_array_ap_fixed_4u_config13_s();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<18> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > image_V_data_0_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<1> > icmp_ln54_reg_127;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage3;
    sc_signal< bool > ap_block_pp0_stage3;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage5;
    sc_signal< bool > ap_block_pp0_stage5;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage7;
    sc_signal< bool > ap_block_pp0_stage7;
    sc_signal< sc_logic > image_V_data_1_V_blk_n;
    sc_signal< sc_logic > image_V_data_2_V_blk_n;
    sc_signal< sc_logic > image_V_data_3_V_blk_n;
    sc_signal< sc_logic > resized_V_data_0_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage4;
    sc_signal< bool > ap_block_pp0_stage4;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage6;
    sc_signal< bool > ap_block_pp0_stage6;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage8;
    sc_signal< bool > ap_block_pp0_stage8;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage9;
    sc_signal< bool > ap_block_pp0_stage9;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage10;
    sc_signal< bool > ap_block_pp0_stage10;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage11;
    sc_signal< bool > ap_block_pp0_stage11;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage12;
    sc_signal< bool > ap_block_pp0_stage12;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage13;
    sc_signal< bool > ap_block_pp0_stage13;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage14;
    sc_signal< bool > ap_block_pp0_stage14;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage15;
    sc_signal< bool > ap_block_pp0_stage15;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > resized_V_data_1_V_blk_n;
    sc_signal< sc_logic > resized_V_data_2_V_blk_n;
    sc_signal< sc_logic > resized_V_data_3_V_blk_n;
    sc_signal< sc_lv<3> > h_0_reg_84;
    sc_signal< sc_lv<1> > icmp_ln54_fu_115_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< sc_logic > io_acc_block_signal_op71;
    sc_signal< bool > ap_block_state18_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<3> > h_fu_121_p2;
    sc_signal< sc_lv<3> > h_reg_131;
    sc_signal< sc_lv<32> > tmp_data_0_V_reg_136;
    sc_signal< sc_logic > io_acc_block_signal_op34;
    sc_signal< sc_logic > io_acc_block_signal_op39;
    sc_signal< bool > ap_block_state3_pp0_stage1_iter0;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<32> > tmp_data_1_V_reg_141;
    sc_signal< sc_lv<32> > tmp_data_2_V_reg_146;
    sc_signal< sc_lv<32> > tmp_data_3_V_reg_151;
    sc_signal< sc_lv<32> > tmp_data_0_V_23_reg_156;
    sc_signal< sc_logic > io_acc_block_signal_op41;
    sc_signal< sc_logic > io_acc_block_signal_op46;
    sc_signal< bool > ap_block_state5_pp0_stage3_iter0;
    sc_signal< bool > ap_block_pp0_stage3_11001;
    sc_signal< sc_lv<32> > tmp_data_1_V_23_reg_161;
    sc_signal< sc_lv<32> > tmp_data_2_V_23_reg_166;
    sc_signal< sc_lv<32> > tmp_data_3_V_23_reg_171;
    sc_signal< sc_lv<32> > tmp_data_0_V_24_reg_176;
    sc_signal< sc_logic > io_acc_block_signal_op48;
    sc_signal< sc_logic > io_acc_block_signal_op53;
    sc_signal< bool > ap_block_state7_pp0_stage5_iter0;
    sc_signal< bool > ap_block_pp0_stage5_11001;
    sc_signal< sc_lv<32> > tmp_data_1_V_24_reg_181;
    sc_signal< sc_lv<32> > tmp_data_2_V_24_reg_186;
    sc_signal< sc_lv<32> > tmp_data_3_V_24_reg_191;
    sc_signal< sc_lv<32> > tmp_data_0_V_25_reg_196;
    sc_signal< sc_logic > io_acc_block_signal_op55;
    sc_signal< sc_logic > io_acc_block_signal_op60;
    sc_signal< bool > ap_block_state9_pp0_stage7_iter0;
    sc_signal< bool > ap_block_pp0_stage7_11001;
    sc_signal< sc_lv<32> > tmp_data_1_V_25_reg_201;
    sc_signal< sc_lv<32> > tmp_data_2_V_25_reg_206;
    sc_signal< sc_lv<32> > tmp_data_3_V_25_reg_211;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > io_acc_block_signal_op68;
    sc_signal< bool > ap_block_state17_pp0_stage15_iter0;
    sc_signal< bool > ap_block_pp0_stage15_subdone;
    sc_signal< sc_lv<3> > ap_phi_mux_h_0_phi_fu_88_p4;
    sc_signal< bool > ap_block_pp0_stage1_01001;
    sc_signal< sc_logic > io_acc_block_signal_op40;
    sc_signal< bool > ap_block_state4_pp0_stage2_iter0;
    sc_signal< bool > ap_block_pp0_stage2_01001;
    sc_signal< bool > ap_block_pp0_stage3_01001;
    sc_signal< sc_logic > io_acc_block_signal_op47;
    sc_signal< bool > ap_block_state6_pp0_stage4_iter0;
    sc_signal< bool > ap_block_pp0_stage4_01001;
    sc_signal< bool > ap_block_pp0_stage5_01001;
    sc_signal< sc_logic > io_acc_block_signal_op54;
    sc_signal< bool > ap_block_state8_pp0_stage6_iter0;
    sc_signal< bool > ap_block_pp0_stage6_01001;
    sc_signal< bool > ap_block_pp0_stage7_01001;
    sc_signal< sc_logic > io_acc_block_signal_op61;
    sc_signal< bool > ap_block_state10_pp0_stage8_iter0;
    sc_signal< bool > ap_block_pp0_stage8_01001;
    sc_signal< sc_logic > io_acc_block_signal_op62;
    sc_signal< bool > ap_block_state11_pp0_stage9_iter0;
    sc_signal< bool > ap_block_pp0_stage9_01001;
    sc_signal< sc_logic > io_acc_block_signal_op63;
    sc_signal< bool > ap_block_state12_pp0_stage10_iter0;
    sc_signal< bool > ap_block_pp0_stage10_01001;
    sc_signal< sc_logic > io_acc_block_signal_op64;
    sc_signal< bool > ap_block_state13_pp0_stage11_iter0;
    sc_signal< bool > ap_block_pp0_stage11_01001;
    sc_signal< sc_logic > io_acc_block_signal_op65;
    sc_signal< bool > ap_block_state14_pp0_stage12_iter0;
    sc_signal< bool > ap_block_pp0_stage12_01001;
    sc_signal< sc_logic > io_acc_block_signal_op66;
    sc_signal< bool > ap_block_state15_pp0_stage13_iter0;
    sc_signal< bool > ap_block_pp0_stage13_01001;
    sc_signal< sc_logic > io_acc_block_signal_op67;
    sc_signal< bool > ap_block_state16_pp0_stage14_iter0;
    sc_signal< bool > ap_block_pp0_stage14_01001;
    sc_signal< bool > ap_block_pp0_stage15_01001;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< bool > ap_block_pp0_stage4_11001;
    sc_signal< bool > ap_block_pp0_stage6_11001;
    sc_signal< bool > ap_block_pp0_stage8_11001;
    sc_signal< bool > ap_block_pp0_stage9_11001;
    sc_signal< bool > ap_block_pp0_stage10_11001;
    sc_signal< bool > ap_block_pp0_stage11_11001;
    sc_signal< bool > ap_block_pp0_stage12_11001;
    sc_signal< bool > ap_block_pp0_stage13_11001;
    sc_signal< bool > ap_block_pp0_stage14_11001;
    sc_signal< bool > ap_block_pp0_stage15_11001;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<18> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< bool > ap_block_pp0_stage3_subdone;
    sc_signal< bool > ap_block_pp0_stage4_subdone;
    sc_signal< bool > ap_block_pp0_stage5_subdone;
    sc_signal< bool > ap_block_pp0_stage6_subdone;
    sc_signal< bool > ap_block_pp0_stage7_subdone;
    sc_signal< bool > ap_block_pp0_stage8_subdone;
    sc_signal< bool > ap_block_pp0_stage9_subdone;
    sc_signal< bool > ap_block_pp0_stage10_subdone;
    sc_signal< bool > ap_block_pp0_stage11_subdone;
    sc_signal< bool > ap_block_pp0_stage12_subdone;
    sc_signal< bool > ap_block_pp0_stage13_subdone;
    sc_signal< bool > ap_block_pp0_stage14_subdone;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<18> ap_ST_fsm_state1;
    static const sc_lv<18> ap_ST_fsm_pp0_stage0;
    static const sc_lv<18> ap_ST_fsm_pp0_stage1;
    static const sc_lv<18> ap_ST_fsm_pp0_stage2;
    static const sc_lv<18> ap_ST_fsm_pp0_stage3;
    static const sc_lv<18> ap_ST_fsm_pp0_stage4;
    static const sc_lv<18> ap_ST_fsm_pp0_stage5;
    static const sc_lv<18> ap_ST_fsm_pp0_stage6;
    static const sc_lv<18> ap_ST_fsm_pp0_stage7;
    static const sc_lv<18> ap_ST_fsm_pp0_stage8;
    static const sc_lv<18> ap_ST_fsm_pp0_stage9;
    static const sc_lv<18> ap_ST_fsm_pp0_stage10;
    static const sc_lv<18> ap_ST_fsm_pp0_stage11;
    static const sc_lv<18> ap_ST_fsm_pp0_stage12;
    static const sc_lv<18> ap_ST_fsm_pp0_stage13;
    static const sc_lv<18> ap_ST_fsm_pp0_stage14;
    static const sc_lv<18> ap_ST_fsm_pp0_stage15;
    static const sc_lv<18> ap_ST_fsm_state19;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_11;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage10();
    void thread_ap_CS_fsm_pp0_stage11();
    void thread_ap_CS_fsm_pp0_stage12();
    void thread_ap_CS_fsm_pp0_stage13();
    void thread_ap_CS_fsm_pp0_stage14();
    void thread_ap_CS_fsm_pp0_stage15();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_pp0_stage4();
    void thread_ap_CS_fsm_pp0_stage5();
    void thread_ap_CS_fsm_pp0_stage6();
    void thread_ap_CS_fsm_pp0_stage7();
    void thread_ap_CS_fsm_pp0_stage8();
    void thread_ap_CS_fsm_pp0_stage9();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state19();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage10();
    void thread_ap_block_pp0_stage10_01001();
    void thread_ap_block_pp0_stage10_11001();
    void thread_ap_block_pp0_stage10_subdone();
    void thread_ap_block_pp0_stage11();
    void thread_ap_block_pp0_stage11_01001();
    void thread_ap_block_pp0_stage11_11001();
    void thread_ap_block_pp0_stage11_subdone();
    void thread_ap_block_pp0_stage12();
    void thread_ap_block_pp0_stage12_01001();
    void thread_ap_block_pp0_stage12_11001();
    void thread_ap_block_pp0_stage12_subdone();
    void thread_ap_block_pp0_stage13();
    void thread_ap_block_pp0_stage13_01001();
    void thread_ap_block_pp0_stage13_11001();
    void thread_ap_block_pp0_stage13_subdone();
    void thread_ap_block_pp0_stage14();
    void thread_ap_block_pp0_stage14_01001();
    void thread_ap_block_pp0_stage14_11001();
    void thread_ap_block_pp0_stage14_subdone();
    void thread_ap_block_pp0_stage15();
    void thread_ap_block_pp0_stage15_01001();
    void thread_ap_block_pp0_stage15_11001();
    void thread_ap_block_pp0_stage15_subdone();
    void thread_ap_block_pp0_stage1_01001();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_01001();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp0_stage3();
    void thread_ap_block_pp0_stage3_01001();
    void thread_ap_block_pp0_stage3_11001();
    void thread_ap_block_pp0_stage3_subdone();
    void thread_ap_block_pp0_stage4();
    void thread_ap_block_pp0_stage4_01001();
    void thread_ap_block_pp0_stage4_11001();
    void thread_ap_block_pp0_stage4_subdone();
    void thread_ap_block_pp0_stage5();
    void thread_ap_block_pp0_stage5_01001();
    void thread_ap_block_pp0_stage5_11001();
    void thread_ap_block_pp0_stage5_subdone();
    void thread_ap_block_pp0_stage6();
    void thread_ap_block_pp0_stage6_01001();
    void thread_ap_block_pp0_stage6_11001();
    void thread_ap_block_pp0_stage6_subdone();
    void thread_ap_block_pp0_stage7();
    void thread_ap_block_pp0_stage7_01001();
    void thread_ap_block_pp0_stage7_11001();
    void thread_ap_block_pp0_stage7_subdone();
    void thread_ap_block_pp0_stage8();
    void thread_ap_block_pp0_stage8_01001();
    void thread_ap_block_pp0_stage8_11001();
    void thread_ap_block_pp0_stage8_subdone();
    void thread_ap_block_pp0_stage9();
    void thread_ap_block_pp0_stage9_01001();
    void thread_ap_block_pp0_stage9_11001();
    void thread_ap_block_pp0_stage9_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state10_pp0_stage8_iter0();
    void thread_ap_block_state11_pp0_stage9_iter0();
    void thread_ap_block_state12_pp0_stage10_iter0();
    void thread_ap_block_state13_pp0_stage11_iter0();
    void thread_ap_block_state14_pp0_stage12_iter0();
    void thread_ap_block_state15_pp0_stage13_iter0();
    void thread_ap_block_state16_pp0_stage14_iter0();
    void thread_ap_block_state17_pp0_stage15_iter0();
    void thread_ap_block_state18_pp0_stage0_iter1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage1_iter0();
    void thread_ap_block_state4_pp0_stage2_iter0();
    void thread_ap_block_state5_pp0_stage3_iter0();
    void thread_ap_block_state6_pp0_stage4_iter0();
    void thread_ap_block_state7_pp0_stage5_iter0();
    void thread_ap_block_state8_pp0_stage6_iter0();
    void thread_ap_block_state9_pp0_stage7_iter0();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_h_0_phi_fu_88_p4();
    void thread_ap_ready();
    void thread_h_fu_121_p2();
    void thread_icmp_ln54_fu_115_p2();
    void thread_image_V_data_0_V_blk_n();
    void thread_image_V_data_0_V_read();
    void thread_image_V_data_1_V_blk_n();
    void thread_image_V_data_1_V_read();
    void thread_image_V_data_2_V_blk_n();
    void thread_image_V_data_2_V_read();
    void thread_image_V_data_3_V_blk_n();
    void thread_image_V_data_3_V_read();
    void thread_internal_ap_ready();
    void thread_io_acc_block_signal_op34();
    void thread_io_acc_block_signal_op39();
    void thread_io_acc_block_signal_op40();
    void thread_io_acc_block_signal_op41();
    void thread_io_acc_block_signal_op46();
    void thread_io_acc_block_signal_op47();
    void thread_io_acc_block_signal_op48();
    void thread_io_acc_block_signal_op53();
    void thread_io_acc_block_signal_op54();
    void thread_io_acc_block_signal_op55();
    void thread_io_acc_block_signal_op60();
    void thread_io_acc_block_signal_op61();
    void thread_io_acc_block_signal_op62();
    void thread_io_acc_block_signal_op63();
    void thread_io_acc_block_signal_op64();
    void thread_io_acc_block_signal_op65();
    void thread_io_acc_block_signal_op66();
    void thread_io_acc_block_signal_op67();
    void thread_io_acc_block_signal_op68();
    void thread_io_acc_block_signal_op71();
    void thread_real_start();
    void thread_resized_V_data_0_V_blk_n();
    void thread_resized_V_data_0_V_din();
    void thread_resized_V_data_0_V_write();
    void thread_resized_V_data_1_V_blk_n();
    void thread_resized_V_data_1_V_din();
    void thread_resized_V_data_1_V_write();
    void thread_resized_V_data_2_V_blk_n();
    void thread_resized_V_data_2_V_din();
    void thread_resized_V_data_2_V_write();
    void thread_resized_V_data_3_V_blk_n();
    void thread_resized_V_data_3_V_din();
    void thread_resized_V_data_3_V_write();
    void thread_start_out();
    void thread_start_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
