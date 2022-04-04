// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module zeropad2d_cl_array_array_ap_fixed_4u_config27_s (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        data_V_data_0_V_dout,
        data_V_data_0_V_empty_n,
        data_V_data_0_V_read,
        data_V_data_1_V_dout,
        data_V_data_1_V_empty_n,
        data_V_data_1_V_read,
        data_V_data_2_V_dout,
        data_V_data_2_V_empty_n,
        data_V_data_2_V_read,
        data_V_data_3_V_dout,
        data_V_data_3_V_empty_n,
        data_V_data_3_V_read,
        res_V_data_0_V_din,
        res_V_data_0_V_full_n,
        res_V_data_0_V_write,
        res_V_data_1_V_din,
        res_V_data_1_V_full_n,
        res_V_data_1_V_write,
        res_V_data_2_V_din,
        res_V_data_2_V_full_n,
        res_V_data_2_V_write,
        res_V_data_3_V_din,
        res_V_data_3_V_full_n,
        res_V_data_3_V_write
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [31:0] data_V_data_0_V_dout;
input   data_V_data_0_V_empty_n;
output   data_V_data_0_V_read;
input  [31:0] data_V_data_1_V_dout;
input   data_V_data_1_V_empty_n;
output   data_V_data_1_V_read;
input  [31:0] data_V_data_2_V_dout;
input   data_V_data_2_V_empty_n;
output   data_V_data_2_V_read;
input  [31:0] data_V_data_3_V_dout;
input   data_V_data_3_V_empty_n;
output   data_V_data_3_V_read;
output  [31:0] res_V_data_0_V_din;
input   res_V_data_0_V_full_n;
output   res_V_data_0_V_write;
output  [31:0] res_V_data_1_V_din;
input   res_V_data_1_V_full_n;
output   res_V_data_1_V_write;
output  [31:0] res_V_data_2_V_din;
input   res_V_data_2_V_full_n;
output   res_V_data_2_V_write;
output  [31:0] res_V_data_3_V_din;
input   res_V_data_3_V_full_n;
output   res_V_data_3_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg data_V_data_0_V_read;
reg data_V_data_1_V_read;
reg data_V_data_2_V_read;
reg data_V_data_3_V_read;
reg[31:0] res_V_data_0_V_din;
reg res_V_data_0_V_write;
reg[31:0] res_V_data_1_V_din;
reg res_V_data_1_V_write;
reg[31:0] res_V_data_2_V_din;
reg res_V_data_2_V_write;
reg[31:0] res_V_data_3_V_din;
reg res_V_data_3_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    data_V_data_0_V_blk_n;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln65_fu_168_p2;
reg    data_V_data_1_V_blk_n;
reg    data_V_data_2_V_blk_n;
reg    data_V_data_3_V_blk_n;
reg    res_V_data_0_V_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln56_fu_144_p2;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln61_fu_156_p2;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln74_fu_200_p2;
reg    res_V_data_1_V_blk_n;
reg    res_V_data_2_V_blk_n;
reg    res_V_data_3_V_blk_n;
wire   [4:0] j_fu_150_p2;
wire    io_acc_block_signal_op23;
reg    ap_block_state2;
wire   [4:0] i_fu_162_p2;
reg   [4:0] i_reg_223;
wire    io_acc_block_signal_op35;
reg    ap_block_state3;
wire   [4:0] j_6_fu_174_p2;
wire    io_acc_block_signal_op46;
wire    io_acc_block_signal_op51;
wire    io_acc_block_signal_op54;
reg    ap_block_state4;
wire   [4:0] j_5_fu_206_p2;
wire    io_acc_block_signal_op63;
reg    ap_block_state5;
reg   [4:0] j_0_reg_100;
reg    ap_block_state1;
reg   [4:0] i1_0_reg_111;
reg   [4:0] j3_0_reg_122;
reg   [4:0] j6_0_reg_133;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((icmp_ln74_fu_200_p2 == 1'd0) & (io_acc_block_signal_op63 == 1'b0)) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln74_fu_200_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln56_fu_144_p2 == 1'd0) & (io_acc_block_signal_op23 == 1'b0)) & (icmp_ln56_fu_144_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i1_0_reg_111 <= 5'd0;
    end else if ((~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        i1_0_reg_111 <= i_reg_223;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln61_fu_156_p2 == 1'd0) & (io_acc_block_signal_op35 == 1'b0)) & (icmp_ln61_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        j3_0_reg_122 <= 5'd0;
    end else if ((~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        j3_0_reg_122 <= j_6_fu_174_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln74_fu_200_p2 == 1'd0) & (io_acc_block_signal_op63 == 1'b0)) & (icmp_ln74_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        j6_0_reg_133 <= j_5_fu_206_p2;
    end else if ((~((icmp_ln61_fu_156_p2 == 1'd0) & (io_acc_block_signal_op35 == 1'b0)) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln61_fu_156_p2 == 1'd1))) begin
        j6_0_reg_133 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln56_fu_144_p2 == 1'd0) & (io_acc_block_signal_op23 == 1'b0)) & (icmp_ln56_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_0_reg_100 <= j_fu_150_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        j_0_reg_100 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((icmp_ln61_fu_156_p2 == 1'd0) & (io_acc_block_signal_op35 == 1'b0)) & (1'b1 == ap_CS_fsm_state3))) begin
        i_reg_223 <= i_fu_162_p2;
    end
end

always @ (*) begin
    if ((~((icmp_ln74_fu_200_p2 == 1'd0) & (io_acc_block_signal_op63 == 1'b0)) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln74_fu_200_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        data_V_data_0_V_blk_n = data_V_data_0_V_empty_n;
    end else begin
        data_V_data_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        data_V_data_0_V_read = 1'b1;
    end else begin
        data_V_data_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        data_V_data_1_V_blk_n = data_V_data_1_V_empty_n;
    end else begin
        data_V_data_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        data_V_data_1_V_read = 1'b1;
    end else begin
        data_V_data_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        data_V_data_2_V_blk_n = data_V_data_2_V_empty_n;
    end else begin
        data_V_data_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        data_V_data_2_V_read = 1'b1;
    end else begin
        data_V_data_2_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        data_V_data_3_V_blk_n = data_V_data_3_V_empty_n;
    end else begin
        data_V_data_3_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        data_V_data_3_V_read = 1'b1;
    end else begin
        data_V_data_3_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((icmp_ln74_fu_200_p2 == 1'd0) & (io_acc_block_signal_op63 == 1'b0)) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln74_fu_200_p2 == 1'd1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if ((((icmp_ln61_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln56_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln74_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        res_V_data_0_V_blk_n = res_V_data_0_V_full_n;
    end else begin
        res_V_data_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        res_V_data_0_V_din = data_V_data_0_V_dout;
    end else if (((~((icmp_ln61_fu_156_p2 == 1'd0) & (io_acc_block_signal_op35 == 1'b0)) & (icmp_ln61_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | (~((icmp_ln56_fu_144_p2 == 1'd0) & (io_acc_block_signal_op23 == 1'b0)) & (icmp_ln56_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | (~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | (~((icmp_ln74_fu_200_p2 == 1'd0) & (io_acc_block_signal_op63 == 1'b0)) & (icmp_ln74_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        res_V_data_0_V_din = 32'd0;
    end else begin
        res_V_data_0_V_din = 'bx;
    end
end

always @ (*) begin
    if (((~((icmp_ln61_fu_156_p2 == 1'd0) & (io_acc_block_signal_op35 == 1'b0)) & (icmp_ln61_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | (~((icmp_ln56_fu_144_p2 == 1'd0) & (io_acc_block_signal_op23 == 1'b0)) & (icmp_ln56_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | (~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | (~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | (~((icmp_ln74_fu_200_p2 == 1'd0) & (io_acc_block_signal_op63 == 1'b0)) & (icmp_ln74_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        res_V_data_0_V_write = 1'b1;
    end else begin
        res_V_data_0_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln61_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln56_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln74_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        res_V_data_1_V_blk_n = res_V_data_1_V_full_n;
    end else begin
        res_V_data_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        res_V_data_1_V_din = data_V_data_1_V_dout;
    end else if (((~((icmp_ln61_fu_156_p2 == 1'd0) & (io_acc_block_signal_op35 == 1'b0)) & (icmp_ln61_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | (~((icmp_ln56_fu_144_p2 == 1'd0) & (io_acc_block_signal_op23 == 1'b0)) & (icmp_ln56_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | (~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | (~((icmp_ln74_fu_200_p2 == 1'd0) & (io_acc_block_signal_op63 == 1'b0)) & (icmp_ln74_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        res_V_data_1_V_din = 32'd0;
    end else begin
        res_V_data_1_V_din = 'bx;
    end
end

always @ (*) begin
    if (((~((icmp_ln61_fu_156_p2 == 1'd0) & (io_acc_block_signal_op35 == 1'b0)) & (icmp_ln61_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | (~((icmp_ln56_fu_144_p2 == 1'd0) & (io_acc_block_signal_op23 == 1'b0)) & (icmp_ln56_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | (~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | (~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | (~((icmp_ln74_fu_200_p2 == 1'd0) & (io_acc_block_signal_op63 == 1'b0)) & (icmp_ln74_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        res_V_data_1_V_write = 1'b1;
    end else begin
        res_V_data_1_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln61_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln56_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln74_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        res_V_data_2_V_blk_n = res_V_data_2_V_full_n;
    end else begin
        res_V_data_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        res_V_data_2_V_din = data_V_data_2_V_dout;
    end else if (((~((icmp_ln61_fu_156_p2 == 1'd0) & (io_acc_block_signal_op35 == 1'b0)) & (icmp_ln61_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | (~((icmp_ln56_fu_144_p2 == 1'd0) & (io_acc_block_signal_op23 == 1'b0)) & (icmp_ln56_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | (~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | (~((icmp_ln74_fu_200_p2 == 1'd0) & (io_acc_block_signal_op63 == 1'b0)) & (icmp_ln74_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        res_V_data_2_V_din = 32'd0;
    end else begin
        res_V_data_2_V_din = 'bx;
    end
end

always @ (*) begin
    if (((~((icmp_ln61_fu_156_p2 == 1'd0) & (io_acc_block_signal_op35 == 1'b0)) & (icmp_ln61_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | (~((icmp_ln56_fu_144_p2 == 1'd0) & (io_acc_block_signal_op23 == 1'b0)) & (icmp_ln56_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | (~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | (~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | (~((icmp_ln74_fu_200_p2 == 1'd0) & (io_acc_block_signal_op63 == 1'b0)) & (icmp_ln74_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        res_V_data_2_V_write = 1'b1;
    end else begin
        res_V_data_2_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln61_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln56_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln74_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        res_V_data_3_V_blk_n = res_V_data_3_V_full_n;
    end else begin
        res_V_data_3_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        res_V_data_3_V_din = data_V_data_3_V_dout;
    end else if (((~((icmp_ln61_fu_156_p2 == 1'd0) & (io_acc_block_signal_op35 == 1'b0)) & (icmp_ln61_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | (~((icmp_ln56_fu_144_p2 == 1'd0) & (io_acc_block_signal_op23 == 1'b0)) & (icmp_ln56_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | (~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | (~((icmp_ln74_fu_200_p2 == 1'd0) & (io_acc_block_signal_op63 == 1'b0)) & (icmp_ln74_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        res_V_data_3_V_din = 32'd0;
    end else begin
        res_V_data_3_V_din = 'bx;
    end
end

always @ (*) begin
    if (((~((icmp_ln61_fu_156_p2 == 1'd0) & (io_acc_block_signal_op35 == 1'b0)) & (icmp_ln61_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | (~((icmp_ln56_fu_144_p2 == 1'd0) & (io_acc_block_signal_op23 == 1'b0)) & (icmp_ln56_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | (~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | (~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | (~((icmp_ln74_fu_200_p2 == 1'd0) & (io_acc_block_signal_op63 == 1'b0)) & (icmp_ln74_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        res_V_data_3_V_write = 1'b1;
    end else begin
        res_V_data_3_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((icmp_ln56_fu_144_p2 == 1'd0) & (io_acc_block_signal_op23 == 1'b0)) & (icmp_ln56_fu_144_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else if ((~((icmp_ln56_fu_144_p2 == 1'd0) & (io_acc_block_signal_op23 == 1'b0)) & (icmp_ln56_fu_144_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((~((icmp_ln61_fu_156_p2 == 1'd0) & (io_acc_block_signal_op35 == 1'b0)) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln61_fu_156_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else if ((~((icmp_ln61_fu_156_p2 == 1'd0) & (io_acc_block_signal_op35 == 1'b0)) & (icmp_ln61_fu_156_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if ((~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else if ((~(((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0))) & (icmp_ln65_fu_168_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~((icmp_ln74_fu_200_p2 == 1'd0) & (io_acc_block_signal_op63 == 1'b0)) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln74_fu_200_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((icmp_ln74_fu_200_p2 == 1'd0) & (io_acc_block_signal_op63 == 1'b0)) & (icmp_ln74_fu_200_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2 = ((icmp_ln56_fu_144_p2 == 1'd0) & (io_acc_block_signal_op23 == 1'b0));
end

always @ (*) begin
    ap_block_state3 = ((icmp_ln61_fu_156_p2 == 1'd0) & (io_acc_block_signal_op35 == 1'b0));
end

always @ (*) begin
    ap_block_state4 = (((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op51 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd0) & (io_acc_block_signal_op46 == 1'b0)) | ((icmp_ln65_fu_168_p2 == 1'd1) & (io_acc_block_signal_op54 == 1'b0)));
end

always @ (*) begin
    ap_block_state5 = ((icmp_ln74_fu_200_p2 == 1'd0) & (io_acc_block_signal_op63 == 1'b0));
end

assign ap_ready = internal_ap_ready;

assign i_fu_162_p2 = (i1_0_reg_111 + 5'd1);

assign icmp_ln56_fu_144_p2 = ((j_0_reg_100 == 5'd18) ? 1'b1 : 1'b0);

assign icmp_ln61_fu_156_p2 = ((i1_0_reg_111 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln65_fu_168_p2 = ((j3_0_reg_122 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln74_fu_200_p2 = ((j6_0_reg_133 == 5'd18) ? 1'b1 : 1'b0);

assign io_acc_block_signal_op23 = (res_V_data_3_V_full_n & res_V_data_2_V_full_n & res_V_data_1_V_full_n & res_V_data_0_V_full_n);

assign io_acc_block_signal_op35 = (res_V_data_3_V_full_n & res_V_data_2_V_full_n & res_V_data_1_V_full_n & res_V_data_0_V_full_n);

assign io_acc_block_signal_op46 = (data_V_data_3_V_empty_n & data_V_data_2_V_empty_n & data_V_data_1_V_empty_n & data_V_data_0_V_empty_n);

assign io_acc_block_signal_op51 = (res_V_data_3_V_full_n & res_V_data_2_V_full_n & res_V_data_1_V_full_n & res_V_data_0_V_full_n);

assign io_acc_block_signal_op54 = (res_V_data_3_V_full_n & res_V_data_2_V_full_n & res_V_data_1_V_full_n & res_V_data_0_V_full_n);

assign io_acc_block_signal_op63 = (res_V_data_3_V_full_n & res_V_data_2_V_full_n & res_V_data_1_V_full_n & res_V_data_0_V_full_n);

assign j_5_fu_206_p2 = (j6_0_reg_133 + 5'd1);

assign j_6_fu_174_p2 = (j3_0_reg_122 + 5'd1);

assign j_fu_150_p2 = (j_0_reg_100 + 5'd1);

assign start_out = real_start;

endmodule //zeropad2d_cl_array_array_ap_fixed_4u_config27_s
