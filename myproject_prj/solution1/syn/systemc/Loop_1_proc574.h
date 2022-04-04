// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_1_proc574_HH_
#define _Loop_1_proc574_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "myproject_axi_fpext_32ns_64_3_1.h"
#include "myproject_axi_ashr_54ns_32ns_54_2_1.h"
#include "myproject_axi_shl_32ns_32s_32_2_1.h"

namespace ap_rtl {

struct Loop_1_proc574 : public sc_module {
    // Port declarations 20
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
    sc_in< sc_lv<1> > in_r_TLAST;
    sc_in< sc_logic > in_r_TVALID;
    sc_out< sc_logic > in_r_TREADY;
    sc_out< sc_lv<32> > in_local_V_data_0_V_din;
    sc_in< sc_logic > in_local_V_data_0_V_full_n;
    sc_out< sc_logic > in_local_V_data_0_V_write;
    sc_in< sc_lv<32> > in_r_TDATA;
    sc_out< sc_lv<1> > is_last_0_i_out_out_din;
    sc_in< sc_logic > is_last_0_i_out_out_full_n;
    sc_out< sc_logic > is_last_0_i_out_out_write;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    Loop_1_proc574(sc_module_name name);
    SC_HAS_PROCESS(Loop_1_proc574);

    ~Loop_1_proc574();

    sc_trace_file* mVcdFile;

