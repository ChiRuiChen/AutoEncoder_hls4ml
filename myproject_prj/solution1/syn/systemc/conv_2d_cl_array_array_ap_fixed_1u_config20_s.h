// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _conv_2d_cl_array_array_ap_fixed_1u_config20_s_HH_
#define _conv_2d_cl_array_array_ap_fixed_1u_config20_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "shift_line_buffer_array_ap_fixed_8u_config20_s.h"
#include "myproject_axi_mux_727_32_1_1.h"
#include "myproject_axi_mul_32s_17s_48_5_1.h"
#include "conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V.h"

namespace ap_rtl {

struct conv_2d_cl_array_array_ap_fixed_1u_config20_s : public sc_module {
    // Port declarations 37
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
    sc_in< sc_lv<32> > data_V_data_0_V_dout;
    sc_in< sc_logic > data_V_data_0_V_empty_n;
    sc_out< sc_logic > data_V_data_0_V_read;
    sc_in< sc_lv<32> > data_V_data_1_V_dout;
    sc_in< sc_logic > data_V_data_1_V_empty_n;
    sc_out< sc_logic > data_V_data_1_V_read;
    sc_in< sc_lv<32> > data_V_data_2_V_dout;
    sc_in< sc_logic > data_V_data_2_V_empty_n;
    sc_out< sc_logic > data_V_data_2_V_read;
    sc_in< sc_lv<32> > data_V_data_3_V_dout;
    sc_in< sc_logic > data_V_data_3_V_empty_n;
    sc_out< sc_logic > data_V_data_3_V_read;
    sc_in< sc_lv<32> > data_V_data_4_V_dout;
    sc_in< sc_logic > data_V_data_4_V_empty_n;
    sc_out< sc_logic > data_V_data_4_V_read;
    sc_in< sc_lv<32> > data_V_data_5_V_dout;
    sc_in< sc_logic > data_V_data_5_V_empty_n;
    sc_out< sc_logic > data_V_data_5_V_read;
    sc_in< sc_lv<32> > data_V_data_6_V_dout;
    sc_in< sc_logic > data_V_data_6_V_empty_n;
    sc_out< sc_logic > data_V_data_6_V_read;
    sc_in< sc_lv<32> > data_V_data_7_V_dout;
    sc_in< sc_logic > data_V_data_7_V_empty_n;
    sc_out< sc_logic > data_V_data_7_V_read;
    sc_out< sc_lv<32> > res_V_data_V_din;
    sc_in< sc_logic > res_V_data_V_full_n;
    sc_out< sc_logic > res_V_data_V_write;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    conv_2d_cl_array_array_ap_fixed_1u_config20_s(sc_module_name name);
    SC_HAS_PROCESS(conv_2d_cl_array_array_ap_fixed_1u_config20_s);

    ~conv_2d_cl_array_array_ap_fixed_1u_config20_s();

    sc_trace_file* mVcdFile;

    conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V* w20_V_U;
    shift_line_buffer_array_ap_fixed_8u_config20_s* call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364;
    myproject_axi_mux_727_32_1_1<1,1,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,7,32>* myproject_axi_mux_727_32_1_1_U597;
    myproject_axi_mul_32s_17s_48_5_1<1,5,32,17,48>* myproject_axi_mul_32s_17s_48_5_1_U598;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_lv<32> > kernel_data_V_5_0;
    sc_signal< sc_lv<32> > kernel_data_V_5_1;
    sc_signal< sc_lv<32> > kernel_data_V_5_2;
    sc_signal< sc_lv<32> > kernel_data_V_5_3;
    sc_signal< sc_lv<32> > kernel_data_V_5_4;
    sc_signal< sc_lv<32> > kernel_data_V_5_5;
    sc_signal< sc_lv<32> > kernel_data_V_5_6;
    sc_signal< sc_lv<32> > kernel_data_V_5_7;
    sc_signal< sc_lv<32> > kernel_data_V_5_8;
    sc_signal< sc_lv<32> > kernel_data_V_5_9;
    sc_signal< sc_lv<32> > kernel_data_V_5_10;
    sc_signal< sc_lv<32> > kernel_data_V_5_11;
    sc_signal< sc_lv<32> > kernel_data_V_5_12;
    sc_signal< sc_lv<32> > kernel_data_V_5_13;
    sc_signal< sc_lv<32> > kernel_data_V_5_14;
    sc_signal< sc_lv<32> > kernel_data_V_5_15;
    sc_signal< sc_lv<32> > kernel_data_V_5_16;
    sc_signal< sc_lv<32> > kernel_data_V_5_17;
    sc_signal< sc_lv<32> > kernel_data_V_5_18;
    sc_signal< sc_lv<32> > kernel_data_V_5_19;
    sc_signal< sc_lv<32> > kernel_data_V_5_20;
    sc_signal< sc_lv<32> > kernel_data_V_5_21;
    sc_signal< sc_lv<32> > kernel_data_V_5_22;
    sc_signal< sc_lv<32> > kernel_data_V_5_23;
    sc_signal< sc_lv<32> > kernel_data_V_5_24;
    sc_signal< sc_lv<32> > kernel_data_V_5_25;
    sc_signal< sc_lv<32> > kernel_data_V_5_26;
    sc_signal< sc_lv<32> > kernel_data_V_5_27;
    sc_signal< sc_lv<32> > kernel_data_V_5_28;
    sc_signal< sc_lv<32> > kernel_data_V_5_29;
    sc_signal< sc_lv<32> > kernel_data_V_5_30;
    sc_signal< sc_lv<32> > kernel_data_V_5_31;
    sc_signal< sc_lv<32> > kernel_data_V_5_32;
    sc_signal< sc_lv<32> > kernel_data_V_5_33;
    sc_signal< sc_lv<32> > kernel_data_V_5_34;
    sc_signal< sc_lv<32> > kernel_data_V_5_35;
    sc_signal< sc_lv<32> > kernel_data_V_5_36;
    sc_signal< sc_lv<32> > kernel_data_V_5_37;
    sc_signal< sc_lv<32> > kernel_data_V_5_38;
    sc_signal< sc_lv<32> > kernel_data_V_5_39;
    sc_signal< sc_lv<32> > kernel_data_V_5_40;
    sc_signal< sc_lv<32> > kernel_data_V_5_41;
    sc_signal< sc_lv<32> > kernel_data_V_5_42;
    sc_signal< sc_lv<32> > kernel_data_V_5_43;
    sc_signal< sc_lv<32> > kernel_data_V_5_44;
    sc_signal< sc_lv<32> > kernel_data_V_5_45;
    sc_signal< sc_lv<32> > kernel_data_V_5_46;
    sc_signal< sc_lv<32> > kernel_data_V_5_47;
    sc_signal< sc_lv<32> > kernel_data_V_5_48;
    sc_signal< sc_lv<32> > kernel_data_V_5_49;
    sc_signal< sc_lv<32> > kernel_data_V_5_50;
    sc_signal< sc_lv<32> > kernel_data_V_5_51;
    sc_signal< sc_lv<32> > kernel_data_V_5_52;
    sc_signal< sc_lv<32> > kernel_data_V_5_53;
    sc_signal< sc_lv<32> > kernel_data_V_5_54;
    sc_signal< sc_lv<32> > kernel_data_V_5_55;
    sc_signal< sc_lv<32> > kernel_data_V_5_56;
    sc_signal< sc_lv<32> > kernel_data_V_5_57;
    sc_signal< sc_lv<32> > kernel_data_V_5_58;
    sc_signal< sc_lv<32> > kernel_data_V_5_59;
    sc_signal< sc_lv<32> > kernel_data_V_5_60;
    sc_signal< sc_lv<32> > kernel_data_V_5_61;
    sc_signal< sc_lv<32> > kernel_data_V_5_62;
    sc_signal< sc_lv<32> > kernel_data_V_5_63;
    sc_signal< sc_lv<32> > kernel_data_V_5_64;
    sc_signal< sc_lv<32> > kernel_data_V_5_65;
    sc_signal< sc_lv<32> > kernel_data_V_5_66;
    sc_signal< sc_lv<32> > kernel_data_V_5_67;
    sc_signal< sc_lv<32> > kernel_data_V_5_68;
    sc_signal< sc_lv<32> > kernel_data_V_5_69;
    sc_signal< sc_lv<32> > kernel_data_V_5_70;
    sc_signal< sc_lv<32> > kernel_data_V_5_71;
    sc_signal< sc_lv<7> > w20_V_address0;
    sc_signal< sc_logic > w20_V_ce0;
    sc_signal< sc_lv<17> > w20_V_q0;
    sc_signal< sc_lv<32> > pX_7;
    sc_signal< sc_lv<32> > sX_7;
    sc_signal< sc_lv<32> > pY_7;
    sc_signal< sc_lv<32> > sY_7;
    sc_signal< sc_logic > data_V_data_0_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > data_V_data_1_V_blk_n;
    sc_signal< sc_logic > data_V_data_2_V_blk_n;
    sc_signal< sc_logic > data_V_data_3_V_blk_n;
    sc_signal< sc_logic > data_V_data_4_V_blk_n;
    sc_signal< sc_logic > data_V_data_5_V_blk_n;
    sc_signal< sc_logic > data_V_data_6_V_blk_n;
    sc_signal< sc_logic > data_V_data_7_V_blk_n;
    sc_signal< sc_logic > res_V_data_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<1> > and_ln272_4_reg_1985;
    sc_signal< sc_lv<7> > in_index8_reg_330;
    sc_signal< sc_lv<32> > res_pack_data_V6_reg_342;
    sc_signal< sc_lv<32> > tmp_data_0_V_reg_1913;
    sc_signal< sc_logic > io_acc_block_signal_op24;
    sc_signal< sc_lv<32> > tmp_data_1_V_reg_1918;
    sc_signal< sc_lv<32> > tmp_data_2_V_reg_1923;
    sc_signal< sc_lv<32> > tmp_data_3_V_reg_1928;
    sc_signal< sc_lv<32> > tmp_data_4_V_reg_1933;
    sc_signal< sc_lv<32> > tmp_data_5_V_reg_1938;
    sc_signal< sc_lv<32> > tmp_data_6_V_reg_1943;
    sc_signal< sc_lv<32> > tmp_data_7_V_reg_1948;
    sc_signal< sc_lv<32> > sX_7_load_reg_1953;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln272_fu_1452_p2;
    sc_signal< sc_lv<1> > icmp_ln272_reg_1958;
    sc_signal< sc_lv<32> > sY_7_load_reg_1963;
    sc_signal< sc_lv<1> > icmp_ln272_4_fu_1462_p2;
    sc_signal< sc_lv<1> > icmp_ln272_4_reg_1968;
    sc_signal< sc_lv<32> > pY_7_load_reg_1973;
    sc_signal< sc_lv<32> > pX_7_load_reg_1979;
    sc_signal< sc_lv<1> > and_ln272_4_fu_1520_p2;
    sc_signal< sc_lv<11> > add_ln78_fu_1526_p2;
    sc_signal< sc_lv<11> > add_ln78_reg_1989;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter7;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<7> > in_index_fu_1537_p2;
    sc_signal< sc_lv<7> > in_index_reg_1999;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > icmp_ln64_fu_1543_p2;
    sc_signal< sc_lv<1> > icmp_ln64_reg_2004;
    sc_signal< sc_lv<1> > icmp_ln64_reg_2004_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln64_reg_2004_pp0_iter2_reg;
    sc_signal< sc_lv<1> > icmp_ln64_reg_2004_pp0_iter3_reg;
    sc_signal< sc_lv<1> > icmp_ln64_reg_2004_pp0_iter4_reg;
    sc_signal< sc_lv<1> > icmp_ln64_reg_2004_pp0_iter5_reg;
    sc_signal< sc_lv<1> > icmp_ln64_reg_2004_pp0_iter6_reg;
    sc_signal< sc_lv<32> > tmp_6_fu_1645_p74;
    sc_signal< sc_lv<32> > tmp_6_reg_2008;
    sc_signal< sc_lv<17> > w20_V_load_reg_2013;
    sc_signal< sc_lv<32> > trunc_ln_reg_2028;
    sc_signal< sc_lv<32> > acc_0_V_fu_1817_p2;
    sc_signal< sc_lv<32> > acc_0_V_reg_2033;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter7;
    sc_signal< sc_lv<1> > icmp_ln293_fu_1822_p2;
    sc_signal< sc_lv<1> > icmp_ln293_reg_2039;
    sc_signal< bool > ap_block_state12;
    sc_signal< sc_lv<32> > select_ln308_fu_1843_p3;
    sc_signal< sc_lv<32> > select_ln308_reg_2043;
    sc_signal< sc_lv<1> > icmp_ln297_fu_1862_p2;
    sc_signal< sc_lv<1> > icmp_ln297_reg_2048;
    sc_signal< sc_lv<32> > select_ln303_fu_1883_p3;
    sc_signal< sc_lv<32> > select_ln303_reg_2052;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_logic > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_start;
    sc_signal< sc_logic > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_done;
    sc_signal< sc_logic > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_idle;
    sc_signal< sc_logic > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_ready;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_0;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_1;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_2;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_3;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_4;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_5;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_6;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_7;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_8;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_9;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_10;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_11;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_12;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_13;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_14;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_15;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_16;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_17;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_18;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_19;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_20;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_21;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_22;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_23;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_24;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_25;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_26;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_27;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_28;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_29;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_30;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_31;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_32;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_33;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_34;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_35;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_36;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_37;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_38;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_39;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_40;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_41;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_42;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_43;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_44;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_45;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_46;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_47;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_48;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_49;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_50;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_51;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_52;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_53;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_54;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_55;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_56;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_57;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_58;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_59;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_60;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_61;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_62;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_63;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_64;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_65;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_66;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_67;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_68;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_69;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_70;
    sc_signal< sc_lv<32> > call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_return_71;
    sc_signal< sc_lv<11> > indvar_flatten9_reg_318;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<1> > icmp_ln78_fu_1907_p2;
    sc_signal< sc_lv<7> > ap_phi_mux_in_index8_phi_fu_334_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<32> > ap_phi_mux_storemerge_i_i_phi_fu_357_p4;
    sc_signal< sc_lv<32> > storemerge_i_i_reg_353;
    sc_signal< sc_lv<64> > zext_ln76_fu_1532_p1;
    sc_signal< sc_lv<32> > add_ln306_fu_1827_p2;
    sc_signal< sc_lv<32> > add_ln301_fu_1867_p2;
    sc_signal< sc_lv<31> > tmp_fu_1472_p4;
    sc_signal< sc_lv<31> > tmp_9_fu_1492_p4;
    sc_signal< sc_lv<1> > icmp_ln272_16_fu_1482_p2;
    sc_signal< sc_lv<1> > icmp_ln272_17_fu_1502_p2;
    sc_signal< sc_lv<1> > and_ln272_3_fu_1514_p2;
    sc_signal< sc_lv<1> > and_ln272_fu_1508_p2;
    sc_signal< sc_lv<48> > grp_fu_1801_p2;
    sc_signal< sc_lv<32> > add_ln308_fu_1838_p2;
    sc_signal< sc_lv<32> > add_ln303_fu_1878_p2;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_292;
    sc_signal< bool > ap_condition_301;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_pp0_stage0;
    static const sc_lv<6> ap_ST_fsm_state12;
    static const sc_lv<6> ap_ST_fsm_state13;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_1005;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<7> ap_const_lv7_47;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<11> ap_const_lv11_483;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_acc_0_V_fu_1817_p2();
    void thread_add_ln301_fu_1867_p2();
    void thread_add_ln303_fu_1878_p2();
    void thread_add_ln306_fu_1827_p2();
    void thread_add_ln308_fu_1838_p2();
    void thread_add_ln78_fu_1526_p2();
    void thread_and_ln272_3_fu_1514_p2();
    void thread_and_ln272_4_fu_1520_p2();
    void thread_and_ln272_fu_1508_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state10_pp0_stage0_iter6();
    void thread_ap_block_state11_pp0_stage0_iter7();
    void thread_ap_block_state12();
    void thread_ap_block_state4_pp0_stage0_iter0();
    void thread_ap_block_state5_pp0_stage0_iter1();
    void thread_ap_block_state6_pp0_stage0_iter2();
    void thread_ap_block_state7_pp0_stage0_iter3();
    void thread_ap_block_state8_pp0_stage0_iter4();
    void thread_ap_block_state9_pp0_stage0_iter5();
    void thread_ap_condition_292();
    void thread_ap_condition_301();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_in_index8_phi_fu_334_p4();
    void thread_ap_phi_mux_storemerge_i_i_phi_fu_357_p4();
    void thread_ap_ready();
    void thread_call_ret_shift_line_buffer_array_ap_fixed_8u_config20_s_fu_364_ap_start();
    void thread_data_V_data_0_V_blk_n();
    void thread_data_V_data_0_V_read();
    void thread_data_V_data_1_V_blk_n();
    void thread_data_V_data_1_V_read();
    void thread_data_V_data_2_V_blk_n();
    void thread_data_V_data_2_V_read();
    void thread_data_V_data_3_V_blk_n();
    void thread_data_V_data_3_V_read();
    void thread_data_V_data_4_V_blk_n();
    void thread_data_V_data_4_V_read();
    void thread_data_V_data_5_V_blk_n();
    void thread_data_V_data_5_V_read();
    void thread_data_V_data_6_V_blk_n();
    void thread_data_V_data_6_V_read();
    void thread_data_V_data_7_V_blk_n();
    void thread_data_V_data_7_V_read();
    void thread_icmp_ln272_16_fu_1482_p2();
    void thread_icmp_ln272_17_fu_1502_p2();
    void thread_icmp_ln272_4_fu_1462_p2();
    void thread_icmp_ln272_fu_1452_p2();
    void thread_icmp_ln293_fu_1822_p2();
    void thread_icmp_ln297_fu_1862_p2();
    void thread_icmp_ln64_fu_1543_p2();
    void thread_icmp_ln78_fu_1907_p2();
    void thread_in_index_fu_1537_p2();
    void thread_internal_ap_ready();
    void thread_io_acc_block_signal_op24();
    void thread_real_start();
    void thread_res_V_data_V_blk_n();
    void thread_res_V_data_V_din();
    void thread_res_V_data_V_write();
    void thread_select_ln303_fu_1883_p3();
    void thread_select_ln308_fu_1843_p3();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_9_fu_1492_p4();
    void thread_tmp_fu_1472_p4();
    void thread_w20_V_address0();
    void thread_w20_V_ce0();
    void thread_zext_ln76_fu_1532_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
