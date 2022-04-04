-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Loop_1_proc574 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    in_r_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    in_r_TVALID : IN STD_LOGIC;
    in_r_TREADY : OUT STD_LOGIC;
    in_local_V_data_0_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    in_local_V_data_0_V_full_n : IN STD_LOGIC;
    in_local_V_data_0_V_write : OUT STD_LOGIC;
    in_r_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    is_last_0_i_out_out_din : OUT STD_LOGIC_VECTOR (0 downto 0);
    is_last_0_i_out_out_full_n : IN STD_LOGIC;
    is_last_0_i_out_out_write : OUT STD_LOGIC );
end;


architecture behav of Loop_1_proc574 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv11_400 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_34 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110100";
    constant ap_const_lv32_3E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111110";
    constant ap_const_lv54_0 : STD_LOGIC_VECTOR (53 downto 0) := "000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv63_0 : STD_LOGIC_VECTOR (62 downto 0) := "000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv12_433 : STD_LOGIC_VECTOR (11 downto 0) := "010000110011";
    constant ap_const_lv12_10 : STD_LOGIC_VECTOR (11 downto 0) := "000000010000";
    constant ap_const_lv12_FF0 : STD_LOGIC_VECTOR (11 downto 0) := "111111110000";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv12_36 : STD_LOGIC_VECTOR (11 downto 0) := "000000110110";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal in_local_V_data_0_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal in_r_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln23_fu_136_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal is_last_0_i_out_out_blk_n : STD_LOGIC;
    signal i_fu_142_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_reg_432 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_block_state2 : BOOLEAN;
    signal in_data_tmp_reg_437 : STD_LOGIC_VECTOR (31 downto 0);
    signal or_ln28_fu_157_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln28_reg_443 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln557_fu_167_p1 : STD_LOGIC_VECTOR (62 downto 0);
    signal trunc_ln557_reg_448 : STD_LOGIC_VECTOR (62 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_reg_453 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_i_i_reg_458 : STD_LOGIC_VECTOR (10 downto 0);
    signal trunc_ln565_fu_189_p1 : STD_LOGIC_VECTOR (51 downto 0);
    signal trunc_ln565_reg_463 : STD_LOGIC_VECTOR (51 downto 0);
    signal select_ln570_fu_213_p3 : STD_LOGIC_VECTOR (53 downto 0);
    signal select_ln570_reg_468 : STD_LOGIC_VECTOR (53 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln571_fu_220_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln571_reg_473 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln581_fu_231_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln581_reg_479 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln581_fu_249_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal select_ln581_reg_485 : STD_LOGIC_VECTOR (11 downto 0);
    signal icmp_ln582_fu_257_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln582_reg_491 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln583_fu_263_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln583_reg_497 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_12_reg_503 : STD_LOGIC_VECTOR (6 downto 0);
    signal sext_ln581_fu_277_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal and_ln585_fu_344_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln585_reg_518 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln603_fu_367_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln603_reg_523 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln603_fu_373_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln603_reg_528 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln603_1_fu_379_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln603_1_reg_534 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_294_p2 : STD_LOGIC_VECTOR (53 downto 0);
    signal ashr_ln586_reg_539 : STD_LOGIC_VECTOR (53 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal grp_fu_318_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal shl_ln604_reg_544 : STD_LOGIC_VECTOR (31 downto 0);
    signal or_ln603_2_fu_401_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln603_2_reg_549 : STD_LOGIC_VECTOR (0 downto 0);
    signal is_last_0_i_out_dc_0_reg_110 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal i_0_i_i_reg_122 : STD_LOGIC_VECTOR (10 downto 0);
    signal grp_fu_133_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bitcast_ln696_fu_163_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_i_fu_196_p3 : STD_LOGIC_VECTOR (52 downto 0);
    signal zext_ln569_fu_203_p1 : STD_LOGIC_VECTOR (53 downto 0);
    signal sub_ln461_fu_207_p2 : STD_LOGIC_VECTOR (53 downto 0);
    signal zext_ln461_fu_193_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal sub_ln575_fu_225_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln581_fu_237_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal sub_ln581_fu_243_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal grp_fu_294_p1 : STD_LOGIC_VECTOR (53 downto 0);
    signal bitcast_ln696_1_fu_299_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_13_fu_302_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln582_fu_323_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln582_fu_327_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln585_fu_280_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln581_fu_333_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln585_fu_338_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln581_fu_356_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln603_fu_285_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln581_fu_361_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln585_1_fu_350_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln588_fu_310_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal xor_ln571_fu_386_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln582_fu_391_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln603_1_fu_396_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln586_fu_406_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln603_fu_409_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln603_2_fu_415_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_133_ce : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);
    signal regslice_both_in_last_V_U_apdone_blk : STD_LOGIC;
    signal in_r_TLAST_int : STD_LOGIC_VECTOR (0 downto 0);
    signal in_r_TVALID_int : STD_LOGIC;
    signal in_r_TREADY_int : STD_LOGIC;
    signal regslice_both_in_last_V_U_ack_in : STD_LOGIC;
    signal regslice_both_in_data_U_apdone_blk : STD_LOGIC;
    signal in_r_TDATA_int : STD_LOGIC_VECTOR (31 downto 0);
    signal regslice_both_in_data_U_vld_out : STD_LOGIC;
    signal regslice_both_in_data_U_ack_in : STD_LOGIC;

    component myproject_axi_fpext_32ns_64_3_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component myproject_axi_ashr_54ns_32ns_54_2_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        OP : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (53 downto 0);
        din1 : IN STD_LOGIC_VECTOR (53 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (53 downto 0) );
    end component;


    component myproject_axi_shl_32ns_32s_32_2_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        OP : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    myproject_axi_fpext_32ns_64_3_1_U1 : component myproject_axi_fpext_32ns_64_3_1
    generic map (
        ID => 1,
        NUM_STAGE => 3,
        din0_WIDTH => 32,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => in_r_TDATA_int,
        ce => grp_fu_133_ce,
        dout => grp_fu_133_p1);

    myproject_axi_ashr_54ns_32ns_54_2_1_U2 : component myproject_axi_ashr_54ns_32ns_54_2_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        OP => 2,
        din0_WIDTH => 54,
        din1_WIDTH => 32,
        dout_WIDTH => 54)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => select_ln570_reg_468,
        din1 => grp_fu_294_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_294_p2);

    myproject_axi_shl_32ns_32s_32_2_1_U3 : component myproject_axi_shl_32ns_32s_32_2_1
    generic map (
        ID => 1,
        NUM_STAGE => 2,
        OP => 0,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => trunc_ln583_reg_497,
        din1 => sext_ln581_fu_277_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_318_p2);

    regslice_both_in_last_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => in_r_TLAST,
        vld_in => in_r_TVALID,
        ack_in => regslice_both_in_last_V_U_ack_in,
        data_out => in_r_TLAST_int,
        vld_out => in_r_TVALID_int,
        ack_out => in_r_TREADY_int,
        apdone_blk => regslice_both_in_last_V_U_apdone_blk);

    regslice_both_in_data_U : component regslice_both
    generic map (
        DataWidth => 32)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => in_r_TDATA,
        vld_in => in_r_TVALID,
        ack_in => regslice_both_in_data_U_ack_in,
        data_out => in_r_TDATA_int,
        vld_out => regslice_both_in_data_U_vld_out,
        ack_out => in_r_TREADY_int,
        apdone_blk => regslice_both_in_data_U_apdone_blk);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((not((((icmp_ln23_fu_136_p2 = ap_const_lv1_1) and (is_last_0_i_out_out_full_n = ap_const_logic_0)) or ((icmp_ln23_fu_136_p2 = ap_const_lv1_0) and (in_r_TVALID_int = ap_const_logic_0)))) and (icmp_ln23_fu_136_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_i_i_reg_122_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((in_local_V_data_0_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                i_0_i_i_reg_122 <= i_reg_432;
            elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_i_i_reg_122 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;

    is_last_0_i_out_dc_0_reg_110_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((in_local_V_data_0_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                is_last_0_i_out_dc_0_reg_110 <= or_ln28_reg_443;
            elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                is_last_0_i_out_dc_0_reg_110 <= ap_const_lv1_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                and_ln585_reg_518 <= and_ln585_fu_344_p2;
                and_ln603_reg_523 <= and_ln603_fu_367_p2;
                or_ln603_reg_528 <= or_ln603_fu_373_p2;
                select_ln603_1_reg_534 <= select_ln603_1_fu_379_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                ashr_ln586_reg_539 <= grp_fu_294_p2;
                or_ln603_2_reg_549 <= or_ln603_2_fu_401_p2;
                shl_ln604_reg_544 <= grp_fu_318_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((((icmp_ln23_fu_136_p2 = ap_const_lv1_1) and (is_last_0_i_out_out_full_n = ap_const_logic_0)) or ((icmp_ln23_fu_136_p2 = ap_const_lv1_0) and (in_r_TVALID_int = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                i_reg_432 <= i_fu_142_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                icmp_ln571_reg_473 <= icmp_ln571_fu_220_p2;
                icmp_ln581_reg_479 <= icmp_ln581_fu_231_p2;
                icmp_ln582_reg_491 <= icmp_ln582_fu_257_p2;
                select_ln570_reg_468 <= select_ln570_fu_213_p3;
                select_ln581_reg_485 <= select_ln581_fu_249_p3;
                tmp_12_reg_503 <= select_ln581_fu_249_p3(11 downto 5);
                trunc_ln583_reg_497 <= trunc_ln583_fu_263_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((((icmp_ln23_fu_136_p2 = ap_const_lv1_1) and (is_last_0_i_out_out_full_n = ap_const_logic_0)) or ((icmp_ln23_fu_136_p2 = ap_const_lv1_0) and (in_r_TVALID_int = ap_const_logic_0)))) and (icmp_ln23_fu_136_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                in_data_tmp_reg_437 <= in_r_TDATA_int;
                or_ln28_reg_443 <= or_ln28_fu_157_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                p_Result_i_i_reg_458 <= bitcast_ln696_fu_163_p1(62 downto 52);
                tmp_reg_453 <= bitcast_ln696_fu_163_p1(63 downto 63);
                trunc_ln557_reg_448 <= trunc_ln557_fu_167_p1;
                trunc_ln565_reg_463 <= trunc_ln565_fu_189_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, in_local_V_data_0_V_full_n, is_last_0_i_out_out_full_n, ap_CS_fsm_state8, ap_CS_fsm_state2, icmp_ln23_fu_136_p2, in_r_TVALID_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if ((not((((icmp_ln23_fu_136_p2 = ap_const_lv1_1) and (is_last_0_i_out_out_full_n = ap_const_logic_0)) or ((icmp_ln23_fu_136_p2 = ap_const_lv1_0) and (in_r_TVALID_int = ap_const_logic_0)))) and (icmp_ln23_fu_136_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif ((not((((icmp_ln23_fu_136_p2 = ap_const_lv1_1) and (is_last_0_i_out_out_full_n = ap_const_logic_0)) or ((icmp_ln23_fu_136_p2 = ap_const_lv1_0) and (in_r_TVALID_int = ap_const_logic_0)))) and (icmp_ln23_fu_136_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                if (((in_local_V_data_0_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;
    add_ln581_fu_237_p2 <= std_logic_vector(signed(ap_const_lv12_FF0) + signed(sub_ln575_fu_225_p2));
    and_ln581_fu_333_p2 <= (xor_ln582_fu_327_p2 and icmp_ln581_reg_479);
    and_ln582_fu_391_p2 <= (xor_ln571_fu_386_p2 and icmp_ln582_reg_491);
    and_ln585_1_fu_350_p2 <= (icmp_ln585_fu_280_p2 and and_ln581_fu_333_p2);
    and_ln585_fu_344_p2 <= (xor_ln585_fu_338_p2 and and_ln581_fu_333_p2);
    and_ln603_fu_367_p2 <= (xor_ln581_fu_361_p2 and icmp_ln603_fu_285_p2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state2_assign_proc : process(is_last_0_i_out_out_full_n, icmp_ln23_fu_136_p2, in_r_TVALID_int)
    begin
                ap_block_state2 <= (((icmp_ln23_fu_136_p2 = ap_const_lv1_1) and (is_last_0_i_out_out_full_n = ap_const_logic_0)) or ((icmp_ln23_fu_136_p2 = ap_const_lv1_0) and (in_r_TVALID_int = ap_const_logic_0)));
    end process;


    ap_done_assign_proc : process(ap_done_reg, is_last_0_i_out_out_full_n, ap_CS_fsm_state2, icmp_ln23_fu_136_p2, in_r_TVALID_int)
    begin
        if ((not((((icmp_ln23_fu_136_p2 = ap_const_lv1_1) and (is_last_0_i_out_out_full_n = ap_const_logic_0)) or ((icmp_ln23_fu_136_p2 = ap_const_lv1_0) and (in_r_TVALID_int = ap_const_logic_0)))) and (icmp_ln23_fu_136_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    bitcast_ln696_1_fu_299_p1 <= in_data_tmp_reg_437;
    bitcast_ln696_fu_163_p1 <= grp_fu_133_p1;

    grp_fu_133_ce_assign_proc : process(is_last_0_i_out_out_full_n, ap_CS_fsm_state2, icmp_ln23_fu_136_p2, ap_CS_fsm_state4, ap_CS_fsm_state3, in_r_TVALID_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or (not((((icmp_ln23_fu_136_p2 = ap_const_lv1_1) and (is_last_0_i_out_out_full_n = ap_const_logic_0)) or ((icmp_ln23_fu_136_p2 = ap_const_lv1_0) and (in_r_TVALID_int = ap_const_logic_0)))) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            grp_fu_133_ce <= ap_const_logic_1;
        else 
            grp_fu_133_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_294_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln581_fu_277_p1),54));
    i_fu_142_p2 <= std_logic_vector(unsigned(i_0_i_i_reg_122) + unsigned(ap_const_lv11_1));
    icmp_ln23_fu_136_p2 <= "1" when (i_0_i_i_reg_122 = ap_const_lv11_400) else "0";
    icmp_ln571_fu_220_p2 <= "1" when (trunc_ln557_reg_448 = ap_const_lv63_0) else "0";
    icmp_ln581_fu_231_p2 <= "1" when (signed(sub_ln575_fu_225_p2) > signed(ap_const_lv12_10)) else "0";
    icmp_ln582_fu_257_p2 <= "1" when (sub_ln575_fu_225_p2 = ap_const_lv12_10) else "0";
    icmp_ln585_fu_280_p2 <= "1" when (unsigned(select_ln581_reg_485) < unsigned(ap_const_lv12_36)) else "0";
    icmp_ln603_fu_285_p2 <= "1" when (tmp_12_reg_503 = ap_const_lv7_0) else "0";

    in_local_V_data_0_V_blk_n_assign_proc : process(in_local_V_data_0_V_full_n, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            in_local_V_data_0_V_blk_n <= in_local_V_data_0_V_full_n;
        else 
            in_local_V_data_0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    in_local_V_data_0_V_din <= 
        select_ln603_2_fu_415_p3 when (or_ln603_2_reg_549(0) = '1') else 
        ap_const_lv32_0;

    in_local_V_data_0_V_write_assign_proc : process(in_local_V_data_0_V_full_n, ap_CS_fsm_state8)
    begin
        if (((in_local_V_data_0_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            in_local_V_data_0_V_write <= ap_const_logic_1;
        else 
            in_local_V_data_0_V_write <= ap_const_logic_0;
        end if; 
    end process;


    in_r_TDATA_blk_n_assign_proc : process(ap_CS_fsm_state2, icmp_ln23_fu_136_p2, in_r_TVALID_int)
    begin
        if (((icmp_ln23_fu_136_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            in_r_TDATA_blk_n <= in_r_TVALID_int;
        else 
            in_r_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    in_r_TREADY_assign_proc : process(in_r_TVALID, regslice_both_in_last_V_U_ack_in)
    begin
        if (((in_r_TVALID = ap_const_logic_1) and (regslice_both_in_last_V_U_ack_in = ap_const_logic_1))) then 
            in_r_TREADY <= ap_const_logic_1;
        else 
            in_r_TREADY <= ap_const_logic_0;
        end if; 
    end process;


    in_r_TREADY_int_assign_proc : process(is_last_0_i_out_out_full_n, ap_CS_fsm_state2, icmp_ln23_fu_136_p2, in_r_TVALID_int)
    begin
        if ((not((((icmp_ln23_fu_136_p2 = ap_const_lv1_1) and (is_last_0_i_out_out_full_n = ap_const_logic_0)) or ((icmp_ln23_fu_136_p2 = ap_const_lv1_0) and (in_r_TVALID_int = ap_const_logic_0)))) and (icmp_ln23_fu_136_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            in_r_TREADY_int <= ap_const_logic_1;
        else 
            in_r_TREADY_int <= ap_const_logic_0;
        end if; 
    end process;


    internal_ap_ready_assign_proc : process(is_last_0_i_out_out_full_n, ap_CS_fsm_state2, icmp_ln23_fu_136_p2, in_r_TVALID_int)
    begin
        if ((not((((icmp_ln23_fu_136_p2 = ap_const_lv1_1) and (is_last_0_i_out_out_full_n = ap_const_logic_0)) or ((icmp_ln23_fu_136_p2 = ap_const_lv1_0) and (in_r_TVALID_int = ap_const_logic_0)))) and (icmp_ln23_fu_136_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    is_last_0_i_out_out_blk_n_assign_proc : process(is_last_0_i_out_out_full_n, ap_CS_fsm_state2, icmp_ln23_fu_136_p2)
    begin
        if (((icmp_ln23_fu_136_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            is_last_0_i_out_out_blk_n <= is_last_0_i_out_out_full_n;
        else 
            is_last_0_i_out_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    is_last_0_i_out_out_din <= is_last_0_i_out_dc_0_reg_110;

    is_last_0_i_out_out_write_assign_proc : process(is_last_0_i_out_out_full_n, ap_CS_fsm_state2, icmp_ln23_fu_136_p2, in_r_TVALID_int)
    begin
        if ((not((((icmp_ln23_fu_136_p2 = ap_const_lv1_1) and (is_last_0_i_out_out_full_n = ap_const_logic_0)) or ((icmp_ln23_fu_136_p2 = ap_const_lv1_0) and (in_r_TVALID_int = ap_const_logic_0)))) and (icmp_ln23_fu_136_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            is_last_0_i_out_out_write <= ap_const_logic_1;
        else 
            is_last_0_i_out_out_write <= ap_const_logic_0;
        end if; 
    end process;

    or_ln28_fu_157_p2 <= (is_last_0_i_out_dc_0_reg_110 or in_r_TLAST_int);
    or_ln581_fu_356_p2 <= (or_ln582_fu_323_p2 or icmp_ln581_reg_479);
    or_ln582_fu_323_p2 <= (icmp_ln582_reg_491 or icmp_ln571_reg_473);
    or_ln603_1_fu_396_p2 <= (and_ln585_reg_518 or and_ln582_fu_391_p2);
    or_ln603_2_fu_401_p2 <= (or_ln603_reg_528 or or_ln603_1_fu_396_p2);
    or_ln603_fu_373_p2 <= (and_ln603_fu_367_p2 or and_ln585_1_fu_350_p2);

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    select_ln570_fu_213_p3 <= 
        sub_ln461_fu_207_p2 when (tmp_reg_453(0) = '1') else 
        zext_ln569_fu_203_p1;
    select_ln581_fu_249_p3 <= 
        add_ln581_fu_237_p2 when (icmp_ln581_fu_231_p2(0) = '1') else 
        sub_ln581_fu_243_p2;
    select_ln588_fu_310_p3 <= 
        ap_const_lv32_FFFFFFFF when (tmp_13_fu_302_p3(0) = '1') else 
        ap_const_lv32_0;
    select_ln603_1_fu_379_p3 <= 
        select_ln588_fu_310_p3 when (and_ln585_fu_344_p2(0) = '1') else 
        trunc_ln583_reg_497;
    select_ln603_2_fu_415_p3 <= 
        select_ln603_fu_409_p3 when (or_ln603_reg_528(0) = '1') else 
        select_ln603_1_reg_534;
    select_ln603_fu_409_p3 <= 
        shl_ln604_reg_544 when (and_ln603_reg_523(0) = '1') else 
        trunc_ln586_fu_406_p1;
        sext_ln581_fu_277_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(select_ln581_reg_485),32));

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    sub_ln461_fu_207_p2 <= std_logic_vector(unsigned(ap_const_lv54_0) - unsigned(zext_ln569_fu_203_p1));
    sub_ln575_fu_225_p2 <= std_logic_vector(unsigned(ap_const_lv12_433) - unsigned(zext_ln461_fu_193_p1));
    sub_ln581_fu_243_p2 <= std_logic_vector(unsigned(ap_const_lv12_10) - unsigned(sub_ln575_fu_225_p2));
    tmp_13_fu_302_p3 <= bitcast_ln696_1_fu_299_p1(31 downto 31);
    tmp_i_fu_196_p3 <= (ap_const_lv1_1 & trunc_ln565_reg_463);
    trunc_ln557_fu_167_p1 <= bitcast_ln696_fu_163_p1(63 - 1 downto 0);
    trunc_ln565_fu_189_p1 <= bitcast_ln696_fu_163_p1(52 - 1 downto 0);
    trunc_ln583_fu_263_p1 <= select_ln570_fu_213_p3(32 - 1 downto 0);
    trunc_ln586_fu_406_p1 <= ashr_ln586_reg_539(32 - 1 downto 0);
    xor_ln571_fu_386_p2 <= (icmp_ln571_reg_473 xor ap_const_lv1_1);
    xor_ln581_fu_361_p2 <= (or_ln581_fu_356_p2 xor ap_const_lv1_1);
    xor_ln582_fu_327_p2 <= (or_ln582_fu_323_p2 xor ap_const_lv1_1);
    xor_ln585_fu_338_p2 <= (icmp_ln585_fu_280_p2 xor ap_const_lv1_1);
    zext_ln461_fu_193_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Result_i_i_reg_458),12));
    zext_ln569_fu_203_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_i_fu_196_p3),54));
end behav;
