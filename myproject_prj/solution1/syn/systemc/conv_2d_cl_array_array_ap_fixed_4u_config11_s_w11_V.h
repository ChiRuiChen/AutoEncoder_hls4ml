// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V_H__
#define __conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 113;
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


   SC_CTOR(conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V_ram) {
        ram[0] = "0b00001000110011001111111111111111111110100000010001111111111111111111100011011010100000000000000001010010010001101";
        ram[1] = "0b00000000101101111000000000000000000000110111001000000000000000000000001001100001011111111111111111110101011101001";
        ram[2] = "0b11111000110010010111111111111111111010011001010000000000000000000000001000000000011111111111111110111110000011011";
        ram[3] = "0b00001011000110000000000000000000000110100100111011111111111111111111110110001101111111111111111101111000000110111";
        ram[4] = "0b00011111011110110000000000000000010000011110000010000000000000000000110111101011100000000000000001001000100100111";
        ram[5] = "0b11111001101100101000000000000000000100110110001100000000000000000001001111001111111111111111111111101011001010001";
        ram[6] = "0b11111110010100011000000000000000000000010010001011111111111111111111110100010111000000000000000001001111000110110";
        ram[7] = "0b00010011001101010000000000000000000010000001010101111111111111111110110000110000011111111111111110011110110011001";
        ram[8] = "0b00010000010110100000000000000000010011011011010000000000000000000001101101000100100000000000000001010110000011001";
        ram[9] = "0b11111011011010001111111111111111111111100011100011111111111111111111100110100000111111111111111111111100001100100";
        ram[10] = "0b00000011110101111111111111111111111110100011001011111111111111111111110101110100100000000000000000011110001011001";
        ram[11] = "0b00000100101001101000000000000000000001100110001010000000000000000000110110010100100000000000000000000000011001000";
        ram[12] = "0b00000101111100111111111111111111111110011101000010000000000000000000101101111011011111111111111111111011111101101";
        ram[13] = "0b11100111011110010111111111111111110000110011100001111111111111111111111010000010100000000000000000010100101100000";
        ram[14] = "0b00011110000111001000000000000000000110100001101011111111111111111111011111110101000000000000000000101010111110110";
        ram[15] = "0b11011101101011110111111111111111111100110101000001111111111111111111110110000110111111111111111111011000111010000";
        ram[16] = "0b00000110100110111000000000000000010010101101110111111111111111111011001011011111000000000000000000011100001110000";
        ram[17] = "0b11101000101001111000000000000000010000011101010010000000000000000000010011001111011111111111111111001000110000100";
        ram[18] = "0b11100110001111000000000000000000000111101101011100000000000000000100101000011011000000000000000000001010001100111";
        ram[19] = "0b01100000000101001000000000000000000011111010000010000000000000000001111001110111111111111111111111111100010111101";
        ram[20] = "0b11011110000000111000000000000000000111000101011010000000000000000001111010100010100000000000000000110010000011010";
        ram[21] = "0b00001101011110111111111111111111111110110100110110000000000000000000001011011000011111111111111111100101011011111";
        ram[22] = "0b11110100101101001111111111111111111000110000111111111111111111111110011100101001000000000000000000010011010101000";
        ram[23] = "0b11100101111111000000000000000000000010100011100110000000000000000000100101011110000000000000000000010010000100111";
        ram[24] = "0b00000011010100001000000000000000000010000001000011111111111111111111101111111110011111111111111111111010110111010";
        ram[25] = "0b00001010011110111111111111111111111111100110000001111111111111111111011010000101111111111111111111111000111100010";
        ram[26] = "0b00001100111010000000000000000000000011000001010100000000000000000000101001111101000000000000000000011110111001110";
        ram[27] = "0b11111011111001111000000000000000000000000110000101111111111111111111110011011110111111111111111111100100010001011";
        ram[28] = "0b00100011011010100000000000000000000100101101010000000000000000000000100101100111000000000000000000100010101110100";
        ram[29] = "0b11100100100000000111111111111111111110011110000001111111111111111110001101100111000000000000000000001101100011110";
        ram[30] = "0b11110000110100110000000000000000000010010011111101111111111111111111011111011011000000000000000000100001111111010";
        ram[31] = "0b00011010111011100000000000000000000000010111110100000000000000000000101100000100100000000000000000000110000000101";
        ram[32] = "0b11110000011111010000000000000000000000001001001101111111111111111111011010111111111111111111111111010101000111101";
        ram[33] = "0b00010010000001000000000000000000000001110101000010000000000000000000000100000000111111111111111111111101001110101";
        ram[34] = "0b00001011111001000000000000000000000010100011101000000000000000000000110110100001111111111111111111111001111100110";
        ram[35] = "0b11110100110100011111111111111111111111111011101111111111111111111111101000000000111111111111111111111100111100110";


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


SC_MODULE(conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V) {


static const unsigned DataWidth = 113;
static const unsigned AddressRange = 36;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V_ram* meminst;


SC_CTOR(conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V) {
meminst = new conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V_ram("conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~conv_2d_cl_array_array_ap_fixed_4u_config11_s_w11_V() {
    delete meminst;
}


};//endmodule
#endif
