# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 344
set hasByteEnable 0
set MemName conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 113
set AddrRange 36
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "00001000110011001111111111111111111110100000010001111111111111111111100011011010100000000000000001010010010001101" "00000000101101111000000000000000000000110111001000000000000000000000001001100001011111111111111111110101011101001" "11111000110010010111111111111111111010011001010000000000000000000000001000000000011111111111111110111110000011011" "00001011000110000000000000000000000110100100111011111111111111111111110110001101111111111111111101111000000110111" "00011111011110110000000000000000010000011110000010000000000000000000110111101011100000000000000001001000100100111" "11111001101100101000000000000000000100110110001100000000000000000001001111001111111111111111111111101011001010001" "11111110010100011000000000000000000000010010001011111111111111111111110100010111000000000000000001001111000110110" "00010011001101010000000000000000000010000001010101111111111111111110110000110000011111111111111110011110110011001" "00010000010110100000000000000000010011011011010000000000000000000001101101000100100000000000000001010110000011001" "11111011011010001111111111111111111111100011100011111111111111111111100110100000111111111111111111111100001100100" "00000011110101111111111111111111111110100011001011111111111111111111110101110100100000000000000000011110001011001" "00000100101001101000000000000000000001100110001010000000000000000000110110010100100000000000000000000000011001000" "00000101111100111111111111111111111110011101000010000000000000000000101101111011011111111111111111111011111101101" "11100111011110010111111111111111110000110011100001111111111111111111111010000010100000000000000000010100101100000" "00011110000111001000000000000000000110100001101011111111111111111111011111110101000000000000000000101010111110110" "11011101101011110111111111111111111100110101000001111111111111111111110110000110111111111111111111011000111010000" "00000110100110111000000000000000010010101101110111111111111111111011001011011111000000000000000000011100001110000" "11101000101001111000000000000000010000011101010010000000000000000000010011001111011111111111111111001000110000100" "11100110001111000000000000000000000111101101011100000000000000000100101000011011000000000000000000001010001100111" "01100000000101001000000000000000000011111010000010000000000000000001111001110111111111111111111111111100010111101" "11011110000000111000000000000000000111000101011010000000000000000001111010100010100000000000000000110010000011010" "00001101011110111111111111111111111110110100110110000000000000000000001011011000011111111111111111100101011011111" "11110100101101001111111111111111111000110000111111111111111111111110011100101001000000000000000000010011010101000" "11100101111111000000000000000000000010100011100110000000000000000000100101011110000000000000000000010010000100111" "00000011010100001000000000000000000010000001000011111111111111111111101111111110011111111111111111111010110111010" "00001010011110111111111111111111111111100110000001111111111111111111011010000101111111111111111111111000111100010" "00001100111010000000000000000000000011000001010100000000000000000000101001111101000000000000000000011110111001110" "11111011111001111000000000000000000000000110000101111111111111111111110011011110111111111111111111100100010001011" "00100011011010100000000000000000000100101101010000000000000000000000100101100111000000000000000000100010101110100" "11100100100000000111111111111111111110011110000001111111111111111110001101100111000000000000000000001101100011110" "11110000110100110000000000000000000010010011111101111111111111111111011111011011000000000000000000100001111111010" "00011010111011100000000000000000000000010111110100000000000000000000101100000100100000000000000000000110000000101" "11110000011111010000000000000000000000001001001101111111111111111111011010111111111111111111111111010101000111101" "00010010000001000000000000000000000001110101000010000000000000000000000100000000111111111111111111111101001110101" "00001011111001000000000000000000000010100011101000000000000000000000110110100001111111111111111111111001111100110" "11110100110100011111111111111111111111111011101111111111111111111111101000000000111111111111111111111100111100110" }
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
    id 345 \
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
    id 346 \
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
    id 347 \
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
    id 348 \
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
    id 349 \
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
    id 350 \
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
    id 351 \
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
    id 352 \
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


