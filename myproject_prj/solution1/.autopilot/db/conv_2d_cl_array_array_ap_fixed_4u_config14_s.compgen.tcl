# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 410
set hasByteEnable 0
set MemName conv_2d_cl_array_array_ap_fixed_4u_config14_s_w14_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 113
set AddrRange 36
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "11100001100110001111111111111111111111000000010001111111111111111111111011111110111111111111111111111010110001000" "11111001101000000111111111111111111101110010100001111111111111111110110000111110000000000000000000000100100000000" "00001000001000010111111111111111111100110100000101111111111111111111011001100000100000000000000000010101110111011" "00000110110100010000000000000000000001110110100100000000000000000010010001011000111111111111111111110000010111110" "01000001110111110000000000000000000101110000000010000000000000000001101010000001000000000000000000100011110111101" "11111101101111000000000000000000001100101100011000000000000000000010001100110010011111111111111111111011001001100" "00011111001100100000000000000000000000101000001111111111111111111111010101100110100000000000000000001001110001010" "00001011100100111000000000000000000001111111000000000000000000000011010010010100011111111111111111011100110101010" "11110001000011110111111111111111111011000000100010000000000000000000100011000010100000000000000000001100011101011" "11101101101010110111111111111111111010001010011011111111111111111111000101100000111111111111111111100110100011110" "00101010101110011000000000000000000011000110011010000000000000000001010011110011000000000000000000100011011011010" "11100111011010110111111111111111110010100101011011111111111111111111110110000100011111111111111111110101111001010" "00010000001000100000000000000000000011110101100111111111111111111111110101101000011111111111111111110111000011011" "00000110011010000000000000000000000101000111111100000000000000000001100011000111000000000000000000010111000101111" "00011010101100001000000000000000000110000101111110000000000000000000110111000101111111111111111111010000111111100" "11101000010011010000000000000000000110010111000110000000000000000000101011100010100000000000000000111100111110101" "00010111001000000111111111111111111011100101111000000000000000000000100101000010000000000000000000011001010110101" "11110011000011101000000000000000000111010101101100000000000000000011110001100100100000000000000000000010010100101" "11110011011110001111111111111111111000001101011101111111111111111111001111001110011111111111111111011101010010001" "11011100010100001111111111111111110101010001101011111111111111111110100000111110100000000000000000011101100011001" "00110110001111011111111111111111111010101100110100000000000000000000011000101010111111111111111111110101110100000" "11100001011100010111111111111111110011010110100010000000000000000000101011011011000000000000000000000101110011111" "00000010100110101000000000000000000010010101100001111111111111111101010111111000011111111111111111101001000010011" "11111110110000001000000000000000000111011111010011111111111111111110011001111110000000000000000000011011101101101" "11101111001001001111111111111111110011001100111011111111111111111100101110000001111111111111111111111110010110011" "00000001110000111000000000000000000010011101100110000000000000000000110111110111000000000000000000011000011100001" "00000010111110111000000000000000000010000000110010000000000000000010101010010111000000000000000000100111100110011" "00010011110111110111111111111111111111110110110011111111111111111111010100100110011111111111111111100111000000100" "11100100110001010111111111111111010000100100011000000000000000000000000111001100111111111111111111010101110011110" "11100010111001011000000000000000000001011100100100000000000000000000011000011111100000000000000000001010101010010" "11100100001101000111111111111111110110101010010111111111111111111110011111111100111111111111111111111100101001001" "11111100011011000111111111111111111111101101010001111111111111111110000101110010011111111111111111011010000001000" "01101001101111110000000000000000000011000000111100000000000000000100010111100011100000000000000001100111010010001" "11011101110110100111111111111111111010110111001101111111111111111110011000010001000000000000000000000011101011011" "00000010100000101000000000000000000010100000010110000000000000000001101000111101100000000000000000001100010100101" "00110110101101010000000000000000000111000010101100000000000000000010001101101100000000000000000000000001100111011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 5
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 411 \
    name data_V_data_0_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_data_0_V \
    op interface \
    ports { data_V_data_0_V_dout { I 32 vector } data_V_data_0_V_empty_n { I 1 bit } data_V_data_0_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
    name data_V_data_1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_data_1_V \
    op interface \
    ports { data_V_data_1_V_dout { I 32 vector } data_V_data_1_V_empty_n { I 1 bit } data_V_data_1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name data_V_data_2_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_data_2_V \
    op interface \
    ports { data_V_data_2_V_dout { I 32 vector } data_V_data_2_V_empty_n { I 1 bit } data_V_data_2_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name data_V_data_3_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_data_V_data_3_V \
    op interface \
    ports { data_V_data_3_V_dout { I 32 vector } data_V_data_3_V_empty_n { I 1 bit } data_V_data_3_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name res_V_data_0_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_res_V_data_0_V \
    op interface \
    ports { res_V_data_0_V_din { O 32 vector } res_V_data_0_V_full_n { I 1 bit } res_V_data_0_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 416 \
    name res_V_data_1_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_res_V_data_1_V \
    op interface \
    ports { res_V_data_1_V_din { O 32 vector } res_V_data_1_V_full_n { I 1 bit } res_V_data_1_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 417 \
    name res_V_data_2_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_res_V_data_2_V \
    op interface \
    ports { res_V_data_2_V_din { O 32 vector } res_V_data_2_V_full_n { I 1 bit } res_V_data_2_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 418 \
    name res_V_data_3_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_res_V_data_3_V \
    op interface \
    ports { res_V_data_3_V_din { O 32 vector } res_V_data_3_V_full_n { I 1 bit } res_V_data_3_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


