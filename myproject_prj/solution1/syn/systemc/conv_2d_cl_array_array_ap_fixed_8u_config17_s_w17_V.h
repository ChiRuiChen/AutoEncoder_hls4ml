// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __conv_2d_cl_array_array_ap_fixed_8u_config17_s_w17_V_H__
#define __conv_2d_cl_array_array_ap_fixed_8u_config17_s_w17_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct conv_2d_cl_array_array_ap_fixed_8u_config17_s_w17_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 241;
  static const unsigned AddressRange = 36;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(conv_2d_cl_array_array_ap_fixed_8u_config17_s_w17_V_ram) {
        ram[0] = "0b0001111000011011011111111111111111110110110111111111111111111111111000100011010111111111111111111110111010000100111111111111111111100001011000101111111111111111111111111000000100000000000000000000101000111101000000000000000000100001001100000";
        ram[1] = "0b0001011000111110000000000000000000000010011101101000000000000000000111100000101011111111111111111111000000110101011111111111111111110010100101000111111111111111111010011011011000000000000000000001000011101100100000000000000000011101011101000";
        ram[2] = "0b1110000111010000000000000000000000111010111110000111111111111111111011001001000110000000000000000010001110110000100000000000000000101001110100111000000000000000010011000001001011111111111111111110000011101001011111111111111111101100010000010";
        ram[3] = "0b1111111110101111000000000000000000010001101010001000000000000000000001011011000000000000000000000001110110011110100000000000000000011110010111110000000000000000000011010000100000000000000000000000101001110000011111111111111111011101010101110";
        ram[4] = "0b0000010110000011000000000000000000011001000100011111111111111111111101110010011110000000000000000000011100111111100000000000000000010100011110101000000000000000000000111001111110000000000000000001001000001111111111111111111111111101100100011";
        ram[5] = "0b1111001010110100011111111111111111111110111010100111111111111111111111001000100111111111111111111101000011111011100000000000000000000101010010110111111111111111110110011100000110000000000000000000101110111101000000000000000000000111111011101";
        ram[6] = "0b0011001110101011011111111111111111111111111111001111111111111111111001010100011110000000000000000010100110101010011111111111111111001100011001000000000000000000000111110100110110000000000000000001011001100111000000000000000000010010010000001";
        ram[7] = "0b1101011100001011000000000000000000000010010111011111111111111111111111100011011100000000000000000001101010110101000000000000000000010010100101110000000000000000000010011100011011111111111111111100110111001011000000000000000000001001101110001";
        ram[8] = "0b0001001111001101000000000000000000000111000001110000000000000000000010001001011101111111111111111110011100011010011111111111111111101001101110011111111111111111111110001010111011111111111111111101101001110100011111111111111111011110000110010";
        ram[9] = "0b0001101011111000100000000000000000011101111010101000000000000000000101000100111100000000000000000000001001011011011111111111111111110001100000001111111111111111111111010110010011111111111111111110000101011000111111111111111111101100100011010";
        ram[10] = "0b1101101001110101000000000000000000101001010000110111111111111111110101111010010010000000000000000000101110101010000000000000000000000101111101001111111111111111111110011101000111111111111111111101110100100101100000000000000000001001111101000";
        ram[11] = "0b1110000011011000011111111111111111101111101101011111111111111111111011110101010100000000000000000001111011111001000000000000000000111001111001010000000000000000001011010000110000000000000000000100101100111100100000000000000000010101100110101";
        ram[12] = "0b1111111011101010100000000000000000000111001010011111111111111111111101101010111110000000000000000001011011101000111111111111111111111100111010000000000000000000001001111100111010000000000000000000110101100110111111111111111111111101010100101";
        ram[13] = "0b1111111111110100011111111111111111111000010101011111111111111111110100101101100111111111111111111101111010110110011111111111111111111010111000111111111111111111111010111100101000000000000000000010000000001110100000000000000000011111000011111";
        ram[14] = "0b0001010010101101011111111111111111010010100010101000000000000000001110001001011100000000000000000000111011000110111111111111111111011101111111011000000000000000000101010110101101111111111111111100110001110100011111111111111111101110101000010";
        ram[15] = "0b0000100101010011000000000000000000000011011000011000000000000000000010111110000100000000000000000000101101001111011111111111111111101011100001110000000000000000000001111001010001111111111111111110110011101011011111111111111111101100110011110";
        ram[16] = "0b1111110011110110100000000000000000011001000010110111111111111111111010111101110110000000000000000001111010001000000000000000000000010011010100100000000000000000000111010101010000000000000000000000110100010111100000000000000000010000011100010";
        ram[17] = "0b0001101110001111000000000000000000010100000001011111111111111111111100001000110110000000000000000000011111011011000000000000000000010110001000000111111111111111111101010010010010000000000000000000011011101101011111111111111111110100111110001";
        ram[18] = "0b1111111000010101111111111111111111111100000010110111111111111111111001100110000111111111111111111111010100110001011111111111111111111010101110000111111111111111111011111101101010000000000000000000101100100101000000000000000000101100110100011";
        ram[19] = "0b1111110110111111011111111111111111010111011011010000000000000000000011110011100000000000000000000000010111010010111111111111111111000001001100110000000000000000000001100011100011111111111111111100111001011001011111111111111111101011100100111";
        ram[20] = "0b1111111011010001000000000000000000001001001010100111111111111111111110001000100010000000000000000001110111011001000000000000000000010010001110011000000000000000000101001100011010000000000000000001101100000010111111111111111111101100101011110";
        ram[21] = "0b0001100010110111000000000000000000001100111000100000000000000000000011111111001010000000000000000000000000011001100000000000000000000000011111011111111111111111111110110110000111111111111111111111011101000101011111111111111111011000000010001";
        ram[22] = "0b0001101101001100111111111111111111111111111011110111111111111111111011000110101010000000000000000001000101011110111111111111111111101110101010110111111111111111111110001100001011111111111111111111100001101110000000000000000000001100101111101";
        ram[23] = "0b1011010010001011011111111111111111101100000000111111111111111111111001111000110011111111111111111110011001110010100000000000000000101000000000110111111111111111111011000011111111111111111111111101010010110011100000000000000000101000001100101";
        ram[24] = "0b0001001110010101011111111111111111110111010101001000000000000000001111000110011001111111111111111110110101011101011111111111111111111001000001001111111111111111111010111101101011111111111111111110001110100111100000000000000000000101010111010";
        ram[25] = "0b0000011110110000000000000000000000000110010111000111111111111111110101101000100110000000000000000000001101110010000000000000000000001000100110101000000000000000000110111100111000000000000000000011001011010101000000000000000000000111000110001";
        ram[26] = "0b0000001100000111011111111111111111010001110001101000000000000000000110111100000101111111111111111111110110110001111111111111111111111000011001000111111111111111110110000111101111111111111111111100100011010110100000000000000000000011111101010";
        ram[27] = "0b1111101011110000000000000000000000000011101001101000000000000000000011010011100011111111111111111110011111001001111111111111111111011000101101100111111111111111101011001110011101111111111111111101101010110110011111111111111111110111111010100";
        ram[28] = "0b0000010110011010000000000000000000001110110011011000000000000000000001001100111101111111111111111110001111010010011111111111111111110011100110001000000000000000000011110100011110000000000000000010000001100100100000000000000000011101100000000";
        ram[29] = "0b0000101011001111111111111111111111111100011000001111111111111111111110101010100110000000000000000001011101111110100000000000000000011100011111110000000000000000000111111100011001111111111111111111001110000111011111111111111111011110111111010";
        ram[30] = "0b1110010100011101011111111111111111111100101100011111111111111111110110001111110011111111111111111111101001100110100000000000000000001011000111111111111111111111111001010010101011111111111111111111001011011100000000000000000000001100101011011";
        ram[31] = "0b0001010111011010111111111111111111100000100100010000000000000000000111001110110111111111111111111111111011000111011111111111111111110100101100000111111111111111111011110111001001111111111111111110000010100000000000000000000000011110000011000";
        ram[32] = "0b1111010011111001100000000000000000001101101001010111111111111111111110010010000110000000000000000001001000100101100000000000000000010111111100111111111111111111111110110010000111111111111111111111011111000010000000000000000000010011110011111";
        ram[33] = "0b0000000011001101100000000000000000010010101001010000000000000000000110001100111110000000000000000001100001010001000000000000000000001001001110110111111111111111111111100101000001111111111111111111100011111111111111111111111111110111010100001";
        ram[34] = "0b0001001000100101011111111111111111110101100101011000000000000000000010110101001000000000000000000000100001010010111111111111111111110010110001001111111111111111111010001010001110000000000000000000100000110000000000000000000000000111101110110";
        ram[35] = "0b1101100100110110000000000000000000110001111100011111111111111111110110111111001001111111111111111110010101110110100000000000000000010100110011111111111111111111111001000010111101111111111111111111011100001001000000000000000000000111011011010";


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


SC_MODULE(conv_2d_cl_array_array_ap_fixed_8u_config17_s_w17_V) {


static const unsigned DataWidth = 241;
static const unsigned AddressRange = 36;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


conv_2d_cl_array_array_ap_fixed_8u_config17_s_w17_V_ram* meminst;


SC_CTOR(conv_2d_cl_array_array_ap_fixed_8u_config17_s_w17_V) {
meminst = new conv_2d_cl_array_array_ap_fixed_8u_config17_s_w17_V_ram("conv_2d_cl_array_array_ap_fixed_8u_config17_s_w17_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~conv_2d_cl_array_array_ap_fixed_8u_config17_s_w17_V() {
    delete meminst;
}


};//endmodule
#endif