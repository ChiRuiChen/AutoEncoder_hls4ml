// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V_H__
#define __conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 17;
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


   SC_CTOR(conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V_ram) {
        ram[0] = "0b00010000111101010";
        ram[1] = "0b11011101001000111";
        ram[2] = "0b00101010100100101";
        ram[3] = "0b00001010011000101";
        ram[4] = "0b10110000010011100";
        ram[5] = "0b11111101001000010";
        ram[6] = "0b00000110010110100";
        ram[7] = "0b11101101101111111";
        ram[8] = "0b11010100101010001";
        ram[9] = "0b11111001101000001";
        ram[10] = "0b00001110101010111";
        ram[11] = "0b00010100011000001";
        ram[12] = "0b10111001001011110";
        ram[13] = "0b11001101011110100";
        ram[14] = "0b00010100000000111";
        ram[15] = "0b00000111011100011";
        ram[16] = "0b11000001110111100";
        ram[17] = "0b00100011100111000";
        ram[18] = "0b00010101111110110";
        ram[19] = "0b00000100011110100";
        ram[20] = "0b11001100000100110";
        ram[21] = "0b11001111000101001";
        ram[22] = "0b11111100110011101";
        ram[23] = "0b11011101010010101";
        ram[24] = "0b11011000011100101";
        ram[25] = "0b11111011100111111";
        ram[26] = "0b11110011111110101";
        ram[27] = "0b00001111011010001";
        ram[28] = "0b11010100100000110";
        ram[29] = "0b11011101110101001";
        ram[30] = "0b00011100000010111";
        ram[31] = "0b00000011110100010";
        ram[32] = "0b10111011111010011";
        ram[33] = "0b00001000111101011";
        ram[34] = "0b11001101101111100";
        ram[35] = "0b00011111101000001";
        ram[36] = "0b11110010100101100";
        ram[37] = "0b11000000000011100";
        ram[38] = "0b11110101000101101";
        ram[39] = "0b00011101101110100";
        ram[40] = "0b11001010000100100";
        ram[41] = "0b00000001011100000";
        ram[42] = "0b11010010000100111";
        ram[43] = "0b00000100111111100";
        ram[44] = "0b11111000100110011";
        ram[45] = "0b11000110101001111";
        ram[46] = "0b00010110010101000";
        ram[47] = "0b11110100101011011";
        ram[48] = "0b11001110111110001";
        ram[49] = "0b11010100111001010";
        ram[50] = "0b11000101100011111";
        ram[51] = "0b11111011011100000";
        ram[52] = "0b00101001010000010";
        ram[53] = "0b11001110110010011";
        ram[54] = "0b00011100101001101";
        ram[55] = "0b00101000011110010";
        ram[56] = "0b11010110011000110";
        ram[57] = "0b11100001001011100";
        ram[58] = "0b11001010001000101";
        ram[59] = "0b00001101110010001";
        ram[60] = "0b00101101100111001";
        ram[61] = "0b11001111101100010";
        ram[62] = "0b11110111011000001";
        ram[63] = "0b00010011111000010";
        ram[64] = "0b00010000111110000";
        ram[65] = "0b11100111110100011";
        ram[66] = "0b11101101010101010";
        ram[67] = "0b11100111111111110";
        ram[68] = "0b00011010111111001";
        ram[69] = "0b00011010010011111";
        ram[70] = "0b00011001111011111";
        ram[71] = "0b11110111101111111";


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


SC_MODULE(conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V) {


static const unsigned DataWidth = 17;
static const unsigned AddressRange = 72;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V_ram* meminst;


SC_CTOR(conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V) {
meminst = new conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V_ram("conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~conv_2d_cl_array_array_ap_fixed_1u_config20_s_w20_V() {
    delete meminst;
}


};//endmodule
#endif
