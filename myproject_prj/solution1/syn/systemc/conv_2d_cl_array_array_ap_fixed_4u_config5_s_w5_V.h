// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __conv_2d_cl_array_array_ap_fixed_4u_config5_s_w5_V_H__
#define __conv_2d_cl_array_array_ap_fixed_4u_config5_s_w5_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct conv_2d_cl_array_array_ap_fixed_4u_config5_s_w5_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 113;
  static const unsigned AddressRange = 72;
  static const unsigned AddressWidth = 7;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(conv_2d_cl_array_array_ap_fixed_4u_config5_s_w5_V_ram) {
        ram[0] = "0b00110101111010100000000000000000001011010110111111111111111111111111101000011000011111111111111111111000110110101";
        ram[1] = "0b00011000111000111000000000000000000111110100110010000000000000000000110010011100011111111111111111110100100101110";
        ram[2] = "0b00000111100100110111111111111111111110001110000111111111111111111111111011101111000000000000000000010001111110100";
        ram[3] = "0b11010011110000000111111111111111111010011001100001111111111111111111010111100110000000000000000000000100111001110";
        ram[4] = "0b11111001110101011000000000000000000000000100111001111111111111111110011101000000111111111111111111111110101000010";
        ram[5] = "0b11110010010011010111111111111111110111101011101111111111111111111111000010010001100000000000000000000000100000011";
        ram[6] = "0b00011101101101011111111111111111111011101011100011111111111111111110101011001001011111111111111111111101001000010";
        ram[7] = "0b11101100100010100111111111111111111010000000110010000000000000000000001011111000000000000000000000001100101000011";
        ram[8] = "0b00101011101110111000000000000000001110101001101011111111111111111111101110001101100000000000000000100001111110100";
        ram[9] = "0b00010110100000111000000000000000000010110011111110000000000000000000000000000010000000000000000000010101011001010";
        ram[10] = "0b00001011001001011000000000000000000100101010010011111111111111111111101010111101000000000000000000001100111000011";
        ram[11] = "0b11100100110111001111111111111111110111101101101111111111111111111111110100011000111111111111111111011110001000101";
        ram[12] = "0b00010111000101110000000000000000000011000011110101111111111111111111100101110000100000000000000000000011101110001";
        ram[13] = "0b00000101010010010111111111111111111100101111001101111111111111111111010100111010111111111111111111111111110111000";
        ram[14] = "0b00010100110010110111111111111111111111100100100011111111111111111111000011000100000000000000000000000110111101000";
        ram[15] = "0b00001001110101110111111111111111110101100101010110000000000000000000101100001010100000000000000000000000011101110";
        ram[16] = "0b00110110001000011000000000000000010101000111011001111111111111111111000111010010100000000000000000011001000110101";
        ram[17] = "0b00011100100101001000000000000000001000110111011110000000000000000000001110000011000000000000000000001011011010001";
        ram[18] = "0b11111110101100111000000000000000000011100010100011111111111111111111100000110101111111111111111111110000000101011";
        ram[19] = "0b11011001000101110111111111111111110010000011111111111111111111111111011101011010011111111111111111100111100101101";
        ram[20] = "0b00010100010001000000000000000000000001100001101111111111111111111111101110000001100000000000000000000010110001110";
        ram[21] = "0b00001000010010100000000000000000000000110001111111111111111111111111010100001001100000000000000000000001111100000";
        ram[22] = "0b00011110010110100111111111111111111111010110101011111111111111111110111111110101100000000000000000001000010110110";
        ram[23] = "0b11111001110110100111111111111111110011101110001001111111111111111111111111100000100000000000000000001100000010101";
        ram[24] = "0b00010100011111111111111111111111111011111000011110000000000000000000010011010110100000000000000000101100011001111";
        ram[25] = "0b00000101001101101111111111111111111110001101010000000000000000000000001111110111100000000000000000001001101011000";
        ram[26] = "0b00000000110100011111111111111111111001100101001000000000000000000001111100000001000000000000000000011001100011110";
        ram[27] = "0b11011111111110010000000000000000000011000111100001111111111111111111100010000001111111111111111111010010001010000";
        ram[28] = "0b11101000100011100111111111111111111100100111110001111111111111111110110101100011000000000000000000000100010101111";
        ram[29] = "0b11101011100110011111111111111111111001001110100111111111111111111101110111000111111111111111111111111011101010011";
        ram[30] = "0b00010101010011100111111111111111111101100000101001111111111111111110100010100100000000000000000000001100000010110";
        ram[31] = "0b11100011000010011000000000000000000011011100011001111111111111111111110110000100111111111111111111111000011010111";
        ram[32] = "0b00001011101001111000000000000000000010110110110011111111111111111111011110010111100000000000000001111101100111110";
        ram[33] = "0b11101100101001111111111111111111111110100010110111111111111111111111110001011110000000000000000000011000101000101";
        ram[34] = "0b00000011000101001111111111111111111101100010001110000000000000000000011101100010000000000000000000010011010011011";
        ram[35] = "0b11111100101010000111111111111111111100111100101011111111111111111111111010111001111111111111111110011011001000000";
        ram[36] = "0b00100001101001010000000000000000000000100000100111111111111111111111110111101000100000000000000000001001001110000";
        ram[37] = "0b11111101100000001111111111111111111110101000101101111111111111111110000000111101000000000000000000000010011010111";
        ram[38] = "0b00001001001000010000000000000000000000110011111101111111111111111110110011000101100000000000000000010111010010111";
        ram[39] = "0b00001001001011101000000000000000000010010111100001111111111111111111110111111011011111111111111110111111000110001";
        ram[40] = "0b00000110110010010000000000000000011010100111101001111111111111111110011101111110100000000000000000101101000010001";
        ram[41] = "0b00000000101110110000000000000000000101100001110101111111111111111111010001000110100000000000000000010011010000111";
        ram[42] = "0b11111001101101000000000000000000000000100010111101111111111111111111101110010011111111111111111111111001100110001";
        ram[43] = "0b11101101110010001111111111111111101101100100001010000000000000000001000001001101011111111111111111010010111100110";
        ram[44] = "0b00010010010000110000000000000000000000001111010001111111111111111111110001110110000000000000000000000010001100101";
        ram[45] = "0b11111011011100001000000000000000000100010000011001111111111111111110101000110111111111111111111111110100000011000";
        ram[46] = "0b00010011011111111000000000000000000011001111110001111111111111111110010110001110100000000000000000000110101111101";
        ram[47] = "0b00001000111110011111111111111111101111000010111000000000000000000000000010010001011111111111111111110001010100011";
        ram[48] = "0b11010110110010110111111111111111111101111000101110000000000000000001111010011111100000000000000000100011011101100";
        ram[49] = "0b11011110010111100000000000000000000010011010010001111111111111111111100101000110100000000000000000001011101001011";
        ram[50] = "0b11100011111111111111111111111111110101001000101000000000000000000010010100000010000000000000000000010011000110110";
        ram[51] = "0b00001100001100100000000000000000000010110010110101111111111111111110010000101111011111111111111111010110110110000";
        ram[52] = "0b10100101010011101000000000000000000001001101000010000000000000000011000001011111100000000000000000000010001000001";
        ram[53] = "0b11000100101011010111111111111111111111011011111000000000000000000000101001111011111111111111111111111101011101100";
        ram[54] = "0b11010111010011100111111111111111111100001100110010000000000000000011011101110010000000000000000000010000000011101";
        ram[55] = "0b11110110110100101000000000000000000000110010100100000000000000000000101100100111000000000000000000000011001100100";
        ram[56] = "0b11011101101010100000000000000000000011000110100000000000000000000001110100111011100000000000000001000001111100100";
        ram[57] = "0b00001001100110101000000000000000000001100100101010000000000000000000100111001000100000000000000000010010000111000";
        ram[58] = "0b11110001111010010111111111111111111111110110110000000000000000000001101110011001000000000000000000011011111110011";
        ram[59] = "0b00001100110111100111111111111111111100110001011111111111111111111110001111111110011111111111111111001101111000010";
        ram[60] = "0b11110000110100001000000000000000000000001011001010000000000000000011001111101110000000000000000000001100011101001";
        ram[61] = "0b11001010011101000000000000000000000010001010001010000000000000000000111010101001000000000000000000000011000011100";
        ram[62] = "0b11100000011110010111111111111111111101101001011100000000000000000010100001100100000000000000000000001111110010110";
        ram[63] = "0b00010010110000100000000000000000000000110000010010000000000000000001000100001101111111111111111111100101010000011";
        ram[64] = "0b11011011011110110000000000000000001011001001001000000000000000000010010010111111000000000000000000001010101110000";
        ram[65] = "0b11111101111000011000000000000000000101001100011110000000000000000000100101110111111111111111111111111110101010011";
        ram[66] = "0b11100001010101001000000000000000001000000111010010000000000000000000011110001110000000000000000000000110000010111";
        ram[67] = "0b00001111110011000111111111111111111000111101110011111111111111111110000111010100111111111111111111111011101101101";
        ram[68] = "0b11101101100101001111111111111111111110100110001110000000000000000011100000110000011111111111111111111111110111110";
        ram[69] = "0b11000001111101010000000000000000000100000011010000000000000000000010111001010100011111111111111111110010011101101";
        ram[70] = "0b11010110111001110111111111111111111101001001000100000000000000000011100100000001000000000000000000000010101100001";
        ram[71] = "0b00001110101010001111111111111111111000111101000010000000000000000001010100111000111111111111111111111100110111110";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(conv_2d_cl_array_array_ap_fixed_4u_config5_s_w5_V) {


static const unsigned DataWidth = 113;
static const unsigned AddressRange = 72;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


conv_2d_cl_array_array_ap_fixed_4u_config5_s_w5_V_ram* meminst;


SC_CTOR(conv_2d_cl_array_array_ap_fixed_4u_config5_s_w5_V) {
meminst = new conv_2d_cl_array_array_ap_fixed_4u_config5_s_w5_V_ram("conv_2d_cl_array_array_ap_fixed_4u_config5_s_w5_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~conv_2d_cl_array_array_ap_fixed_4u_config5_s_w5_V() {
    delete meminst;
}


};//endmodule
#endif
