//
//    rfnoc-hls-neuralnet: Vivado HLS code for neural-net building blocks
//
//    Copyright (C) 2017 EJ Kreinar
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
#include <iostream>

#include "myproject.h"
#include "parameters.h"

void myproject(
    hls::stream<input_t> &conv2d_147_input,
    hls::stream<result_t> &layer21_out,
    unsigned short &const_size_in_1,
    unsigned short &const_size_out_1
) {

    //hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE axis port=conv2d_147_input,layer21_out 
    #pragma HLS DATAFLOW 

    const_size_in_1 = N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1;
    const_size_out_1 = OUT_HEIGHT_20*OUT_WIDTH_20*N_FILT_20;

#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        //hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<model_default_t, 72>(w2, "w2.txt");
        nnet::load_weights_from_txt<model_default_t, 8>(b2, "b2.txt");
        nnet::load_weights_from_txt<model_default_t, 288>(w5, "w5.txt");
        nnet::load_weights_from_txt<model_default_t, 4>(b5, "b5.txt");
        nnet::load_weights_from_txt<model_default_t, 144>(w8, "w8.txt");
        nnet::load_weights_from_txt<model_default_t, 4>(b8, "b8.txt");
        nnet::load_weights_from_txt<model_default_t, 144>(w11, "w11.txt");
        nnet::load_weights_from_txt<model_default_t, 4>(b11, "b11.txt");
        nnet::load_weights_from_txt<model_default_t, 144>(w14, "w14.txt");
        nnet::load_weights_from_txt<model_default_t, 4>(b14, "b14.txt");
        nnet::load_weights_from_txt<model_default_t, 288>(w17, "w17.txt");
        nnet::load_weights_from_txt<model_default_t, 8>(b17, "b17.txt");
        nnet::load_weights_from_txt<model_default_t, 72>(w20, "w20.txt");
        nnet::load_weights_from_txt<model_default_t, 1>(b20, "b20.txt");
        loaded_weights = true;
    }
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    //hls-fpga-machine-learning insert layers

    hls::stream<layer22_t> layer22_out("layer22_out");
    #pragma HLS STREAM variable=layer22_out depth=1156
    nnet::zeropad2d_cl<input_t, layer22_t, config22>(conv2d_147_input, layer22_out); // zp2d_conv2d_147

    hls::stream<layer2_t> layer2_out("layer2_out");
    #pragma HLS STREAM variable=layer2_out depth=1024
    nnet::conv_2d_cl<layer22_t, layer2_t, config2>(layer22_out, layer2_out, w2, b2); // conv2d_147

    hls::stream<layer3_t> layer3_out("layer3_out");
    #pragma HLS STREAM variable=layer3_out depth=1024
    nnet::relu<layer2_t, layer3_t, relu_config3>(layer2_out, layer3_out); // conv2d_147_relu

    hls::stream<layer4_t> layer4_out("layer4_out");
    #pragma HLS STREAM variable=layer4_out depth=256
    nnet::pooling2d_cl<layer3_t, layer4_t, config4>(layer3_out, layer4_out); // max_pooling2d_63

    hls::stream<layer23_t> layer23_out("layer23_out");
    #pragma HLS STREAM variable=layer23_out depth=324
    nnet::zeropad2d_cl<layer4_t, layer23_t, config23>(layer4_out, layer23_out); // zp2d_conv2d_148

    hls::stream<layer5_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=256
    nnet::conv_2d_cl<layer23_t, layer5_t, config5>(layer23_out, layer5_out, w5, b5); // conv2d_148

    hls::stream<layer6_t> layer6_out("layer6_out");
    #pragma HLS STREAM variable=layer6_out depth=256
    nnet::relu<layer5_t, layer6_t, relu_config6>(layer5_out, layer6_out); // conv2d_148_relu

    hls::stream<layer7_t> layer7_out("layer7_out");
    #pragma HLS STREAM variable=layer7_out depth=64
    nnet::pooling2d_cl<layer6_t, layer7_t, config7>(layer6_out, layer7_out); // max_pooling2d_64

    hls::stream<layer24_t> layer24_out("layer24_out");
    #pragma HLS STREAM variable=layer24_out depth=100
    nnet::zeropad2d_cl<layer7_t, layer24_t, config24>(layer7_out, layer24_out); // zp2d_conv2d_149

    hls::stream<layer8_t> layer8_out("layer8_out");
    #pragma HLS STREAM variable=layer8_out depth=64
    nnet::conv_2d_cl<layer24_t, layer8_t, config8>(layer24_out, layer8_out, w8, b8); // conv2d_149

    hls::stream<layer9_t> layer9_out("layer9_out");
    #pragma HLS STREAM variable=layer9_out depth=64
    nnet::relu<layer8_t, layer9_t, relu_config9>(layer8_out, layer9_out); // conv2d_149_relu

    hls::stream<layer10_t> layer10_out("layer10_out");
    #pragma HLS STREAM variable=layer10_out depth=16
    nnet::pooling2d_cl<layer9_t, layer10_t, config10>(layer9_out, layer10_out); // max_pooling2d_65

    hls::stream<layer25_t> layer25_out("layer25_out");
    #pragma HLS STREAM variable=layer25_out depth=36
    nnet::zeropad2d_cl<layer10_t, layer25_t, config25>(layer10_out, layer25_out); // zp2d_conv2d_150

    hls::stream<layer11_t> layer11_out("layer11_out");
    #pragma HLS STREAM variable=layer11_out depth=16
    nnet::conv_2d_cl<layer25_t, layer11_t, config11>(layer25_out, layer11_out, w11, b11); // conv2d_150

    hls::stream<layer12_t> layer12_out("layer12_out");
    #pragma HLS STREAM variable=layer12_out depth=16
    nnet::relu<layer11_t, layer12_t, relu_config12>(layer11_out, layer12_out); // conv2d_150_relu

    hls::stream<layer13_t> layer13_out("layer13_out");
    #pragma HLS STREAM variable=layer13_out depth=64
    nnet::resize_nearest<layer12_t, config13>(layer12_out, layer13_out); // up_sampling2d_63

    hls::stream<layer26_t> layer26_out("layer26_out");
    #pragma HLS STREAM variable=layer26_out depth=100
    nnet::zeropad2d_cl<layer13_t, layer26_t, config26>(layer13_out, layer26_out); // zp2d_conv2d_151

    hls::stream<layer14_t> layer14_out("layer14_out");
    #pragma HLS STREAM variable=layer14_out depth=64
    nnet::conv_2d_cl<layer26_t, layer14_t, config14>(layer26_out, layer14_out, w14, b14); // conv2d_151

    hls::stream<layer15_t> layer15_out("layer15_out");
    #pragma HLS STREAM variable=layer15_out depth=64
    nnet::relu<layer14_t, layer15_t, relu_config15>(layer14_out, layer15_out); // conv2d_151_relu

    hls::stream<layer16_t> layer16_out("layer16_out");
    #pragma HLS STREAM variable=layer16_out depth=256
    nnet::resize_nearest<layer15_t, config16>(layer15_out, layer16_out); // up_sampling2d_64

    hls::stream<layer27_t> layer27_out("layer27_out");
    #pragma HLS STREAM variable=layer27_out depth=324
    nnet::zeropad2d_cl<layer16_t, layer27_t, config27>(layer16_out, layer27_out); // zp2d_conv2d_152

    hls::stream<layer17_t> layer17_out("layer17_out");
    #pragma HLS STREAM variable=layer17_out depth=256
    nnet::conv_2d_cl<layer27_t, layer17_t, config17>(layer27_out, layer17_out, w17, b17); // conv2d_152

    hls::stream<layer18_t> layer18_out("layer18_out");
    #pragma HLS STREAM variable=layer18_out depth=256
    nnet::relu<layer17_t, layer18_t, relu_config18>(layer17_out, layer18_out); // conv2d_152_relu

    hls::stream<layer19_t> layer19_out("layer19_out");
    #pragma HLS STREAM variable=layer19_out depth=1024
    nnet::resize_nearest<layer18_t, config19>(layer18_out, layer19_out); // up_sampling2d_65

    hls::stream<layer28_t> layer28_out("layer28_out");
    #pragma HLS STREAM variable=layer28_out depth=1156
    nnet::zeropad2d_cl<layer19_t, layer28_t, config28>(layer19_out, layer28_out); // zp2d_conv2d_153

    hls::stream<layer20_t> layer20_out("layer20_out");
    #pragma HLS STREAM variable=layer20_out depth=1024
    nnet::conv_2d_cl<layer28_t, layer20_t, config20>(layer28_out, layer20_out, w20, b20); // conv2d_153

    nnet::relu<layer20_t, result_t, relu_config21>(layer20_out, layer21_out); // conv2d_153_relu

}