    myproject_axi_fpext_32ns_64_3_1<1,3,32,64>* myproject_axi_fpext_32ns_64_3_1_U1;
    myproject_axi_ashr_54ns_32ns_54_2_1<1,2,2,54,32,54>* myproject_axi_ashr_54ns_32ns_54_2_1_U2;
    myproject_axi_shl_32ns_32s_32_2_1<1,2,0,32,32,32>* myproject_axi_shl_32ns_32s_32_2_1_U3;
    regslice_both<1>* regslice_both_in_last_V_U;
    regslice_both<32>* regslice_both_in_data_U;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > in_local_V_data_0_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > in_r_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln23_fu_136_p2;
    sc_signal< sc_logic > is_last_0_i_out_out_blk_n;
    sc_signal< sc_lv<11> > i_fu_142_p2;
    sc_signal< sc_lv<11> > i_reg_432;
    sc_signal< bool > ap_block_state2;
    sc_signal< sc_lv<32> > in_data_tmp_reg_437;
    sc_signal< sc_lv<1> > or_ln28_fu_157_p2;
    sc_signal< sc_lv<1> > or_ln28_reg_443;
    sc_signal< sc_lv<63> > trunc_ln557_fu_167_p1;
    sc_signal< sc_lv<63> > trunc_ln557_reg_448;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > tmp_reg_453;
    sc_signal< sc_lv<11> > p_Result_i_i_reg_458;
    sc_signal< sc_lv<52> > trunc_ln565_fu_189_p1;
    sc_signal< sc_lv<52> > trunc_ln565_reg_463;
    sc_signal< sc_lv<54> > select_ln570_fu_213_p3;
    sc_signal< sc_lv<54> > select_ln570_reg_468;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln571_fu_220_p2;
    sc_signal< sc_lv<1> > icmp_ln571_reg_473;
    sc_signal< sc_lv<1> > icmp_ln581_fu_231_p2;
    sc_signal< sc_lv<1> > icmp_ln581_reg_479;
    sc_signal< sc_lv<12> > select_ln581_fu_249_p3;
    sc_signal< sc_lv<12> > select_ln581_reg_485;
    sc_signal< sc_lv<1> > icmp_ln582_fu_257_p2;
    sc_signal< sc_lv<1> > icmp_ln582_reg_491;
    sc_signal< sc_lv<32> > trunc_ln583_fu_263_p1;
    sc_signal< sc_lv<32> > trunc_ln583_reg_497;
    sc_signal< sc_lv<7> > tmp_12_reg_503;
    sc_signal< sc_lv<32> > sext_ln581_fu_277_p1;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > and_ln585_fu_344_p2;
    sc_signal< sc_lv<1> > and_ln585_reg_518;
    sc_signal< sc_lv<1> > and_ln603_fu_367_p2;
    sc_signal< sc_lv<1> > and_ln603_reg_523;
    sc_signal< sc_lv<1> > or_ln603_fu_373_p2;
    sc_signal< sc_lv<1> > or_ln603_reg_528;
    sc_signal< sc_lv<32> > select_ln603_1_fu_379_p3;
    sc_signal< sc_lv<32> > select_ln603_1_reg_534;
    sc_signal< sc_lv<54> > grp_fu_294_p2;
    sc_signal< sc_lv<54> > ashr_ln586_reg_539;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > grp_fu_318_p2;
    sc_signal< sc_lv<32> > shl_ln604_reg_544;
    sc_signal< sc_lv<1> > or_ln603_2_fu_401_p2;
    sc_signal< sc_lv<1> > or_ln603_2_reg_549;
    sc_signal< sc_lv<1> > is_last_0_i_out_dc_0_reg_110;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<11> > i_0_i_i_reg_122;
    sc_signal< sc_lv<64> > grp_fu_133_p1;
    sc_signal< sc_lv<64> > bitcast_ln696_fu_163_p1;
    sc_signal< sc_lv<53> > tmp_i_fu_196_p3;
    sc_signal< sc_lv<54> > zext_ln569_fu_203_p1;
    sc_signal< sc_lv<54> > sub_ln461_fu_207_p2;
    sc_signal< sc_lv<12> > zext_ln461_fu_193_p1;
    sc_signal< sc_lv<12> > sub_ln575_fu_225_p2;
    sc_signal< sc_lv<12> > add_ln581_fu_237_p2;
    sc_signal< sc_lv<12> > sub_ln581_fu_243_p2;
    sc_signal< sc_lv<54> > grp_fu_294_p1;
    sc_signal< sc_lv<32> > bitcast_ln696_1_fu_299_p1;
    sc_signal< sc_lv<1> > tmp_13_fu_302_p3;
    sc_signal< sc_lv<1> > or_ln582_fu_323_p2;
    sc_signal< sc_lv<1> > xor_ln582_fu_327_p2;
    sc_signal< sc_lv<1> > icmp_ln585_fu_280_p2;
    sc_signal< sc_lv<1> > and_ln581_fu_333_p2;
    sc_signal< sc_lv<1> > xor_ln585_fu_338_p2;
    sc_signal< sc_lv<1> > or_ln581_fu_356_p2;
    sc_signal< sc_lv<1> > icmp_ln603_fu_285_p2;
    sc_signal< sc_lv<1> > xor_ln581_fu_361_p2;
    sc_signal< sc_lv<1> > and_ln585_1_fu_350_p2;
    sc_signal< sc_lv<32> > select_ln588_fu_310_p3;
    sc_signal< sc_lv<1> > xor_ln571_fu_386_p2;
    sc_signal< sc_lv<1> > and_ln582_fu_391_p2;
    sc_signal< sc_lv<1> > or_ln603_1_fu_396_p2;
    sc_signal< sc_lv<32> > trunc_ln586_fu_406_p1;
    sc_signal< sc_lv<32> > select_ln603_fu_409_p3;
    sc_signal< sc_lv<32> > select_ln603_2_fu_415_p3;
    sc_signal< sc_logic > grp_fu_133_ce;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    sc_signal< sc_logic > regslice_both_in_last_V_U_apdone_blk;
    sc_signal< sc_lv<1> > in_r_TLAST_int;
    sc_signal< sc_logic > in_r_TVALID_int;
    sc_signal< sc_logic > in_r_TREADY_int;
    sc_signal< sc_logic > regslice_both_in_last_V_U_ack_in;
    sc_signal< sc_logic > regslice_both_in_data_U_apdone_blk;
    sc_signal< sc_lv<32> > in_r_TDATA_int;
    sc_signal< sc_logic > regslice_both_in_data_U_vld_out;
    sc_signal< sc_logic > regslice_both_in_data_U_ack_in;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_fsm_state1;
    static const sc_lv<8> ap_ST_fsm_state2;
    static const sc_lv<8> ap_ST_fsm_state3;
    static const sc_lv<8> ap_ST_fsm_state4;
    static const sc_lv<8> ap_ST_fsm_state5;
    static const sc_lv<8> ap_ST_fsm_state6;
    static const sc_lv<8> ap_ST_fsm_state7;
    static const sc_lv<8> ap_ST_fsm_state8;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<11> ap_const_lv11_400;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<54> ap_const_lv54_0;
    static const sc_lv<63> ap_const_lv63_0;
    static const sc_lv<12> ap_const_lv12_433;
    static const sc_lv<12> ap_const_lv12_10;
    static const sc_lv<12> ap_const_lv12_FF0;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<12> ap_const_lv12_36;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln581_fu_237_p2();
    void thread_and_ln581_fu_333_p2();
    void thread_and_ln582_fu_391_p2();
    void thread_and_ln585_1_fu_350_p2();
    void thread_and_ln585_fu_344_p2();
    void thread_and_ln603_fu_367_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_state1();
    void thread_ap_block_state2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_bitcast_ln696_1_fu_299_p1();
    void thread_bitcast_ln696_fu_163_p1();
    void thread_grp_fu_133_ce();
    void thread_grp_fu_294_p1();
    void thread_i_fu_142_p2();
    void thread_icmp_ln23_fu_136_p2();
    void thread_icmp_ln571_fu_220_p2();
    void thread_icmp_ln581_fu_231_p2();
    void thread_icmp_ln582_fu_257_p2();
    void thread_icmp_ln585_fu_280_p2();
    void thread_icmp_ln603_fu_285_p2();
    void thread_in_local_V_data_0_V_blk_n();
    void thread_in_local_V_data_0_V_din();
    void thread_in_local_V_data_0_V_write();
    void thread_in_r_TDATA_blk_n();
    void thread_in_r_TREADY();
    void thread_in_r_TREADY_int();
    void thread_internal_ap_ready();
    void thread_is_last_0_i_out_out_blk_n();
    void thread_is_last_0_i_out_out_din();
    void thread_is_last_0_i_out_out_write();
    void thread_or_ln28_fu_157_p2();
    void thread_or_ln581_fu_356_p2();
    void thread_or_ln582_fu_323_p2();
    void thread_or_ln603_1_fu_396_p2();
    void thread_or_ln603_2_fu_401_p2();
    void thread_or_ln603_fu_373_p2();
    void thread_real_start();
    void thread_select_ln570_fu_213_p3();
    void thread_select_ln581_fu_249_p3();
    void thread_select_ln588_fu_310_p3();
    void thread_select_ln603_1_fu_379_p3();
    void thread_select_ln603_2_fu_415_p3();
    void thread_select_ln603_fu_409_p3();
    void thread_sext_ln581_fu_277_p1();
    void thread_start_out();
    void thread_start_write();
    void thread_sub_ln461_fu_207_p2();
    void thread_sub_ln575_fu_225_p2();
    void thread_sub_ln581_fu_243_p2();
    void thread_tmp_13_fu_302_p3();
    void thread_tmp_i_fu_196_p3();
    void thread_trunc_ln557_fu_167_p1();
    void thread_trunc_ln565_fu_189_p1();
    void thread_trunc_ln583_fu_263_p1();
    void thread_trunc_ln586_fu_406_p1();
    void thread_xor_ln571_fu_386_p2();
    void thread_xor_ln581_fu_361_p2();
    void thread_xor_ln582_fu_327_p2();
    void thread_xor_ln585_fu_338_p2();
    void thread_zext_ln461_fu_193_p1();
    void thread_zext_ln569_fu_203_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
